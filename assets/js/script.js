
// Variable para almacenar el tiempo de inactividad máximo en segundos (por ejemplo, 5 minutos)
const INACTIVITY_TIMEOUT = 30;
// Variable para almacenar la hora actual
let lastActivity = Date.now();
// Variable para controlar si el usuario ya fue redirigido
let hasRedirected = false;
// Función para comprobar si el usuario ha estado inactivo durante demasiado tiempo
function checkInactivity() {
  // Obtiene la hora actual
  const currentTime = Date.now();
  // Calcula el tiempo transcurrido desde la última actividad del usuario
  const elapsed = (currentTime - lastActivity) / 1000;
  // Si ha pasado demasiado tiempo desde la última actividad y el usuario no ha sido redirigido, redirige al usuario a una página de cierre de sesión
  if (elapsed >= INACTIVITY_TIMEOUT && !hasRedirected) {
    hasRedirected = true;
    window.location.href = './api/user/ina.php?metodo=get;';
     alert("Tu sesión ha sido cerrada por inactividad.");
  }
  // Vuelve a comprobar la inactivid  ad después de 1 segundo
  setTimeout(checkInactivity, 6000);
}
// Función para enviar un registro de cierre de sesión al servidor
function sendLogoutLog() {
  if (!hasRedirected) {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', './api/user/cernav.php?metodo=get;', true);
    xhr.send();
  }
}
// Inicia la comprobación de inactividad
checkInactivity();

let offlineExecuted = false;
function logOffline() {
  if (navigator.connection && navigator.connection.effectiveType !== 'none') {
    var img = new Image();
    img.src = 'http://codinginfinite.com/demo/images/bg.jpg';
    img.onload = function() {
      console.log('Conexión a Internet disponible');
      var submitBtn = document.getElementById("submitBtn");
      if (submitBtn) {
        submitBtn.disabled = false;
      }
    };
    img.onerror = function() {
      if (!offlineExecuted) {
        offlineExecuted = true;
        const xhr = new XMLHttpRequest();
        xhr.open('GET', './api/user/offline.php?metodo=get;');
        alert("Usuario sin Red.");
        var submitBtn = document.getElementById("submitBtn");
        if (submitBtn) {
          submitBtn.disabled = true;
        }
        xhr.send();
      }
    };
  } else {
    if (!offlineExecuted) {
      offlineExecuted = true;
      var submitBtn = document.getElementById("submitBtn");
      if (submitBtn) {
        submitBtn.disabled = true;
      }
    }
  }
  setTimeout(logOffline, 1000);
}

  logOffline(); // llamar a la función una vez al inicio

// Escucha los eventos de movimiento del ratón y de pulsación de teclas para actualizar la hora de la última actividad
document.addEventListener('mousemove', () => {
  lastActivity = Date.now();
});
document.addEventListener('keypress', () => {
  lastActivity = Date.now();
});
// Escucha el evento de cierre de pestaña o navegador para enviar un registro de cierre de sesión
window.addEventListener('unload', sendLogoutLog);
