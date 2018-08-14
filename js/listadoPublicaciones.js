$(document).ready(inicializo);

function inicializo(){
    traigoPublicaciones();
}

function filtro(){
    var filtroReceta="";
    if(document.getElementById("tipoReceta").checked){
        filtroReceta="filtroReceta";
    }
    var filtroNota="";
    if(document.getElementById("tipoNota").checked){
        filtroNota="filtroNota";
    }
    var filtroGeneral="";
    if(document.getElementById("categoriaGeneral").checked){
        filtroGeneral="filtroGeneral";
    }
    var filtroPostres="";
    if(document.getElementById("categoriaPostres").checked){
        filtroPostres="filtroPostres";
    }
    $.ajax({
        url: "filtro.php",
        dataType: "JSON",
        type: "POST",
        data: "receta=" + filtroReceta + "&nota=" + filtroNota + "&general=" + filtroGeneral + "&postres=" + filtroPostres,
        success: procesoRespuestaPublicaciones
    });
}

function traigoPublicaciones(){
    $.ajax({
        url: "filtro.php",
        dataType: "JSON",
        type: "POST",
        data: "receta=" + "" + "&nota=" + "" + "&general=" + "" + "&postres=" + "",
        success: procesoRespuestaPublicaciones
    });
}

function procesoRespuestaPublicaciones(datos){
    var publicaciones, tabla = "", tmpPublicacion;
    if(datos["status"]=="OK"){
        //proceso los datos y muestro en la tabla
        publicaciones = datos["data"];
        for(pos = 0; pos<=publicaciones.length-1; pos++){
            tmpPublicacion = publicaciones[pos];
            tabla = tabla + "<li class='media py-4' >";
            tabla = tabla + "<a href='detallePublicacion.php?id="+tmpPublicacion['publicacion_id']+"'>"
            tabla = tabla + "<div class='row z-depth-1' style='background-color: white'>";
            tabla = tabla + "<div class='col-lg-3 py-2'>";
            tabla = tabla + "<img src='images/"+ tmpPublicacion['imagen'] +"' style='width:250px; height: 200px'>";
            tabla = tabla + "</div>";
            tabla = tabla + "<div class='col-lg-9 py-2'>";
            tabla = tabla + "<div class='media-body'>";
            tabla = tabla + "<h4 class='mt-0 mb-1 font-weight-bold'>"+tmpPublicacion['titulo']+"</h4>";
            if(tmpPublicacion['tipo_id'] == 1){
                tabla = tabla + "<h6>Receta</h6>";
            } else {
                tabla = tabla + "<h6>Nota</h6>";
            }
            tabla = tabla + "<h6>"+tmpPublicacion['nombre']+"</h6>";
            tabla = tabla + tmpPublicacion['texto'].substring(0,300)+"...";
            tabla = tabla + "</div>";
            tabla = tabla + "</div>";
            tabla = tabla + "</div>";
            tabla = tabla + "</a>"
            tabla = tabla + "</li>";
        }
        $("#bodyPublicaciones").html(tabla);
    } else {
        alert("Se produjo un error!");
    }
}