<?php

namespace App\Http\Controllers\api;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CategoryController extends ApiResponseController
{
    public function index(){
        $model=Category::paginate(10);
        $msj="hello wordl";
        return $this->sucessResponse(compact('model','msj'));
    }

    public function all(){
        return $this->sucessResponse(Category::all());
    }
}