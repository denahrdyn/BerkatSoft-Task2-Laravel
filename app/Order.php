<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Order extends Model
{
    //
    protected $fillable = ['customer_name', 'product_name', 'price', 'quantity', 'total'];

    public function getNameAttribute($value) {
        return ucfirst($value);
    }

    public function customer() {
        return $this->belongsTo('App\customer');
    }

    public function product() {
        return $this->belongsTo('App\product');
    }
}
