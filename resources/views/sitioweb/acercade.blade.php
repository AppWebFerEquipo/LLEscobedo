<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="/images/llantera_icono.ico">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}"/>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="{{ asset('css/tiny-slider.css') }}"/>
  <link rel="stylesheet" href="{{ asset('css/style.css') }}"/>
		<title>Acerda de</title>
	</head>

	<body>

		<!-- Start Header/Navigation -->
		@include('sitioweb.header.navbar')
		<!-- End Header/Navigation -->

		<!-- Start Hero Section -->
		<div class="hero">
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-lg-5">
						<div class="intro-excerpt">
							<h1>Acerca de</h1>
						</div>
					</div>
					<div class="col-lg-7">
						<div class="hero-img-wrap">
							<img src="images/llantera_logo.PNG" class="img-fluid" width="500">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Hero Section -->

		

		<!-- Start Why Choose Us Section -->
		<div class="untree_co-section">
			<div class="container">
				<div class="row mb-5">
					<div class="col-lg-5 mx-auto text-center">
						<h2 class="section-title">HISTORIA</h2>
					</div>
				</div>		
				<div class="col-12 text-center" style="font-size: 30px;">
					Llantera Escobedo Caucel, somos una empresa joven dedicada a la venta y reparacion de todo tipo de llanta, siempre tratamos de dar el mejor servicio y los mejores precios.
					<br> <br>
					Contamos con servicio de rescate con camioneta equipada para poder hacer las reparaciones en el sitio
				</div>				
			</div>			
		</div>
				<br> <br> <br>
		<!-- End Why Choose Us Section -->

		

		

		@include('sitioweb.footer.foot')


		<script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
		<script src="{{asset('js/tiny-slider.js')}}"></script>
		<script src="{{asset('js/custom.js')}}"></script>
	</body>

</html>
