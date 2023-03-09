<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
use App\Http\Requests\ImageRequest;
use App\Repositories\Image\ImageRepo;

class ImageController extends Controller
{
  protected $imageRepo;
  public function __construct(ImageRepo $imageRepo)
  {
    $this->imageRepo = $imageRepo;
  }

  public function index()
  {
    $images = $this->imageRepo->getImages();

    return $images;
  }

  public function getImage($id)
  {
    $image = $this->imageRepo->getImage($id);

    return $image;
  }

  public function createImage(ImageRequest $request)
  {
    $image = $this->imageRepo->createImage($request);

    return $image;
  }

  public function updateImage(ImageRequest $request, $id)
  {
    $image = $this->imageRepo->updateImage($request, $id);

    return $image;
  }

  public function deleteImage($id)
  {
    $image = $this->imageRepo->deleteImage($id);

    return $image;
  }

  public function getProducts($id)
  {
    $products = $this->imageRepo->getProducts($id);

    return $products;
  }
}
