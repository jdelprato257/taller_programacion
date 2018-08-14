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
        <script src="js/modificarPublicacion.js" type="text/javascript"></script>
        <title>Registro</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main>
            <form enctype="multipart/form-data" method="POST" action="manejadorModificarPublicacion.php" id="formularioModificarPublicacion" class="text-center p-5 col-6">
                <p class="h4 mb-4">Modificar publicacion</p>
                <input type="text" id="txtTitulo" name="txtTitulo" class="form-control mb-4" placeholder="Titulo" value="{$pub['titulo']}">
                <textarea class="form-control" id="txtTexto" name="txtTexto" placeholder="Texto de la publicacion..." rows="7" >{$pub['texto']}</textarea>
                <div class="row mt-4">
                    <div class="col-lg-6">
                        <label>Tipo</label>
                        <select id='tipoCombo' name='tipoCombo'>
                            {foreach from=$tipos item=tipo}
                                <option value="{$tipo['tipo_id']}" {if $tipo['tipo_id'] eq $pub['tipo_id']}selected='selected'{/if}>{$tipo['nombre']}</option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="col-lg-6">
                        <label>Categoria</label>
                        <select id='categoriaCombo' name='categoriaCombo'>
                            {foreach from=$categorias item=categoria}
                                <option value="{$categoria['categoria_id']}" {if $categoria['categoria_id'] eq $pub['categoria_id']}selected='selected'{/if}>{$categoria['nombre']}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
                Subir imagen: <input type="file" id="foto" name="foto" value="Subir imagen" class="btn btn-success btn-sm"/>
                <button class="btn btn-success my-4 btn-block" type="button" id="btnConfirmar">Confirmar</button>
                <input type='hidden' id='pubId' name='pubId' value='{$pub['publicacion_id']}'>
            </form>
        </main>
    </body>
</html>