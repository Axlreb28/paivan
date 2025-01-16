<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/formJUDI.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <title>Formulario JUD</title>
    <script>
        let mapReparationInitialized = false;
        let mapInstallationInitialized = false;

        // Inicializar el mapa para Reparación
        function initReparationMap() {
            if (!mapReparationInitialized) {
                const tlalpanCoords = { lat: 19.287860, lng: -99.171360 };
                const mapReparation = L.map('map').setView([tlalpanCoords.lat, tlalpanCoords.lng], 13);

                L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                }).addTo(mapReparation);

                const markerReparation = L.marker([tlalpanCoords.lat, tlalpanCoords.lng], { draggable: true }).addTo(mapReparation);
                markerReparation.on('dragend', function (event) {
                    const position = markerReparation.getLatLng();
                    updateLocation(position, 'ubicacion', 'direccion');
                });

                mapReparationInitialized = true;
            }
        }

        // Inicializar el mapa para Instalación
        function initInstallationMap() {
            if (!mapInstallationInitialized) {
                const tlalpanCoords = { lat: 19.287860, lng: -99.171360 };
                const mapInstallation = L.map('map-installation').setView([tlalpanCoords.lat, tlalpanCoords.lng], 13);

                L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                }).addTo(mapInstallation);

                const markerInstallation = L.marker([tlalpanCoords.lat, tlalpanCoords.lng], { draggable: true }).addTo(mapInstallation);
                markerInstallation.on('dragend', function (event) {
                    const position = markerInstallation.getLatLng();
                    updateLocation(position, 'ubicacion-installation', 'direccion-installation');
                });

                mapInstallationInitialized = true;
            }
        }

        // Actualizar ubicación en los campos de texto
        function updateLocation(location, ubicacionId, direccionId) {
            document.getElementById(ubicacionId).value = location.lat + ', ' + location.lng;
            fetch(`https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat=${location.lat}&lon=${location.lng}`)
                .then(response => response.json())
                .then(data => {
                    if (data.address) {
                        const address = `${data.address.road || ''}, ${data.address.suburb || ''}, ${data.address.city || ''}, ${data.address.state || ''}, ${data.address.country || ''}`;
                        document.getElementById(direccionId).value = address;
                    }
                })
                .catch(error => console.error('Error:', error));
        }

        // Mostrar y ocultar los contenedores del mapa
        function toggleMap(sectionId) {
            const mapContainer = document.getElementById(sectionId);
            if (mapContainer.style.display === 'none' || mapContainer.style.display === '') {
                mapContainer.style.display = 'block';

                setTimeout(() => {
                    if (sectionId === 'map-container') {
                        initReparationMap();
                    } else if (sectionId === 'map-container-installation') {
                        initInstallationMap();
                    }
                }, 300);
            } else {
                mapContainer.style.display = 'none';
            }
        }

        document.addEventListener('DOMContentLoaded', function () {
            document.getElementById('map-container').style.display = 'none';
            document.getElementById('map-container-installation').style.display = 'none';
        });
    </script>
</head>
<body>
    
    <?php if (isset($_SESSION['departamento'])): ?>
    <div class="container">
        <form class="miFormulario" action="">
            <div class="row">
                <div class="column">
                    <h2 class="title">JUD de Mantenimiento Menor</h2>

                    <!-- Selección de Tipo -->
                    <div class="form-group">
                        <label for="tipo">Tipo</label>
                        <select id="tipo" name="tipo">
                            <option value=""></option>
                            <option value="reparacion">Reparación</option>
                            <option value="instalacion">Mantenimiento</option>
                            <option value="instalacion">Instalación</option>
                        </select>
                    </div>

                    <!-- Sección Reparación -->
                    <div class="form-group" id="reparacion-section" style="display: none;">
                        <label for="actividad-reparacion">Actividad:</label>
                        <select id="actividad-reparacion" name="actividad-reparacion">
                            <option value=""></option>
                            <option value="balizamiento">Balizamiento</option>
                            <option value="banquetas">Banquetas</option>
                            <option value="bacheo">Bacheo</option>
                        </select>
                        <label for="avance">Avance:</label>
                        <input type="number" id="avance-reparacion" name="avance-reparacion">
                        <label for="colonia">Colonia:</label>
                        <select id="colonia-reparacion" name="colonia-reparacion">
                            <option value="">Seleccione una colonia</option>
                            <option value="MESA LOS HORNOS">MESA LOS HORNOS, TEXCALTENCO</option>
                        </select>
                        <label for="ubicacion">Ubicación (Arrastra el PIN AZUL):</label>
                        <input type="text" id="ubicacion" name="ubicacion" style="display: none;" readonly>
                        <button type="button" onclick="toggleMap('map-container')">Seleccionar Ubicación</button>
                        <div id="map-container">
                            <div id="map" style="height: 400px;"></div>
                        </div>
                        <label for="direccion">Dirección:</label>
                        <input type="text" id="direccion" name="direccion" readonly>
                    </div>

                    <!-- Sección Instalación -->
                    <div class="form-group" id="instalacion-section" style="display: none;">
                        <label for="actividad-instalacion">Actividad</label>
                        <textarea id="actividad-instalacion" name="actividad-instalacion"></textarea>
                        <label for="avance">Avance:</label>
                        <input type="number" id="avance-installation" name="avance-installation">
                        <label for="colonia">Colonia:</label>
                        <select id="colonia-installation" name="colonia-installation">
                            <option value="">Seleccione una colonia</option>
                            <option value="SOLIDARIDAD">SOLIDARIDAD</option>
                        </select>
                        <label for="ubicacion">Ubicación (Arrastra el PIN AZUL):</label>
                        <input type="text" id="ubicacion-installation" name="ubicacion-installation" style="display: none;" readonly>
                        <button type="button" onclick="toggleMap('map-container-installation')">Seleccionar Ubicación</button>
                        <div id="map-container-installation">
                            <div id="map-installation" style="height: 400px;"></div>
                        </div>
                        <label for="direccion-installation">Dirección:</label>
                        <input type="text" id="direccion-installation" name="direccion-installation" readonly>
                    </div>

                    <button type="submit" class="btn">Enviar</button>
                    <input type="button" value="Página anterior" onClick="history.go(-1);" class="btn2">
                </div>
            </div>
        </form>
    </div>
    <?php else: ?>
    <p>Por favor inicie sesión primero.</p>
    <?php endif; ?>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#tipo').change(function () {
                const selectedValue = $(this).val();
                $('#reparacion-section').hide();
                $('#instalacion-section').hide();

                if (selectedValue === 'reparacion') {
                    $('#reparacion-section').show();
                } else if (selectedValue === 'instalacion') {
                    $('#instalacion-section').show();
                }
            });
        });
    </script>
</body>
</html>
