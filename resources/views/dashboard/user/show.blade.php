@extends('dashboard.master')
@section('content')


<div class="container">

    @csrf
    <div class="form-group">
        <label for="title">Id de Usuario</label>
        <input readonly type="text" class="form-control" name="id_user" id="id_user" value="{{$user->id}}">

        <label for="name">Nombre</label>
        <input readonly type="text" class="form-control" name="name" id="name" value="{{$user->name}}">

        <label for="surname">Apellido</label>
        <input readonly type="text" class="form-control" name="surname" id="surname" value="{{$user->surname}}">

        <label for="email">Email</label>
        <input readonly type="text" class="form-control" name="email" id="email" value="{{$user->email}}">

        <label for="rol">Rol del usuario</label>
        <input readonly type="text" class="form-control" name="rol" id="rol" value="{{$user->rol->key}}">

        
        

    <a href="{{route('user.index')}}" class="btn btn-primary mt-3">Regresar</a>
    <a href="{{route('user.access',$user->id)}}" class="btn btn-warning mt-3">Ver Accesos</a>

    </div>
    </form>
</div>
@endsection