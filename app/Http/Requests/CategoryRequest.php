<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
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
      'enable' => 'required',
    ];
  }

  public function message()
  {
    return [
      'name.required' => 'Name can not be blank!',
      'enable.required' => 'Enable can not be blank!'
    ];
  }
}
