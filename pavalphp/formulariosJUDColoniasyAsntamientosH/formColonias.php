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
            const tlalpanCoords = { lat: 19.287860, lng: -99.171360 };
            map = L.map('map').setView([tlalpanCoords.lat, tlalpanCoords.lng], 13);

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);

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
                    <h2 class="title">JUD Colonias y Asentamientos Humanos Irregulares</h2>
                    <div class="form-group">
                        <label for="poblado">Poblado:</label>
                        <select id="poblado" name="poblado">
                            <option value="">Seleccione una opcion</option>
                            <option value="ajusto">Ajusco Medio</option>
                            <option value="magdalena">Magdalena Petlacalco</option>
                            <option value="santiago">Santiago Tepalcatlalpan</option>
                            <option value="Tepeximilpa">Tepeximilpa</option>
                            <option value="sanandres">San Andrés Totoltepec </option>
                            <option value="sanpedro">San Pedro Martir</option>
                            <option value="sanmiguel">San Miguel Topilejo</option>
                            <option value="parres">Parres el Guarda </option>
                            <option value="sanxicalco">San Miguel Xicalco </option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nombre">Nombre:</label>
                        <select id="nombre" name="nombre">
                        <option value="">Seleccione una opcion</option>                   
                            <option value="belvedere_teresa">Belvedere de Teresa</option>
                            <option value="prolongacion_jazmin">Prolongación Jazmín</option>
                            <option value="ampliacion_nueva_magdalena">Ampliación La Nueva Magdalena Petlacalco</option>
                            <option value="el_arenal_ii">El Arenal II</option>
                            <option value="el_arenal">El Arenal</option>
                            <option value="diligencias">Diligencias</option>
                            <option value="el_silbato">El Silbato</option>
                            <option value="tlaltenango">Tlaltenango</option>
                            <option value="colinas_angel">Colinas del Angel</option>
                            <option value="tepetlica_alto">Tepetlica el Alto</option>
                            <option value="tepozanes">Tepozanes</option>
                            <option value="san_nicolas_ii">San Nicolas II</option>
                            <option value="mirador_3ra_seccion">Mirador 3ra Sección</option>
                            <option value="paraje_38">Paraje 38</option>
                            <option value="prolongacion_5_mayo">Prolongación 5 de Mayo</option>
                            <option value="viveros_coactetlan_2">Viveros de Coactetlan 2 sección</option>
                            <option value="san_miguel_tehuisco">San Miguel Tehuisco</option>
                            <option value="alta_tension">Alta Tensión</option>
                            <option value="tres_mayo">Tres de Mayo</option>
                            <option value="pedregal_aminco">Pedregal de Aminco</option>
                            <option value="san_miguel_toxic">San Miguel Toxiac</option>
                            <option value="la_magueyera">La Magueyera</option>
                            <option value="ampliacion_parres">Ampliación Parres</option>
                            <option value="el_guardita">El Guardita</option>
                            <option value="ampliacion_lomas_texcalatlaco">Ampliación Lomas de Texcalatlaco</option>
                            <option value="camino_marina">Camino a la Marina</option>
                            <option value="la_caseta">La Caseta</option>
                            <option value="cerrada_mora">Cerrada la Mora</option>
                            <option value="colibri">Colibrí</option>
                            <option value="flor_borrego">Flor de Borrego</option>
                            <option value="mirador_colibri">Mirador el Colibrí</option>
                            <option value="paraje_texcalatlaco">Paraje Texcalatlaco</option>
                            <option value="retesco_privada_eucalipto">Retesco / Privada Eucalipto</option>
                            <option value="santiago_tepalcatitla_i">Santiago Tepalcatitla I</option>
                            <option value="santiago_tepalcatitla_ii">Santiago Tepalcatitla II</option>
                            <option value="tecoraltitla">Tecorraltitla</option>
                            <option value="tetamazolco">Tetamazolco</option>
                            <option value="vista_hermosa">Vista Hermosa</option>
                            <option value="xicalco_oriente">Xicalco Oriente</option>
                            <option value="zorros_solidaridad">Zorros-Solidaridad</option>
                            <option value="atlauhtenco">Atlauhtenco</option>
                            <option value="bellavista">Bellavista</option>
                            <option value="camino_antiguo_diligencias">Camino Antiguo a Diligencias</option>
                            <option value="camino_viejo_tepepan">Camino Viejo a Tepepan</option>
                            <option value="cantera_tehuehue">Cantera Tehuehue</option>
                            <option value="chancoyote">Chancoyote</option>
                            <option value="cocomozotla">Cocomozotla</option>
                            <option value="corrasolco">Corrasolco</option>
                            <option value="emiliano_zapata">Emiliano Zapata</option>
                            <option value="huetlatilpa">Huetlatilpa</option>
                            <option value="kilometro_2">Kilómetro 2</option>
                            <option value="la_magueyera_tatamaxtitla">La Magueyera Tatamaxtitla</option>
                            <option value="memecala">Memecala</option>
                            <option value="tatamaxtitla">Tatamaxtitla</option>
                            <option value="tlatilpa">Tlatilpa</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="actividad">Actividad:</label>
                        <select id="actividad" name="actividad">
                        <option value="">Seleccione una opcion</option>                      
                            <option value="asambleas">Asambleas</option>
                            <option value="diagnostico">Diagnostico</option>
                            <option value="poseedores">Padrón de poseedores</option>
                        </select>
                    </div>
                    <div class="form-group">
                            <label for="asistencias">Porcentaje de asistencias (%):</label>
                            <input type="number" id="asistencias" name="asistencias">
                    </div>
                    <div class="form-group">
                        <label for="lotes">Numero de lotes:</label>
                        <input type="text" id="lotes" name="lotes">
                    </div>
                    <div class="form-group">
                        <label for="caracteristica">Caracteristica:</label>
                        <select id="caracteristica" name="caracteristica">
                        <option value="">Seleccione una opcion</option>                      
                            <option value="baldio">Baldio</option>
                            <option value="vivienda">Vivienda</option>
                            <option value="negocio">Negocio</option>
                            <option value="mixto">Mixto</option>
                        </select>
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
