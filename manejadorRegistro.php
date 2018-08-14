<?php
session_start();
require_once 'dbConnector.php';
header('Content-type: text/html; charset=utf-8');

$admin = false;
$nombre = $_POST['txtNombre'];
$email = $_POST['txtCorreo'];
$password = $_POST['txtPass'];

if($conn){
    $sql = "INSERT INTO usuarios(email, password, administrador, nombre)";
    $sql .= " VALUES (:email, md5(:password), :administrador, :nombre)";
    $parametros = array();
    $parametros[0] = array("email",$email,"string",255);
    $parametros[1] = array("password",$password,"string",255);
    $parametros[2] = array("administrador",$admin,"boolean",1);
    $parametros[3] = array("nombre",$nombre,"string",250);
    $result = $conn->consulta($sql, $parametros);
    if($result){
        header("Location: index.php");
        
    } else{
        header("Location: error.php");
    }

} else{
    header("Location: error.php");
}