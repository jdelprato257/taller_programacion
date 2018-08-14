<?php

session_start();
require_once 'dbConnector.php';

$idPub = (int)$_GET['idPub'];

if($conn){
    $sql = "DELETE FROM publicaciones WHERE publicacion_id=".$idPub;
    $parametros=array();
    $result = $conn->consulta($sql, $parametros);
    
    if($result){
        header("Location: index.php");
    }
}
