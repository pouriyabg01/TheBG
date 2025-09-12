<?php

namespace App\Models\Products;

use App\Models\Brand;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;

class ProductCategory extends Model
{
    use HasFactory;

    protected $fillable = ['parent_id' , 'slug' , 'name' , 'image' , 'description'];//add icon

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function specTypes(): hasMany
    {
        return $this->hasMany(ProductSpecificationType::class);
    }

    public function keys(): hasManyThrough
    {
        return $this->hasManyThrough(ProductSpecificationKey::class , ProductSpecificationType::class , 'product_category_id' , 'spec_type_id');
    }

    public function brands(): belongsToMany
    {
        return $this->belongsToMany(Brand::class , 'category_brands');
    }

    public function products(): hasMany
    {
        return $this->hasMany(Product::class);
    }

    public function child(): hasMany
    {
        return $this->hasMany(ProductCategory::class , 'parent_id');
    }

    public function parent(): belongsTo
    {
        return $this->belongsTo(ProductCategory::class , 'parent_id');
    }

    public function getAllParents()
    {
        $parents = collect([]); //get child category also with collect([$this])

        $parent = $this->parent;
        while ($parent) {
            $parents->prepend($parent);
            $parent = $parent->parent;
        }

        return $parents;
    }

}
