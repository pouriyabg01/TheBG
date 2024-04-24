<?php

namespace App\Filament\Admin\Resources\ProductResource\Widgets;

use App\Models\Products\Product;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class ProductCount extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Total Product', Product::all()->count()),
        ];
    }
}
