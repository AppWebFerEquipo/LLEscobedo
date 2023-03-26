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
		<title>Carrito</title>
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
								<h1>Carrito</h1>
							</div>
						</div>
						<div class="col-lg-7">
							
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		

		<div class="untree_co-section before-footer-section">
          @if (Cart::content()->count())
          <div class="container">   
            <div class="row mb-5">
              @include("sitioweb.partials.mensaje")
              <form class="col-md-12" method="post">
                <div class="site-blocks-table">
                  <table class="table">
                    <thead>
                      <tr>
                        <th class="product-thumbnail">Imagen</th>
                        <th class="product-name">Producto</th>
                        <th class="product-price">Precio</th>
                        <th class="product-quantity">Cantidad</th>
                        <th class="product-total">Total</th>
                        <th class="product-remove"></th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach (Cart::content() as $item)
                      <tr>
                        <td class="product-thumbnail">
                          <img src="img/llantas/{{$item->options->urlfoto}}" alt="Image" class="img-fluid">
                        </td>
                        <td class="product-name">
                          <h2 class="h5 text-black">{{$item->name}}</h2>
                        </td>
                        <td>{{$item->price}}</td>
                        <td>
                          <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
                            <div class="input-group-prepend">
                              <a class="btn btn-outline-black decrease" href="/decrementar/{{$item->rowId}}">&minus;</a>
                            </div>
                            <input type="text" class="form-control text-center quantity-amount" value="{{$item->qty}}" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                            <div class="input-group-append">
                              <a class="btn btn-outline-black increase" href="/incrementar/{{$item->rowId}}" >&plus;</a>
                            </div>
                          </div>
      
                        </td>
                        <td>{{number_format($item->qty * $item->price,2)}}</td>
                        <td><a href="/removeritem/{{$item->rowId}}" class="btn btn-black btn-sm">X</a></td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
              </form>
            </div>
      
            <div class="row">
              <div class="col-md-6">
                <div class="row mb-5">
                  <div class="col-md-6 mb-3 mb-md-0">
                    <a class="btn btn-black btn-sm btn-block" href="{{route('eliminarcarrito')}}">Eliminar Carrito</a>
                  </div>
                  <div class="col-md-6">
                    <a class="btn btn-outline-black btn-sm btn-block" href="/tienda">Continuar Comprando</a>
                  </div>
                </div>
              </div>
              <div class="col-md-6 pl-5">
                <div class="row justify-content-end">
                  <div class="col-md-7">
                    <div class="row">
                      <div class="col-md-12 text-right border-bottom mb-5">
                        <h3 class="text-black h4 text-uppercase">Total Carrito</h3>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <div class="col-md-6">
                        <span class="text-black">Subtotal</span>
                      </div>
                      <div class="col-md-6 text-right">
                        <strong class="text-black">{{Cart::subtotal()}}</strong>
                      </div>
                    </div>
                    <div class="row mb-5">
                      <div class="col-md-6">
                        <span class="text-black">Total</span>
                      </div>
                      <div class="col-md-6 text-right">
                        <strong class="text-black">{{Cart::total()}}</strong>
                      </div>
                    </div>
      
                    <div class="row">
                      <div class="col-md-12">
                        <a class="btn btn-black btn-lg py-3 btn-block" href="checkout">Pedir Ahora</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>  
          @else
              <h2 class="text-center"> Carrito Vacío <i class="fa fa-coffee" aria-hidden="true"></i></h2>  
          @endif
            
          </div>
		

		@include('sitioweb.footer.foot')	


		<script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
		<script src="{{asset('js/tiny-slider.js')}}"></script>
		<script src="{{asset('js/custom.js')}}"></script>
	</body>

</html>
