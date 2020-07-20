<?php

namespace App\Http\Controllers\Auth;

use App\Access;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
        $this->middleware('guest')->except('logout');
    }

    function authenticated(Request $request, $user){

        Access::create([
            
            'user_id'=>Auth::user()->id,
            'added_on'=>now(),
            'ip'=>$_SERVER['REMOTE_ADDR'],
            
        
        ]);

    }

    public function redirectTo(){ //redirecciona de pendiendo el rol
        $role = Auth::user()->rol->key;

        switch ($role) {
            case 'admin':
                return '/dashboard/post';
                break;

            default:
                return "/";
                break;
        }

    }

    /* public function authenticate(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            // Authentication passed...
            return redirect()->intended('dashboard');
        }
    } */
}
