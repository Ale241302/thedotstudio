<?php
// Incluir la clase Capi y establecer la conexión a la base de datos
include_once '../config/database.php';

// Incluir la clase Capi
include_once '../objects/capi.php';

// Crear una instancia de la clase Database
$database = new Database();
$db = $database->getConnection();
$usuario = $_GET['usuario'];
$rol = $_GET['rol'];
// Iniciar sesión
session_start();
if (isset($_GET['id'])) {
  $id = $_GET['id'];
  
  // Crear una instancia de la clase Capi
  $capi = new Capi($db);
  
  // Llamar a la función Eliminar($id)
  $capi->Eliminar($id);
  
  // Redireccionar a la página principal u otra ubicación después de eliminar el registro
  header('Location: ../../capacitaciones.php?usuario=' . urlencode($usuario) . '&rol=' . urlencode($rol) .'');
  exit();
}
?>
