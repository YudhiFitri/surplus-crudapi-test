Cara menjalankan aplikasi:
1. Arahkan browser ke alamat https://github.com/YudhiFitri/surplus-crudapi-test
2. Dowbload ZIP repository tersebut
3. Extract file tersebut dan copy kan ke webserver
  ( jika menggunakan XAMPP window ada di "\xampp\htdocs")
4. Buat database di MySQL server Anda dengan nama "surplus-crudapi-test"
5. Jalankan sql file yang ada di folder hasil extract tadi (surplus-crudapi-test.sql)
6. Masuk ke folder yang sudah di extract tadi dan jalankan perintah "php artisan serve".
7. Berikut penjelasan semua api yang ada:
   7.1.  method GET -> http://127.0.0.1:8000/api/categories -> menampilkan semua Category
   7.2.  method GET -> http://127.0.0.1:8000/api/categories/2 -> menampilkan Category berdasarkan id
   7.3.  method GET -> http://127.0.0.1:8000/api/categories/2/products -> menampilkan semua Products berdasarkan category id
   7.4.  method POST -> http://127.0.0.1:8000/api/categories -> menambah Category baru dengan parameter name dan enable
   7.5   method PATCH -> http://127.0.0.1:8000/api/categories/2 -> update Category
   7.6   method DELETE -> http://127.0.0.1:8000/api/categories/2 hapus Category

   7.7   method GET -> http://127.0.0.1:8000/api/products -> menampilkan semua Product
   7.8   method GET -> http://127.0.0.1:8000/api/products -> menampilkan Product berdasarkan id
   7.9   method GET -> http://127.0.0.1:8000/api/products/2/categories menampilkan kategori-kategori untuk produk tertentu
   7.10  method GET -> http://127.0.0.1:8000/api/products/2/images menampilkan images-images untuk produk tertentu
   7.11  method POST -> http://127.0.0.1:8000/api/products -> menambah produc baru dengan parameter name, description, enable.
         Juga bisa untuk menambahkan Categories -> {"name": Product1", "description": "Product Desc 1", "categories": [2,5,7]}
         Juga bisa untuk menambahkan Images -> {"name": Product1", "description": "Product Desc 1", "images": [4,7,9]}
   7.12  method PATCH http://127.0.0.1:8000/api/products/2 -> update product. Juga bisa untuk update categories id dan images id
   7.13  method DELETE http://127.0.0.1:8000/api/products/2 -> hapus product

   7.14  method GET -> http://127.0.0.1:8000/api/images -> menampilkan semua Image
   7.15  method GET -> http://127.0.0.1:8000/api/images/2 -> menampilkan Image berdasarkan id
   7.16  method GET -> http://127.0.0.1:8000/api/images/2/products -> menampilkan semua Products berdasarkan image id
   7.17  method POST -> http://127.0.0.1:8000/api/images -> menambah Image baru dengan parameter name dan enable
   7.18   method PATCH -> http://127.0.0.1:8000/api/images/2 -> update Image
   7.19   method DELETE -> http://127.0.0.1:8000/api/images/2 hapus Image
8. Semua API tersebut bisa di test menggunakan Postman.

Tambahan:
1. Sebagai tambahan buka http://127.0.0.1:8000/api/docs maka akan membuka dokumentasi API (saya tidak membuat untuk semua api).
2. Teknologi yang dipakai: Laravel 8, MySQL 8.0.3, Postman
