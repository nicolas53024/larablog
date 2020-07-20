@extends('dashboard.master')
@section('content')
<h1 align="center">Lista de contactos</h1>
<table class="table">
    <thead>


    </thead>
    <tbody>
        <tr>
            <td>
                Nombre
            </td>
            <td>
                Apellido
            </td>
            <td>
                Usuario
            </td>
            <td>
                Fecha
            </td>
            <td>
                Acciones
            </td>

        </tr>
    </tbody>
    @foreach ($contacts as $c)


    <tr>
        <td>
            {{$c->name}}
        </td>
        <td>
            {{$c->surname}}
        </td>
        <td>
            {{$c->user->name}} {{$c->user->surname}}
        </td>
        <td>
            {{$c->created_at->formatLocalized('%B-%d-%Y')}}
        </td>
        <td>
            <a class="btn btn-primary " href="{{route('contact.show',$c->id)}}">Ver</a>
            <button  class="btn btn-danger" data-toggle="modal" data-target="#borrarModal" data-id="{{$c->id}}" >Eliminar</button>
        </td>

    </tr>
    @endforeach




</table>
{{$contacts->links()}}
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
                <form id="formDelete" action="{{route('contact.destroy',0)}}" data-action="{{route('contact.destroy',0)}}"
                    method="POST">
                    @method('DELETE')
                    @csrf
                    <button type="submit" class="btn btn-danger">Confirmar</button>
                </form>

            </div>
        </div>
    </div>
</div>

<script>
    window.onload= function(){
    $('#borrarModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var id = button.data('id') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

  action= $('#formDelete').attr('data-action').slice(0,-1)
  action +=id
  
  $('#formDelete').attr('action',action)


  var modal = $(this)
  modal.find('.modal-title').text('!!!AVISO!!! ')
  
})
}
</script>



@endsection