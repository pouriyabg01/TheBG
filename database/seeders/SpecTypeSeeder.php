<?php

namespace Database\Seeders;

use App\Models\Products\ProductCategory;
use App\Models\Products\ProductSpecificationType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SpecTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = ProductCategory::all();

        foreach ($categories as $category){
            ProductSpecificationType::factory(5)->create([
                'product_category_id' => $category->id,
            ]);
        }
    }
}
