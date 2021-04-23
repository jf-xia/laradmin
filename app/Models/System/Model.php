<?php

namespace App\Models\System;

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

class Model extends Eloquent
{
  use SoftDeletes;

  /**
   * The table associated with the model.
   *
   * @var string
   */
  protected $table;
  protected $guarded = [];
  protected $casts = [];

  /**
   * Create a new Eloquent model instance by table name.
   *
   * @param  string  $table
   * @param  array  $attributes
   * @return void
   */
  public function __construct($table,array $attributes = [])
  {
      $this->table = $table;
      parent::__construct($attributes);
  }

}
