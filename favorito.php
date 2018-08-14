<?php
session_start();
require_once 'dbConnector.php';
$publicacion = $_SESSION['publicacionView'];
$idUsuario = $_SESSION['idUsuario'];
$respuesta = array("status"=>"OK");
if($conn){
    $sql = "SELECT * FROM favoritos WHERE usuario_id = ";
    $sql .= $idUsuario;
    $sql .= " AND publicacion_id =";
    $sql .= $publicacion;
    $parametros = array();
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $favorito = $conn->siguienteRegistro();
        $usId = $favorito['usuario_id'];
        if($usId==''){
            $sql = "INSERT INTO favoritos (usuario_id, publicacion_id)";
            $sql .= "VALUES(:usuarioId, :publicacion)";
            $parametros = array();
            $parametros[0] = array("usuarioId",$idUsuario,"int",11);
            $parametros[1] = array("publicacion",$publicacion,"int",11);
            $result = $conn->consulta($sql, $parametros);
            if($result){
                $respuesta["status"]="OK";
            }
        } else {
            $respuesta["status"]="EXISTS";
        }
    }
}

echo json_encode($respuesta);