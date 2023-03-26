<!-- /*
* Bootstrap 5
* Template Name: Furni
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="es">
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
		<title>Tienda</title>
	</head>

	<body>

		<!-- Start Header/Navigation -->
		@include('sitioweb.header.navbar')
		<!-- End Header/Navigation -->
		<div class="col-12">
		<!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-2">
							<div class="intro-excerpt">
								<h1>Tienda</h1>
							</div>
						</div>
						<div class="col-lg-10">
							<h3 class="text-center"> Búsqueda de Productos </h3>
							<form action="{{route ('llantaweb')}}" class="row g-3" method="get">
								<div class="col-10">
									<input type="text" class="form-control" name="buscarnombre" placeholder="Nombre Llanta">
								</div>
								<div class="col-auto">
									<button type="submit" class="btn btn-default">
										<li class="fa fa-search"></li>
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
					
			</div>
		<!-- End Hero Section -->
		
			<div class="col-12">
				<div class="row">
					<div class="col-3">
						<div class="accordion row"  id="accordionExample">
							<div class="col-12" style="margin-left: 10%; margin-bottom: 5%">
								<div class="col-lg-4">
									<div class="form-group">
										<label for="txtCategoria" class="col-sm-12 control-label">Categoría</label>
										<div class="col-lg-12 col-md-12">
											<table width="100%">
												<tbody>
												<tr>
													<td width="100%">
														<select class="form-control" id="txtCategoria" name="txtCategoria">
														</select>
														<select class="form-control" id="txtCategoriaInicial" name="txtCategoriaInicial" style="display: none">
															@foreach ($tipo as $tipos)
																<option value="{{$tipos->id}}" data-idvehiculo="{{$tipos->id}}">{{$tipos->vehiculo}}</option>
															@endforeach
														</select>
													</td>
													<td width="8%">
														<a class="form-control btnselect" id="txtCategoriaBtncerrar" style="display: none;">Cerrar</a>
													</td>
												</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<label for="txtFamilia" class="col-sm-12 control-label">Familia</label>
										<div class="col-lg-12 col-md-12">
											<table width="100%">
												<tbody>
												<tr>
													<td width="100%">
														<select class="form-control" id="txtFamilia" name="txtFamilia">
														</select>
													</td>
													<td width="8%">
														<a class="form-control btnselect" id="txtFamiliaBtncerrar" style="display: none;">Cerrar</a>
													</td>
												</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<label for="txtGrupo" class="col-sm-12 control-label">Grupo</label>
										<div class="col-lg-12 col-md-12">
											<table width="100%">
												<tbody>
												<tr>
													<td width="100%">
														<select class="form-control" id="txtGrupo" name="txtGrupo">
														</select>
													</td>
													<td width="8%">
														<a class="form-control btnselect" id="txtGrupoBtncerrar" style="display: none;">Cerrar</a>
													</td>
												</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="accordion-item col-10" style="border-color: #2f2f2f">
									<h2 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											<div class="col-10">
												<strong> Marca </strong>
											</div>
											<div class="col-2 text-rigth">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-image-alt" viewBox="0 0 16 16">
													<path d="M7 2.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0zm4.225 4.053a.5.5 0 0 0-.577.093l-3.71 4.71-2.66-2.772a.5.5 0 0 0-.63.062L.002 13v2a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1v-4.5l-4.777-3.947z"/>
												</svg>
											</div>
											
										</button>
									</h2>
									<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<form action="{{route ('llantaweb')}}" class="row g-3" method="get">
												<select class="col-auto form-select" name="marca" aria-label="Default select example">
													<option selected>Seleccione una Marca</option>
													@foreach ($marcas as $marca)
														<option value="{{$marca->id}}">{{$marca->nombremarca}}</option>
													@endforeach
												</select>
												<button type="submit" class="btn btn-default">
													<li class="fa fa-search"></li>
												</button>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class="col-12" style="margin-left: 10%; margin-bottom: 5%">
								<div class="accordion-item col-10" style="border-color: #2f2f2f">
									<h2 class="accordion-header" id="headingTwo">
										<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											<div class="col-10">
												<strong> Tipo de Vehiculo </strong>
											</div>
											<div class="col-2 text-rigth">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-car-front" viewBox="0 0 16 16">
													<path d="M4 9a1 1 0 1 1-2 0 1 1 0 0 1 2 0Zm10 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0ZM6 8a1 1 0 0 0 0 2h4a1 1 0 1 0 0-2H6ZM4.862 4.276 3.906 6.19a.51.51 0 0 0 .497.731c.91-.073 2.35-.17 3.597-.17 1.247 0 2.688.097 3.597.17a.51.51 0 0 0 .497-.731l-.956-1.913A.5.5 0 0 0 10.691 4H5.309a.5.5 0 0 0-.447.276Z"/>
													<path d="M2.52 3.515A2.5 2.5 0 0 1 4.82 2h6.362c1 0 1.904.596 2.298 1.515l.792 1.848c.075.175.21.319.38.404.5.25.855.715.965 1.262l.335 1.679c.033.161.049.325.049.49v.413c0 .814-.39 1.543-1 1.997V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.338c-1.292.048-2.745.088-4 .088s-2.708-.04-4-.088V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.892c-.61-.454-1-1.183-1-1.997v-.413a2.5 2.5 0 0 1 .049-.49l.335-1.68c.11-.546.465-1.012.964-1.261a.807.807 0 0 0 .381-.404l.792-1.848ZM4.82 3a1.5 1.5 0 0 0-1.379.91l-.792 1.847a1.8 1.8 0 0 1-.853.904.807.807 0 0 0-.43.564L1.03 8.904a1.5 1.5 0 0 0-.03.294v.413c0 .796.62 1.448 1.408 1.484 1.555.07 3.786.155 5.592.155 1.806 0 4.037-.084 5.592-.155A1.479 1.479 0 0 0 15 9.611v-.413c0-.099-.01-.197-.03-.294l-.335-1.68a.807.807 0 0 0-.43-.563 1.807 1.807 0 0 1-.853-.904l-.792-1.848A1.5 1.5 0 0 0 11.18 3H4.82Z"/>
												</svg>
											</div>
										</button>
									</h2>
									<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
										<div class="accordion-body">
												<select class="col-auto form-select" id="tipovehiculo" name="tipovehiculo" aria-label="Default select example">
													<option selected>Seleccione un tipo de vehiculo</option>
													@foreach ($tipo as $tipos)
														<option value="{{$tipos->id}}" data-idvehiculo="{{$tipos->id}}">{{$tipos->vehiculo}}</option>
													@endforeach
												</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12" style="margin-left: 10%; margin-bottom: 5%">
								<div class="accordion-item col-10" style="border-color: #2f2f2f">
									<h2 class="accordion-header" id="headingThree">
										<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											<div class="col-10">
												<strong> Numero de rin </strong>
											</div>
											<div class="col-2 text-rigth">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-123" viewBox="0 0 16 16">
													<path d="M2.873 11.297V4.142H1.699L0 5.379v1.137l1.64-1.18h.06v5.961h1.174Zm3.213-5.09v-.063c0-.618.44-1.169 1.196-1.169.676 0 1.174.44 1.174 1.106 0 .624-.42 1.101-.807 1.526L4.99 10.553v.744h4.78v-.99H6.643v-.069L8.41 8.252c.65-.724 1.237-1.332 1.237-2.27C9.646 4.849 8.723 4 7.308 4c-1.573 0-2.36 1.064-2.36 2.15v.057h1.138Zm6.559 1.883h.786c.823 0 1.374.481 1.379 1.179.01.707-.55 1.216-1.421 1.21-.77-.005-1.326-.419-1.379-.953h-1.095c.042 1.053.938 1.918 2.464 1.918 1.478 0 2.642-.839 2.62-2.144-.02-1.143-.922-1.651-1.551-1.714v-.063c.535-.09 1.347-.66 1.326-1.678-.026-1.053-.933-1.855-2.359-1.845-1.5.005-2.317.88-2.348 1.898h1.116c.032-.498.498-.944 1.206-.944.703 0 1.206.435 1.206 1.07.005.64-.504 1.106-1.2 1.106h-.75v.96Z"/>
												</svg>
											</div>
										</button>
									</h2>
									<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
										<div class="accordion-body">
												<select class="col-auto form-select" id="rin" name="rin" aria-label="Default select example">
													<option selected>Seleccione un numero de rin</option>
												</select>	
												<button type="submit" class="btn btn-default">
													<li class="fa fa-search"></li>
												</button>
										</div>
									</div>
								</div>	
							</div>
						</div>
					</div>

					<div class="col-9">
						<div class="untree_co-section product-section before-footer-section" style="margin-top: -15%">
							<div class="container">
								<div class="row">
			
									<!-- Start Column 1 -->
									@foreach ($llantas as $llanta)
									<div class="col-12 col-md-3 col-lg-3 mb-3 llanta{{$llanta->id}}" >
											<div class="product-item llanta{{$llanta->id}}">
												<div class="card text-bg-dark" style="margin-bottom: 10%;">
													<img src="{{ ('img/llantas/')."/".$llanta->imagen }}"   class="img-fluid product-thumbnail" alt="...">
													<div class="card-img-overlay" align="left">
														<img src="{{ ('img/marcas/')."/".$llanta->marcallanta->imagen }}" style="margin-bottom: 10px; width: 40%; height: 30px!important; " class="img-fluid">
			
													</div>
												</div>
												<h3 class="product-title">{{$llanta->nombrellanta}} </h3>
												<h6 class="product-title">{{$llanta->descripcion}} </h6>
												<strong class="product-price">$ {{$llanta->precio}}</strong>
			
												<span class="icon-cross text-center">
													<form action="{{route('agregaritem')}}" method="post">
														@csrf
														<input type="hidden" name="precio_id" value="{{$llanta->id}}">
														<input type="hidden" name="producto_id" value="{{$llanta->id}}">
				
														<input type="submit" value="AGREGAR" class="btn btn-warning">
			
													</form>
													<img src="images/cross.svg" id="{{$llanta->id}}" class="img-fluid">
												</span>
											</div>
										</div> 
									@endforeach
									
									<!-- End Column 1 -->
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		@include('sitioweb.footer.foot')
		<script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
		<script src="{{asset('js/tienda.js')}}"></script>

		<script src="{{asset('js/tiny-slider.js')}}"></script>
		<script src="{{asset('js/custom.js')}}"></script>
	</body>
</html>

@section('js')
<script type="text/javascript"> 
	$(document).ready(function(){ 
		console.log(111);

		CargarCategoria(); 
		CargarFamilia(); 
		CargarGrupo(); 
	}); 
	function CargarCategoria() { 
		var tablaDatos=$("#txtCategoria"); 
		//var routeurl= "http://localhost/PRODUCTION/elemetic/public/admin/empresa/listing"; 
		var routeurl='listar_areas';
		$("#txtCategoria").empty(); 
		$.get(routeurl, function (res) { 
			$(res).each(function (key, value) { 
				tablaDatos.append('<option value='+value.id+'>'+value.vehiculo+'</option>') 
			}) 
		}) 
	} 
	function CargarFamilia() { 
		var routeurl='cargarfamilias'; 
		var txtCategoriaInicial= null; 
		txtCategoria = document.getElementsByName("txtCategoriaInicial")[0].value; 
		//e.preventDefault(); 
		var token=$("#token").val(); 
		$.ajax({ 
			type:'POST', 
			url:routeurl, 
			headers: {'X-CSRF-TOKEN':token}, 
			dataType:'json', 
			data:{txtCategoria:txtCategoria}, 
			{{--success:function(res) { 
					//alert("ha seleccionado una categoria"); 
					var tablaDatos=$("#txtFamilia"); 
					$("#txtFamilia").empty(); 
					var response = res; 
					$(response).each(function (key, value) { 
						tablaDatos.append('<option value='+value.id+'>'+value.familia+'</option>') 
					}) 
				}--}} 
		}).done(function (respuesta) { 
			console.log(respuesta) 
			var response = respuesta; 
			console.log(response.length) 
			$("#txtFamilia").empty(); 
			$("#txtGrupo").empty(); 
			//$('#txtFamilia').append('<option value="">Seleccione una opción</option>'); 
			for(var i = 0;i < response.length; i++){ 
				console.log(response[i]); 
				$('#txtFamilia').append('<option value='+ response[i].id +'>'+ response[i].familia +'</option>') 
			} 
			CargarGrupo(); 
		}).fail(function () { 
			console.log("error"); 
		}) 
		; 
	} 
	function CargarGrupo() { 
		var routeurl='cargargrupos'; 
		var txtFamilia= null; 
		txtFamilia = document.getElementsByName("txtFamilia")[0].value; 
		//e.preventDefault(); 
		var token=$("#token").val(); 
		$.ajax({ 
			type:'POST', 
			url:routeurl, 
			headers: {'X-CSRF-TOKEN':token}, 
			dataType:'json', 
			data:{txtFamilia:txtFamilia}, 
		}).done(function (respuesta) { 
			console.log(respuesta) 
			var response = respuesta; 
			console.log(response.length) 
			$("#txtGrupo").empty(); 
			//$('#txtGrupo').append('<option value="">Seleccione una opción</option>'); 
			for(var i = 0;i < response.length; i++){ 
				//console.log(response[i]) 
				$('#txtGrupo').append('<option value='+ response[i].id +'>'+ response[i].grupo +'</option>') 
			} 
		}).fail(function () { 
			console.log("error"); 
		}) 
		; 
	} 
	$('#txtCategoria').change(function (e) { 
		var routeurl='cargarfamilias'; 
		var txtCategoria= null; 
		txtCategoria = document.getElementsByName("txtCategoria")[0].value; 
		e.preventDefault(); 
		var token=$("#token").val(); 
		$.ajax({ 
			type:'POST', 
			url:routeurl, 
			headers: {'X-CSRF-TOKEN':token}, 
			dataType:'json', 
			data:{txtCategoria:txtCategoria}, 
			{{--success:function(res) { 
					//alert("ha seleccionado una categoria"); 
					var tablaDatos=$("#txtFamilia"); 
					$("#txtFamilia").empty(); 
					var response = res; 
					$(response).each(function (key, value) { 
						tablaDatos.append('<option value='+value.id+'>'+value.familia+'</option>') 
					}) 
				}--}} 
		}).done(function (respuesta) { 
			console.log(respuesta) 
			var response = respuesta; 
			console.log(response.length) 
			$("#txtFamilia").empty(); 
			$("#txtGrupo").empty();//limpar el grupo por seguridad 
			for(var i = 0;i < response.length; i++){ 
				//console.log(response[i]) 
				$('#txtFamilia').append('<option value='+ response[i].id +'>'+ response[i].familia +'</option>') 
			} 
			CargarGrupo(); 
		}).fail(function () { 
			console.log("error"); 
		}) 
		; 
	}); 
	$('#txtFamilia').change(function (e) { 
		var routeurl='cargargrupos'; 
		var txtFamilia= null; 
		txtFamilia = document.getElementsByName("txtFamilia")[0].value; 
		e.preventDefault(); 
		var token=$("#token").val(); 
		$.ajax({ 
			type:'POST', 
			url:routeurl, 
			headers: {'X-CSRF-TOKEN':token}, 
			dataType:'json', 
			data:{txtFamilia:txtFamilia}, 
			{{--success:function(res) { 
					//alert("ha seleccionado una categoria"); 
					var tablaDatos=$("#txtFamilia"); 
					$("#txtFamilia").empty(); 
					var response = res; 
					$(response).each(function (key, value) { 
						tablaDatos.append('<option value='+value.id+'>'+value.familia+'</option>') 
					}) 
				}--}} 
		}).done(function (respuesta) { 
			console.log(respuesta) 
			var response = respuesta; 
			console.log(response.length) 
			$("#txtGrupo").empty(); 
			for(var i = 0;i < response.length; i++){ 
				//console.log(response[i]) 
				$('#txtGrupo').append('<option value='+ response[i].id +'>'+ response[i].grupo +'</option>') 
			} 
		}).fail(function () { 
			console.log("error"); 
		}) 
		; 
	}); 
</script>
@endsection

