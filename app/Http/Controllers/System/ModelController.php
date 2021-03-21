<?php

namespace App\Http\Controllers\System;

use App\Models\System\Model;
use App\Models\System\Page;
use Laratrust\Helper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;

class ModelController
{
    private $model;

    public function __construct()
    {
        $modelName = explode('.', Route::currentRouteName())[0];
        $this->model = new Model($modelName);
    }

    public function store(Request $request)
    {
        try {
            foreach ($request->except(['_token']) as $key => $value) {
                $this->model->$key = $value;
            }
            $this->model->save();
        } catch (\Throwable $th) {
            throw $th;
        }
        return redirect()->back();
    }

    public function update(Request $request, $id)
    {
        try {
            $update = $this->model->query()->findOrFail($id);
            foreach ($request->except(['_token']) as $key => $value) {
                $update->$key = $value;
            }
            $update->save();
        } catch (\Throwable $th) {
            throw $th;
        }
        return redirect()->back();
    }

    public function destroy($id)
    {
        try {
            $this->model->findOrFail($id)->delete();
        } catch (\Throwable $th) {
            throw $th;
        }
        return ['code'=>200];
    }

    // public function edit($id)
    // {
        
    // }

    // public function index()
    // {
    //     dd($this->model);
    // }

    // public function create()
    // {
        
    // }

    // public function show(Request $request, $id)
    // {

    // }
}
