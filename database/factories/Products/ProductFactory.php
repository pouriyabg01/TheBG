<?php

namespace Database\Factories\Products;

use App\Models\Brand;
use App\Models\Products\Product;
use App\Models\Products\ProductCategory;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Products\Product>
 */
class ProductFactory extends Factory
{
    protected $model = Product::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $brands = Brand::pluck('id')->toArray();
        $categories = ProductCategory::pluck('id')->toArray();
        return [
            'title' => fake()->title(),
            'slug' => fake()->slug(),
            'code' => fake()->postcode(),
            'price' => fake()->randomDigit(),
            'existence' => fake()->randomDigit(),
            'status' => fake()->boolean(50),
            'description' => fake()->text,
            'product_category_id' => fake()->randomElement($categories),
            'brand_id' => fake()->randomElement($brands),
        ];
    }
}
