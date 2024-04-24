<?php

namespace Database\Factories;

use App\Models\Brand;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Brand>
 */
class BrandsFactory extends Factory
{

    protected $model = Brand::class;
    private $brands = [
        'Sony', 'Apple', 'Samsung', 'LG', 'Nissan',
        'Toyota', 'Hublot', 'HP', 'Dell', 'Asus', 'Gigabyte'
    ];

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        foreach ($this->brands as $brand){
            return [
                'name' => $brand,
                'status' => '1'
            ];
        }
    }

    public function run()
    {

    }
}
