<?php

session_start();
require_once 'initializer.php';
require_once 'dbConnector.php';
$smarty->assign("entro",$_SESSION['entro']);
$smarty->assign("idUsuario",$_SESSION['idUsuario']);
$smarty->assign("admin",$_SESSION['admin']);

if($conn){
    $sql = "SELECT * FROM categorias";
    $parametros = array();
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $smarty->assign("categorias",$conn->restantesRegistros());
        $sql = "SELECT * FROM tipos";
        $parametros = array();
        $result = $conn->consulta($sql, $parametros);
        if($result){
            $smarty->assign("tipos",$conn->restantesRegistros());
            $smarty->display('agregarPublicacion.tpl');
        }
    }
}
