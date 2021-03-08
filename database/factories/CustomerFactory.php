<?php

use Faker\Generator as Faker;

$factory->define(App\Customer::class, function (Faker $faker) {
    return [
        'name'=> $faker->name,
        'address'=> $faker->address,
        'phone'=> $faker->phoneNumber,
        'email'=> $faker->unique()->freeEmail,
    ];
});