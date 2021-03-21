<?php

namespace App\Widgets;

class Table extends Widget
{
  /**
   * @param Model $modelObject
   * @param Array $data
   * @$data
   */
  public function __construct($modelObject,$data)
  {
    $search = request('q');
    if ($search) {
      $modelObject = $modelObject->where($data['searchField'],'like','%'.$search.'%');
    }
    $rows = $modelObject->paginate();
    // dd($rows);
    $this->html = view('tabler.widgets.table',compact('data','rows'))->render();
  }

}