$(document).ready(inicializo);

function inicializo(){
    $("#txtNombre").blur(validoVacio);
    $("#txtEdad").blur(validoNumero);
    $("#txtCorreo").blur(validoCorreo);
    $("#btnGrabar").click(guardoDatos);
}

function validoVacio(){
    if(!validoDatoVacio($(this).val())){
        $(this).removeClass("ok");
        $(this).addClass("error");
        $("#err_"+$(this).attr("id")).html("<small>El dato no puede ser vacío</small>");
    }
    else{
        $(this).removeClass("error");        
        $(this).addClass("ok"); 
        $("#err_"+$(this).attr("id")).html("")
    }    
    
}

function validoDatoVacio(dato){
    var retorno = false; 
    
    if($.trim(dato).length!=0){
        retorno = true;
    }
    return retorno
}

function validoNumero(){
    if(!validoSeaNumero($(this).val())){
        $(this).removeClass("ok");
        $(this).addClass("error");
        $("#err_"+$(this).attr("id")).html("<small>El dato debe ser numérico</small>");
    }
    else{
        $(this).removeClass("error");        
        $(this).addClass("ok"); 
        $("#err_"+$(this).attr("id")).html("");
    }    
}

function validoSeaNumero(dato){
    var retorno=false;
    
    if(!isNaN(dato)){
        retorno = true;
    }    
    return retorno;
}

function validoCorreo(){
    if(!validarEmail($(this).val())){
        $(this).removeClass("ok");
        $(this).addClass("error");
        $("#err_"+$(this).attr("id")).html("<small>El correo no es válido</small>");
    }
    else{
        $(this).removeClass("error");        
        $(this).addClass("ok"); 
        $("#err_"+$(this).attr("id")).html("");
    }
}

function validarEmail(valor) {
  var retorno=false;
  if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(valor)){
   retorno = true;
  }
  return retorno;
}

function guardoDatos(){
    if(validoDatoVacio($("#txtNombre").val()) && validoSeaNumero($("#txtEdad").val()) && validarEmail($("#txtCorreo").val())){
        $("#formulario").submit();
    }
    else{
        alert("Hay datos que no son correctos");
    }
}
