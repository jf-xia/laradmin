<?php

namespace App\Http\Controllers;

use App\Http\Requests\PageRequest;
use Illuminate\Http\Request;
use App\Models\System\Page;
use DB;

class DashController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $req)
    {
        $user = \Auth::user();
        if (!$user->hasRole('admin')) {
            abort(403);
        }
        $page = new Page();
        /*$rows = $page->paginate();*/
        $page->title = 'Report';
        $page->description = ' - LarAdmin Dashboard';
        $usercount = DB::table('users')->count();
        $taskcount = DB::table('tasks')->count();
        $rolecount = DB::table('roles')->count();
    
        $users = DB::table('users')->select(DB::raw('*'))
              ->whereRaw('Date(created_at) = CURDATE()')->get();
        

        return view('tabler.reports.index',compact('page','usercount','taskcount','rolecount','users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
