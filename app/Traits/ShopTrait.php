<?php

namespace App\Traits;

use App\Models\Brand;
use App\Models\Products\Product;
use App\Models\Products\ProductCategory;
use App\Models\Products\ProductRate;
use Illuminate\Http\Request;

trait ShopTrait
{
    public function trendingProducts()
    {
        $products = Product::with(['rates']);

        $products->addSelect(['average_rating' => ProductRate::selectRaw('AVG(rate) as average_rate')
            ->whereColumn('product_id', 'products.id')]);

        $products->orderByDesc('average_rating');

        return $products;
    }

    public function categoryProduct(string $catName)
    {
        $cat = ProductCategory::where('slug' , $catName)->firstOrFail();
        return Product::where('product_category_id' , $cat->id);
    }

    public function brandProduct(string $brandName)
    {
        $brand = Brand::where('name' , $brandName)->firstOrFail();
        return Product::where('brand_id' , $brand->id);
    }

    public function latestProduct()
    {
        return Product::latest();
    }
}
