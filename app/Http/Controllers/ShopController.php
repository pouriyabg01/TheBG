<?php

namespace App\Http\Controllers;

use App\Models\Products\Product;
use App\Models\Products\ProductCategory;
use App\Traits\ShopTrait;
use Illuminate\Http\Request;

class ShopController extends Controller
{

    use ShopTrait;


    public function grid(Request $request , $brand = null , ProductCategory $category = null)
    {
        if ($brand){
            $request->merge(['brand' => $brand]);
        }

        if ($request->category) {
            $products = $this->categoryProduct($request->category);
        } elseif ($request->filled('brand')) {
            $products = $this->byBrand($request->brand);
        } elseif ($request->filled('order')) {
            $products = match ($request->order) {
                'top-rated' => $this->trendingProducts(),
                'latest'    => $this->latestProduct(),
                default     => $this->latestProduct(),
            };
        } else {
            $products = $this->latestProduct();
        }

        $count = $products->count();

        $products = $products
            ->with(['thumbnail', 'brand', 'category'])
            ->paginate(12)
            ->appends($request->query());

        if ($products->isEmpty()) {
            abort(404);
        }

        return view('shop.pages.grid', compact('products', 'count'));
    }

    public function show(Product $product)
    {
        $customer = auth('customer')->user();


        $specifications = $product->groupedSpecByType();

        $category = $product->category;

        $sameCat = $category->products()->limit(5)->get()->except($product->id);

        return view('shop.pages.shop-single-v2' , compact(
            'product' ,
            'customer' ,
            'specifications',
            'sameCat'
        ));
    }

    public function compare($code)
    {
        $productCodes = explode('/' , $code);

        $products = Product::with('category.specTypes' , 'thumbnail')->whereIn('code' , $productCodes)->get();
        $specifications = [];
        foreach ($products as $product){
            $groupedSpecs = $product->groupedSpecByType();

            $specifications[$product->code] = $groupedSpecs;
        }
        return view('shop.pages.comparison' , compact('products' , 'specifications'));
    }

    public function about()
    {
        return view('shop.pages.about');
    }
}
