<?php

namespace App\Models\Products;

use App\Models\Brand;
use App\Models\Customer;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Support\Facades\Storage;

class Product extends Model
{
    use HasFactory;

    protected $fillable = ['title' , 'status' ,'slug' , 'code' , 'price' , 'existence' , 'status' , 'description' , 'product_category_id' , 'brand_id'];

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function groupedSpecByType()
    {
        $this->with('specifications.key.type');
        return $this->specifications->groupBy(function ($spec){
            return $spec->key->type->type;
        });
    }

    public function offer(): hasOne
    {
        return $this->hasOne(ProductOffer::class);
    }

    public function brand(): belongsTo
    {
        return $this->belongsTo(Brand::class , 'brand_id');
    }

    public function category(): belongsTo
    {
        return $this->belongsTo(ProductCategory::class , 'product_category_id');
    }

    public function rates(): hasMany
    {
        return $this->hasMany(ProductRate::class);
    }

    public function comments(): hasMany
    {
        return $this->hasMany(ProductComment::class);
    }

    public function commenter()
    {
        return $this->comments()->count();
    }

    public function avgRate()
    {
        return number_format($this->rates()->avg('rate'));
    }

    public function raters()
    {
        return $this->rates()->count();
    }

    public function images(): hasMany
    {
        return $this->hasMany(ProductImage::class);
    }

    public function thumbnail()
    {
        return $this->images()->where('type' ,'=' , 'thumbnail');
    }

    public function catalog()
    {
        return $this->images()->where('type' ,'=' , 'catalog');
    }

    public function specifications(): hasMany
    {
        return $this->hasMany(ProductSpecification::class , 'product_id');
    }

}
