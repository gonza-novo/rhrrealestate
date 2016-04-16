<!DOCTYPE html>
<html lang="es">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>RHR Real Estate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Novo Hnos. Studio">

    <!-- JQUERY ASSETS -->
    <script src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="{$assets_path_js}slimbox2.js"></script>
    <script type="text/javascript" src="{$assets_path_js}easySlider1.7.js"></script>

    <!-- CSS ASSETS -->
    <link href="{$assets_path_css}bootstrap.css" rel="stylesheet">
    <link href="{$assets_path_css}bootstrap-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="{$assets_path_css}slimbox2.css" type="text/css" media="screen" />
    <link href="{$assets_path_css}screen.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="{$assets_path_css}custom.css" rel="stylesheet" type="text/css" media="screen" />

    <!-- GOOGLE WEBFONTS -->
    <link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Gudea' rel='stylesheet' type='text/css'>

    {if $es_detalle_del_inmueble}
    <script type="text/javascript">
        $(function() {
            $(".image").click(function() {
                var image = $(this).attr("rel");
                $('#image').hide();
                $('#image').fadeIn('slow');
                $('#image').html('<img src="' + image + '" height="475px" width="717px" />');
                return false;
            });
        });
    </script>
    {/if}

    <script type="text/javascript">
        $(document).ready(function(){

            $("#slider").easySlider({
                auto: true,
                continuous: true,
                controlsShow:    false,
            });

            // Idioma
            $('a[name="seleccionar-idioma"]').click(function(){
                var lang = $(this).attr('rel');
                $.ajax({
                    url: '{$uri_prefix}?uri=procesos/setear-idioma',
                    type: 'GET',
                    dataType: 'json',
                    cache: false,
                    data: { lang:lang},
                    success: function(data){
                        location.reload(true);
                    },
                    timeout: 3000  // (1000=1 segundo)
                });
            });

        });
    </script>


    <style type="text/css">
        body {
            background: url("{$assets_path_img}bg.jpg") repeat  #F3F1F8;
            padding-top: 0px;
        }

        {if $es_detalle_del_inmueble}
        .thumb{
            float:left;
            margin-right:10px;
            margin-top:10px;}
        {/if}
    </style>


    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


    <!-- Le fav and touch icons -->

    {* <link rel="shortcut icon" href="">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    *}


</head>

<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="{$uri_prefix}">RHR Real Estate </a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li><a href="{$uri_prefix}">Inicio</a></li>
                    <li><a href="{$uri_prefix}?uri=listado-de-inmuebles.html&amp;operacion=Venta">Ventas</a></li>
                    <li><a href="{$uri_prefix}?uri=listado-de-inmuebles.html&amp;operacion=Alquiler">Alquileres</a></li>
                    <li><a href="{$uri_prefix}?uri=listado-de-inmuebles.html&amp;operacion=Alquiler+Temporario">Alquileres temporarios</a></li>
                    <li><a href="{$uri_prefix}?uri=formulario-de-contacto.html">Contacto</a></li>
                    <li><a href="{$uri_prefix}?uri=acerca-de-nosotros.html">Nosotros</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Más
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="{$uri_prefix}">Inicio</a></li>
                            <li><a href="{$uri_prefix}?uri=listado-de-inmuebles.html&amp;operacion=Venta">Ventas</a></li>
                            <li><a href="{$uri_prefix}?uri=listado-de-inmuebles.html&amp;operacion=Alquiler">Alquileres</a></li>
                            <li><a href="{$uri_prefix}?uri=listado-de-inmuebles.html&amp;operacion=Alquiler+Temporario">Alquileres temporarios</a></li>
                            <li class="divider"></li>
                            <li><a href="{$uri_prefix}?uri=formulario-de-contacto.html">Contacto</a></li>
                            <li><a href="{$uri_prefix}?uri=acerca-de-nosotros.html">Nosotros</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav pull-right">
                    <li><a href="#">{$lang.NOMBRE_IDIOMA_CURRENT}</a></li>
                    <li class="divider-vertical"></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Idioma <b class="caret"></b></a>


                        <ul class="dropdown-menu">
                            <li><a href="#" name="seleccionar-idioma" rel="ES">{$lang.NOMBRE_IDIOMA_ESPANIOL}</a></li>
                            <li><a href="#" name="seleccionar-idioma" rel="EN">{$lang.NOMBRE_IDIOMA_INGLES}</a></li>
                        </ul>
                    <li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
<!--/ End Slider/Search Block -->
