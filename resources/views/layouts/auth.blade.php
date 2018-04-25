<!DOCTYPE html>
<html lang="en">

<head>
    @include('partials.head')
<style>
body {
    background-image: url("/wallpaper.jpg");height:100%;
}
/* <link rel="stylesheet"
      href="{{ url('adminlte/css') }}/select2.min.css"/> */
.navbar-default {
    background-color: #347AB6;
    border-color: #E7E7E7;
}
</style>
</head>

<body class="page-header-fixed">


    <!-- <div style="margin-top: 3%;"></div> -->

    <div class="container-fluid">
        @yield('content')
    </div>

    <div class="scroll-to-top"
         style="display: none;">
        <i class="fa fa-arrow-up"></i>
    </div>

    @include('partials.javascripts')
@include('partials.analytics')

</body>
</html>