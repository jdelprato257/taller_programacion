$(document).ready(inicializo);

function inicializo(){
    $("#btnConfirmar").click(validarDatosVacios);
}

function validarUsuarioExiste(valor){
    window.location.href = "usuarioExistente.php?email=" + valor;
}

function validoDatoVacio(dato){
    var retorno = false; 
    
    if($.trim(dato).length!=0){
        retorno = true;
    }
    return retorno
}

function validarEmail(valor) {
  var retorno=false;
  if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(valor)){
   retorno = true;
  }
  return retorno;
}

function validarContrasenia(valor) {
    var retorno = false;
    if($.trim(valor).length >= 8){
        if (/\d/.test(valor) && /[a-zA-Z]/.test(valor)) {
            retorno = true;
        }
    }
    return retorno;
}

function validarDatosVacios(){
    if(validoDatoVacio($("#txtNombre").val()) && validoDatoVacio($("#txtCorreo").val()) && validoDatoVacio($("#txtPass").val())){
        if(validarEmail($("#txtCorreo").val())){
            if(validarContrasenia($("#txtPass").val())){
                $("#formulario").submit();
            }
            else{
                alert("La contraseña debe contener al menos 8 caracteres, una letra y un numero.")
            }
        }
        else{
            alert("Hay datos que no son correctos");
        }
    }
    else{
        alert("Hay datos que no son correctos");
    }
}