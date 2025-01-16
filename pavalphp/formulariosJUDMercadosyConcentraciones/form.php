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
                    <h2 class="title">Baños públicos</h2>
                    <div class="form-group">
                        <label for="mercados">Mercados:</label>
                        <input type="text" id="mercados" name="mercados">
                    </div>
                    <div class="form-group">
                        <label for="servicios">Numero de servicios:</label>
                        <input type="text" id="servicios" name="servicios">
                    </div>
                    <div class="form-group">
                            <label for="recau">Recaudacion:</label>
                            <input type="number" id="recau" name="recau">
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
