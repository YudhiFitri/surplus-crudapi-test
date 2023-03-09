<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
  /**
   * Seed the application's database.
   *
   * @return void
   */
  public function run()
  {
    // \App\Models\User::factory(10)->create();

    // Categories
    \App\Models\Category::factory(10)->create();

    // Products
    \App\Models\Product::factory(25)->create();

    // Images
    \App\Models\Image::factory(30)->create();

    // category_product
    $categories = \App\Models\Category::all();
    \App\Models\Product::all()->each(function ($product) use ($categories) {
      $product->categories()->attach(
        $categories->random(rand(1, 10))->pluck('id')->toArray()
      );
    });

    // product images
    $products = \App\Models\Product::all();
    \App\Models\Image::all()->each(function ($image) use ($products) {
      $image->products()->attach(
        $products->random(rand(1, 20))->pluck('id')->toArray()
      );
    });
  }
}
