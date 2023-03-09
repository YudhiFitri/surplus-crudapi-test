<?php

namespace App\Utility;

use Illuminate\Http\JsonResponse;

trait Response
{
  public function responseData($data, $message = null)
  {
    if ($message != null) {
      return new JsonResponse([
        'result' => true,
        'message' => $message,
        'data' => $data
      ], 200);
    }
    return new JsonResponse([
      'result' => true,
      'data' => $data
    ]);
  }

  public function responseError($message = null, $status = 500)
  {
    if ($message != null) {
      return new JsonResponse([
        'result' => false,
        'message' => $message,
      ], $status);
    }
    return new JsonResponse([
      'result'    => false,
      'mesage'    => $message,
    ], $status);
  }
}
