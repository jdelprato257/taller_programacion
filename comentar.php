<?php

session_start();
require_once 'initializer.php';
require_once 'dbConnector.php';
$idUsuario = $_SESSION['idUsuario'];
$smarty->assign('idUsuario',$idUsuario);
$textoComentario = $_POST['texto'];
$publicacionId = $_SESSION['publicacionView'];
$respuesta = array("status"=>"OK");
if($conn){
    $sql = "INSERT INTO comentarios (detalle, usuario_id, publicacion_id)";
    $sql .= " VALUES (:detalle, :usuario_id, :publicacion_id)";
    $parametros = array();
    $parametros[0] = array("detalle",$textoComentario,"string",255);
    $parametros[1] = array("usuario_id",$idUsuario,"int",11);
    $parametros[2] = array("publicacion_id",$publicacionId,"int",11);
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $respuesta = array("status"=>"OK");
    } else {
        $respuesta = array("status"=>"ERROR");
    }
}

echo json_encode($respuesta);
