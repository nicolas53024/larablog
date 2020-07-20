<?php

namespace App;

use App\Post;
use App\User;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    public function posts()
    {
        return $this->morphedByMany(Post::class,'taggable');
    }
    public function users()
    {
        return $this->morphedByMany(User::class,'taggable');
    }

}
