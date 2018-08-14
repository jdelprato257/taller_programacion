<?php

session_start();
require_once 'initializer.php';
$smarty->assign("entro",$_SESSION['entro']);
$smarty->assign("idUsuario",$_SESSION['idUsuario']);
$smarty->assign("admin",$_SESSION['admin']);
$smarty->display('agregarPublicacion.tpl');