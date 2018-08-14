<?php

session_start();
require_once 'initializer.php';
require_once 'dbConnector.php';
$idUsuario = $_SESSION['idUsuario'];
$admin = $_SESSION['admin'];
$smarty->assign('idUsuario',$idUsuario);
$smarty->assign('admin',$admin);
if($conn){
    $sql = "SELECT * FROM usuarios";
    $parametros = array();
    $result = $conn->consulta($sql,$parametros);
    if($result){
        $usuarios=$conn->restantesRegistros();
        $smarty->assign("usuarios",$usuarios);
        $smarty->display('listadoUsuarios.tpl');
    }
}

