<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddProductsAndKategoriRelationship extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('products', function($table){
			$table->integer('kategori_id')->unsigned()->index()->default(1);
			$table->foreign('kategori_id')->references('id')->on('kategori');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('products', function ($table) {
            $table->dropForeign(['kategori_id']);
        });
	}

}
