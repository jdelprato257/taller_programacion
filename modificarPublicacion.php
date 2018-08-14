<?php

session_start();
require_once 'initializer.php';
require_once 'dbConnector.php';
$smarty->assign("entro",$_SESSION['entro']);
$smarty->assign("idUsuario",$_SESSION['idUsuario']);
$smarty->assign("admin",$_SESSION['admin']);
$idPub = (int)$_GET['idPub'];
$smarty->assign("idPub",$idPub);
if($conn){
    $sql = "SELECT * FROM publicaciones WHERE publicacion_id=";
    $sql .= $idPub;
    $parametros = array();
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $pub = $conn->siguienteRegistro();
        $sql = "SELECT * FROM categorias";
        $result = $conn->consulta($sql, $parametros);
        if($result){
            $cats = $conn->restantesRegistros();
            $sql = "SELECT * FROM tipos";
            $result = $conn->consulta($sql, $parametros);
            if($result){
                $tipos = $conn->restantesRegistros();
                $smarty->assign("pub",$pub);
                $smarty->assign("categorias",$cats);
                $smarty->assign("tipos",$tipos);
                $smarty->display('modificarPublicacion.tpl');
            }
        }
    }
}

