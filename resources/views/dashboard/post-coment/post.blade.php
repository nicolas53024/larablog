@extends('dashboard.master')
@section('content')
<div class="col-6 mb-3">
    <form action="{{route('post-coment.post',1)}}" id="filterForm">
        <div class="form-row">
            <div class="col-5">
                <h6>seleccione el post</h6>
            </div>
            <div class="col-10">
                <select class="form-control " id="filterPost">
                    <option value="0">Escoge un post</option>
                    @foreach($posts as $ps)
                    <option value="{{$ps->id}}" {{$post->id == $ps->id?'selected':''}}>{{Str::limit($ps->title,70)}}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="col-2">
                <button type="submit" class="btn btn-success">Filtrar</button>
            </div>

        </div>
    </form>
</div>
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
    <td id="app{{$p->id}}">
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
            {{-- <a class="btn btn-primary " href="{{route('post-coment.show',$p->id)}}">Ver</a> --}}
            <button class="btn btn-primary" data-toggle="modal" data-target="#showModal" data-id="{{$p->id}}" >Ver
            </button>
            <button class="btn btn-danger" data-toggle="modal" data-target="#borrarModal" data-id="{{$p->id}}">Eliminar
            </button>
        <button class="approved btn btn-{{$p->approved==1?"success":"danger"}}"  data-id="{{$p->id}}" >{{$p->approved==1?"Aprobado":"rechazado"}}</button>

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
<div class="modal fade" id="showModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
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
                <p class="message"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">cerrar</button>


            </div>
        </div>
    </div>
</div>


@else
<h1 align="center">No hay comentarios para el post:</h1>
<h2 align="center">{{$post->title}}</h2>
<a class="btn btn-primary " href="{{route('post.index')}}">Regresar</a>
@endif
<script>
    document.querySelectorAll(".approved").forEach(link=>link.addEventListener("click",function(){
        var id=link.getAttribute("data-id");

        console.log(id);
        $.ajax({///////////////via ajax de jquery  
            method: "POST",
            url: "{{URL::to("/")}}/dashboard/post-coment/proccess/"+id,
            data: {"_token": "{{ csrf_token() }}"}
        })
            .done(function( approved ) {
                console.log(approved);
                if(approved==1){
                    $("#app"+id).text('Aprobado');
                    $(link).removeClass('btn-danger');
                    $(link).addClass('btn-success');
                    $(link).text('Aprobado');
                }else{
                    $("#app"+id).text('Rechazado');
                    $(link).removeClass('btn-success');
                    $(link).addClass('btn-danger');
                    $(link).text('Rechazado');
                }
            }) 
       /*  var formData= new FormData();
            formData.append("_token", '{{ csrf_token() }}');
            fetch("{{URL::to("/")}}/dashboard/post-coment/proccess/"+id,{//envio data via fetch de javaScript nativo
                method:'POST',
                body: formData
            })
                    .then(response=>response.json())
                    .then(approved=>{
                if(approved==1){
                    $("#app"+id).text('Aprobado');
                    link.classList.remove('btn-danger');
                    link.classList.add('btn-success');
                    link.innerHTML="Aprobado";

                }else{
                    $("#app"+id).text('No aprobado');
                    link.classList.remove('btn-success');
                    link.classList.add('btn-danger');
                    link.innerHTML="Rechazado";
                }
                    }); */

    }));

    window.onload= function(){
        $('#showModal').on('show.bs.modal', function (event) {
                    var button = $(event.relatedTarget)
                    var id = button.data('id')
                    var modal = $(this)
                   /*  $.ajax({///////////////via ajax
                            method: "GET",
                            url: "{{URL::to("/")}}/dashboard/post-coment/j-show/"+id

                    })
                        .done(function( comment ) {
                            modal.find('.modal-title').text(comment.title)
                            modal.find('.message').text(comment.message)
                    }) */
                    fetch("{{URL::to("/")}}/dashboard/post-coment/j-show/"+id)
                    .then(response=>response.json())
                    .then(comment=>{
                        modal.find('.modal-title').text(comment.title)
                        modal.find('.message').text(comment.message)
                    });





                });

            $('#borrarModal').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget) // Button that triggered the modal
          var id = button.data('id') // Extract info from data-* attributes
          // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
          // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

          action= $('#formDelete').attr('data-action').slice(0,-1)
          action +=id

          $('#formDelete').attr('action',action)


          var modal = $(this)
          modal.find('.modal-title').text('!!!AVISO!!! comentario n°'+id)

        });

        $("#filterForm").submit(function(){
                console.log($(this).val())
                 var action= $(this).attr('action');
                 action= action.replace(/[0-9]/g,$("#filterPost").val());
                 $(this).attr('action',action)

            });


        }
</script>
@endsection
