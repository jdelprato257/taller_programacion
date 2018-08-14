<!--Main container-->
<div class="container">
    <a href="recetasFiltradasHome.php"><h1>Recetas</h1></a>
    <div class="row mb-4">
        {foreach from=$publicaciones item=publicacion}
            <div class="col-lg-3">
                <div class="card">
                    <div class="view overlay">
                        <img src='images/{$publicacion['imagen']}' class="card-img-top" alt="" style="height:250px">
                        <a href="detallePublicacion.php?id={$publicacion['publicacion_id']}">
                          <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body" style="height: 320px">
                        <h4 class="card-title" style="height:50px">{substr($publicacion['titulo'],0,40)}...</h4>
                        <h8 class="card-title">Receta</h8>
                        <p class="card-text" style="height:120px">{substr($publicacion['texto'],0,150)}...</p>
                        <a href="detallePublicacion.php?id={$publicacion['publicacion_id']}" class="btn btn-success">Ver más</a>
                    </div>
                </div>
            </div>
        {/foreach}
    </div>
</div>


<!--<div>
<a href="#"><h1>Recetas</h1></a>
<div>
    <table max-height="500px">
        <div height="500px">
            {foreach from=$publicaciones item=publicacion}
                <td class="homeColumns">
                    <div>
                        <div height="100px"><h4>{$publicacion['titulo']}</h4></div>
                        <div height="250px"><img src='images/{$publicacion['imagen']}' width="100%" height="300px"/></div>
                        <div height="50px"><h6>{if $publicacion['tipo_id'] eq 1}Receta{else}Nota{/if}</h6></div>
                        <div height="200px"><p class="textOverflow" height='30%'>{$publicacion['texto']}</p></div>
                    </div>
                </td>
            {/foreach} 
        </div>
    </table>
</div>
</div>--!>

