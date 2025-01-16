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
                    <h2 class="title">JUD de Tianguis y Vía Pública</h2>
                    <div class="form-group">
                        <label for="dim">Dimension:</label>
                        <select id="dim" name="dim">
                            <option value="">Seleccione una opcion</option>
                            <option value="fijo">Comerciante fijo</option>
                            <option value="semifijo">Comerciante semifijo</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="caracter">Caracter:</label>
                        <select id="caracter" name="caracter">
                            <option value="">Seleccione una opcion</option>
                            <option value="ord">Ordinarios</option>
                            <option value="exentos">Exentos</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="lotes">Punto de venta:</label>
                        <input type="text" id="lotes" name="lotes">
                    </div>
                    <div class="form-group">
                            <label for="cantidad">Cantidad:</label>
                            <input type="number" id="cantidad" name="cantidad">
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
