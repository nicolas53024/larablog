@extends('dashboard.master')
@section('content')
<h1 class="bd-title" align="center">Lista de Categorías</h1>
<a class="btn btn-primary mt-3 mb-3" href="{{route('category.create')}}">
    Crear
</a>
<table class="table">
    <thead>
        <tr>
            <td>
                Id
            </td>
            <td>
                Titulo
            </td>
            <td>
                Creacion
            </td>
            <td>
                Actualización
            </td>
            <td>
                Acciones
            </td>
        </tr>
    </thead>
    <tbody>
        @foreach ($categories as $c)
        <tr>
            <td>
                {{$c->id}}
            </td>
            <td>
                {{$c->title}}
            </td>
            <td>
                <!-- format es una instancia de carbon, una clase contenida dentro de eloquent, para formatear fecha -->
                {{$c->created_at->formatLocalized('%A %d %B de %Y ' )}}
            </td>
            <td>
                {{$c->updated_at->formatLocalized('%A %d %B de %Y')}}
            </td>
            <td>
                <a class="btn btn-primary " href="{{route('category.show',$c->id)}}">Ver</a>
                <a class="btn btn-warning " href="{{route('category.edit',$c->id)}}">Modificar</a>
                <button data-toggle="modal" data-target="#borrarModal" data-id="{{$c->id}}"
                    class="btn btn-danger">Eliminar</button>


            </td>
        </tr>
        @endforeach
    </tbody>

</table>

<!-- el metodo links de mi variable de orm posts me pagina los elementos, desde el controlador se establece el numero de ele por pag -->
{{$categories->links()}}

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
                <form id="formDelete" action="{{route('post.destroy',0)}}" data-action="{{route('category.destroy',0)}}"
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