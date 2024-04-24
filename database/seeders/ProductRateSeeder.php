<?php

namespace Database\Seeders;

use App\Models\Customer;
use App\Models\Products\Product;
use App\Models\Products\ProductRate;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductRateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        // Assuming you have enough customers
        $customerIds = Customer::pluck('id')->shuffle();

        // Ensure each product gets 20 unique ratings
        Product::each(function ($product) use ($customerIds) {
            $customerIds->random(20)->each(function ($customerId) use ($product) {
                ProductRate::factory()->create([
                    'customer_id' => $customerId,
                    'product_id' => $product->id,
                ]);
            });
        });
    }
}
