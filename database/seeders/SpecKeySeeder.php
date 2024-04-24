<?php

namespace Database\Seeders;

use App\Models\Products\ProductSpecificationKey;
use App\Models\Products\ProductSpecificationType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SpecKeySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $specTypes = ProductSpecificationType::all();

        foreach ($specTypes as $specType){
            ProductSpecificationKey::factory(5)->create([
                'spec_type_id' => $specType->id,
            ]);
        }
    }
}
