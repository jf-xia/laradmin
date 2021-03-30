<?php

namespace App\Widgets;

class Form extends Widget
{
  /**
   * @param Model $modelObject
   * @param Array $data
   * @$data
   */
  public function __construct($modelObject,$data)
  {
    $fields = '';
    foreach ($data['fields'] as $key => $field) {
        $fields .= $this->{$field['front']}($field['label'],$field,$data['viewClass']);
    }
    $data['fields'] = $fields;
    $this->html = view('tabler.widgets.form',compact('data'))->render();
  }

  protected function input($label,$attributes,$viewClass,$prepend=0,$append=0)
  {
      $attributes = $this->formatAttributes($attributes);
      return view('tabler.widgets.form.input',compact('label','attributes','viewClass','prepend','append'))->render();
  }

  protected function date($label,$attributes,$viewClass,$prepend=0,$append=0)
  {
    $id = $attributes['id'];
    $attributes = $this->formatAttributes($attributes);
    return view('tabler.widgets.form.date',compact('id','label','attributes','viewClass','prepend','append'))->render();
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