<?php

namespace App;

use App\Rol;
use App\Tag;
use App\Access;
use Laravel\Cashier\Billable;
use Laravel\Passport\HasApiTokens;
use Illuminate\Support\Facades\Hash;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;
    use Billable;
    use HasApiTokens;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'surname', 'email', 'password', 'rol_id',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function rol()
    {
        return $this->belongsTo(Rol::class);
    }
    public function access()
    {
        return $this->hasMany(Access::class);
    }
    public function tags()
    {
        return $this->morphToMany(Tag::class, 'taggable');
    }
    public function isAdmin()
    {
        return $this->rol->key == "admin";
    }
    /**
     * metodo para cambiar forma del atributo cuando se acceda desde cualquier parte de la aplicacion
     *
     * @var value
     */
     public function setNameAttribute($value){//
        $this->attributes['name'] = strtolower($value);
    } 

    public function getNameAttribute($value)
    {
        return ucfirst($value);
    }
}
