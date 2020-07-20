<?php

namespace App\Http\Controllers\dashboard;

use App\Contact;
use App\Post;
use Carbon\Carbon;
use App\PostComent;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PostComentController extends Controller
{
    public function __construct()
    {
        setlocale(LC_ALL, 'es_NY');
        Carbon::setUtf8(true);
        Carbon::setLocale('es');
        $this->middleware(['auth', 'rol.admin']); //metodo para acceder a las rutas de posts, solo cuando este logueado
    }

    public function index()
    {
        //
        $postComent = PostComent::orderBy('id', 'desc')->paginate(8);
        //dd($postComent->all());
        return \view('dashboard.post-coment.index', ['postComent' => $postComent]);
    }

    public function post(Post $post)
    {
        $posts = Post::orderBy('title', 'asc')->get();
        $postComent = PostComent::orderBy('id', 'desc')
            ->where('post_id', '=', $post->id)
            ->paginate(8);
        //dd($posts->all());
        return \view('dashboard.post-coment.post',
            ['postComent' => $postComent,
                'post' => $post,
                'posts' => $posts]);
    }

    public function show(PostComent $postComent)
    {
        
        //findOrFail=si no encuentra id devuelve un 404
        //$postComent = PostComent::findOrFail($id);
        return \view('dashboard.post-coment.show', ['postComent' => $postComent]);

    }
        public function jshow(PostComent $postComent)
    {

        return response()->json($postComent);

    }
    public function proccess(PostComent $postComent)
    {
        
            if ($postComent->approved == '0'){
            $postComent->approved = '1';
            //$postComent->update(['approved' => '1']);
            }else{
            $postComent->approved = '0';
            //$postComent->update(['approved' => '0']);
         
            } 
            
            $postComent->save();
            return response()->json($postComent->approved);
        

    }

    public function destroy($id)
    {
        PostComent::destroy($id);
        return back()->with('status', 'Comentario eliminado');
    }
}
