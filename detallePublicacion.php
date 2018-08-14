<?php

session_start();
require_once 'initializer.php';
require_once 'dbConnector.php';
$idUsuario = $_SESSION['idUsuario'];
$smarty->assign("idUsuario",$idUsuario);
$smarty->assign("admin",$_SESSION['admin']);
$smarty->assign("entro",$_SESSION['entro']);
$id = (int)$_GET['id'];
$_SESSION['publicacionView']=$id;

if($conn){
    $sql = "SELECT * FROM publicaciones p INNER JOIN usuarios u ON p.usuario_id = u.usuario_id WHERE publicacion_id = ";
    $sql .= $id;
    $parametros = array();
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $publicacion = $conn->siguienteRegistro();
        $smarty->assign("publicacion",$publicacion);
        $sql = "SELECT * FROM comentarios c";
        $sql .= " INNER JOIN usuarios u ON c.usuario_id=u.usuario_id WHERE c.publicacion_id=";
        $sql .= $id;
        $result = $conn->consulta($sql, $parametros);
        if($result){
            $comentarios = $conn->restantesRegistros();
            $smarty->assign("comentarios",$comentarios);
            $sql = "SELECT * FROM categorias WHERE categoria_id=";
            $sql .= $publicacion['categoria_id'];
            $result = $conn->consulta($sql, $parametros);
            if($result){
                $categoria = $conn->siguienteRegistro();
                $smarty->assign("categoria",$categoria);
            }
        }
        $smarty->display("detallePublicacion.tpl");
    }
}

