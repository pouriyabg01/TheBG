<?php

namespace Database\Factories\Products;

use App\Models\Products\ProductCategory;
use App\Models\Products\ProductSpecificationType;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Products\ProductSpecificationType>
 */
class ProductSpecificationTypeFactory extends Factory
{
    protected $model = ProductSpecificationType::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'type' => fake()->unique()->word
        ];

    }
}
