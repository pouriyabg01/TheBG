<?php

namespace App\Http\Controllers;

use App\Models\Products\Product;
use App\Traits\ShopTrait;
use Illuminate\Http\Request;

class ShopController extends Controller
{

    use ShopTrait;
    public function grid(Request $request)
    {

        $products = Product::query();

        if($request->category) {
            $products = $this->categoryProduct($request);
        }

        if($request->brand) {
            $products = $this->brandProduct($request);
        }

        if($request->order === 'top-rated'){
            $products = $this->trendingProducts();
        }

        if($request->order === 'latest'){
            $products = $this->latestProduct();
        }

        $count = $products->count();

        $products = $products->paginate(12)->appends($request->query());
        if ($products->isEmpty()) {
            return abort(404);
        }
        $brand = $products->first()->brand;
        $category = $products->first()->category;
        return view('shop.pages.grid' ,compact('products' , 'category' , 'brand' , 'count'));
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
