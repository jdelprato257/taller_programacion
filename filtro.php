<?php
session_start();
require_once 'initializer.php';
require_once 'dbConnector.php';
$recetaHome = $_SESSION['recetasHome'];
$notasHome = $_SESSION['notasHome'];
$receta = $_POST['receta'];
$nota = $_POST['nota'];
$general = $_POST['general'];
$postres = $_POST['postres'];
$pagina = (int)$_POST['pagina'];
if($pagina <= 0){
    $pagina = 1;
}
$respuesta = array("status"=>"OK",
                   "data"=>array(),
                   "ultima" => 0);
if($conn){
    $finalSql = "SELECT *";
    $sqlCount = "SELECT COUNT(*) cantidad";
    $sqlRest = " FROM publicaciones p INNER JOIN categorias c ON c.categoria_id=p.categoria_id";     
    $yaEntro = false;
    $ambosTipos=$receta!=""&&$nota!="";
    $ambasCategorias=$general!=""&&$postres!="";
    if(!$ambosTipos){
        if($receta!="" || $recetaHome!=""){
            $sqlRest .= " WHERE tipo_id = 1";
            $yaEntro = true;
        }
        if($nota!="" || $notasHome!=""){
            if($yaEntro==true){
                $sqlRest .= " AND";
            } else {
                $sqlRest .= " WHERE";
            }
            $sqlRest .= " tipo_id = 2";
            $yaEntro = true;
        }
    }
    if(!$ambasCategorias){
        if($general!=""){
            if($yaEntro==true){
                $sqlRest .= " AND";
            } else {
                $sqlRest .= " WHERE";
            }
            $sqlRest .= " p.categoria_id = 1";
            $yaEntro = true;
        }
        if($postres!=""){
            if($yaEntro==true){
                $sqlRest .= " AND";
            } else {
                $sqlRest .= " WHERE";
            }
            $sqlRest .= " p.categoria_id = 2";
            $yaEntro = true;
        }
    }
    $parametros = array();
    $result = $conn->consulta($sqlCount.$sqlRest, $parametros);
    if($result){
        $fila = $conn->siguienteRegistro();
        $ultima = ceil($fila['cantidad']/CANTXPAG);
        $limitSql = " LIMIT " . (($pagina * CANTXPAG)-CANTXPAG) . "," . CANTXPAG;
        $result = $conn->consulta($finalSql.$sqlRest.$limitSql, $parametros);
        if($result){
            $publi = $conn->restantesRegistros();
            $respuesta["data"] = $publi;
            $respuesta["ultima"] = $ultima;
            unset($_SESSION['recetasHome']);
            unset($_SESSION['notasHome']);
        } else {
           $respuesta = array("status"=>"ERROR",
                           "data"=>array(),
                           "ultima" => 0);   
        }
    } else {
           $respuesta = array("status"=>"ERROR",
                           "data"=>array(),
                           "ultima" => 0);   
        }
}

echo json_encode($respuesta);
?>
