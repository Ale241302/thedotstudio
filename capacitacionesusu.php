<?php
session_start();
$usuario1 = $_GET['usuario'];
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
  <title>Gestion de Capacitaciones Con Usuario</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="assets/CSS/styletable.css"/>
  
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
            <a href="capacitacionesusu.php?usuario=<?php echo $usuario1; ?>&rol=<?php echo $rol; ?>" class="nav-menu-link nav-link" id="ff">Capacitaciones Y Usuarios</a>
          </li>
          
          <li class="nav-menu-item">
            <a href="capacitaciones.php?usuario=<?php echo $usuario1; ?>&rol=<?php echo $rol; ?>" class="nav-menu-link nav-link " id="ff">Gestion de Capacitaciones</a>
          </li>
          <li class="nav-menu-item">
            <a onclick="location.href='./api/user/cerrar.php?metodo=get;'" class="nav-menu-link nav-link nav-menu-link_active" id="ff">Cerrar Sesion</a>
          </li>
        </ul>
      </nav>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="assets/js/script.js"></script>
          </header>
<div class="tablap">
   <table class="table">
     <thead>
        <p align="center">Gestion de Capacitaciones Con Usuario</p>

        <tr>
         
         <th>Capacitacion</th>
         <th>Usuario</th>
      <?php
              if ($rol >= 1 && $botonActivo) {
       echo'<th colspan="2">Opciones</th>';
      }?>
        </tr>

     </thead>
     <tbody>
            <?php
            require_once'api/config/database.php';
            require_once 'api/objects/capiusu.php';
           $database = new Database(); // Crear una instancia de la clase Database (suponiendo que tienes una clase Database para manejar la conexión a la base de datos)
            $db = $database->getConnection(); // Obtener la conexión a la base de datos
            $capiusu = new Capiusu($db); // Crear una instancia de la clase Capi, pasando la conexión a la base dedatos como argumento
            // Llamar al método Listar() de la instancia de Capi
           $resultado = $capiusu->Listar2();
            foreach($resultado as $r): ?>
        <tr>
            <?php $r->capacitacion; ?>
            <?php $r->usuario; ?>
            <?php $r->fechaf; ?>
            <?php $r->fechai; ?>
            <td><?php echo $r->nombre; ?></td>
            <td><?php echo $r->nomusu; ?></td>
         <?php
              if ($rol >= 1 && $botonActivo) {
                $fechaInicio = new DateTime($r->fechai);
                $fechaFin = new DateTime($r->fechaf);
                // Calcular la diferencia en días entre las fechas
                $diferencia = $fechaFin->diff($fechaInicio)->format('%a');
               if ($diferencia > 0) {
                echo '<td id="pupu"><a href="api/user/elicapiusu.php?usuario=' . $usuario1 . '&rol=' . $rol . '&usuario2=' . $r->usuario . '&capacitacion=' . $r->capacitacion . '"> <button type="button" class="boton2">Eliminar</button> </a></td>';
               } else {
                echo '<td></td>'; // Agrega una columna vacía si la diferencia es 0 o negativa
               }
              }
            ?>
        </tr>
    <?php endforeach; ?>
     </tbody>
   </table>
  <?php
     if ($rol >= 1 && $botonActivo) {
    echo '<a href="regicausu.php?usuario=' . urlencode($usuario1) . '&rol=' . urlencode($rol) . '" id="aa"><button type="button" class="boton">Agregar Capacitacion</button></a>';
     }
    ?>

               
   </div>

</html>