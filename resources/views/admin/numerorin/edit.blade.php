@extends('adminlte::page')

@section('title', 'Editar Numero Rin')


@section('content_header')
    <h1>
        Editar Numero de Rin: {{ $rin->numrin }}
    </h1>

    <a class="btn" style="margin-left: 910px; background-color: rgb(190, 131, 21); color: white;" href="{{ route('numerorin_index') }}">Regresar <i class="fas fa-reply"></i></a>
@stop

@section('content')
    <form action="{{ route('numerorin_update', ['id' => $rin->id]) }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div style="margin: 3%;">

            <div class="mb-3">
                <label for="txtNumrin" class="form-label">Nombre de la Marca</label>
                <input type="text" class="form-control" id="txtNumrin" name="txtNumrin" value="{{ old('txtNumrin', $rin->numrin) }}">
            </div>

            <div class="mb-3">
                <label for="txtTipoV" class="form-label">Dimension de Llanta</label>
                <select class="txtTipoV" style="width: 100%!important; " name="txtTipoV">
                    @foreach ($tipovehiculo as $tipovehiculos)
                        <option value="{{$tipovehiculos->id}}" @if ($rin->tipovehiculo_id == $tipovehiculos->id) selected="" @endif>{{$tipovehiculos->vehiculo}}</option>
                    @endforeach
                </select>            
            </div>
          
            <div class="mb-3">
                <label for="chkActivo" class="mb-3 control-label">Activo</label>
                <div class="mb-3">
                    <input type="checkbox" class="form-controlww" id="chkActivo" name="chkActivo" value="1"@if($rin->activo == 1) checked="checked"                        
                    @endif>
                </div>
            </div>
        </div>
        <div class="box-footer">
            <div class="box-tools" style="margin-left: 75%;">
                <!-- Buttons, labels, and many other things can be placed here! -->
                <!-- Here is a label for example -->
                <a type="button" class="btn btn-secondary" href="{{ route('numerorin_index') }}"><i class="fa fa-close"></i> Cancelar</a>
                <button type="submit" class="btn" style="background-color: rgb(190, 131, 21); color: white;"><i class="fas fa-upload"></i> Actualizar</button>
            </div>
        </div>  

    </form>
@stop