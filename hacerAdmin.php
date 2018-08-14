<?php
session_start();
require_once 'dbConnector.php';
$usuarioParaAdmin = (int)$_GET['id'];

if($conn){
    $sql = "UPDATE usuarios SET administrador=1 WHERE usuario_id=";
    $sql .= $usuarioParaAdmin;
    $parametros = array();
    $result = $conn->consulta($sql, $parametros);
    if($result){
        header("Refresh:0,url=listadoUsuarios.php");
    }
}