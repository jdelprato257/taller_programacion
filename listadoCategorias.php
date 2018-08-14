<?php

session_start();
require_once 'dbConnector.php';
require_once 'initializer.php';
$smarty->assign("idUsuario",$_SESSION['idUsuario']);
$smarty->assign("admin",$_SESSION['admin']);
if($conn){
    $sql = "SELECT * FROM categorias";
    $parametros = array();
    $result = $conn->consulta($sql,$parametros);
    
    if($result){
        $categorias=$conn->restantesRegistros();
        $smarty->assign("categorias",$categorias);
        $smarty->display("listadoCategorias.tpl");
    }
}
