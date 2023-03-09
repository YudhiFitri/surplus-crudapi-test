<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

/**
 * @OA\Info(
 *    title="surplus crudAPI test API Documentation",
 *    version="1.0.0"
 * )
 * 
 * @OA\Server(
 *    url="http://localhost:8000/api/",
 *    description="surplus crudAPI test API Documentation"
 * )
 * 
 * @OA\PathItem(path="/api")
 * 
 * @OA\Tag(
 *    name="Categories",
 *    description="API Endpoints of Categories"
 * )
 * 
 * @OA\Tag(
 *    name="Products",
 *    description="API Endpoints of Products"
 * )
 */
class Controller extends BaseController
{
  use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
}
