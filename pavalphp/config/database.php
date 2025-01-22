<?php

$host = 'indicadorestlalpan.mx'; // Host de la base de datos, por lo general es localhost
$dbname = 'tlalpandb'; // Nombre de la base de datos creada
$username = 'tlalpan'; // Usuario predeterminado de XAMPP para MySQL
$password = 'o3NvcMy5#8Nhrco%'; // Contraseña, por defecto está vacía en XAMPP

try {
    // Crear una nueva conexión a la base de datos con PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    // Establecer el modo de error para que se muestren excepciones
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	echo "CONECTADO"; 
} catch (PDOException $e) {
    // Si hay un error, lo captura y lo muestra
    echo "Error en la conexión: " . $e->getMessage();
}
?>