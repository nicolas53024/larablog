@extends('dashboard.master')
@section('content')


<div class="container">

    
    <div class="form-group">
        <label for="title">Numero del post</label>
        <input readonly type="text" class="form-control" name="title" id="title" value="{{$post->id}}">

        <label for="title">Título</label>
        <input readonly type="text" class="form-control" name="title" id="title" value="{{$post->title}}">

        <label for="url_clean">Url limpia</label>
        <input readonly type="text" class="form-control" name="url_clean" id="url_clean" value="{{$post->url_clean}}">

        <label for="content">Contenido</label>
        <textarea readonly class="form-control" id="content" name="content" rows="6">{{$post->content}}</textarea>

    <a href="{{route('post.index')}}" class="btn btn-primary mt-3">Regresar</a>

    </div>
    
</div>
@endsection