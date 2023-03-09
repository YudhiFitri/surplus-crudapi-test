<?php

namespace App\Repositories\Category;

use App\Models\Category;
use App\Http\Requests\CategoryRequest;
use App\Utility\Response;

class CategoryRepo implements ICategory
{
  use Response;

  public function getCategories()
  {
    $categories = Category::all();
    return $this->responseData($categories, 'Berhasil');
  }

  public function getCategory($id)
  {
    $category = Category::find($id);
    return $this->responseData($category, 'Berhasil');
  }

  public function createCategory(CategoryRequest $request)
  {
    $validated = $request->validated();
    if ($validated) {
      $category = new Category();
      $category->name = $request->name;
      $category->enable = $request->enable;

      $category->save();
      return $this->responseData($category, 'Berhasil');
    }
  }

  public function updateCategory(CategoryRequest $request, $id)
  {
    $validated = $request->validated();
    if ($validated) {
      $category = Category::whereId($id)->first();
      if ($category != null) {
        $category->update([
          'name' => $request->name,
          'enable' => $request->enable
        ]);
        return $this->responseData($category, 'Berhasil');
      }
      return $this->responseError('Not found!', 404);
    }
  }

  public function deleteCategory($id)
  {
    $category = Category::findOrFail($id);
    if ($category) {
      $category->products()->detach($id);

      $category->delete();
      return response()->json([
        'success' => true,
        'message' => 'Data deleted!'
      ]);
    }
    return $this->responseError('Not found!', 404);
  }

  public function getProductsByCategoryId($id)
  {
    $categories = Category::find($id);
    $categories->products()->attach($id);

    return $this->responseData($categories->products, 'Berhasil');
  }
}
