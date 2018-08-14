<?php

require_once 'config/config.php';
require_once 'includes/class.Conexion.BD.php';
$conn = new ConexionBD(MOTOR, SERVIDOR, BASE, USUARIO, CLAVE);
$conn->conectar();

?>