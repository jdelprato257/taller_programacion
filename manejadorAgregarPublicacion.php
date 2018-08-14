<?php


$foto = date("YmdHis") . "_" . $_FILES['foto']['name'];
//veo si llego al servidor
if(is_uploaded_file($_FILES['foto']['tmp_name'])){
    //verifico el tipo
    if($_FILES['foto']['type']=="image/png"){
        //muevo y veo si pude mover al destino
        if(!move_uploaded_file($_FILES['foto']['tmp_name'], "fotosautores/" . $foto)){
            die("Error al mover archivo");
        }
    }
    else{
        die("Error tipo archivo");
    }
}
else{
    die("ERROR");
}
