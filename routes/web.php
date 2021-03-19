<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Models\System\Page;

Route::get('/', function () {
    return view('admin.layouts.page',[
        'title'=>'demo',
        'header'=>'header',
        'description'=>'description',
        'content'=>'content',
        'header'=>'header',
        ]);
});

foreach (Page::all() as $key => $page) {
    Route::resource('/page', 'System\PageController');////'.$page->url
}

Route::resource('/user', 'Auth\UserController');
Route::resource('/role', 'Auth\RoleController');
Route::resource('/permission', 'Auth\PermissionController');

Route::get('/demo/form', 'DemoController@formDemo');
