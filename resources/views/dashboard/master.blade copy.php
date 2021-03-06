<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Modulo Administrador</title>
    <link rel="stylesheet" href="{{asset("css./app.css")}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset("images/logo/android-icon-36x36.png")}}">





</head>

<body >

    @include('dashboard.nav-header')
    <div class="container">

        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif


        @yield('content')

    </div>
   <script src="{{ asset("js/app.js")}}"></script>
</body>

</html>
