<nav class="navbar navbar-expand-lg navbar-light bg-light">



    <a class="navbar-brand" href="{{route('post.index')}}">
        <img class="imagen" src="{{asset("images/laravel.png")}}">
    </a>
    <a class="navbar-brand">Larablog</a>





    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    CRUD
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{route('post.index')}}">post</a>
                    <a class="dropdown-item" href="{{route('category.index')}}">categorias</a>
                    <a class="dropdown-item" href="{{route('user.index')}}">usuarios</a>
                    <a class="dropdown-item" href="{{route('contact.index')}}">contactos</a>
                    <a class="dropdown-item" href="{{route('post-coment.index')}}">comentarios de post</a>
                </div>

            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    {{Auth::user()->email}}
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <h6>Id: {{Auth::user()->id}}</h6>
                    <h6>Nombre: {{Auth::user()->name}} {{Auth::user()->surname}}</h6>
                    @php
                    $Access=Auth::user()->access;
                    $ct=count($Access)
                    @endphp
                    <h6>Ultimo Acceso: <br></h6>
                    @for ($i = 0; $i <count($Access); $i++) @if ($i==(count($Access)-1))
                        {{Carbon\Carbon::parse(Auth::user()->access[$i-1]->added_on)->formatLocalized('%d-%B-%Y %H:%M')}}
                        <br>Ip:{{$Access[$i-1]->ip}}
                        @endif

                        @endfor

                </div>
            </li>

        </ul>




        <ul class="navbar-nav">




            <li class="nav-item">
                <a class="nav-link" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                    {{ __('Logout') }}
                </a>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>


            </li>
        </ul>

    </div>


</nav>
