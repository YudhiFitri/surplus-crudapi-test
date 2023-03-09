<?php

namespace App\Repositories\Image;

use App\Models\Image;
use App\Http\Requests\ImageRequest;
use App\Utility\Response;

class ImageRepo implements IImage
{
  use Response;

  public function getImages()
  {
    $images = Image::all();
    return $this->responseData($images, 'Berhasil');
  }

  public function getImage($id)
  {
    $image = Image::find($id);
    return $this->responseData($image, 'Berhasil');
  }

  public function createImage(ImageRequest $request)
  {
    $validated = $request->validated();
    if ($validated) {
      $image = Image::create([
        'name' => $request->name,
        'file' => $request->file,
        'enable' => $request->enable
      ]);
      if ($request->products != null) {
        $image->products()->attach($request->products);
      }

      return $this->responseData($image, 'Berhasil');
    }
  }

  public function updateImage(ImageRequest $request, $id)
  {
    $validated = $request->validated();
    if ($validated) {
      $image = Image::whereId($id)->first();
      if ($image != null) {
        $image->update([
          'name' => $request->name,
          'file' => $request->file,
          'enable' => $request->enable
        ]);
        $image->products()->sync($request->products);
        return $this->responseData($image, 'Berhasil');
      }
      return $this->responseError('Not found!', 404);
    }
  }

  public function deleteImage($id)
  {
    $image = Image::findOrFail($id);
    if ($image) {
      $image->images()->detach($id);

      $image->delete();
      return response()->json([
        'success' => true,
        'message' => 'Data deleted!'
      ]);
    }
    return $this->responseError('Not found!', 404);
  }

  public function getProducts($id)
  {
    $image = Image::find($id);
    if ($image != null) {
      // $image->products()->attach($id);

      return $this->responseData($image->products, 'Berhasil');
    }
    return $this->responseError('Not found', 404);
  }
}
