@extends('dashboard.master')
@section('content')

<a href="{{route('contact.index')}}" class="btn btn-primary mt-3">regresar</a>
<div class="container">
    <div class="formgroup">
        <label for="name">Nombre</label>
        <input readonly class="form-control" type="text" value="{{$contact->name}}">

        <label for="surname">Apellido</label>
        <input readonly class="form-control" type="text" value="{{$contact->surname}}">

        <label for="email">Enviado</label>
        <input readonly class="form-control" type="text" value="{{$contact->created_at->formatLocalized('%B-%d-%Y %H:%M')}}">

        <label for="email">Correo</label>
        <input readonly class="form-control" type="text" value="{{$contact->email}}">

        <label for="mesaage">Mensaje</label>
        <textarea rows="10" readonly class="form-control" type="text" >{{$contact->message}}</textarea>






    </div>
</div>

@endsection