<?php
session_start();
require_once 'initializer.php';
$smarty->display('login.tpl');
if($_SESSION['incorrecto']){
    echo '<script language="javascript"> alert("Datos erroneos")</script>';
    $_SESSION['incorrecto']=false;
}
