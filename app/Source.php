<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Source extends Model
{
    protected $fillable = [ 'id', 'category', 'description', 'url', 'language', 'country' ];
    protected $casts = ['id' => 'string'];
//
}
