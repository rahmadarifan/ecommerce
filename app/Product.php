<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model {

	protected $fillable = ['name', 'description','price','product_id','image'];
	
	
 public function transaction()
  {
    return $this->hasMany('App\Transaction','product_id');
  }

  public function kategori() {
    return $this->belongsTo('App\Kategori');
  }

}
