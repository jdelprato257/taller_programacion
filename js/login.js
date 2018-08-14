$(document).ready(inicializo);

function inicializo(){
    $("#btnConfirmar").click(validarDatosVacios);
}

function validoDatoVacio(dato){
    var retorno = false; 
    
    if($.trim(dato).length!=0){
        retorno = true;
    }
    return retorno
}

function validarDatosVacios(){
    if(validoDatoVacio($("#loginEmail").val()) && validoDatoVacio($("#loginPass").val())){
        if(validoDatoVacio($("#loginEmail").val())){
            $("#loginFormulario").submit();
        }
    }
}

function validarEmail(valor) {
  var retorno=false;
  if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(valor)){
   retorno = true;
  }
  return retorno;
}