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
$respuesta = array("status"=>"OK",
                   "data"=>array());
if($conn){
    $sql = "SELECT * FROM publicaciones p INNER JOIN categorias c ON c.categoria_id=p.categoria_id";     
    $yaEntro = false;
    $ambosTipos=$receta!=""&&$nota!="";
    $ambasCategorias=$general!=""&&$postres!="";
    if(!$ambosTipos){
        if($receta!="" || $recetaHome!=""){
            $sql .= " WHERE tipo_id = 1";
            $yaEntro = true;
        }
        if($nota!="" || $notasHome!=""){
            if($yaEntro==true){
                $sql .= " AND";
            } else {
                $sql .= " WHERE";
            }
            $sql .= " tipo_id = 2";
            $yaEntro = true;
        }
    }
    if(!$ambasCategorias){
        if($general!=""){
            if($yaEntro==true){
                $sql .= " AND";
            } else {
                $sql .= " WHERE";
            }
            $sql .= " categoria_id = 1";
            $yaEntro = true;
        }
        if($postres!=""){
            if($yaEntro==true){
                $sql .= " AND";
            } else {
                $sql .= " WHERE";
            }
            $sql .= " categoria_id = 2";
            $yaEntro = true;
        }
    }
    $parametros = array();
    $result = $conn->consulta($sql, $parametros);
    if($result){
        $publi = $conn->restantesRegistros();
        $respuesta["data"] = $publi;
        unset($_SESSION['recetasHome']);
        unset($_SESSION['notasHome']);
    }
}

echo json_encode($respuesta);
?>
