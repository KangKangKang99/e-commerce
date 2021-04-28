    <?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index');
Route::get('/trang-chu','HomeController@index');
Route::get('/san-pham','HomeController@product');
Route::post('/tim-kiem','HomeController@search');

// tim theo danh muc va thuong hieu
Route::get('danh-muc-san-pham/{category_id}','CategoryProduct@Show_category_home');
Route::get('thuong-hieu-san-pham/{brand_id}','BrandProduct@Show_brand_home');

// chi tiet san pham
Route::get('chi-tiet-san-pham/{product_id}','ProductController@details_product');

//cart
Route::post('/save-cart','CartController@save_cart');
Route::get('/show-cart','CartController@show_cart');
Route::get('/detele-to-cart/{rowId}','CartController@delete_to_cart');
        /*update*/
Route::post('/update-cart-quantity','CartController@update_cart_quantity');
   /*ajax*/
Route::post('/add-cart-ajax','CartController@add_cart_ajax');
Route::get('/show-cart-ajax','CartController@show_cart_ajax');

    // checkout and customer
Route::get('/login-checkout','CheckoutController@login_checkout');
Route::get('/logout-checkout','CheckoutController@logout_checkout');
Route::post('add-customer','CheckoutController@add_customer');
Route::get('checkout','CheckoutController@checkout');
Route::post('save-checkout-customer','CheckoutController@save_checkout_customer'); // lưu địa chỉ thanh toán
Route::post('/login-customer','CheckoutController@login_customer');
Route::get('payment','CheckoutController@payment');
    //order
Route::post('/order-place','CheckoutController@order_place');


 /*Admin*/
    Route::get('/admin','AdminController@index'); // admin cu
    /*Route::group(['prefix'=>'admin'],function (){*/
        /*admin*/

        Route::get('/dashboard','AdminController@dashboard');
        Route::get('/admin-logout','AdminController@logout');
        Route::post('/login','AdminController@login');

   /* //check db
        Route::get('/checkDB', function ()
        {
            dd(DB::connection()->getDatabaseName());
        });*/


    //CATEGORY
        Route::get('/add-category-product','CategoryProduct@add_category_product');
        Route::get('/all-category-product','CategoryProduct@all_category_product');
        /*update*/
        Route::get('/edit-category-product/{category_product_id}','CategoryProduct@edit_category_product');
        Route::post('/update-category-product/{category_product_id}','CategoryProduct@update_category_product');
        /*delete*/
        Route::get('/delete-category-product/{category_product_id}','CategoryProduct@delete_category_product');
        /*save new*/
        Route::post('/save-category-product','CategoryProduct@save_category_product');

        Route::get('/active-category-product/{category_product_id}','CategoryProduct@active_category_product');
        Route::get('/unactive-category-product/{category_product_id}','CategoryProduct@unactive_category_product');


    //BRAND
        Route::get('/add-brand-product','BrandProduct@add_brand_product');
        Route::get('/all-brand-product','BrandProduct@all_brand_product');
        /*update*/
        Route::get('/edit-brand-product/{brand_product_id}','BrandProduct@edit_brand_product');
        Route::post('/update-brand-product/{brand_product_id}','BrandProduct@update_brand_product');
        /*delete*/
        Route::get('/delete-brand-product/{brand_product_id}','BrandProduct@delete_brand_product');
        /*save new*/
        Route::post('/save-brand-product','BrandProduct@save_brand_product');

        Route::get('/active-brand-product/{brand_product_id}','BrandProduct@active_brand_product');
        Route::get('/unactive-brand-product/{brand_product_id}','BrandProduct@unactive_brand_product');


    //PRODUCT
        Route::get('/add-product','ProductController@add_product');
        Route::get('/all-product','ProductController@all_product');
        /*update*/
        Route::get('/edit-product/{product_id}','ProductController@edit_product');
        Route::post('/update-product/{product_id}','ProductController@update_product');
        /*delete*/
        Route::get('/delete-product/{product_id}','ProductController@delete_product');
        /*save new*/
        Route::post('/save-product','ProductController@save_product');

        Route::get('/active-product/{product_id}','ProductController@active_product');
        Route::get('/unactive-product/{product_id}','ProductController@unactive_product');

    //ORDER
        Route::get('/manage-order','CheckoutController@manage_order')->name('manage-order');
Route::get('/view-order/{order_id}','OrderController@view_order');
Route::get('/delete-order/{order_id}','OrderController@delete_order');
/*});*/
