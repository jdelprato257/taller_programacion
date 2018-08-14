<?php

session_start();
require_once 'dbConnector.php';
$nombre = $_POST['nombre'];
$id = (int)$_POST['id'];
$respuesta = array("status"=>"OK");
if($conn){
    $sql = "UPDATE categorias SET nombre='".$nombre."' WHERE categoria_id=".$id ;
    $parametros = array();
    $result = $conn->consulta($sql, $parametros);
    
    if($result){
        $respuesta = array("status"=>"OK");
    } else {
        $respuesta = array("status"=>"ERROR");
    }
} else {
    $respuesta = array("status"=>"ERROR");
}

echo json_encode($respuesta);