@extends('dashboard.master')
@section('content')


<div class="container">
    <form action="{{route("category.store")}}" method="POST">
        @csrf
        <div class="form-group">
            <label for="title">Título</label>
            <input type="text" class="form-control" name="title" id="title"value="{{ old('title') }}">

            @error('title')
            <small class="text-danger">El campo debe tener minimo 5 caracteres max 500</small>
            @enderror
            <div class="form-group">
                <label for="url_clean">Url limpia</label>
                <input type="text" class="form-control" name="url_clean" id="url_clean" value="{{ old('url_clean') }}">

                
            </div>
            @include('dashboard.parcial.error')
            <input type="submit" class="btn btn-primary" value="Enviar">
        </div>
    </form>
</div>
@endsection