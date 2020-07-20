<?php

namespace App\Http\Controllers\api;

use App\Post;
use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;

class   PostController extends ApiResponseController // extiende del controller que creamos y en este importamos la clase ApiResponse que lleva el metodo
// importante definir el namespace para poder referenciar
{

    public function index()
    {
        $post = Post::join('post_images', 'post_images.post_id', '=', 'posts.id')
            ->join('categories', 'categories.id', '=', 'posts.id')
            ->select('posts.*', 'categories.title as category', 'post_images.image') // select a las columnas deseadas para renderizar
            ->orderBy('id', 'asc')->paginate(10);
        return $this->sucessResponse($post);
    }


    public function show(Post $post)
    {
        $post->image;
        $post->category;
        return $this->sucessResponse($post);
    }

    public function url_clean(String $url_clean)
    {
        $post= Post::where('url_clean',$url_clean)->firstOrFail();
        $post->image;
        $post->category;
        return $this->sucessResponse($post);
    }

    public function category(Category $category)
    {

        $posts = Post::
            join('post_images', 'post_images.post_id', '=', 'posts.id')->
            join('categories', 'categories.id', '=', 'posts.category_id')->
            select('posts.*', 'categories.title as category', 'post_images.image')->
            orderBy('posts.created_at', 'desc')->
            where('categories.id', $category->id)
            ->paginate(10);
        Log::info($posts);
        return $this->sucessResponse(["posts" => $posts, "category" => $category]);

        // sin relaciones
        // return $this->successResponse(["posts" => $category->post()->paginate(10), "category" => $category]);
    }
}
