<?php
include_once '../config/database.php';
include_once '../objects/user.php';
session_start();

if (isset($_SESSION['usuario'])) {
  // get database connection
  $database = new Database();
  $db = $database->getConnection();

  // prepare user object
  $user = new User($db);
  $user->usuario = $_SESSION['usuario'];

  // log out user
  session_destroy();

  // register log
  $user->ina();
  // redirect to login page
  header('Location: ../../login.php');
  exit;
} else {
  header('Location: ../../login.php');
  exit;
}
?>