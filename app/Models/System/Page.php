<?php

namespace App\Models\System;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Page extends Model
{
  use SoftDeletes;

  protected $guarded = [];
  protected $casts = ['template'=>'json'];
  private $html='';
  private $modelObject;

  public function html($where = '',$whereIs = '')
  {
    $modelN = explode('|',$this->model);
    if (isset($modelN[1])) {
        $this->modelObject = new $modelN[0]($modelN[1]);
    } else {
        $this->modelObject = new $modelN[0]();
    }
    if ($where && $whereIs){
      $this->modelObject = $this->modelObject->where($where,$whereIs);
    }
    foreach ($this->template as $view=>$data) {
      $widget = "App\\Widgets\\".ucfirst($view);
      if ($view == 'form' && $where && $whereIs) {
        $data['fields'][]=["id" => $where,"name" => $where,"value" => $whereIs,"type" => "hidden","class" => "form-control","front" => "input","label" => ""];
      }
      $this->html .= new $widget($this->modelObject,$data,$where,$whereIs);
    }
    return $this->html;
  }

  public function pageCache()
  {
    $cacheKey = 'pages';
    if (!cache()->has($cacheKey) || env('APP_DEBUG')) {
        cache([$cacheKey => $this->all()], now()->addHours(1));
    }
    return cache($cacheKey);
  }

  //TODO On Save clear cache

}
