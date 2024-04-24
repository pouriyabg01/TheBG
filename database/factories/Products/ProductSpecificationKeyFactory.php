<?php

namespace Database\Factories\Products;

use App\Models\Products\ProductSpecificationKey;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Products\ProductSpecificationKey>
 */
class ProductSpecificationKeyFactory extends Factory
{
    protected $model = ProductSpecificationKey::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'key' => fake()->word
        ];
    }
}
