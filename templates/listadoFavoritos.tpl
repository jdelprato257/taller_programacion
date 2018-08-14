<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/mdb.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="css/w3.css">
        <link rel="stylesheet" href="css/estilos.css">
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/listadoFavoritos.js" type="text/javascript"></script>
        <title>The best food blog</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main class="mt-5">
            <div class='container'>
                <h1>
                    Favoritos
                </h1>                
                <ul class="list-unstyled">
                    {foreach from=$favoritos item=favorito}
                        <li class='media py-4' >
                            <div class='row z-depth-1' style='background-color: white'>
                                <div class='col-lg-3 py-2'>
                                    <img src='images/{$favorito['imagen']}' style='width:250px; height: 200px'>
                                </div>
                                <div class='col-lg-9 py-2'>
                                    <div class='media-body'>
                                        <h4 class='mt-0 mb-1 font-weight-bold'>{$favorito['titulo']}</h4>
                                        {if $favorito['tipo_id'] eq 1}
                                            <h6>Receta</h6>
                                        {else}
                                            <h6>Nota</h6>
                                        {/if}
                                        <h6>{$favorito['nombre']}</h6>
                                        {substr($favorito['texto'],0,300)}...
                                    </div>
                                </div>
                            </div>
                        </li>
                    {/foreach}
                </ul>
        </main>
    </body>
</html>