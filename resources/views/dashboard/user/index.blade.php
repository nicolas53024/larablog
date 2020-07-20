@extends('dashboard.master')
@section('content')
<h1 class="bd-title" align="center">Lista de usuarios</h1>
<a class="btn btn-primary mt-3 mb-3" href="{{route('user.create')}}">
    Crear
</a>
<a class="btn btn-success mt-3 mb-3 text-light" data-toggle="modal" data-target="#modalExcel"><i
        class="fas fa-upload"></i>
    cargar excel</a>


<table class="table">
    <thead>
        <tr>
            <td>
                Id
            </td>
            <td>
                Nombre
            </td>
            <td>
                Apellido
            </td>
            <td>
                Correo
            </td>
            <td>
                Rol
            </td>
            <td>
                Acciones
            </td>
        </tr>
    </thead>
    <tbody>
        @foreach ($users as $a)
        <tr>
            <td>
                {{$a->id}}
            </td>
            <td>
                {{$a->name}}
            </td>
            <td>
                {{$a->surname}}
            </td>
            <td>
                {{$a->email}}
            </td>
            <td>
                {{$a->rol->key}}
            </td>

            <td>
                <a class="btn btn-primary " href="{{route('user.show',$a->id)}}">Ver</a>
                <a class="btn btn-warning " href="{{route('user.edit',$a->id)}}">Modificar</a>
                <button data-toggle="modal" data-target="#borrarModal" data-id="{{$a->id}}"
                    class="btn btn-danger">Eliminar</button>


            </td>
        </tr>
        @endforeach
    </tbody>

</table>

<!-- el metodo links de mi variable de orm posts me pagina los elementos, desde el controlador se establece el numero de ele por pag -->
{{$users->links()}}

<div class="modal fade" id="borrarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Esta seguro de borrar el registro seleccionado </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">volver</button>
                <form id="formDelete" action="{{route('user.destroy',0)}}" data-action="{{route('user.destroy',0)}}"
                    method="POST">
                    @method('DELETE')
                    @csrf
                    <button type="submit" class="btn btn-danger">Confirmar</button>
                </form>

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalExcel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabel">Escoja su archivo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="formExcel" method="POST" enctype="multipart/form-data" action="{{ route('user.import') }}">
                @csrf
                <div class="modal-body">
                    <div class="col-9">
                        <img class="imagen" src="{{asset("images/excel2.jpg")}}" width="30%">
                        <input type="file" name="excel" id="excel">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">volver</button>
                    <button class="btn btn-success" type="submit" id="confirmExcel">Confirmar</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="modalSuccess" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true" style="overflow-y: scroll;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="ModalLabel">Se completo la solicitud</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="data-success">

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modal-loading" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true" style="overflow-y: scroll;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" >Por favor espera, estamos cargango tu archivo.....</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <img class="imagen" src="{{asset("images/pacman-loading.svg")}}" width="30%">
            </div>
        </div>
    </div>
</div>

<script>
    window.onload= function(){


    $('#borrarModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) 
  var id = button.data('id') 
  action= $('#formDelete').attr('data-action').slice(0,-1)
  action +=id
  $('#formDelete').attr('action',action)
  var modal = $(this)
  modal.find('.modal-title').text('!!!AVISO!!! ');
})
    $('#formExcel').on('submit', function(event){
        $('#modalExcel').modal('hide');
        $('#modal-loading').modal('show');
        var form = $(this);
        var url = form.attr('action');
        event.preventDefault();
            $.ajax({
             url:url,
             method:"POST",
             data:new FormData(this),
             dataType:'JSON',
             contentType: false,
             cache: false,
             processData: false,
             success:function(data)
             {  
                $('#modal-loading').modal('hide');
               console.log("llego");
                if(data != 200){
                    for (const prop in data) {
                         $("#data-success").append(`${data[prop]}`+"<br>");
                    }
              $('#modalSuccess').modal('show');
              clearForm();
                }else{
                    $("#data-success").append("Todos los registros se guardaron con exito");
                    $('#modalSuccess').modal('show');
                    clearForm();
                }
             }
  })
 });
$("#modalSuccess").on('hidden.bs.modal', function () {
    $("#data-success").empty();
    });
}
function clearForm(){
    // $('#modalExcel').modal('toggle');
    $('#formExcel').trigger("reset");
}

</script>

@endsection