<?php

session_start();
require_once 'dbConnector.php';

$nombre = $_POST['nombre'];

if($conn){
    $sql = "INSERT INTO categorias (nombre) VALUES ('".$nombre."')";
    $parametros = array();
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $resupesta = array("status"=>"OK");
    } else {
        $resupesta = array("status"=>"ERROR");
    }
} else {
    $resupesta = array("status"=>"ERROR");
}

echo json_encode($resupesta);
