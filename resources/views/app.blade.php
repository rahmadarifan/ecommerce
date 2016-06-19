<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Laravel</title>

	<link href="{{ asset('/css/app.css') }}" rel="stylesheet">
	<link rel="stylesheet" href="{{ asset('/css/jquery-ui.css') }}">

	<!-- Fonts -->
	<link href='//fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			@if (Auth::guest())
			@else
				<a class="navbar-brands" href="{{ url('/') }}">Lihat Toko</a>
				<a class="navbar-brands" href="#" class="dropdown-toggle" role="button">{{ Auth::user()->name }}</a>
				<a class="navbar-brands" href="{{ url('/auth/logout') }}">Logout</a>
			@endif
			<div class="navbar-header">
			@if (Auth::guest())
				<a class="navbar-brand" href="{{ url('/') }}">Home</a>
			@else
			<a class="navbar-brand" href="{{ url('/dashboard') }}">Home</a>
				<a class="navbar-brand" href="{{ url('dashboard/product') }}">Data produk</a>
				<a class="navbar-brand" href="{{ url('/dashboard/laporan') }}#">Laporan Transaksi</a>
			@endif

			</div>
		</div>
	</nav>

	@yield('content')

	<!-- Scripts -->
<script src="{{ asset('/js/jquery-1.10.2.js') }}"></script>
<script src="{{ asset('/js/jquery-ui.js') }}"></script>
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
	 $( "#datepicker2" ).datepicker();
  });
  </script>

</body>
</html>
