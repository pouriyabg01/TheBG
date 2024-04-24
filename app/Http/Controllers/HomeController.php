<?php

namespace App\Http\Controllers;

use App\Traits\ShopTrait;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    use ShopTrait;

    public function index()
    {
        $products = $this->trendingProducts()->take(8)->get();
        $customer = auth('customer')->user();
        return view('shop.pages.index' , compact('products' , 'customer'));
    }
}
