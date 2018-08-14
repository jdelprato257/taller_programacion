<?php
session_start();
require_once 'initializer.php';
$entro = $_SESSION['entro'];
$smarty->assign("entro",$entro);
$_SESSION['recetasHome'] = "recetasHome";
$recetasHome = $_SESSION['recetasHome'];
$smarty->assign("recetasHome", $recetasHome);
$smarty->display("listadoPublicaciones.tpl");
