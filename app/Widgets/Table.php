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
    $rows = $modelObject->paginate();
    $this->html = view('tabler.widgets.table',compact('data','rows'))->render();
  }

}