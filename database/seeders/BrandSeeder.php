<?php

namespace Database\Seeders;

use App\Models\Brand;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BrandSeeder extends Seeder
{
    private $brands = [
        'Sony', 'Apple', 'Samsung', 'LG', 'Nissan',
        'Toyota', 'Hublot', 'HP', 'Dell', 'Asus', 'Gigabyte'
    ];
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        foreach ($this->brands as $brand){
            Brand::create([
                'name' => $brand,
                'status' => 1
            ]);
        }
    }
}
