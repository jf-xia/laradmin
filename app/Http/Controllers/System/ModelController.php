<?php

namespace App\Http\Controllers\System;

use App\Models\System\Model;
use App\Models\System\Page;
use Laratrust\Helper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;

class ModelController
{
    private $modelName;
    private $model;

    /**
     * construct $this->model before load page
     * @return void
     */
    public function __construct()
    {
        $this->modelName = explode('.', Route::currentRouteName())[0];
        $this->model = new Model($this->modelName);
    }

    /**
     * Model store to Database
     * @param Request $request
     * @return redirect Previous page
     */
    public function store(Request $request)
    {
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
            Log::error('model store',[$th]);
        }
        return redirect()->back();
    }
    
    /**
     * file upload
     * @param file $file
     * @return string
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

    /**
     * destroy model entity and delete data row
     * @param int $id
     * @return json
     */
    public function destroy($id)
    {
        try {
            $this->model->findOrFail($id)->delete();
        } catch (\Throwable $th) {
            Log::error('model destroy',[$th]);
            return response()->json(['code'=>500,'msg'=>'Server Error!']);
        }
        return response()->json(['code'=>200,'msg'=>'Delete Success!']);
    }


}
