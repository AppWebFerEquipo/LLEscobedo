<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="shortcut icon" href="/images/llantera_icono.ico">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />
  <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}"/>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="{{ asset('css/tiny-slider.css') }}"/>
  <link rel="stylesheet" href="{{ asset('css/style.css') }}"/>

  <title>Inicio</title>
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
							<h1>Inicio</h1>
							<p class="mb-4">Llantera Escobedo Caucel, somos una empresa joven dedicada a la venta y reparacion de todo tipo de llanta, siempre tratamos de dar el mejor servicio y los mejores precios
							</p>
							<p><a href="/tienda" class="btn btn-secondary me-2" style="color: white">Levantar pedido, YA!</a><a href="/servicios" class="btn btn-white-outline">Explorar</a></p>
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
		<div class="why-choose-section">
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-lg-6">
						<h2 class="section-title">¿Por que elegirnos?</h2>
						<p>Ofrecemos Servicio, Como los de acontinuación:</p>
						<div class="row my-5">
							@foreach ($servicio as $services)
							<div class="col-6 col-md-6">
								<div class="feature">
									<div class="icon">
										<img src="{{ ('img/servicios/')."/".$services->imagen }}" style="max-width: 120px" alt="Image" class="imf-fluid">
									</div>
									<h3>{{  $services->nombreservicio }}</h3>
								</div>
							</div>
							@endforeach
						</div>
					</div>

					<div class="col-lg-5">
						<div class="img-wrap">
							<img src="images/OIP.jfif" alt="Image" class="img-fluid">
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- End Why Choose Us Section -->
		

		

		@include('sitioweb.footer.foot')	


		<script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
		<script src="{{asset('js/tiny-slider.js')}}"></script>
		<script src="{{asset('js/custom.js')}}"></script>
	</body>

</html>
