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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"> <!-- Font Awesome -->
    <style>
        .back-icon {
            position: absolute;
            top: 20px;
            left: 20px;
            color: white;
            font-size: 24px;
        }
    </style>
    <script>
        let map;
        let marker;

        function initMap() {
            // Coordenadas de Tlalpan, Ciudad de México
            const tlalpanCoords = { lat: 19.287860, lng: -99.171360 };
            map = L.map('map').setView([tlalpanCoords.lat, tlalpanCoords.lng], 13);

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);

            // Crear un marcador inicial y permitir que el usuario lo arrastre
            marker = L.marker([tlalpanCoords.lat, tlalpanCoords.lng], {draggable: true}).addTo(map);

            marker.on('dragend', function(event) {
                const position = marker.getLatLng();
                updateLocation(position);
            });
        }

        function updateLocation(location) {
            document.getElementById('ubicacion').value = location.lat + ', ' + location.lng;
            fetch(`https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat=${location.lat}&lon=${location.lng}`)
                .then(response => response.json())
                .then(data => {
                    if (data.address) {
                        const address = `${data.address.road || ''}, ${data.address.suburb || ''}, ${data.address.city || ''}, ${data.address.state || ''}, ${data.address.country || ''}`;
                        document.getElementById('direccion').value = address;
                    }
                })
                .catch(error => console.error('Error:', error));
        }

        function toggleMap() {
            const mapContainer = document.getElementById('map-container');
            if (mapContainer.style.display === 'none' || mapContainer.style.display === '') {
                mapContainer.style.display = 'block';
                initMap();
            } else {
                mapContainer.style.display = 'none';
            }
        }

        document.addEventListener('DOMContentLoaded', function () {
            document.getElementById('map-container').style.display = 'none';
        });
    </script>
</head>
<body>
    <?php if (isset($_SESSION['departamento'])): ?>
    <div class="container">
        <a href="javascript:history.back()" class="back-icon">
            <i class="fas fa-arrow-left"></i> <!-- Ícono de Font Awesome -->
        </a>
        <form class="miFormulario" action="">
            <div class="row">
                <div class="column">
                <h2 class="title">Giro</h2>
                    <div class="form-group">
                        <label for="unidadt">Unidad Territorial:</label>
                        <select id="unidadt" name="unidadt">
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="ubicacion">Ubicación (Arrastra el PIN AZUL):</label>
                        <input type="text" id="ubicacion" name="ubicacion" style="display: none;" readonly>
                        <button type="button" onclick="toggleMap()">Seleccionar Ubicación</button>
                        <div id="map-container">
                            <div id="map" style="height: 400px;"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="direccion">Dirección:</label>
                        <input type="text" id="direccion" name="direccion" readonly>
                    </div>
                    <div class="form-group">
                        <label for="caracter">Caracter:</label>
                        <select id="caracter" name="caracter">
                        <option value="">Seleccione una opcion</option>
                            <option value="mercantiles">Giros Mercantiles</option>
                            <option value="estacionamientos">Estacionamientos</option>
                            <option value="foodtruck">Food Truck</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="giro">Tipo de Giro:</label>
                        <input type="text" id="giro" name="giro">
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
