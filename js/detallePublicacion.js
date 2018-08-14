$(document).ready(inicializo);
function inicializo(){
    $("#btnComentar").click(hacerComentario);
    $("#btnFavorito").click(hacerFavorito);
}

function hacerFavorito(){
    $.ajax({
        url: "favorito.php",
        dataType: "JSON",
        type: "POST",
        success: fav
    });
}

function fav(resp){
    if(resp["status"]=="EXISTS"){
        alert('La publicacion ya se encuentra en sus favoritos!');
    }
}

function hacerComentario(){
    var textoComentario = document.getElementById("comentarioUsuario").value;
    $.ajax({
        url: "comentar.php",
        dataType: "JSON",
        type: "POST",
        data: "texto=" + textoComentario,
        success: refresh
    });
}

function refresh(resp){
    if(resp["status"]=="OK"){
        location.reload();
    } 
}
