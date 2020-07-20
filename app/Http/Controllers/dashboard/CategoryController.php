<?php

namespace App\Http\Controllers\dashboard;

use App\Category;
use Carbon\Carbon;
use App\Helpers\CustomUrl;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCategoryPost;
use App\Http\Requests\UpdateCategoryPut;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    public function __construct()
    { //como array defino mis middleware
        $this->middleware(['auth', 'rol.admin']); //metodo para acceder a las rutas de categories, solo cuando este logueado
    }
    public function index()
    {
        Carbon::setLocale('es');
        Carbon::setUtf8(true);
        setlocale(LC_TIME, 'es_ES');
        $categories = Category::orderBy('id', 'asc')->paginate(4);

        return view('dashboard.category.index', ['categories' => $categories]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return \view('dashboard.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCategoryPost $request)
    {
        
        if ($request->url_clean == "") {
            $url_clean = CustomUrl::urlTitle(CustomUrl::convertAccentedCharacters($request->title), "-", true); //asigna por default el mismo titulo del post a la url
        } else {
            $url_clean = CustomUrl::urlTitle(CustomUrl::convertAccentedCharacters($request->url_clean), "-", true);
        }
        $requestData = $request->validated(); //se debe duplicar porque no podemos manipular el request de laravel
        $requestData['url_clean'] = $url_clean; //se asigna al nuevo arreglo la url modificada sin char ni acentos
        $validator = Validator::make($requestData, StoreCategoryPost::myRules()); //obtener nuestras rules validate desde el objeto store

        if ($validator->fails()) {
            return redirect('dashboard/category/create')
                ->withErrors($validator)
                ->withInput();
        }
        Category::create($requestData);
        
        //despues de ejecutar el create redirige a la misma vista,with envia mensaje de confirmacion
        return back()->with('status', 'La categoría ha sido creada con exito');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        $category->findOrFail($category->id);
        return \view('dashboard.category.show', ['category' => $category]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        return \view('dashboard.category.edit', ['category' => $category]);
      

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCategoryPut $request, Category $category)
    {
        $category->update($request->validated());
        return back()->with('status', 'Categoría modificado');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        $category->destroy($category->id);
        return back()->with('status', 'categoria eliminada');
    }

   public function setServiceHistory(){ 
            
   }
}
