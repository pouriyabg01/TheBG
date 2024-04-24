<?php

namespace Database\Factories\Products;

use App\Models\Products\Product;
use App\Models\Products\ProductSpecification;
use App\Models\Products\ProductSpecificationKey;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Products\ProductSpecification>
 */
class ProductSpecificationFactory extends Factory
{
    protected $model = ProductSpecification::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'value' => fake()->word
        ];
    }
}
