<div {{$attributes}}>
    <h1>Hello world laravel</h1>
<h2>{{$message}}</h2>
    @foreach ($posts as $item)
        {{$item->id}}
    @endforeach
    @foreach ($my_list('item5') as $item)
        <small>
            <ul>
            <li>{{$item}}</li>
            </ul>
        </small>
    @endforeach
</div>