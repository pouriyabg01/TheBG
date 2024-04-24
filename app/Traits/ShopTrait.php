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


    public function categoryProduct(Request $request)
    {
        $category = ProductCategory::where('slug' , $request->category)->with('products')->first();
        return $category->products();
    }

    public function brandProduct(Request $request)
    {
        $brand = Brand::where('slug' , $request->brand)->with('products')->first();
        return $brand->products();
    }

    public function latestProduct()
    {
        return Product::latest();
    }
}
