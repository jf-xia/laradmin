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
        /* basic table rows count*/
        $userCount = DB::table('users')->count();
        $taskCount = DB::table('tasks')->count();
        $pageCount = DB::table('pages')->count();
        $sourceCount = DB::table('sources')->count();
        $articleCount = DB::table('articles')->count();
        $count = DB::table('sources')
                 ->select('category', DB::raw('count(*) as total'))
                 ->groupBy('category')
                 ->get();
        $artcount = DB::table('articles')
                 ->select('source_id', DB::raw('count(*) as total'))
                 ->orderby('total','desc')
                 ->groupBy('source_id')
                 ->take(10)
                 ->get();

        $customer = DB::table('customers')->distinct('name')->count('name');
        $contractCount = DB::table('contracts')->count();
        $contracts = DB::table('contracts')
        ->sum('amount');

        $count = DB::table('sources')
        ->select('category', DB::raw('count(*) as total'))
        ->groupBy('category')
        ->get();

       


    


        return view('tabler.reports.index',compact('page','userCount','taskCount','pageCount','sourceCount','count','artcount','contracts','articleCount','customer','contractCount'));
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
