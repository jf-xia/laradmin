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
    return '';
});

Route::resource('/page', 'System\PageController');
foreach (Page::all(['url']) as $key => $page) {
    $key = explode('/',$page->url);
    if (isset($key[0]) && isset($key[1]) && $key[0] == 'page') {
        Route::resource('model/'.$key[1], 'System\ModelController');
        Route::get('search/'.$key[1], 'System\ModelController@search');
    }
}
Route::any('/uploadfile', 'Api\TencentCosController@ajaxUploadFile')->name('uploadfile');

Route::resource('/user', 'Auth\UserController');
Route::resource('/role', 'Auth\RoleController');
Route::resource('/permission', 'Auth\PermissionController');

Route::get('/demo/form', 'DemoController@formDemo');

Auth::routes();