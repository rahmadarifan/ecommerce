<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model {

	protected  $table = 'kategori';
	public $timestamps = false;

	public function products() {
		return $this->hasMany('App\Product');
	}
}
