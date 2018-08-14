<?php
session_start();
require_once 'initializer.php';
$smarty->assign("entro",$_SESSION['entro']);
$_SESSION['notasHome'] = "notasHome";
$notasHome = $_SESSION['notasHome'];
$smarty->assign("notasHome", $notasHome);
$smarty->display("listadoPublicaciones.tpl");
