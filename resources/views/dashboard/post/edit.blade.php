@extends('dashboard.master')
@section('content')


<div class="container">
    <form action="{{route("post.update",$post->id)}}" method="POST">
        @method('PUT')
        @csrf
        <div class="form-group">
            <label for="id_title">Numero del post</label>
            <input readonly type="text" class="form-control" name="id_title" id="id_title"
                value="{{old('id',$post->id)}}">
            <div class="form-group">
                <label for="title">Título</label>
                <input type="text" class="form-control" name="title" id="title" value="{{ old('title',$post->title) }}">
                @error('title')
                <small class="text-danger">{{$message}}</small>
                @enderror
            </div>
            <label for="title">Categoria</label>
            <select class="form-control" name="category_id">
                @foreach ($category as $title=>$id)
                <option {{$post->category_id==$id ?'selected="selected"':''}} value="{{$id}}">{{$title}}</option>
                @endforeach

            </select>

           {{--  @error('title')
            <small class="text-danger">El campo debe tener minimo 5 caracteres max 500</small>
            @enderror --}}
            <div class="form-group">
                <label for="url_clean">Url limpia</label>
                <input readonly type="text" class="form-control" name="url_clean" id="url_clean"
                    value="{{ old('title',$post->url_clean) }}">


            </div>
            <div class="form-group">
                <label for="content">Contenido</label>
                <!--text arear no tiene atri value, old debe ir su contenido -->
                <textarea class="form-control" id="content" name="content"
                    rows="3">{{ old('content',$post->content) }}</textarea>
                @error('content')
                <small class="text-danger">El campo debe tener minimo 5 caracteres max 5000</small>
                @enderror
                <input type="hidden" id="token" value="{{csrf_token()}}">
            </div>
            <div class="form-group">
                <label for="posted">Posteado</label>
                <select class="form-control" name="posted" id="posted">
                    @include('dashboard.parcial.posted',['val'=>$post->posted])

                </select>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-1">
                        <label for="title">Tags</label>
                    </div>
                    <div class="col-6">
                        <small><b>Puedes seleccionar varios tags oprimiendo tecla ctrl</b></small>
                    </div>
                </div>
                <select multiple class="form-control" name="tags_id[]" id="tags_id">
                    @foreach ($tags as $title=>$id)
                    <option {{in_array($id,old('tags_id')?:$post->tags->pluck("id")->toArray())?"selected":""}}
                        value="{{$id}}">{{$title}}</option>
                    @endforeach

                </select>
            </div>

            <input type="submit" class="btn btn-primary mt-3" value="Modificar">
            <a href="{{route('post.index')}}" class="btn btn-primary mt-3">Regresar</a>
        </div>

    </form>
</div>


<form action="{{route("post.image",$post)}}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="row">

        <div class="col">
            <input type="file" name="image" class="form-control">
        </div>
        <div class="col">
            <input type="submit" value="subir" class="btn btn-primary">
        </div>
    </div>
    @error('image')
    <small class="text-danger">Solo se admiten formatos MPEG,JPEG,BMP,PNG y no mayor a 10 megas</small>
    @enderror
</form>


<div class="row mt-3">
    @foreach ($post->image as $image)
    <div class="col-3">
        <img class="w-100" src="{{$image->getImageUrl()}}" alt="">
        <a href="{{route('post.image-download',$image->id)}}"
            class="float-left btn btn-sm btn-success mt-1">Descargar</a>
        <form action="{{route("post.image-delete",$image->id)}}" method="post">
            @method("delete")
            @csrf
            <button class="float-right btn btn-danger btn-sm mt-1" type="submit">Borrar</button>
        </form>
    </div>

    @endforeach
</div>


@endsection