@extends('toko.master')

@section('content')

			<article>
			        <div class="row">
			          	<div class="col-sm-6 col-md-6">
			          	</div>
			          	<div class="col-sm-6 col-md-6">

			          	</div>
			          </div>

			          <hr>
					  <div class="thumbnail">
			          <img src="{{ asset($aboutus->image) }}" class="img-responsive"></div>
		          <br />
			          <p class="details">{{$aboutus->description}}</p>
					  <p class="text-right">
					  </p>
					  <p class="text-center">
					   <a href="{!! url('product/cart/'.$product->id) !!}" class="btn-lg btn-primary">Beli</a></p>
			          <hr>
				</article>
@endsection
