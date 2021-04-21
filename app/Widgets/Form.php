<?php

namespace App\Widgets;

class Form extends Widget
{
  /**
   * @param Model $modelObject
   * @param array $data
   * @return void
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

  /**
   * @param string $label
   * @param string $attributes
   * @param string $viewClass
   * @param string $prepend
   * @param string $append
   * @return view
   */
  protected function input($label,$attributes,$viewClass,$prepend=0,$append=0)
  {
      $attributes = $this->formatAttributes($attributes);
      return view('tabler.widgets.form.input',compact('label','attributes','viewClass','prepend','append'))->render();
  }

  /**
   * @param string $label
   * @param string $attributes
   * @param string $viewClass
   * @param string $prepend
   * @param string $append
   * @return view
   */
  protected function date($label,$attributes,$viewClass,$prepend=0,$append=0)
  {
    $id = $attributes['id'];
    $attributes = $this->formatAttributes($attributes);
    return view('tabler.widgets.form.date',compact('id','label','attributes','viewClass','prepend','append'))->render();
  }

  /**
   * @param string $label
   * @param string $attributes
   * @param string $viewClass
   * @param string $prepend
   * @param string $append
   * @return view
   */
  protected function translate($label,$attributes,$viewClass,$prepend=0,$append=0)
  {
    $id = $attributes['id'];
    $attributes = $this->formatAttributes($attributes);
    return view('tabler.widgets.form.translate',compact('id','label','attributes','viewClass','prepend','append'))->render();
  }

  /**
   * @param array $attributes
   * @return string
   */
  protected function formatAttributes($attributes)
  {
      $html = [];
      unset($attributes['front']);
      unset($attributes['label']);
      foreach ($attributes as $name => $value) {
          $html[] = $name.'="'.e($value).'"';
      }

      return implode(' ', $html);
  }

}