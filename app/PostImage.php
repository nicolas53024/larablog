<?php

namespace App;

use App\Post;

use Illuminate\Support\Facades\URL;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class PostImage extends Model
{
    protected $fillable=['post_id','image'];

    //poner en el nombre de la funcion el objeto a relacionar con la tabla especificada, belongs es una relación de uno a uno
    public function post(){
        return $this->belongsTo(Post::class);
    }

    /* public function getImageAttribute ($value){
        return Storage::url($value);
    } */
    
    public function getImageUrl (){

        // return URL::assets('images/'.$this->image);
        return Storage::url($this->image);
    }
}
