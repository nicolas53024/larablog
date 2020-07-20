@extends('dashboard.master')
@section('content')
{{-- <x-ejemplo message="post component" :posts="$posts" class="container bg-dark"/>  --}}
<h1 class="bd-title" align="center">Lista de Posts</h1>
<a class="btn btn-primary mt-3 mb-3" href="{{route('post.create')}}">Crear</a>
<a class="btn btn-primary mt-3 mb-3" href="{{route('post.export')}}"><i class="fas fa-file-export"></i> Exp Excel</a>
    
   

<form action="{{route('post.index')}}" class="form-inline mb-2">
    <select name="id"  class="form-control">
        <option value="DESC">Descendente</option>
    <option {{request('id')== "ASC" ? "selected":''}} value="ASC">Ascendente</option>
    </select>
<input type="text" name="search" value="{{request('search')}}" placeholder="Contiene..." class="ml-1 form-control">
    <button type="submit" class="ml-2 btn btn-success"><i class="fa fa-filter text-dark" ></i>Filtrar</button>
</form>
<table class="table" class="container">
    <thead>
        <tr>
            <td>
                Id
            </td>
            <td>
                Titulo
            </td>
            <td>
                Categoría
            </td>
            <td>
                Posteado
            </td>
            <td>
               Fecha de  Creacion
            </td>
            <td>
                Hora de Creacion
            </td>

            <td>
               Fecha Actualización
            </td>
            <td>
                Acciones
            </td>
        </tr>
    </thead>
    <tbody>
        @foreach ($posts as $p)
        <tr>
            <td>
                {{$p->id}}
            </td>
            <td>
                {{$p->title}}
            </td>
            <td>
                {{$p->category->title}}
            </td>
            <td>
                {{$p->posted}}
            </td>
            <td>
                <!-- format es una instancia de carbon, una clase contenida dentro de eloquent, para formatear fecha -->
                {{$p->created_at->formatLocalized('%B-%d-%Y')}}
            </td>
            <td>
                {{$p->created_at->format('g:i A')}}
            </td>
            <td>
                {{$p->updated_at->formatLocalized('%B-%d-%Y')}}
            </td>
            <td>
                <a class="btn btn-primary " href="{{route('post.show',$p->id)}}"><i class="fa fa-1x fa-eye"></i></a>
                
                <a class="btn btn-warning " href="{{route('post.edit',$p->id)}}"><i class="fa fa-edit"></i></a>
                <a class="btn btn-success " href="{{route('post-coment.post',$p->id)}}"><i class="fa fa-comments"></i></a>
                <button  class="btn btn-danger" data-toggle="modal" data-target="#borrarModal" data-id="{{$p->id}}" ><i class="fa fa-trash"></i></button>



            </td>
        </tr>
        @endforeach
    </tbody>

</table>

<!-- el metodo links de mi variable de orm posts me pagina los elementos, desde el controlador se establece el numero de ele por pag -->
{{ $posts->appends(
    [
        'id' => request('id'),
        'search' => request('search'),
    ]
    )->links() }}

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
                <form id="formDelete" action="{{route('post.destroy',0)}}" data-action="{{route('post.destroy',0)}}"
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
