<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Brand;
use App\Models\Products\ProductCategory;
use Database\Factories\BrandsFactory;
use Database\Factories\CustomerFactory;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{

    /**
     * Seed the application's database.
     */
    public function run()
    {
//        $sql = file_get_contents('fullDB.sql');
//        DB::unprepared($sql);
//        $this->call(CustomerSeeder::class);
//        $this->call(BrandSeeder::class);
//        $this->call(ProductCategorySeeder::class);
        $this->call([
            SpecTypeSeeder::class,
            SpecKeySeeder::class,
            SpecSeeder::class,
        ]);
    }
}
