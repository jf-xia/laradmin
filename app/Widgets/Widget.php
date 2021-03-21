<?php

namespace App\Widgets;

use Illuminate\Contracts\Support\Renderable;

abstract class Widget implements Renderable
{
    public $html = '';

    public function render(){
      return $this->html;
    }

    /**
     * @return mixed
     */
    public function __toString()
    {
        return $this->render();
    }
}
