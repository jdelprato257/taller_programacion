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
        <script src="js/modificarCategoria.js" type="text/javascript"></script>
        <title>The best food blog</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main class="mt-5">
            <div class='container'>
                <h1>Modificar Categoria</h1>    
                <form method="POST" action="crearCategoria.php" id="formularioCat" class="text-center pt-5 col-6">
                    <input type="text" id="txtModifCat" name="txtModifCat" class="form-control mb-4" placeholder="Nombre de la categoria" value='{$nombreCat}'>
                    <input type="hidden" id="idCat" name="idCat" value="{$idCat}"/> 
                    <button class="btn btn-success my-4 btn-block" type="button" id="btnConfirmarModCat">Modificar</button>
                </form>
            </div>
        </main>
    </body>
</html>