<?php

namespace App\Http\Controllers\dashboard;

use App\User;
use App\Access;
use Carbon\Carbon;
use App\Events\UserCreated;
use App\Imports\UsersImport;
use App\Exports\AccessExport;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreUserPost;
use App\Http\Requests\UpdateUserPut;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\File; 
use Symfony\Component\HttpFoundation\Request;



class UserController extends Controller
{
    public function __construct()
    {                
        setlocale(LC_ALL, 'es');//def español para mi app
        Carbon::setUtf8(true);//setUtf8 permite visualizar fechas con tilde, como miércoles etc.....
        Carbon::setLocale('es');//def español para el formateo
                                                //como array defino mis middleware
        $this->middleware(['auth','rol.admin']);//metodo para acceder a las rutas de users, solo cuando este logueado
    }
    public function index()
    {
       
                $users = User::with('rol')->orderBy('id', 'asc')->paginate(4);
       
        return \view('dashboard.user.index', ['users' => $users]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return \view('dashboard.user.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUserPost $request)
    {

        $user=User::create([
            'rol_id'=>1, //usuario de tipo Admin
            'name' => $request['name'],
            'surname' => $request['surname'],
            'email' => $request['email'],
            'password' => Hash::make($request['password']),
         ] );
         event (new UserCreated($user));// evento se activa despues de ejecutar accion
        //despues de ejecutar el create redirige a la misma vista,with envia mensaje de confirmacion
        
        return back()->with('status', 'El usuario ha sido creado con exito');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        $user->findOrFail($user->id);
        return \view('dashboard.user.show', ['user' => $user]);
    }
    
    public function user(User $user)
    {
        
       
        $access = Access::where('user_id',$user->id)->orderBy('added_on', 'desc')->paginate(30);
       
        return \view('dashboard.user.access', ['user'=>$user,'acces' => $access]);
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $this->authorize('edit',$user); //recibe authorize por parametro el nombre del metodo de la politica y el model
        return \view('dashboard.user.edit', ['user' => $user]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUserPut $request, User $user)
    {
        $this->authorize('edit',$user);
        $user->update([
            
            'name' => $request['name'],
            'surname' => $request['surname'],
            'email' => $request['email'],
            
         ]);
        return back()->with('status', 'Usuario modificado');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->destroy($user->id);
        return back()->with('status', 'Usuario eliminado');
    }
    public function export(User $user)
    {
        // $filename = 'posts.xlsx';
        //  Excel::store(new PostsExport, $filename, 'public');
        //  return redirect( Storage::url("{$filename}"));
        ob_end_clean (); // this 
        ob_start ();
        return Excel::download(new AccessExport($user->id), 'access.xlsx');
    }

    public function import(Request $request){ 
        $extension = $request->excel->extension();
        if($extension=="xlsx" || $extension=="xls" ){
            $path=$request->excel->store('public');
            try {
                // $excel= Excel::import(new UsersImport, $path );     
                 $excel=new UsersImport();
                 $excel->import($path);
                 $errorres=$excel->getErrors();
            }
             catch (\Throwable $th) {
                $excel="fallo el registro de datos";
            }
             $fileName = basename($path);
            File::delete(public_path('storage/').$fileName);
            
            $errorres=(count($errorres) == 0) ? 200 : $errorres;

            return response()->json($errorres);
        }else{
            $msg="Formato invalido, solo se acepta formato .xlsx o .xls, por favor valida";
        return response()->json(array('msg'=>$msg,'status'=>400));
        }
        
        
    }
}

