@extends('dashboard.master')
@section('content')



@if(count($postComent)>0)

    <h1 align="center">Comentarios de post</h1>
    <table class="table">
        <thead>
    </thead>
    <tbody>
        <tr>
            <td>
                Id
            </td>
            <td>
                Título
            </td>
            <td>
                Estado
            </td>
            <td>
                Creado
            </td>
            <td>
                Usuario
            </td>

            <td>
                Acciones
            </td>

        </tr>
    </tbody>

    @foreach ($postComent as $p)


    <tr>
        <td>
            {{$p->id}}
        </td>
        <td>
            {{$p->title}}
        </td>
        <td>
            @if ($p->approved==1)
            Aprobado
            @else
            No aprobado
            @endif

        </td>
        <td>
            {{$p->created_at->formatLocalized('%B-%d-%Y')}}
        </td>
        <td>
            {{$p->user->email}}
        </td>
        <td>
            <a class="btn btn-primary " href="{{route('post-coment.show',$p)}}">Ver</a>
            <button class="btn btn-danger" data-toggle="modal" data-target="#borrarModal"
                data-id="{{$p->id}}">Eliminar</button>
        </td>

    </tr>
    @endforeach




</table>
{{$postComent->links()}}
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
                <form id="formDelete" action="{{route('post-coment.destroy',0)}}"
                    data-action="{{route('post-coment.destroy',0)}}" method="POST">
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
@else
<h1 align="center">No hay comentarios para el post:</h1>
    <h2 align="center">{{$post->title}}</h2>
<a class="btn btn-primary " href="{{route('post.index')}}">Regresar</a>
@endif


@endsection
