<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//Route::get('/', 'WelcomeController@index');

//Route::get('home', 'HomeController@index');

/* Route Model Binding */
Route::model('product','App\Product');
Route::model('laporan','App\Transaction');

/* Route Untuk Autentikasi Admin */
Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

/* Route Untuk Pengunjung */
Route::get('/', 'TokoController@index');

Route::get('/product/{id}/show',['as' => 'product.show','uses' => 'TokoController@showItem']);

Route::get('product/cart/{id}', 'TokoController@tambahItem');

Route::get('cart/delete/{id}' , 'TokoController@hapusItem');

Route::get('cart/checkout', 'TokoController@checkout');

Route::post('/cart/{form_id}/save',['as' => 'pelanggan.save','uses' => 'TokoController@savePelanggan']);

/* Route Untuk Administrator */
Route::group( [
    'middleware' => 'auth' ,
        ] , function() {
   
   get('/dashboard', function()
	{
		return view('toko.admin.home');
	}); 

	resource('dashboard/product', 'AdminProductController');
	get('dashboard/laporan', 'AdminLaporanController@index');
	post('dashboard/laporan/periode',['as' => 'laporan.show','uses' => 'AdminLaporanController@getPeriode']);

} );
