<?php

namespace Database\Seeders;

use App\Models\Products\ProductCategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class ProductCategorySeeder extends Seeder
{
    private $categories = [
        'digital' , 'smart-phone' , 'laptop' , 'tv' , 'manitor' ,
        'keyboard' , 'cable' , 'watch' , 'led' , 'speaker' ,
        'home' , 'headphone' , 'printer'
    ];
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        foreach ($this->categories as $category) {
            $parentCategory = ProductCategory::inRandomOrder()->first(); // Select a random parent category
            ProductCategory::create([
                'parent_id' => $parentCategory ? $parentCategory->id : null,
                'name' => $category,
                'slug' => 'TBG-cat-' . Str::slug($category),
                'icon' => 'awd',
                'image' => null,
                'description' => 'asdawe'
            ]);
        }
    }
}
