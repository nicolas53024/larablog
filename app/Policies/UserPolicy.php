<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class UserPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }
    public function before(User $auth,$ability){ //remueve las politicas segun el parametro, en este caso admin puede editar usuarios
        if ($auth->isAdmin()) {
            return true;
            
        }
    }
    public function edit(User $auth,User $user)
    {
        return $auth->id==$user->id;
    }
}
