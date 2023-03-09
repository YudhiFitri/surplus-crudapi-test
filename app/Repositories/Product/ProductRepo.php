<?php

namespace App\Repositories\Product;

use App\Models\Product;
use App\Http\Requests\ProductRequest;
use App\Utility\Response;

class ProductRepo implements IProduct
{
  use Response;

  public function getProducts()
  {
    $products = Product::all();
    return $this->responseData($products, 'Berhasil');
  }

  public function getProduct($id)
  {
    $product = Product::find($id);
    return $this->responseData($product, 'Berhasil');
  }

  public function createProduct(ProductRequest $request)
  {
    $validated = $request->validated();
    if ($validated) {
      $product = Product::create([
        'name' => $request->name,
        'description' => $request->description,
        'enable' => $request->enable
      ]);
      if ($request->categories != null) {
        $product->categories()->attach($request->categories);
      }
      if ($request->images != null) {
        $product->images()->attach($request->images);
      }

      return $this->responseData($product, 'Berhasil');
    }
  }

  public function updateProduct(ProductRequest $request, $id)
  {
    $validated = $request->validated();
    if ($validated) {
      $product = Product::whereId($id)->first();
      if ($product != null) {
        $product->update([
          'name' => $request->name,
          'description' => $request->description,
          'enable' => $request->enable
        ]);
        if ($request->categories != null) {
          $product->categories()->sync($request->categories);
        }
        if ($request->images != null) {
          $product->images()->sync($request->images);
        }
        return $this->responseData($product, 'Berhasil');
      }
      return $this->responseError('Not found!', 404);
    }
  }

  public function deleteProduct($id)
  {
    $product = Product::findOrFail($id);
    if ($product) {
      $product->products()->detach($id);

      $product->delete();
      return response()->json([
        'success' => true,
        'message' => 'Data deleted!'
      ]);
    }
    return $this->responseError('Not found!', 404);
  }

  public function getCategories($id)
  {
    $product = Product::find($id);
    if ($product != null) {
      // $product->categories()->attach($id);

      return $this->responseData($product->categories, 'Berhasil');
      // return $product->categories;
    }
    return $this->responseError('Not found!', 404);
  }

  public function getImages($id)
  {
    $product = Product::find($id);
    if ($product != null) {
      // $product->images()->attach($id);
      return $this->responseData($product->images, 'Berhasil');
      // return $product->images;
    }
    return $this->responseError('Not found!', 404);
  }
}
