<?php

namespace App\Repositories\Product;

use App\Http\Requests\ProductRequest;

interface IProduct
{
  public function getProducts();
  public function getProduct($id);
  public function createProduct(ProductRequest $request);
  public function updateProduct(ProductRequest $request, $id);
  public function deleteProduct($id);

  public function getCategories($id);
  public function getImages($id);
}
