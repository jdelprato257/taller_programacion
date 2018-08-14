$(document).ready(inicializo);

function inicializo(){
    $("#btnConfirmarModCat").click(modificarCategoria)
}

function modificarCategoria(){
    var nombre = $("#txtModifCat").val();
    var id = $("#idCat").val();
    if(nombre.trim().length==0){
        alert("Debe ingresar un nuevo nombre");
    } else {
        $.ajax({
            url: "updateCategoria.php",
            dataType: "JSON",
            type: "POST",
            data: "nombre="+nombre+"&id="+id,
            success: redirect
        }); 
    }
}

function redirect(resp){
    if(resp["status"]=="OK"){
        window.location = "listadoCategorias.php";
    }
}