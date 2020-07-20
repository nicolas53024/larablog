@extends('dashboard.master')
@section('content')


<div class="container">

    @csrf
    <div class="form-group">
        <label for="title">Numero de la categoría</label>
        <input readonly type="text" class="form-control" name="title" id="title" value="{{$category->id}}">

        <label for="title">Título</label>
        <input readonly type="text" class="form-control" name="title" id="title" value="{{$category->title}}">

        <label for="url_clean">Url limpia</label>
        <input readonly type="text" class="form-control" name="url_clean" id="url_clean" value="{{$category->url_clean}}">

        

    <a href="{{route('category.index')}}" class="btn btn-primary mt-3">Regresar</a>

    </div>
    </form>
</div>
@endsection