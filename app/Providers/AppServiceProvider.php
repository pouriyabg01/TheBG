<?php

namespace App\Providers;

use App\Http\Controllers\BootController;
use App\Models\Products\ProductCategory;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        $viewConfiguration = new BootController();
        $viewConfiguration->configureViewComposer();
    }
}
