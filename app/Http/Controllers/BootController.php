<?php

namespace App\Http\Controllers;

use App\Models\Products\ProductCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class BootController extends Controller
{
    private $navItems = [
        'About Us' => 'about',
    ];
    public function configureViewComposer()
    {
        View::composer('shop-layout.header.header', function ($view) {
            $categories = ProductCategory::with(['child' , 'parent'])->whereNull('parent_id')->get();
            $navItems = $this->navItems;
            $view->with(compact('categories' , 'navItems'));
        });
    }
}
