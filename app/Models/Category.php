<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
  use HasFactory;

  protected $fillable = [
    'name', 'enable'
  ];

  public function products()
  {
    // return $this->belongsToMany('App\Models\Product');
    return $this->belongsToMany(Product::class);
  }
}
