<?php

namespace App\Repositories\Image;

use App\Http\Requests\ImageRequest;

interface IImage
{
  public function getImages();
  public function getImage($id);
  public function createImage(ImageRequest $request);
  public function updateImage(ImageRequest $request, $id);
  public function deleteImage($id);

  public function getProducts($id);
}
