<?php

namespace App\Repositories\Category;

use App\Http\Requests\CategoryRequest;

interface ICategory
{
  public function getCategories();
  public function getCategory($id);
  public function createCategory(CategoryRequest $request);
  public function updateCategory(CategoryRequest $request, $id);
  public function deleteCategory($id);

  public function getProductsByCategoryId($id);
}
