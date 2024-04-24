<?php

namespace App\Http\Requests;

use App\Models\Customer;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ProfileUpdateRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:255'],
            'last_name' => ['required', 'string', 'max:255'],
            'phone' => ['required', 'numeric', 'digits:11' , 'regex:/^09\d{9}$/' , Rule::unique(Customer::class)->ignore($this->user('customer')->id)],
            'email' => ['required', 'string', 'lowercase', 'email', 'max:255', Rule::unique(Customer::class)->ignore($this->user('customer')->id)],
        ];
    }
}
