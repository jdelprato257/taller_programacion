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
                            <input type="checkbox" class="custom-control-input" id="tipoReceta" onclick="filtro();" {if $recetasHome eq 'recetasHome'} checked {/if}>
                            <label class="custom-control-label" for="tipoReceta">Recetas</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="tipoNota" onclick="filtro();" {if $notasHome eq 'notasHome'} checked {/if}>
                            <label class="custom-control-label" for="tipoNota">Notas</label>
                        </div>
                    </div>  
                    <div class="col-lg-3">
                        <h4>
                            Categorias de publicaciones
                        </h4>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="categoriaGeneral" onclick="filtro();">
                            <label class="custom-control-label" for="categoriaGeneral">General</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="categoriaPostres" onclick="filtro();">
                            <label class="custom-control-label" for="categoriaPostres">Postres</label>
                        </div>
                    </div>  
                    <div class='col-lg-3'></div>
                    <div class="col-lg-3">
                        <nav>
                            <h4>Paginado</h4>
                            <ul class="pagination pg-teal">
                                <!--Arrow left-->
                                <li class="page-item">
                                    <a class="page-link" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>

                                <!--Numbers-->
                                <li class="page-item active"><a class="page-link">1</a></li>

                                <!--Arrow right-->
                                <li class="page-item">
                                    <a class="page-link" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>
                            </ul>
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