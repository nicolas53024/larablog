<?php


use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;






Route::get('/','web\WebController@index')->name('index');
Route::get('/categories','web\WebController@index')->name('index');
Route::get('/detail/{id}','web\WebController@detail');
Route::get('/contact','web\WebController@contact');
Route::get('/post-category/{id}','web\WebController@detail');
Route::get('/dashboard','dashboard\PostController@index');
Route::resource('dashboard/post', 'dashboard\PostController');
Route::resource('dashboard/contact', 'dashboard\ContactController')->only([
    'index', 'show','destroy'
]);
Route::resource('dashboard/post-coment', 'dashboard\PostComentController')->only([
    'index', 'show','destroy'
]);
/* imagenes*/
Route::post('dashboard/post/{post}/image','dashboard\PostController@image')->name('post.image');
Route::post('dashboard/post/content_image','dashboard\PostController@content_image');
Route::get('dashboard/post/image-download/{image}', 'dashboard\PostController@imageDownload')->name('post.image-download');
Route::delete('dashboard/post/image-delete/{image}', 'dashboard\PostController@imageDelete')->name('post.image-delete');


Route::get('dashboard/post-coment/{post}/post','dashboard\PostComentController@post')->name('post-coment.post');
Route::get('dashboard/post-coment/j-show/{postComent}','dashboard\PostComentController@jshow');
Route::post('dashboard/post-coment/proccess/{postComent}','dashboard\PostComentController@proccess');

Route::resource('dashboard/category', 'dashboard\CategoryController');
Route::resource('dashboard/user', 'dashboard\UserController');
Route::get('dashboard/user/{user}/access','dashboard\UserController@user')->name('user.access');
Route::get('dashboard/user/{user}/export','dashboard\UserController@export')->name('user.export');
Route::post('dashboard/excel/user-import','dashboard\UserController@import')->name('user.import');
Route::get('dashboard/excel/post/export','dashboard\PostController@export')->name('post.export');
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

//paquetes
Route::get('/chart', 'PaquetesController@charts')->name('chart');
Route::get('/qr_generate', 'PaquetesController@qr_generate')->name('qr_generate');
Route::get('/translate', 'PaquetesController@translate')->name('translate');
Route::get('/stripe_create_customer', 'PaquetesController@stripe_create_customer')->name('stripe_create_customer');
Route::get('/stripe_payment_method_register', 'PaquetesController@stripe_payment_method_register')->name('stripe_payment_method_register');
Route::get('/stripe_payment_method_create', 'PaquetesController@stripe_payment_method_create')->name('stripe_payment_method_create');







?>

