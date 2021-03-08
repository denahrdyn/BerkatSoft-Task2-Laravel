<?php

use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    return [
        'product_name'=> $faker->word($nbWords = 3, $variableNbWords = true),
        'price'=> $faker->numberBetween(10000, 5000000),
        'quantity'=> $faker->numberBetween(1,100),
        'unit'=> $faker->word(),
    ];
});