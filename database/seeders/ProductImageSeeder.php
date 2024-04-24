<?php

namespace Database\Seeders;

use App\Models\Products\Product;
use App\Models\Products\ProductImage;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductImageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void//TODO make sure each product has one thumbnail
    {
        $products = Product::all();

        foreach ($products as $product) {
            // Each product should have one thumbnail
            ProductImage::factory()->thumbnail()->create([
                'product_id' => $product->id,
            ]);

            // Optionally, create multiple catalog images for each product
            $catalogCount = rand(1, 5); // Random number of catalog images
            for ($i = 0; $i < $catalogCount; $i++) {
                ProductImage::factory()->create([
                    'product_id' => $product->id,
                ]);
            }
        }
    }
}
