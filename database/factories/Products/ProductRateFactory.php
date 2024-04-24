<?php

namespace Database\Factories\Products;

use App\Models\Products\ProductRate;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Products\ProductRate>
 */
class ProductRateFactory extends Factory
{

    protected $model = ProductRate::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'rate' => fake()->numberBetween(1,5),
        ];
    }
}
