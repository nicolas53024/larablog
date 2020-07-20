@extends('dashboard.master')
@section('content')


<div class="container">
    <h1 align="center">Registro de Usuarios</h1>
    <form action="{{route("user.store")}}" method="POST" >
        @csrf
        <div class="form-group">
            <label for="name">Nombre</label>
            <input type="text" required class="form-control" name="name" id="name" value="{{ old('name') }}">

            <label for="surname">Apellido</label>
            <input type="text" required class="form-control" name="surname" id="surname" value="{{ old('surname') }}">

            <label for="email">Email</label>
            <input type="email" required class="form-control" name="email" id="email" value="{{ old('email') }}">

            <label for="password">Contraseña</label>
            <input type="password" required class="form-control" name="password" id="password" >

            
            @include('dashboard.parcial.error')

            <input  type="submit" class="btn btn-primary" value="Enviar">

        </div>
</div>

</form>
</div>
@endsection