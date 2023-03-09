<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ImageController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
  return $request->user();
});

// Category
Route::get('/categories', [CategoryController::class, 'index']);
Route::get('/categories/{id}', [CategoryController::class, 'getCategory']);
Route::get('/categories/{id}/products', [CategoryController::class, 'getProducts']);

Route::post('/categories', [CategoryController::class, 'createCategory']);
Route::patch('/categories/{id}', [CategoryController::class, 'update']);
Route::delete('/categories/{id}', [CategoryController::class, 'deleteCategory']);

// Product
Route::get('/products', [ProductController::class, 'index']);
Route::get('/products/{id}', [ProductController::class, 'getProduct']);
Route::get('/products/{id}/categories', [ProductController::class, 'getCategories']);
Route::get('/products/{id}/images', [ProductController::class, 'getImages']);

Route::post('/products', [ProductController::class, 'createProduct']);
Route::patch('/products/{id}', [ProductController::class, 'update']);
Route::delete('/products/{id}', [ProductController::class, 'deleteProduct']);

// Image
Route::get('/images', [ImageController::class, 'index']);
Route::get('/images/{id}', [ImageController::class, 'getImage']);
Route::get('/images/{id}/products', [ImageController::class, 'getProducts']);

Route::post('/images', [ImageController::class, 'createImage']);
Route::patch('/images/{id}', [ImageController::class, 'updateImage']);
Route::delete('/images/{id}', [ImageController::class, 'deleteImage']);
