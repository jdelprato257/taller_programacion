<?php

session_start();
require_once 'initializer.php';
$_SESSION['entro']=false;
unset($_SESSION['idUsuario']);
unset($_SESSION['admin']);
$smarty->assign("entro",$_SESSION['entro']);
$smarty->assign("admin",$_SESSION['admin']);
header("Location: index.php");

?>

