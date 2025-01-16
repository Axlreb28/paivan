<?php
session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/formJUDI.css">
    <!-- Leaflet CSS -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <!-- Leaflet JavaScript -->
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
</head>
<body>
    <?php if (isset($_SESSION['departamento'])): ?>
    <div class="container">
        <form class="miFormulario" action="">
            <div class="row">
                <div class="column">
                    <h2 class="title">Negocios</h2>
                    <div class="form-group">
                        <label for="mercado">Mercado:</label>
                        <input type="text" id="mercado" name="mercado">
                    </div>
                    <div class="form-group">
                        <label for="nego">Nombre del negocio:</label>
                        <input type="text" id="nego" name="nego">
                    </div>
                    <div class="form-group">
                        <h3>Propietario</h3>
                        <label for="nombre">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="apellido">Apellidos:</label>
                        <input type="text" id="apellido" name="apellido" required>
                    </div>
                    <div class="form-group">
                        <label for="Tnego">Tipo de negocio:</label>
                        <input type="text" id="Tnego" name="Tnego">
                    </div>
                    <div class="form-group">
                            <label for="per">Número de permiso/licencia de funcionamiento:</label>
                            <input type="number" id="per" name="per">
                        </div>
                        <div class="form-group">
                        <label for="preg">¿Está implementado el programa de protección civil en el negocio?</label>
                        <input type="text" id="preg" name="preg" required>
                    </div>
                    <button type="submit" class="btn">Enviar</button>
                </div>
            </div>
        </form>
    </div>
    <?php else : ?>
    <p>Por favor inicie sesión primero.</p>
    <?php endif; ?>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
