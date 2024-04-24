<?php

namespace Database\Seeders;

use App\Models\Products\Product;
use App\Models\Products\ProductSpecification;
use App\Models\Products\ProductSpecificationType;
use Illuminate\Database\Seeder;

class SpecSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $products = Product::with('category')->get();

        foreach ($products as $product) {
            $types = ProductSpecificationType::where('product_category_id', $product->category->id)->get();

            foreach ($types as $type) {
                $keys = $type->keys;

                foreach ($keys as $key) {
                    ProductSpecification::factory()->create([
                        'product_id' => $product->id,
                        'key_id' => $key->id,
                        'value' => fake()->word(),
                    ]);
                }
            }
        }
    }

}
