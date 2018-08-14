<?php

session_start();
require_once 'dbConnector.php';
require_once 'initializer.php';
$idUsuario = $_SESSION['idUsuario'];
$smarty->assign("idUsuario",$idUsuario);
$admin = $_SESSION['admin'];
$smarty->assign("admin",$admin);
if($conn){
    $sql = "SELECT * FROM favoritos f INNER JOIN publicaciones p ON f.publicacion_id=p.publicacion_id INNER JOIN categorias c ON c.categoria_id = p.categoria_id WHERE f.usuario_id=";
    $sql .= $idUsuario;
    $parametros = array();
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $favoritos = $conn->restantesRegistros();
        $smarty->assign("favoritos",$favoritos);
        $smarty->display("listadoFavoritos.tpl");
    }
}

