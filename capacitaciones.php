<?php
session_start();
$usuario = $_GET['usuario'];
$rol = $_GET['rol'];
$diaSemana = date('N'); // Número del día de la semana (1 para lunes, 2 para martes, etc.)
$horaActual = date('H:i:s'); // Hora actual en formato HH:MM:SS

// Verificar si es un día de la semana laboral (de lunes a viernes) y si está dentro del horario permitido
$esDiaLaboral = $diaSemana >= 1 && $diaSemana <= 5;
$estaEnHorario = ($horaActual >= '10:00:00') && ($horaActual <= '22:00:00');

// Comprobar si el botón debe estar activo
$botonActivo = $esDiaLaboral && $estaEnHorario;
?>
<!DOCTYPE html>
<html lang="en" >
<head>
  <title>Gestion de Capacitaciones</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="assets/css/styletable.css"/>
  
  <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
<script
      src="https://kit.fontawesome.com/7e5b2d153f.js"
      crossorigin="anonymous"
    ></script>
    <script defer src="./assets/js/index.js"></script>
</head>
<header class="header">
      <nav class="nav">
        <button class="nav-toggle" aria-label="Abrir menú">
          <i class="fas fa-bars"></i>
        </button>
        <ul class="nav-menu">
          <li class="nav-menu-item">
            <a href="#" class="nav-menu-link nav-link" id="ff"></a>
          </li>
          <li class="nav-menu-item">
            <a href="capacitacionesusu.php?usuario=<?php echo $usuario; ?>&rol=<?php echo $rol; ?>" class="nav-menu-link nav-link" id="ff">Capacitaciones Y Usuarios</a>
          </li>
          
          <li class="nav-menu-item">
            <a href="capacitaciones.php?usuario=<?php echo $usuario; ?>&rol=<?php echo $rol; ?>" class="nav-menu-link nav-link " id="ff">Gestion de Capacitaciones</a>
          </li>
          <li class="nav-menu-item">
            <a onclick="location.href='./api/user/cerrar.php?metodo=get;'" class="nav-menu-link nav-link nav-menu-link_active" id="ff">Cerrar Sesion</a>
          </li>
        </ul>
      </nav>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="./assets/js/script.js"></script>    
      </header>
<div class="tablap">
   <table class="table">
     <thead>
        <p align="center">Gestion de Capacitaciones</p>

        <tr>
         <th>id</th>
         <th>Nombre</th>
         <th>Descripcion</th>
         <th>Cupos Disponibles</th>
         <th>Fecha de Inicio</th>
         <th>Fecha de Finalizacion</th>
      <?php
              if ($rol != 1) {
       echo'<th colspan="2">Opciones</th>';
      }?>
        </tr>

     </thead>
     <tbody>
            <?php
            require_once'api/config/database.php';
            require_once 'api/objects/capi.php';

           $database = new Database(); // Crear una instancia de la clase Database (suponiendo que tienes una clase Database para manejar la conexión a la base de datos)
            $db = $database->getConnection(); // Obtener la conexión a la base de datos
            $capi = new Capi($db); // Crear una instancia de la clase Capi, pasando la conexión a la base dedatos como argumento
            // Llamar al método Listar() de la instancia de Capi
           $resultado = $capi->Listar();
            foreach($resultado as $r): ?>
        <tr>
            <td><?php echo $r->id; ?></td>
            <td><?php echo $r->nombre; ?></td>
            <td><?php echo $r->descripcion; ?></td>
            <td><?php echo $r->cupo; ?></td>
            <td><?php echo $r->fechai; ?></td>
            <td><?php echo $r->fechaf; ?></td>
         <?php
              $fechaf = new DateTime($r->fechaf); 
              if ($rol != 1) {
                 echo '<td id="pupu"><a href="modigica.php?usuario=' . $usuario . '&rol=' . $rol . '&id=' . $r->id . '"><button type="button" class="boton2">Modificar</button></a></td>';
                 if ($fechaf > new DateTime()){
                   echo '<td id="pupu"><a href="api/user/elicapi.php?usuario=' . $usuario . '&rol=' .$rol .'&id=' . $r->id . '"> <button type="button" class="boton2">Eliminar</button> </a></td>';
               }else {
            echo '<td></td>'; // Oculta la columna del botón eliminar si la fecha es mayor o igual a la fecha actual
              }
            }else {
            echo '<td></td>'; // Oculta la columna del botón eliminar si la fecha es mayor o igual a la fecha actual
            }
            ?>
        </tr>
    <?php endforeach; ?>

     </tbody>

   </table>
  <?php
     if ($rol != 1 && $botonActivo) {
    echo '<a href="regica.php?usuario=' . urlencode($usuario) . '&rol=' . urlencode($rol) . '" id="aa"><button type="button" class="boton">Agregar Capacitacion</button></a>';
     }
    ?>

               
   </div>

</body>
</html>
