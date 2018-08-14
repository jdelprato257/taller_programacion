$(document).ready(inicializo);

function inicializo(){
    $("#btnConfirmar").click(agregarPublicacion);
}

function agregarPublicacion(){
    var titulo=$("#txtTitulo").val();
    var texto=$("#txtTexto").val();
    var tipoCombo = document.getElementById("tipoCombo");
    var tipoId= tipoCombo.options[tipoCombo.selectedIndex].value;
    var categoriaCombo = document.getElementById("categoriaCombo");
    var categoriaId= categoriaCombo.options[categoriaCombo.selectedIndex].value;
    var foto = $("#foto").val();
    
    if(titulo=="" || texto=="" || tipoId =="" || categoriaId=="" || foto==""){
        alert('Todos los campos deben ser completados');
    } else {
        $("#formularioAgregarPublicacion").submit();
    }
     
}