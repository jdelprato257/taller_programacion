$(document).ready(inicializo);

function inicializo(){
    $("#btnConfirmarCat").click(agregarCategoria);
}

function agregarCategoria(){
    var nombre=$("#txtNombreCat").val();
    if(nombre.trim().length==0){
        alert("Debe ingresar un nombre");
    } else {
        $.ajax({
           url: "agregarCategoria.php",
           dataType: "JSON",
           type: "POST",
           data: "nombre=" + nombre,
           success: refresh
       });
    }  
}

function refresh(resp){
    if(resp["status"]=="OK"){
        location.reload();
    }
}


