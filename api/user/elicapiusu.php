<?php
// Incluir la clase Capiusu y establecer la conexión a la base de datos
require_once '../config/database.php';
require_once '../objects/capiusu.php';
// Iniciar sesión
session_start();
// Crear una instancia de la clase Database
$database = new Database();
$db = $database->getConnection();
$usuario1 = isset($_GET['usuario']) ? $_GET['usuario'] : '';
$rol = isset($_GET['rol']) ? $_GET['rol'] : '';
$usuario = isset($_GET['usuario2']) ? $_GET['usuario2'] : '';
$capacitacion = isset($_GET['capacitacion']) ? $_GET['capacitacion'] : '';
$capi = new Capiusu($db);
// Start output buffering
ob_start();

// Crear el objeto $data con los valores actualizados
$data = new stdClass();
$data->usuario = $usuario;
$data->capacitacion = $capacitacion;
if ($capi->Eliminar($data)) {
    // Redireccionar a la página "capacitaciones.php" con el parámetro "usuario" en la URL
    header('Location: ../../capacitacionesusu.php?usuario=' . urlencode($usuario1) . '&rol=' . urlencode($rol) .'');
    // Enviar el buffer de salida al navegador
    ob_end_flush();
} else {
     echo "error al eliminar";
    exit;
}

?>
