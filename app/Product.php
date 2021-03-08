<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Product extends Model
{
    //
    protected $fillable = ['product_name', 'price', 'quantity', 'unit'];

    public function getNameAttribute($value) {
        return ucfirst($value);
    }

    public function salesorder() {
        return $this->hasMany('App\salesorder');
    }
}
