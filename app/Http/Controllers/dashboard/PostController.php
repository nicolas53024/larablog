<?php

namespace App\Http\Controllers\dashboard;

use App\Tag;
use App\Post;
use App\Category;
use App\Exports\PostsExport;
use App\PostImage;
use Carbon\Carbon;
use App\Jobs\SendEmail;
use App\Helpers\CustomUrl;
use Illuminate\Http\Request;
use App\Jobs\ProccessImageSmall;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;
use App\Http\Controllers\Controller;
use App\Http\Requests\StorePostPost;
use App\Http\Requests\UpdatePostPut;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class PostController extends Controller
{
    public function __construct()
    {
        setlocale(LC_ALL, 'es_NY');
        Carbon::setUtf8(true);
        Carbon::setLocale('es');
        $this->middleware(['auth', 'rol.admin']); //metodo para acceder a las rutas de posts, solo cuando este logueado
    }
    public function index(Request $request)
    {
        
        // --------------------SendEmail::dispatch('nicolas53024@hotmail.com','email enviado por colas');//se llama disptach para activar el job
        //$this->sendMail();
        //
        /* DB::listen(function($query){//////////////////ver info de las consultas
            echo "<code>".$query->sql."</code>";////////---------consulta
            echo "<code>".$query->time."</code>";////////////---------tiempo

        }); */
        /*DB::transaction(function (){
       se pueden definir aca transacciones a la db en conjunto, si alguna consulta falla no se ejecutan las demas
       });*/
        $posts = Post::with('category')
            ->orderBy('id', request('id', 'desc'));
        if ($request->has('search')) {
            $posts = $posts->where('title', 'like', '%' . request('search') . '%');
        }


        $posts = $posts->paginate(8);
        //$posts = Post::with('category')->orderBy('id', 'desc')->paginate(8);//////with('relacion del modelo')  optimiza consulta
        return \view('dashboard.post.index', ['posts' => $posts]);
    }

    private function sendMail()
    {
        $data = [
            "user" => Auth::user()->name,
            "date" => Carbon::now()->formatLocalized('%A %d-%B de %Y '),
            "hour" => Carbon::now()->format('g:i A')

        ];

        //$data['title']=Auth::user()->name;
        // $data=['title'=>"datos de prueba",'persona'=>Auth::user()->name,'cuerpo'=>"pero hp"];
        Mail::send('emails.test', $data, function ($message) {
            $message->to(Auth::user()->email) //recibe por parametro email y nombre(es opcional)
                ->subject("Gracias por escribirnos");
        });
        if (Mail::failures()) {
            //return "mensaje no enviado";

        } else {
            //return "mensaje  enviado";
            return back()->with('status', 'mensaje  enviado a' . Auth::user()->email);
        }
    }


    public function create()
    {
        $tags = Tag::pluck('id', 'title');
        $category = Category::pluck('id', 'title');
        return \view('dashboard.post.create', ['category' => $category, 'tags' => $tags]);
    }

    public function store(StorePostPost $request)
    {

        if ($request->url_clean == "") {
            $url_clean = CustomUrl::urlTitle(CustomUrl::convertAccentedCharacters($request->title), "-", true); //asigna por default el mismo titulo del post a la url

        } else {
            $url_clean = CustomUrl::urlTitle(CustomUrl::convertAccentedCharacters($request->url_clean), "-", true);
        }
        $requestData = $request->validated(); //se debe duplicar porque no podemos manipular el request de laravel
        $requestData['url_clean'] = $url_clean; //se asigna al nuevo arreglo la url modificada sin char ni acentos
        $validator = Validator::make($requestData, StorePostPost::myRules()); //obtener nuestras rules validate desde el objeto store

        if ($validator->fails()) {
            return redirect('dashboard/post/create')
                ->withErrors($validator)
                ->withInput();
        }
        $post = Post::create($requestData);
        $post->tags()->sync($request->tags_id);
        return redirect('dashboard/post')->with('status', 'Post creado con exito'); //despues de ejecutar el create redirige a la misma vista,with envia mensaje de confirmacion
    }


    public function show($id)
    {
        //findOrFail=si no encuentra id devuelve un 404
        $post = Post::findOrFail($id);
        return \view('dashboard.post.show', ['post' => $post]);
    }


    public function edit(Post $post)
    {
        /* DB::listen(function($query){//////////////////ver info de las consultas
            echo "<code>".$query->sql."</code>";////////---------consulta
            echo "<code>".$query->time."</code>";////////////---------tiempo

        }); */
        $tags = Tag::pluck('id', 'title');
        $category = Category::pluck('id', 'title');
        //puedo obtener el objeto como parametro para no instanciar con el orm ============ $post=Post::findOrFail($id);
        return view('dashboard.post.edit', ['post' => $post, 'category' => $category, 'tags' => $tags]);
    }


    public function update(UpdatePostPut $request, Post $post)
    {
        $post->tags()->sync($request->tags_id);
        $post->update($request->validated());

        return back()->with('status', 'Post modificado');
    }
    public function image(Request $request, Post $post)
    {
        //  dd($request->image->extension());
        $request->validate([

            'image' => 'required|mimes:jpg,mpeg,jpeg,bmp,png,pdf|max:10240' //10 mb
        ]);

        $fileName = time() . "." . $request->image->extension();   //time se utiliza como id para el archivo, va cambiando segun el tiempo
        $request->image->move(public_path('images'), $fileName); //public_path establece la ruta de alojamiento
        //$path=$request->image->store('public/images');
        $image = PostImage::create(['image' => /*$path*/ $fileName, 'post_id' => $post->id]);
        ProccessImageSmall::dispatch($image);
        return back()->with('status', 'Imagen cargada con exito');
    }

    public function imageDownload(PostImage $image)
    {
        ob_end_clean(); // this 
        ob_start();
        return Storage::download($image->image);
    }
    public function imageDelete(PostImage $image)
    {
        $image->delete();
        Storage::disk('local')->delete($image->image);
        return back()->with('status', 'Imagen eliminada con exito');
    }

    public function content_image(Request $request)
    {

        $request->validate([

            'image' => 'required|mimes:mpeg,jpeg,bmp,png|max:10240' //10 mb
        ]);

        $fileName = time() . "." . $request->image->extension();   //time se utiliza como id para el archivo, va cambiando segun el tiempo
        $request->image->move(public_path('images_ckeditor'), $fileName); //public_path establece la ruta de alojamiento

        return response()->json(["default" => URL::to('/') . '/images_ckeditor/' . $fileName]);
        /*  RUTA ABSOLUTA ACCEDIENDO DESDE ENTORNO LOCAL
        return response()->json(["default"=>'http://192.168.1.4/larablog/public/images_ckeditor/'.$fileName]);
        */
    }

    public function destroy($id)
    {
        $post = Post::destroy($id);
        return back()->with('status', 'Post eliminado');
    }

    public function export()
    {
        // $filename = 'posts.xlsx';
        //  Excel::store(new PostsExport, $filename, 'public');
        //  return redirect( Storage::url("{$filename}"));
        ob_end_clean(); // this 
        ob_start();
        return Excel::download(new PostsExport, 'posts.xlsx');
    }
}
