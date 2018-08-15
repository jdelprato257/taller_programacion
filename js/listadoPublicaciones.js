$(document).ready(inicializo);
var pagina=0;

function inicializo(){
    traigoPublicaciones(1);
    $("#btnIni").click(cambioPagina);
    $("#btnAnt").click(cambioPagina);
    $("#btnSig").click(cambioPagina);
    $("#btnUlt").click(cambioPagina);
}

function toggleCheckbox(){
    filtro(pagina);
}

function cambioPagina(){
    var pag = $(this).attr("alt");
    filtro(pag);
}

function filtro(pPagina){
    pagina = parseInt(pPagina);
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
        data: "receta=" + filtroReceta + "&nota=" + filtroNota + "&general=" + filtroGeneral + "&postres=" + filtroPostres + "&pagina=" +pPagina,
        success: procesoRespuestaPublicaciones
    });
}

function traigoPublicaciones(pPagina){
    
    pagina = parseInt(pPagina);
    $.ajax({
        url: "filtro.php",
        dataType: "JSON",
        type: "POST",
        data: "receta=" + "" + "&nota=" + "" + "&general=" + "" + "&postres=" + "" + "&pagina="+ pPagina,
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
        $("#pagina").html(pagina);
        $("#pagUlt").html(datos["ultima"]);
        if(pagina-1>0){
            $("#btnAnt").attr("alt",(pagina-1));
        }
        else{
            $("#btnAnt").attr("alt",1);
        }
        if(pagina+1<datos["ultima"]){
            $("#btnSig").attr("alt",(pagina+1));
        }
        else{            
            $("#btnSig").attr("alt",datos["ultima"]);
        }
        $("#btnUlt").attr("alt",datos["ultima"]);
    } else {
        alert("Se produjo un error!");
    }
}