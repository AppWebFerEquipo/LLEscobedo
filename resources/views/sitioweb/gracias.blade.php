<!-- /*
* Bootstrap 5
* Template Name: Furni
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
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
		<title>Gracias</title>
	</head>

	<body>

		<!-- Start Header/Navigation -->
		@include('sitioweb.header.navbar')
		<!-- End Header/Navigation -->
		<div class="hero">
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-lg-5">
						<div class="intro-excerpt">
							<h1>Carrito</h1>
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

		<div class="untree_co-section">
			<div class="container">
			<div class="row">
				<div class="col-md-12 text-center pt-5">
				<h2 class="display-3 text-black">Gracias Por Su compra</h2>
				<span class="display-3 thankyou-icon text-primary">
					<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check mb-5" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" d="M11.354 5.646a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L8 8.293l2.646-2.647a.5.5 0 0 1 .708 0z"/>
					<path fill-rule="evenodd" d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
					</svg>
				</span>

				<p class="lead mb-5">Tu orden se ha completado, <strong>RECUERDA</strong> , descarga tu pdf en el botón de "Desacrgar PDF pedido" para poder a pasar a buscar tu pedido.<br>
					Además, tiene un lapso de 24 horas para pasar por el pedido, de lo contrario tu orden se cancelará.</p>
                    <p id="reporte"><a href="/reportePDF" class="btn btn-sm btn-outline-black">Desacrgar PDF pedido</a></p>
                    <p><a href="/tienda" class="btn btn-sm btn-outline-black">Volver a comprar</a></p>
				</div>
			</div>
			</div>
		</div>

		<!-- Start Footer Section -->
		@include('sitioweb.footer.foot')

		<!-- End Footer Section -->


		<script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
		<script src="{{asset('js/tiny-slider.js')}}"></script>
		<script src="{{asset('js/custom.js')}}"></script>
	</body>
    @if (session('succes')=='ECHO')
    <script>
        location.href="#reporte":
    </script>
    @endif
</html>
