<?php

namespace App;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable=['name','surname','email','message','phone'];
    public function user(){
        return $this->belongsTo(User::class);
    }
}
