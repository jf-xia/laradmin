<?php

namespace App\Http\Controllers\System;

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

    public function show(Request $request, $id)
    {
        $page=Page::query()->firstWhere('url','page/'.$id);
        return view('tabler.layouts.page',compact('page'));
    }

    public function store(Request $request)
    {
        
    }

    public function edit($id)
    {
        
    }

    public function update(Request $request, $id)
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
