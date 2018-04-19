<!DOCTYPE html>
<html lang="en">

<head>
    @include('partials.head')
    <style>
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
{{--  @include('partials.analytics')s  --}}

</body>
</html>