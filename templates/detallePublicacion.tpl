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
        <link rel="stylesheet" href="css/w3.css">
        <link rel="stylesheet" href="css/estilos.css">
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/detallePublicacion.js" type="text/javascript"></script>
        <title>The best food blog</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main class="my-5">
            <div class='container z-depth-1' style="background-color: white;">
                <div class="row">
                    <h1 class="pl-2">
                        {$publicacion['titulo']}
                    </h1>
                </div>
                <div class="row mt-4">
                    <div class="col-lg-3">
                        <img src='images/{$publicacion['imagen']}' style='width:250px; height: 300px'>
                        <button id="btnFavorito" class="btn btn-success btn-block my-4" type="button">Guardar en favoritos</button>
                        {if $admin eq 1}
                            <a href="eliminarPublicacion.php?idPub={$publicacion['publicacion_id']}" id="btnEliminarPublicacion" class="btn btn-danger btn-block my-4" type="button">Eliminar publicacion</a>
                            <a href="modificarPublicacion.php?idPub={$publicacion['publicacion_id']}" id="btnModificarPublicacion" class="btn btn-danger btn-block my-4" type="button">Modificar publicacion</a>                      
                       {/if}    
                    </div>
                    <div class='col-lg-9'>
                        <h2>{if $publicacion['tipo_id'] eq 1} Receta {else} Nota {/if}</h2>
                        <h3 class='pb-5'>{$categoria['nombre']}</h3>
                        <p class='pb-5'>
                            {$publicacion['texto']}
                        </p>
                    </div>
                </div>
                <h2>Comentarios</h2>
                {foreach from=$comentarios item=comentario}
                    <div class='border border-success pl-4 mb-4'>
                        <h6 style="font-weight: bold">Comentario de {$comentario['nombre']}</h6>
                        <p>{$comentario['detalle']}</p>
                        {if $comentario['respuesta'] neq ""}
                        <div style="background-color: lightgray">
                            <h6 style="font-weight: bold">Respuesta de {$publicacion['nombre']}</h6>
                            <p>{$comentario['respuesta']}</p>
                        </div>
                        {elseif $publicacion['usuario_id'] eq $idUsuario}
                            <div class='row pb-4 px-4'>
                                <div class="col-lg-8 pt-2">
                                    <input type="text" placeholder="Escribe tu respuesta" id="respuesta" class="form-control">
                                </div>
                                <div class="col-lg-4">
                                    <a href="#" class="btn btn-success">Responder</a>
                                </div>
                            </div>
                        {/if}    
                    </div>
                {/foreach}
                {if $entro eq true}
                <div class='border border-success pl-4 mb-4'>
                    <h6 style="font-weight: bold">Escribe tu propio comentario!</h6>
                    <div class='row pb-4 px-4'>
                        <div class="col-lg-8 pt-2">
                            <input type="text" placeholder="Comenta" id="comentarioUsuario" class="form-control">
                        </div>
                        <div class="col-lg-4">
                            <button id="btnComentar" class="btn btn-success btn-block my-4" type="button">Comentar</button>
                        </div>
                    </div>
                </div>
                {else}
                    <div class='border border-warning pl-4 mb-4' style="background-color: lightblue">
                        <h4 class='mb-2'style="font-weight: bold">Logueate con el link del header para poder comentar en todas tus publicaciones preferidas!</h4>   
                    </div>
                {/if}
            </div>
        </main>
    </body>
</html>