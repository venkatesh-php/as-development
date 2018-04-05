<meta name="csrf-token" content="{{ csrf_token() }}">
     <!-- Styles -->
    {{--  <link href="/css/app.css" rel="stylesheet">  --}}
    <link href="/css/summernote.css" rel="stylesheet">
    <!-- Scripts -->
    <script src="/js/jquery.js"></script>
    {{--  <script src="/js/popper.js"></script>  --}}
    <script src="/js/bootstrap.js"></script>
    <script src="/js/summernote.js"></script> 
    <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>
    <style>
        .cover{
            background-size: cover;
        }
    </style>

