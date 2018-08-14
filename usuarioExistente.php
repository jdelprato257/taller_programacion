<?php
session_start();
require_once 'dbConnector.php';

$email-> $_GET['email'];

if($conn){
    $sql = "SELECT * FROM usuarios WHERE email = :email";
    $parametros = array('email' => $email);
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $usr = $conn->siguienteRegistro();
        $usId = $usr['usuario_id'];
        if($usId!=''){
            echo "<script type='text/javascript'>alert('El usuario ingresado ya existe');</script>";
            header("Location: registrarUsuario.php");
        } else{
            header("Location: index.php");
        }
    }
}
?>
