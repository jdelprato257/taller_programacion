<?php

session_start();
require_once 'dbConnector.php';
require_once 'initializer.php';
$usuarioId = (int)$_SESSION['idUsuario'];
$titulo = $_POST['txtTitulo'];
$texto = $_POST['txtTexto'];
$categoria_id = (int)$_POST['categoriaCombo'];
$tipo_id = (int)$_POST['tipoCombo'];
$foto = date("YmdHis") . "_" . $_FILES['foto']['name'];
$fecha = date("Y-m-d");

if(is_uploaded_file($_FILES['foto']['tmp_name'])){
    if($_FILES['foto']['type']=="image/jpg"||"image/jpeg"||"image/png"){
        if(!move_uploaded_file($_FILES['foto']['tmp_name'], "images/" . $foto)){
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

if($conn){
    $sql = "INSERT INTO publicaciones (titulo, texto, fecha, imagen, categoria_id, tipo_id, usuario_id)";
    $sql .= " VALUES (:titulo, :texto, :fecha, :imagen, :categoria_id, :tipo_id, :usuario_id)";
    $parametros = array();
    $parametros[0] = array("titulo",$titulo,"string",255);
    $parametros[1] = array("texto", $texto, "string", 5000);
    $parametros[2] = array("fecha", $fecha, "string", 200);
    $parametros[3] = array("imagen", $foto, "string", 200);
    $parametros[4] = array("categoria_id", $categoria_id, "int", 100);
    $parametros[5] = array("tipo_id", $tipo_id, "int", 100);
    $parametros[6] = array("usuario_id", $usuarioId, "int", 100);
    $result = $conn->consulta($sql, $parametros);
    
    if($result){
        header("Location: index.php");
    }
}
