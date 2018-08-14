$(document).ready(inicializo);

function inicializo(){
    $("#btnConfirmar").click(modificarPublicacion);
}

function modificarPublicacion(){
    var titulo=$("#txtTitulo").val();
    var texto=$("#txtTexto").val();
    var tipoCombo = document.getElementById("tipoCombo");
    var tipoId= tipoCombo.options[tipoCombo.selectedIndex].value;
    var categoriaCombo = document.getElementById("categoriaCombo");
    var categoriaId= categoriaCombo.options[categoriaCombo.selectedIndex].value;
    
    if(titulo=="" || texto=="" || tipoId =="" || categoriaId==""){
        alert('Todos los campos deben ser completados');
    } else {
        $("#formularioModificarPublicacion").submit();
    }
     
}