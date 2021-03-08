<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Customer extends Model
{
    //
    protected $fillable = ['name', 'address', 'phone', 'email'];

    public function getNameAttribute($value) {
        return ucfirst($value);
    }

    public function salesorder() {
        return $this->hasMany('App\salesorder');
    }
}
