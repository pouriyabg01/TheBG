<?php

namespace App\Http\Requests;

use App\Models\Customer;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class AddressFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' => ['string'],
            'phone' => ['numeric', 'digits:11' , 'regex:/^09\d{9}$/'],
            'state' => ['required' , 'string'],
            'city' => ['required' , 'string'],
            'postal_code' => ['required' , 'numeric'],
            'address' => ['required' , 'string'],
        ];
    }
}
