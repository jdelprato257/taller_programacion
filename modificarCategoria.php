<?php

session_start();
require_once 'initializer.php';
$idCat = (int)$_GET['idCat'];
$nombreCat = $_GET['nombreCat'];
$smarty->assign("idCat",$idCat);
$smarty->assign("nombreCat",$nombreCat);
$smarty->assign('admin',$_SESSION['admin']);
$smarty->assign("idUsuario",$_SESSION['idUsuario']);
$smarty->display('modificarCategoria.tpl');
