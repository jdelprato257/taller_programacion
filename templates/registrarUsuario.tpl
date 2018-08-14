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
        <script src="js/registrarUsuario.js" type="text/javascript"></script>
        <title>Registro</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main>
            <form method="POST" action="manejadorRegistro.php" id="formulario" class="text-center p-5 col-6">
                <p class="h4 mb-4">Sign up</p>
                <input type="text" id="txtNombre" name="txtNombre" class="form-control mb-4" placeholder="Nombre completo">
                <input id="txtCorreo" name="txtCorreo" class="form-control mb-4" placeholder="Correo electrónico">
                <input type="password" id="txtPass" name="txtPass" class="form-control" placeholder="Contraseña" aria-describedby="defaultRegisterFormPasswordHelpBlock">
                <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
                    Al menos 8 caracteres, 1 digito y una letra
                </small>
                <button class="btn btn-success my-4 btn-block" type="button" id="btnConfirmar">Confirmar</button>
            </form>
        </main>
    </body>
</html>