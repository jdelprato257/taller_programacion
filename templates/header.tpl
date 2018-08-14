<nav class="navbar navbar-expand-lg navbar-dark {if $admin eq 0}green{else}blue{/if}">
  <a class="navbar-brand" href="index.php">Comeblog{if $admin eq 1} Admin {/if}</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="basicExampleNav">
      <ul class="navbar-nav mr-auto">
          <li class="nav-item">
              <a class="nav-link" href="listadoPublicaciones.php">Publicaciones</a>
          </li>
          {if $idUsuario neq ''}
            <li class="nav-item">
                <a class="nav-link" href="listadoFavoritos.php">Favoritos</a>
            </li>
          {/if}
          {if $admin eq 1}
            <li class="nav-item">
                <a class="nav-link" href="listadoUsuarios.php">Usuarios</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="listadoCategorias.php">Categorias</a>
            </li>
          {/if}
      </ul>
      {if $idUsuario eq ''}
        <div>
            <h5 style="color:white">
                <a href="login.php">Loguearse </a>
                /
                <a href="registrarUsuario.php">Registrarse </a>
            </h5>
        </div>
       {else}
         <div>
            <h5 style="color:white">
                <a href="logout.php">Log out </a>
            </h5>
        </div>  
       {/if}
  </div>
</nav>