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
use Illuminate\Support\Facades\Storage;

class ModelController
{
    private $modelName;
    private $model;

    public function __construct()
    {
        $this->modelName = explode('.', Route::currentRouteName())[0];
        $this->model = new Model($this->modelName);
    }

    /**
     * Model store to Database
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     $key => 'image|mimes:jpeg, png, jpg, doc, docx, xls, xlsx, ppt, pptx|max:15120'
        // ]);
        try {
            foreach ($request->except(['_token']) as $key => $value) {
                if ($value instanceof \Illuminate\Http\UploadedFile) {
                    $this->model->$key = $this->uploadFile($value);
                } else {
                    $this->model->$key = $value;
                }
            }
            $this->model->save();
            session()->flash('admin-toastr', ['type'=>'success','message'=>$this->modelName.' Create Success!']);
        } catch (\Throwable $th) {
            session()->flash('admin-toastr', ['type'=>'error','message'=>$this->modelName.' Create Failed!']);
            // throw $th;
        }
        return redirect()->back();
    }
    
    /**
     * file upload
     */
    public function uploadFile($file)
    {
        // $originalName = $file->getClientOriginalName();
        $extension = $file->getClientOriginalExtension();
        if (!in_array($extension, ["png", "jpg", "docx", "doc", "xls", "xlsx", "ppt", "pptx", "gif"])) {
            return 'This File Extension not Allowed!';
        }
        $filePath = $file->store('file');
        $cosClient = new \Qcloud\Cos\Client(config('filesystems.disks.qcloud-cos'));
        $result = $cosClient->putObject(array(
            'Bucket' => env('COS_BUCKET'),
            'Key' => '/'.$filePath,
            'Body' => Storage::disk('www')->get($filePath),
        ));
        return 'https://'.$result->offsetGet('Location');
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

    // TODO edit
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
