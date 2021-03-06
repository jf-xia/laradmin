<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

class Customer extends Eloquent
{
  use SoftDeletes;

  protected $guarded = [];
  protected $casts = [];

  // get Customer owner 
  public function user()
  {
    return $this->belongsTo('App\User', 'user_id');
  }

}
