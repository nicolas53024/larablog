@extends('dashboard.master')
@section('content')


<div class="container">
    <form action="{{route("post.store")}}" method="POST">
        @csrf
        <div class="form-group">
            <label for="title">Título</label>
            <input type="text" class="form-control" name="title" id="title" value="{{ old('title') }}">

            @error('title')
        <small class="text-danger">{{$message}}</small>
            @enderror
            <div class="form-group">
                <label for="url_clean">Url limpia</label>
                <input type="text" class="form-control" name="url_clean" id="url_clean" value="{{ old('url_clean') }}">

                @error('url_clean')
                <small class="text-danger">El campo debe tener minimo 5 caracteres max 500</small>
                @enderror
            </div>
            <div class="form-group">
                <label for="content">Contenido</label>
                <!--text arear no tiene atri value, old debe ir su contenido -->
                <input type="hidden" id="token" value="{{csrf_token()}}">
                <textarea class="form-control" id="content" name="content" rows="1">{{ old('content') }}</textarea>
                @error('content')
                <small class="text-danger">El campo debe tener minimo 5 caracteres max 5000</small>
                @enderror
            </div>
            <label for="category_id">Categoria</label>
            <select class="form-control" name="category_id">
                @foreach ($category as $title=>$id)
                <option value="{{$id}}">{{$title}}</option>
                @endforeach

            </select>
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
                <option {{in_array($id,old('tags_id')?:[])?"selected":""}} value="{{$id}}">{{$title}}</option>
                    @endforeach

                </select>
            </div>

            
            <a href="{{route('post.index')}}" class="btn btn-primary mt-3">Regresar</a>
            <input type="submit" class="btn btn-success mt-3" value="Enviar">

        </div>
        <br />
        @include('dashboard.parcial.error')
</div>
<input type="hidden" class="form-control" name="posted" id="posted" value="not">

</form>

</div>
@endsection