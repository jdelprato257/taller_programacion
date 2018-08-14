<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/mdb.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/w3.css">
        <link rel="stylesheet" href="../css/estilos.css">
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/listadoCategorias.js" type="text/javascript"></script>
        <title>The best food blog</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main class="mt-5">
            <div class='container'>
                <h1>Categorias</h1>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Eliminar</th>
                            <th scope="col">Modificar</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$categorias item=cat}
                            <tr>
                                <td>{$cat['nombre']}</td>
                                <td>
                                    <a href="eliminarCategoria.php?idCat={$cat['categoria_id']}" id="btnEliminarCat" class="btn btn-success" type="button" >Eliminar</a>
                                </td>
                                <td>
                                    <a href="modificarCategoria.php?idCat={$cat['categoria_id']}&nombreCat={$cat['nombre']}" id="btnModificarCategoria" class="btn btn-success" type="button" >Modificar</a>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table> 
                    
                <form method="POST" action="crearCategoria.php" id="formularioCat" class="text-center pt-5 col-6">
                    <p class="h4 mb-4">Crear nueva categoria</p>
                    <input type="text" id="txtNombreCat" name="txtNombreCat" class="form-control mb-4" placeholder="Nombre de la categoria">
                    <button class="btn btn-success my-4 btn-block" type="button" id="btnConfirmarCat">Crear</button>
                </form>
            </div>
        </main>
    </body>
</html>