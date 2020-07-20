@extends('dashboard.master')
@section('content')


<div class="container">
    <form action="{{route("user.update",$user)}}" method="POST">
        @method('PUT')
        @csrf
        <div class="form-group">
            <label for="id_user">Id del usuario</label>
            <input readonly type="text" class="form-control" name="id_user" id="id_user"
                value="{{old('id',$user->id)}}">

            <label for="name">Nombre</label>
            <input type="text" class="form-control" name="name" id="name" value="{{ old('name',$user->name) }}">

            <label for="surname">Apellido</label>
            <input type="text" class="form-control" name="surname" id="surname"
                value="{{ old('surname',$user->surname) }}">

            <label for="email">email</label>
            <input type="email" class="form-control" name="email" id="email" value="{{ old('email',$user->email) }}">

            @include('dashboard.parcial.error')

            

            
        </div>



        <input type="submit" class="btn btn-primary mt-3" value="Modificar">
        <a href="{{route('user.index')}}" class="btn btn-primary mt-3">Regresar</a>
</div>

</form>

</div>





@endsection