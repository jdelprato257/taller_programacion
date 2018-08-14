<?php
session_start();
require_once 'dbConnector.php';
require_once 'initializer.php';
header('Content-type: text/html; charset=utf-8');

$email = $_GET['loginEmail'];
$password = $_GET['loginPass'];

if($conn){
    $sql = "SELECT * FROM usuarios WHERE email = :email AND password= md5(:password)";
    $parametros = array();
    $parametros[0] = array("email",$email,"string",255);
    $parametros[1] = array("password",$password,"string",255);
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $usuario = $conn->siguienteRegistro();
        if($usuario['email']!=''){
            $_SESSION['entro']=true;
            $smarty->assign("entro",$_SESSION['entro']);
            $_SESSION['idUsuario']=$usuario['usuario_id'];
            $_SESSION['admin']=$usuario['administrador'];
            $_SESSION['incorrecto']=false;
            header("Location: index.php");
        }
        else {
            $_SESSION['entro']=false;
            header("Location: login.php");
        }
    } 
} else{
    die($conn->ultimoError());
    header("Location: error.php");
}
    
?>

