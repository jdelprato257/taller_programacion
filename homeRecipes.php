<?php

require_once 'dbConnector.php';

if($conn){
    $sql = "SELECT * FROM (SELECT * FROM publicaciones WHERE tipo_id = 1 ORDER BY fecha DESC) sub LIMIT 4";
    $parametros = array();   
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $publicaciones = $conn->restantesRegistros();
        $smarty->assign('publicaciones',$publicaciones);
    } else{
        echo 'Error de consulta' ;
    }
} else {
    echo 'Error de conexion: '. $conn->ultimoError();
}

?>