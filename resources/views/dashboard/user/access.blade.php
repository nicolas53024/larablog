@extends('dashboard.master')
@section('content')

<a class="btn btn-primary " href="{{route('user.show',$user->id)}}">Regresar</a>
@if (count($acces)>0)
<a class="btn btn-primary mt-3 mb-3" href="{{route('user.export',$user)}}"><i class="fas fa-file-export"></i> Exp Excel</a>
@endif

<div class="container">

    @csrf
    <br>
    <h1 align="center">Accesos de Usuario: {{$user->name}} {{$user->surname}}</h1>
    <table class="table table-sm">
        <thead>
            <tr>
                <td>
                    Fecha Acceso
                </td>
                <td>
                    Hora Acesso
                </td>
                <td>
                    Ip
                </td>
            </tr>
        </thead>
        <tbody>
            @foreach ($acces as $a)
            <tr>
                <td >
                    {{Carbon\Carbon::parse($a->added_on)->formatLocalized('%A %d-%B de %Y ')}}
                </td>
                <td>
                    {{Carbon\Carbon::parse($a->added_on)->format('g:i A')}}
                </td>
                <td>
                    {{$a->ip}}
                </td>



            </tr>
            @endforeach
        </tbody>



    </table>
    {{$acces->links()}}


    {{-- <a href="{{route('user.show')}}" class="btn btn-primary mt-3">Regresar</a> --}}

</div>
</form>
</div>
@endsection
