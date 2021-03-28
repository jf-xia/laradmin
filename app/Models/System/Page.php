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

  public function html()
  {
    $this->modelObject = new $this->model();
    foreach ($this->template as $view=>$data) {
      $widget = "App\\Widgets\\".ucfirst($view);
      $this->html .= new $widget($this->modelObject,$data);
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

  // public function setTemplateAttribute($template)
  // {

  //   if (!is_array($template)){
  //     $this->attributes['template'] = json_decode(trim($template,chr(239).chr(187).chr(191)),true);
  //   // } else {
  //   //   $this->attributes['template'] = json_decode(json_encode($template));
  //   }
  // }

}
