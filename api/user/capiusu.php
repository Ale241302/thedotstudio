<?php
 
// Obtener la conexión a la base de datos
include_once '../config/database.php';
 
// Incluir las clases Capi y User
include_once '../objects/capiusu.php';

// Crear una instancia de la clase Database
$database = new Database();
$db = $database->getConnection();

// Iniciar sesión
session_start();
$usuario = $_GET['usuario'];
$rol = $_GET['rol'];

// Crear una instancia de la clase Capi
$capiusu = new Capiusu($db);

// Crear una instancia de la clase User
 
// Obtener los valores del formulario y asignarlos a la instancia de Capi
$capiusu->usuario = $_POST['usuario'];
$capiusu->capacitacion = $_POST['capacitacion'];

// Start output buffering
ob_start();

// Crear el registro de capacitación
if ($capiusu->regi()) {
	$capiusu->log4();
    // Redireccionar a la página "capacitaciones.php" con el parámetro "usuario" en la URL
    header('Location: ../../capacitacionesusu.php?usuario=' . urlencode($usuario) . '&rol=' . urlencode($rol) .'');
    // Enviar el buffer de salida al navegador
    ob_end_flush();
} else {
    echo "<script>window.location.href='../../login.php';</script>";
    exit;
}
?>
