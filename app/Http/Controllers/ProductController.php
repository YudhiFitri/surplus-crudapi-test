<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
use App\Repositories\Product\ProductRepo;
use App\Http\Requests\ProductRequest;

class ProductController extends Controller
{
  protected $productRepo;
  public function __construct(ProductRepo $productRepo)
  {
    $this->productRepo = $productRepo;
  }

  public function index()
  {
    $products = $this->productRepo->getProducts();

    return $products;
  }

  public function getProduct($id)
  {
    $product = $this->productRepo->getProduct($id);

    return $product;
  }

  public function createProduct(ProductRequest $request)
  {
    $product = $this->productRepo->createProduct($request);

    return $product;
  }

  public function update(ProductRequest $request, $id)
  {
    $product = $this->productRepo->updateProduct($request, $id);

    return $product;
  }

  public function deleteProduct($id)
  {
    $product = $this->productRepo->deleteProduct($id);

    return $product;
  }

  public function getCategories($id)
  {
    $categories = $this->productRepo->getCategories($id);

    return $categories;
  }

  public function getImages($id)
  {
    $images = $this->productRepo->getImages($id);

    return $images;
  }
}
