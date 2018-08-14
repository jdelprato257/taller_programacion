<?php

session_start();
require_once 'dbConnector.php';
$idCat = (int)$_GET['idCat'];
$smarty->assign("idCat",$idCat);
if($conn){
    $sql = "SELECT COUNT(*) cuenta FROM publicaciones WHERE categoria_id=";
    $sql .= $idCat;
    $parametros=array();
    $result=$conn->consulta($sql, $parametros);
    if($result){
        $cuenta = $conn->siguienteRegistro()['cuenta'];
        if($cuenta==0){
            $sql = "DELETE FROM categorias WHERE categoria_id=".$idCat;
            $result=$conn->consulta($sql, $parametros);
            if($result){
                header("Refresh:0,url=listadoCategorias.php");
            }
        }
        else{
            echo "<script type='text/javascript'>alert('No puede eliminar categorias activas, debe eliminar todas las publicaciones de la categoria antes.');</script>";
            header("Refresh:0,url=listadoCategorias.php");
        }
    }
}
