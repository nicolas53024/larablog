<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Larablog</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="{{asset("css./app.css")}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset("images/logo/android-icon-36x36.png")}}">
</head>

<body>

    <div id="app">
        @include('web.parcialWeb.nav-header')


        <div class="container mb-3 mt-3" >
            @yield('content')
        </div>
        @include('web.parcialWeb.footer')
    </div>

    <script src="{{ asset("js/app.js")}}"></script>
</body>

</html>

@yield('java')