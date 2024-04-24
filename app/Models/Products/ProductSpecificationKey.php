<?php

namespace App\Models\Products;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class ProductSpecificationKey extends Model
{
    use HasFactory;

    protected $fillable = ['spec_type_id' , 'key'];

    public function type(): belongsTo
    {
        return $this->belongsTo(ProductSpecificationType::class, 'spec_type_id');
    }

    public function specfications(): hasMany
    {
        return $this->hasMany(ProductSpecification::class , 'product_specification_key_id');
    }

}
