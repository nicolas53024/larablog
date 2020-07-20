@extends('dashboard.master')
@section('content')


<div class="container">
    <form action="{{route("category.update",$category->id)}}" method="POST">
        @method('PUT')
        @csrf
        <div class="form-group">
            <label for="title">Numero de la categoría</label>
            <input readonly type="text" class="form-control" name="title" id="title" value="{{old('id',$category->id)}}">
            <label for="title">Título</label>
            <input type="text" class="form-control" name="title" id="title" value="{{ old('title',$category->title) }}">

            @error('title')
            <small class="text-danger">El campo debe tener minimo 5 caracteres max 500</small>
            @enderror
            <div class="form-group">
                <label for="url_clean">Url limpia</label>
                <input readonly type="text" class="form-control" name="url_clean" id="url_clean"
                    value="{{ old('title',$category->url_clean) }}">

                
            </div>
           
            <input type="submit" class="btn btn-primary mt-3" value="Modificar">
            <a href="{{route('category.index')}}" class="btn btn-primary mt-3">Regresar</a>
        </div>
    </form>
</div>
@endsection