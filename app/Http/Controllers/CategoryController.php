<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
use App\Repositories\Category\CategoryRepo;
use App\Http\Requests\CategoryRequest;

class CategoryController extends Controller
{
  protected $categoryRepo;
  public function __construct(CategoryRepo $categoryRepo)
  {
    $this->categoryRepo = $categoryRepo;
  }

  /**
   * @OA\GET(
   *    summary="get categories list",
   *    path="/categories",
   *    description="Return list of categories",
   *    tags={"Categories"},
   *    @OA\Response(
   *        response=200,
   *        description="Successful operation"
   *    ),
   *    @OA\Response(
   *        response=401,
   *        description="Unauthenticated"
   *    ),
   *    @OA\Response(
   *        response=403,
   *        description="forbidden"
   *    )
   * )
   */
  public function index()
  {
    $categories = $this->categoryRepo->getCategories();

    return $categories;
  }

  public function getCategory($id)
  {
    $category = $this->categoryRepo->getCategory($id);

    return $category;
  }

  public function getProducts($id)
  {
    $products = $this->categoryRepo->getProductsByCategoryId($id);

    return $products;
  }

  /**
   * @OA\POST(
   *    summary="Post category data",
   *    path="/categories",
   *    description="store new category data",
   *    tags={"Categories"},
   *    @OA\RequestBody(
   *        required=true,
   *        description="Pass category data",
   *        @OA\JsonContent(
   *            required={"name", "enable"},
   *            @OA\Property(
   *                property="name", type="string", example="Paijo"
   *            ),
   *            @OA\Property(
   *                property="enable", type="integer", example=1
   *            )
   *        )
   *    ),
   *    @OA\Response(
   *        response=200,
   *        description="Success",
   *        @OA\JsonContent(
   *            @OA\Property(
   *              property="message", type="string", example="Data Category berhasil disimpan"
   *            )
   *        )
   *    )
   * )
   */
  public function createCategory(CategoryRequest $request)
  {
    $category = $this->categoryRepo->createCategory($request);

    return $category;
  }

  public function update(CategoryRequest $request, $id)
  {
    $category = $this->categoryRepo->updateCategory($request, $id);

    return $category;
  }

  public function deleteCategory($id)
  {
    $category = $this->categoryRepo->deleteCategory($id);

    return $category;
  }
}
