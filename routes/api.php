<?php

use App\Rol;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
//use Symfony\Component\Routing\Route as RoutingRoute; */

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/* Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
Encryption keys generated successfully.
Personal access client created successfully.
Client ID: 1
Client secret: Fj1RmlKUb3OHuYofHXnQaOp39m2ouiL8wXfhyvLl
Password grant client created successfully.
Client ID: 2
Client secret: OtkervSDHoXbGxPMrnfEOn5GE6lkG54lLwNDVRaK

}); */

Route::resource('post', 'api\PostController')->only([// definir las rutas que queremos usar de nuestro resource
    'index', 'show'
]);

Route::get('post/{category}/category','api\PostController@category');
Route::get('post/{url_clean}/url_clean','api\PostController@url_clean');

Route::get('category','api\CategoryController@index');
Route::get('category/all','api\CategoryController@all');
Route::post('contact','api\ContactController@store');
Route::post('login','api\AuthController@login');

?>