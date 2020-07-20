<?php

namespace App\Http\Controllers\api;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(Request $request){ 
        $request->validate([
        'email'=>'required|string|email',
        'password'=>'required|string',
        ]);

        $credentials= request(['email','password']);
        //verificar credenciales
        if(!Auth::attempt($credentials)){
            return response()->json(['message'=>'invalid Credentials',401]);
        }

        $user=$request->user();
        $tokenAuth=$user->createToken('mySecretToken');
        // $token=$tokenAuth->token;sumar una semana al expi
        // $token->expires_at=Carbon::now()->addWeeks(1);
        // $token->save();
        return response()->json([
            'accessToken'=>$tokenAuth->accessToken,
            'token_type'=>'Bearer',
            'expired_at'=>Carbon::parse($tokenAuth->token->expires_at)->toDateString()
            ]);
    }
}
