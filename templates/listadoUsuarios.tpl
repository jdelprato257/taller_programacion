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
        <script src="js/listadoUsuarios.js" type="text/javascript"></script>
        <title>The best food blog</title>
    </head>
    <body>
        <header>
            {include file='header.tpl'}
        </header>
        <main class="mt-5">
            <div class='container'>
                <h1>Usuarios</h1>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Email</th>
                            <th scope="col">Administrador</th>
                            <th scope='col'>Hacer admin</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$usuarios item=usr}
                            <tr>
                                <td>{$usr['nombre']}</td>
                                <td>{$usr['email']}</td>
                                {if $usr['administrador'] eq 0}
                                    <td>No</td>
                                {else}
                                    <td>Si</td>
                                {/if}
                                <td>
                                    <a href="hacerAdmin.php?id={$usr['usuario_id']}" id="btnAdmin" class="btn btn-success" type="button" >Hacer admin</a>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table> 
            </div>
        </main>
    </body>
</html>