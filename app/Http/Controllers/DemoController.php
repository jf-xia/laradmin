<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DemoController extends Controller
{
    
    public function formDemo()
    {
        // TODO Manage those metaData in DataBase
        $title='formDemo';
        $header='formDemoHeader';
        $description='formDemo description';
        $metaDataForm= [[
            'front'=>'input',
            'type'=>'text',
            'id'=>'text',
            'name'=>'text',
            'label'=>'Text Input',
            'class'=>'form-control',
            'placeholder'=>'text',
        ],
        [
            'front'=>'input',
            'type'=>'date',
            'id'=>'date',
            'name'=>'date',
            'label'=>'Data Input',
            'class'=>'form-control',
            'placeholder'=>'date',
        ],
        [
            'front'=>'input',
            'type'=>'time',
            'id'=>'time',
            'name'=>'time',
            'label'=>'Time Input',
            'class'=>'form-control',
            'placeholder'=>'time',
        ]];
        $form = [
            'formTitle'=>'Horizontal form',
            'fields'=>$metaDataForm,
            //TODO 'action'=>'',
        ];
        $content = $this->form($form);
        return view('admin.layouts.page',compact('title','header','description','content'));
    }

    protected function form($form)
    {

        $viewClass = [
            'form-group' => 'form-group mb-3 row',
            'label' => 'form-label col-3 col-form-label',
            'field' => 'col',
        ];
        
        $fields = '';
        foreach ($form['fields'] as $key => $field) {
            $fields .= $this->{$field['front']}($field['label'],$field,$viewClass);
        }
        $form['fields'] = $fields;
        return view('admin.widgets.form',compact('form'))->render();
    }

    protected function input($label,$attributes,$viewClass,$prepend=0,$append=0)
    {
        $attributes = $this->formatAttributes($attributes);
        return view('admin.widgets.form.input',compact('label','attributes','viewClass','prepend','append'))->render();
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
