<!--Main container-->
<div class="container">
    <a href="notasFiltradasHome.php"><h1>Notas</h1></a>
    <div class="row mb-4">
        {foreach from=$notes item=note}
            <div class="col-lg-3">
                <div class="card">
                    <div class="view overlay">
                        <img src='images/{$note['imagen']}' class="card-img-top" alt="" style="height:250px">
                        <a href="detallePublicacion.php?id={$note['publicacion_id']}">
                          <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body" style="height: 320px">
                        <h4 class="card-title" style="height:50px">{substr($note['titulo'],0,40)}...</h4>
                        <h8 class="card-title">Receta</h8>
                        <p class="card-text" style="height:120px">{substr($note['texto'],0,150)}...</p>
                        <a href="detallePublicacion.php?id={$note['publicacion_id']}" class="btn btn-success">Ver más</a>
                    </div>
                </div>
            </div>
        {/foreach}
    </div>
</div>

<!--<div>
    <a href="#"><h1>Notas</h1></a>
    <div>
        <table style="display:flex">
            <tr style="display: flex;">
                {foreach from=$notes item=note}
                    <td class="homeColumns">
                        <div>
                            <div height="100px"><h4>{$note['titulo']}</h4></div>
                            <div height="250px"><img src='images/{$note['imagen']}' width="100%" height="300px"/></div>
                            <div height="50px"><h6>{if $note['tipo_id'] eq 1}Receta{else}Nota{/if}</h6></div>
                            <div height="200px"><p class="textOverflow" height='30%'>{$note['texto']}</p></div>
                        </div>
                    </td>
                {/foreach} 
            </tr>
        </table>
    </div>
</div>