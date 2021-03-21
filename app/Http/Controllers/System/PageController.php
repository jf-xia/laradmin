<?php

namespace App\Http\Controllers\System;

use App\Models\System\Page;
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
        $page=Page::all();
        // $page->title=5435;
        // dd($page);
        // $roles = Role::query()->paginate();
        dd($page);
        return view('tabler.layouts.page',compact('page'));
    }

    public function create()
    {
        
    }

    public function show(Request $request, $id)
    {
        $page=Page::query()->firstWhere('url',$id);
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
        
    }
}
