<?php

namespace Database\Factories\Products;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Products\ProductImage>
 */
class ProductImageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => 'img\shop\catalog\04.jpg',  // Simulating image paths or URLs
            'type' => 'catalog',  // Default to catalog type
        ];
    }

    public function thumbnail()
    {
        return $this->state(function (array $attributes) {
            return [
                'type' => 'thumbnail',
            ];
        });
    }
}
