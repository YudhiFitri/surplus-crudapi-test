<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ImageFactory extends Factory
{
  /**
   * Define the model's default state.
   *
   * @return array
   */
  public function definition()
  {
    return [
      //
      'name' => $this->faker->words(4, true),
      'file' => $this->faker->imageUrl(),
      'enable' => true
    ];
  }
}
