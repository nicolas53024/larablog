<nav class="navbar navbar-expand-lg navbar-light  bg-secondary">



    <img class="imagen" src="{{asset("images/laravel.png")}}"  >
    
    <router-link to="/" class="navbar-brand"> Larablog</router-link>
    <router-link to="/categories" class="navbar-brand text-white"><u>Categorias</u> </router-link>
    {{-- <a class="navbar-brand" href="#">Larablog</a> --}}
    




    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    {{-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    CRUD
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                </div>

            </li>


        </ul>





    </div> --}}


</nav>