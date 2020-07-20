<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class PostComent extends Model
{
    
    protected $fillable=['post_id','user_id','title','message','approved'];

    
    public function post(){
        return $this->belongsTo(Post::class);
        
    }
    public function user(){
        return $this->belongsTo(User::class);
        
    }
}
