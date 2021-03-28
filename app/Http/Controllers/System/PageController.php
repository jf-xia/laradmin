<?php

namespace App\Http\Controllers\System;

use App\Http\Requests\PageRequest;
use App\Models\System\Page;
use App\Widgets\Form;
use App\Widgets\Table;
use Laratrust\Helper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;

class PageController
{

    public function __construct()
    {
        
    }

    public function index(Request $req)
    {
        $page = new Page();
        $rows = $page->paginate();
        $page->title = 'Page List';
        $page->description = '';
        return view('tabler.pages.index',compact('page','rows'));
    }

    public function create()
    {
        $page = new Page();
        $page->title = 'Create Page';
        $page->description = '';
        return view('tabler.pages.create',compact('page'));
    }

    public function show($id)
    {
        $page=Page::query()->firstWhere('url','page/'.$id);
        if (empty($page)) {
            abort(404);
        }
        return view('tabler.layouts.page',compact('page'));
    }

    public function store(PageRequest $request)
    {
        try {
            $page = Page::create($request->except(['_token']));
        } catch (\Throwable $th) {
            throw $th;
        }
        session()->flash('admin-toastr', ['type'=>'success','message'=>'Page Create Success!']);
        return redirect(route('page.index'));
    }

    public function edit($id)
    {
        $page = Page::find($id);
        if (empty($page)) {
            abort(404);
        }
        return view('tabler.pages.edit',compact('page'));
    }

    public function update(PageRequest $request, $id)
    {
        
    }

    public function destroy($id)
    {
        try {
            Page::findOrFail($id)->delete();
        } catch (\Throwable $th) {
            throw $th;
        }
        return ['code'=>200];
    }
}
