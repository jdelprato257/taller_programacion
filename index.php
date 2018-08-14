<?php

session_start();
require_once 'initializer.php';
require_once 'homeRecipes.php';
require_once 'homeNotes.php';
$entro = $_SESSION['entro'];
$idUsuario = $_SESSION['idUsuario'];
$admin = $_SESSION['admin'];
//die("index".$admin);
$smarty->assign('admin',$admin);
$smarty->assign('idUsuario',$idUsuario);
$smarty->assign('entro',$entro);
$smarty->display('index.tpl');
?>