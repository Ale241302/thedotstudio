<?php
 
// get database connection
include_once '../config/database.php';
 
// instantiate user object
include_once '../objects/user.php';
 
$database = new Database();
$db = $database->getConnection();
session_start();
$user = new User($db);
 
// set user property values
$user->usuario = $_POST['usuario'];
$user->nombre = $_POST['nombre'];
$user->correo = $_POST['correo'];
$user->telefono = $_POST['telefono'];
$user->password = base64_encode($_POST['password']);
$user->rol = $_POST['rol'];
// Start output buffering
ob_start();

// create the user
if($user->signup()){
    $stmt2 = $db->prepare("SELECT rol FROM usuario WHERE usuario = :usuario");
    $stmt2->bindParam(':usuario', $user->usuario);
    $stmt2->execute();
    $user->log3();
    // fetch the role from the database
    $resultado = $stmt2->fetch();

    // store the username in the session variable
    $_SESSION['usuario'] = $user->usuario;

    // redirect to the appropriate page based on the role
        header('Location: ../../capacitacionesusu.php?usuario=' . urlencode($user->usuario) . '&rol=' . urlencode($user->rol));
    ob_end_flush();
}
else{
    echo "<script>alert('Usuario Ya Existe.')</script>";
    echo "<script>window.location.href='../../login.php';</script>";
	exit;
}
print_r(json_encode($user_arr));
?>