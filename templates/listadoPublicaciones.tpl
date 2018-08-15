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
        <script src="js/listadoPublicaciones.js" type="text/javascript"></script>
        <title>The best food blog</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main class="mt-5">
            <div class='container'>
                <h1>
                    Publicaciones
                </h1>
                <div class='row'>
                    <div class="col-lg-3">
                        <h4>
                            Tipos de publicaciones
                        </h4>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="tipoReceta" onclick="toggleCheckbox();" {if $recetasHome eq 'recetasHome'} checked {/if}>
                            <label class="custom-control-label" for="tipoReceta">Recetas</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="tipoNota" onclick="toggleCheckbox();" {if $notasHome eq 'notasHome'} checked {/if}>
                            <label class="custom-control-label" for="tipoNota">Notas</label>
                        </div>
                    </div>  
                    <div class="col-lg-3">
                        <h4>
                            Categorias de publicaciones
                        </h4>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="categoriaGeneral" onclick="toggleCheckbox();">
                            <label class="custom-control-label" for="categoriaGeneral">General</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="categoriaPostres" onclick="toggleCheckbox();">
                            <label class="custom-control-label" for="categoriaPostres">Postres</label>
                        </div>
                    </div>  
                    <div class='col-lg-3'></div>
                    <div class="col-lg-3">
                        <nav>
                            <h4>Paginado</h4>
                            <input type='button' id='btnIni' alt='1' value='<<'/>
                            <input type='button' id='btnAnt' alt='' value='<'/>
                            <span id="pagina">0</span> / <span id="pagUlt">0</span>
                            <input type='button' id='btnSig' alt='' value='>'/>
                            <input type='button' id='btnUlt' alt='' value='>>'/>
                        </nav>
                    </div>
                    {if $admin eq 1}
                    <div class="col-lg-3">
                        <a href="agregarPublicacion.php" id="btnModificarPublicacion" class="btn btn-danger btn-block my-4" type="button">Agregar publicacion</a>
                    </div>
                    {/if}
                </div>
                <ul class="list-unstyled">
                    <div id="bodyPublicaciones"></div>
                </ul>
            </div>
        </main>
    </body>
</html>