
<!-- Default form login -->
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
        <script src="js/login.js" type="text/javascript"></script> 
        <title>Ingresar</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main class='col-6'>
            <form method="GET" action="manejadorLogin.php" class="text-center p-5" id="loginFormulario">
                <p class="h4 mb-4">Ingresar al sistema</p>
                <input type="email" id="loginEmail" name='loginEmail' class="form-control mb-4" placeholder="Correo Electronico">
                <input type="password" id="loginPass" name='loginPass' class="form-control mb-4" placeholder="Contraseña">
                <button id="btnConfirmar" class="btn btn-success btn-block my-4" type="button">Ingresar</button>
            </form>
        </main>
    </body>
</html>