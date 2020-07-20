<?php

namespace App;

use App\Tag;
use App\Category;
use App\PostImage;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //aca se definen las columnas a afectar en la bd para que no se admitan mas 

     protected $fillable=['title','url_clean','content','category_id','posted'];

     //poner en el nombre de la funcion el objeto a relacionar con la tabla especificada, belongs es una relación de uno a uno
     public function category(){
         return $this->belongsTo(Category::class);
     }

     public function image(){
        return $this->hasOne(PostImage::class);
    }

    public function tags()
    {
        return $this->morphToMany(Tag::class,'taggable');
    }

    /* public function getIdAttribute($value){
        return "jajaj".$value;
    } */

}
