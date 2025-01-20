<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/menudepartamentos.css">
    <title>Vista de Configuración</title>
    <style> 
    body { 
        font-family: Arial, sans-serif; 
        background-color: #f0f0f0; 
        color: #333; 
    } 
    .config-container 
    { max-width: 800px; 
        margin: 50px auto; 
        background-color: #fff; 
        padding: 20px; 
        border-radius: 8px; 
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    } 
    .config-section 
    { 
        margin-bottom: 20px; 
    } 
    .config-section h3 { 
        margin-bottom: 10px; 
        color: #bf3131; 
    } 
    .config-section input[type="text"], 
    .config-section input[type="password"], 
    .config-section input[type="email"], 
    .config-section input[type="tel"], 
    .config-section input[type="date"], 
    .config-section select, 
    .config-section textarea { 
        width: 100%; 
        padding: 10px; 
        margin: 5px 0; 
        border: 1px solid #ccc; 
        border-radius: 4px; 
    } 
    .config-section button { 
        padding: 10px 20px; 
        background-color: #bf3131; 
        color: #fff; 
        border: none; 
        border-radius: 4px; 
        cursor: pointer; 
    } 
    .config-section button:hover{ 
        background-color: #ffb093; 
    } 
    .privacy-settings ul { 
        list-style-type: none; 
        padding: 0; 
        color: #000; /* Cambia el color del texto a negro */
    } 
    .privacy-settings ul li { 
        margin-bottom: 10px; 
    } 
    .privacy-settings a { 
        text-decoration: none; 
        color:rgb(0, 0, 0); 
        font-weight: bold; 
    } 
    .privacy-settings a:hover { 
        text-decoration: underline; 
    } 
    .security-settings ul { 
        list-style-type: none; /* Elimina las bolitas de lista */
        padding: 0; 
        color:rgb(0, 0, 0);  /* Cambia el color del texto a negro */
    }
    .security-settings a { 
        margin-bottom: 10px; 
        color:rgb(0, 0, 0)
    }
</style>
</head>

<body>

    <div class="config-container">
        <?php include 'includes/navbarh.php'; ?>
        <!-- Preferencias del Usuario -->
        <div class="config-section">
            <h3>Preferencias del Usuario</h3>
            <label for="username">Nombre de usuario:</label>
            <label for="phone">Número de teléfono:</label>
            <input type="tel" id="phone" name="phone">
            <label for="birthdate">Fecha de nacimiento:</label>
            <input type="date" id="birthdate" name="birthdate">
        </div>
        <!-- Configuración de Notificaciones -->
        <div class="config-section">
            <h3>Configuración de Notificaciones</h3>
            <label for="email-notif">Notificaciones por correo electrónico:</label>
            <input type="checkbox" id="email-notif" name="email-notif">
            <label for="sms-notif">Notificaciones por mensajes de texto:</label>
            <input type="checkbox" id="sms-notif" name="sms-notif">
            <label for="push-notif">Notificaciones push:</label>
            <input type="checkbox" id="push-notif" name="push-notif">
        </div>
        <!-- Configuración de Apariencia -->
        <div class="config-section">
            <h3>Configuración de Apariencia</h3>
            <label for="theme">Tema:</label>
            <select id="theme" name="theme">
                <option value="light">Claro</option>
                <option value="dark">Oscuro</option>
            </select>
        </div>
        <!-- Preferencias de Idioma y Región -->
        <div class="config-section">
            <h3>Preferencias de Idioma y Región</h3>
            <label for="language">Idioma:</label>
            <select id="language" name="language">
                <option value="es">Español</option>
                <option value="en">Inglés</option>
                <option value="fr">Francés</option>
            </select>
            <label for="region">Región:</label>
            <select id="region" name="region">
                <option value="mx">México</option>
            </select>
        </div>
        <!-- Configuración de Privacidad -->
        <div class="config-section privacy-settings">
            <h3>Configuración de Privacidad</h3> 
            <ul> 
                <li><a href="perfil.html" target="_blank">Visibilidad del perfil</a></li> 
                <li><a href="compartir_datos.html" target="_blank">Compartir datos con terceros</a></li> 
                <li><a href="bloqueos.html" target="_blank">Gestión de bloqueos</a></li> 
                <li><a href="historial.html" target="_blank">Historial de actividad</a></li> 
            </ul>
        </div>
        <!-- Configuración de Seguridad -->
        <div class="config-section security-settings">
            <h3>Configuración de Seguridad</h3>
            <ul> 
                <li><a href="change-password.html" target="_blank">Cambio de Contraseña</a></li> 
                <li><a href="two-factor-auth.html" target="_blank">Autenticación en Dos Pasos</a></li> 
                <li><a href="recovery-email.html" target="_blank">Correo de Recuperación</a></li> 
                <li><a href="login-history.html" target="_blank">Historial de Inicios de Sesión</a></li> 
            </ul>
        </div>
        <!-- Configuración de Zona Horaria -->
        <div class="config-section">
            <h3>Zona Horaria</h3>
            <label for="timezone">Selecciona tu zona horaria:</label>
            <select id="timezone" name="timezone">
                <option value="UTC-12:00">UTC-12:00</option>
                <option value="UTC-11:00">UTC-11:00</option>
                <option value="UTC-10:00">UTC-10:00</option>
                <option value="UTC-09:00">UTC-09:00</option>
                <option value="UTC-08:00">UTC-08:00</option>
                <option value="UTC-07:00">UTC-07:00</option>
                <option value="UTC-06:00">UTC-06:00</option>
                <option value="UTC-05:00">UTC-05:00</option>
                <option value="UTC-04:00">UTC-04:00</option>
                <option value="UTC-03:00">UTC-03:00</option>
                <option value="UTC-02:00">UTC-02:00</option>
                <option value="UTC-01:00">UTC-01:00</option>
                <option value="UTC+00:00">UTC+00:00 (GMT)</option>
                <option value="UTC+01:00">UTC+01:00</option>
                <option value="UTC+02:00">UTC+02:00</option>
                <option value="UTC+03:00">UTC+03:00</option>
                <option value="UTC+04:00">UTC+04:00</option>
                <option value="UTC+05:00">UTC+05:00</option>
                <option value="UTC+06:00">UTC+06:00</option>
                <option value="UTC+07:00">UTC+07:00</option>
                <option value="UTC+08:00">UTC+08:00</option>
                <option value="UTC+09:00">UTC+09:00</option>
                <option value="UTC+10:00">UTC+10:00</option>
                <option value="UTC+11:00">UTC+11:00</option>
                <option value="UTC+12:00">UTC+12:00</option>
                <option value="UTC+13:00">UTC+13:00</option>
                <option value="UTC+14:00">UTC+14:00</option>
            </select>
        </div>
        <!-- Botón de Guardar Cambios -->
        <div class="config-section">
            <button>Guardar Cambios</button>
        </div>
    </div>
</body>
</html>
