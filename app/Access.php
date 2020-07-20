<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Access extends Model
{
    public $timestamps = false;
    protected $fillable=['user_id','added_on','ip'];

    protected $table = 'access';
    
}
