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
      if (isset($data['subTemplate']) && $data['subTemplate']==1) {
        $this->html .= $this->{$view}($data);
      } else {
        $this->html .= view('tabler.widgets.'.$view,['data'=>$data]);
      }
    }
    return $this->html;
  }

  protected function form($data)
  {
      $viewClass = [
          'form-group' => 'form-group mb-3 row',
          'label' => 'form-label col-3 col-form-label',
          'field' => 'col',
      ];
      $fields = '';
      foreach ($data['fields'] as $key => $field) {
          $fields .= $this->{$field['front']}($field['label'],$field,$viewClass);
      }
      $data['fields'] = $fields;
      return view('tabler.widgets.form',compact('data'))->render();
  }

  protected function input($label,$attributes,$viewClass,$prepend=0,$append=0)
  {
      $attributes = $this->formatAttributes($attributes);
      return view('tabler.widgets.form.input',compact('label','attributes','viewClass','prepend','append'))->render();
  }

  protected function formatAttributes($attributes)
  {
      $html = [];

      foreach ($attributes as $name => $value) {
          $html[] = $name.'="'.e($value).'"';
      }

      return implode(' ', $html);
  }

}
