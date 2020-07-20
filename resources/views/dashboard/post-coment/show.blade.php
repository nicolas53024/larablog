@extends('dashboard.master')
@section('content')

<a href="{{route('post-coment.index')}}" class="btn btn-primary mt-3">regresar</a>
<div class="container">
    <div class="formgroup">
        <label for="name">Titulo</label>
        <input readonly class="form-control" type="text" value="{{$postComent->title}}">

        <label for="surname">Usuario</label>
        <input readonly class="form-control" type="text" value="{{$postComent->user->email}}">

        <label for="email">Creado</label>
        <input readonly class="form-control" type="text" value="{{$postComent->created_at->formatLocalized('%B-%d-%Y %H:%M')}}">

        <label for="email">Correo</label>
        <input readonly class="form-control" type="text" value="{{$postComent->user['name']}}">

        <label for="email">Titulo Post</label>
        <input readonly class="form-control" type="text" value="{{$postComent->post->title}}">

        <label for="mesaage">Mensaje</label>
        <textarea rows="10" readonly class="form-control" type="text" >{{$postComent->message}}</textarea>
        <br><br><br><br>
    </div>
</div>

@endsection