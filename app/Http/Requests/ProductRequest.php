<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
  /**
   * Determine if the user is authorized to make this request.
   *
   * @return bool
   */
  public function authorize()
  {
    return true;
  }

  /**
   * Get the validation rules that apply to the request.
   *
   * @return array
   */
  public function rules()
  {
    return [
      'name' => 'required',
      'description' => 'required',
      'enable' => 'required',
      'categories' => 'array',
      'images' => 'array'
    ];
  }

  public function message()
  {
    return [
      'name.required' => 'Name can not be blank!',
      'description.required' => 'Description can not be blank!',
      'enable.required' => 'Enable can not be blank!',
    ];
  }
}
