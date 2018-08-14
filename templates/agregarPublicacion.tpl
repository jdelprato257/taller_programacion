<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/mdb.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/mdb.css" rel="stylesheet">
        <link href="css/addons/datatables.css" rel="stylesheet">
        <link rel="stylesheet" href="css/w3.css">
        <link rel="stylesheet" href="css/estilos.css">
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/agregarPublicacion.js" type="text/javascript"></script>
        <title>Registro</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main>
            <form method="POST" action="manejadorAgregarPublicacion.php" id="formularioAgregarPublicacion" class="text-center p-5 col-6">
                <p class="h4 mb-4">Crear nueva publicacion</p>
                <input type="text" id="txtTitulo" name="txtTitulo" class="form-control mb-4" placeholder="Titulo">
                <textarea class="form-control" id="txtTexto" placeholder="Texto de la publicacion..." rows="7"></textarea>
                <div class="row mt-4">
                    <div class="col-lg-6">
                        <label>Tipo</label>
                        <select>
                            {foreach from=$tipos item=tipo}
                                <option>{$tipo['nombre']}</option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="col-lg-6">
                        <label>Categoria</label>
                        <select>
                            {foreach from=$categorias item=categoria}
                                <option>{$categoria['nombre']}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
                Subir imagen: <input type="file" id="foto" name="foto" value="Subir imagen" class="btn btn-success btn-sm"/>
                <button class="btn btn-success my-4 btn-block" type="button" id="btnConfirmar">Confirmar</button>
            </form>
        </main>
    </body>
</html>