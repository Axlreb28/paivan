<?php
// Conexión a la base de datos
$host = "localhost";
$user = "root";
$password = "";
$database = "tlalpan";

$conn = new mysqli($host, $user, $password, $database);
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Filtros
$filtroMes = $_GET['mes'] ?? date('m');
$filtroAnio = $_GET['anio'] ?? date('Y');
$filtroPeriodo = $_GET['periodo'] ?? 'mensual';
$filtroID = $_GET['id'] ?? null;

// Consulta para los puntos del mapa
if ($filtroID) {
    $sql = "
        SELECT ID, Coordenadas, Actividad, Avance, Colonia, Direccion, FechaRegistro 
        FROM mantenimiento_menor 
        WHERE Tipo = 'Reparación' 
        AND ID = $filtroID
    ";
} else {
    $periodoQuery = "";
    if ($filtroPeriodo === 'mensual') {
        $periodoQuery = "AND MONTH(FechaRegistro) = $filtroMes";
    } elseif ($filtroPeriodo === 'bimestral') {
        $periodoQuery = "AND MONTH(FechaRegistro) IN ($filtroMes, $filtroMes + 1)";
    } elseif ($filtroPeriodo === 'trimestral') {
        $periodoQuery = "AND MONTH(FechaRegistro) IN ($filtroMes, $filtroMes + 1, $filtroMes + 2)";
    }

    $sql = "
        SELECT ID, Coordenadas, Actividad, Avance, Colonia, Direccion, FechaRegistro 
        FROM mantenimiento_menor 
        WHERE Tipo = 'Reparación' 
        AND YEAR(FechaRegistro) = $filtroAnio 
        $periodoQuery
    ";
}

$result = $conn->query($sql);

$puntos = [];
$centro = null;
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $coords = explode(", ", $row['Coordenadas']);
        $punto = [
            'ID' => $row['ID'],
            'lat' => $coords[0],
            'lon' => $coords[1],
            'actividad' => $row['Actividad'],
            'avance' => $row['Avance'],
            'colonia' => $row['Colonia'],
            'direccion' => $row['Direccion'],
            'fecha' => $row['FechaRegistro'],
        ];
        $puntos[] = $punto;

        if ($filtroID) {
            $centro = [
                'lat' => $coords[0],
                'lon' => $coords[1]
            ];
        }
    }
}

// Consulta para la gráfica con filtros
$graficaQuery = "";
if ($filtroPeriodo === 'mensual') {
    $graficaQuery = "AND MONTH(FechaRegistro) = $filtroMes";
} elseif ($filtroPeriodo === 'bimestral') {
    $graficaQuery = "AND MONTH(FechaRegistro) IN ($filtroMes, $filtroMes + 1)";
} elseif ($filtroPeriodo === 'trimestral') {
    $graficaQuery = "AND MONTH(FechaRegistro) IN ($filtroMes, $filtroMes + 1, $filtroMes + 2)";
}

$sqlGrafica = "
    SELECT Actividad, COUNT(*) AS Total 
    FROM mantenimiento_menor 
    WHERE Tipo = 'Reparación' 
    AND YEAR(FechaRegistro) = $filtroAnio 
    $graficaQuery
    GROUP BY Actividad
";

$resultGrafica = $conn->query($sqlGrafica);

$datosGrafica = [];
if ($resultGrafica->num_rows > 0) {
    while ($row = $resultGrafica->fetch_assoc()) {
        // Corregir "Sistemas electricos" en la vista
        $actividad = $row['Actividad'] === 'Sistemas electricos' ? 'Sistemas eléctricos' : $row['Actividad'];
        $datosGrafica[] = [
            'actividad' => $actividad,
            'total' => $row['Total']
        ];
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mapa y Gráfica Filtrables</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        #map { height: 600px; width: 100%; }
        .grafica-container { width: 80%; margin: 20px auto; }
    </style>
</head>
<body>
    <h1>Mapa Interactivo y Gráfica de Actividades</h1>

    <!-- Filtros -->
    <form method="GET" action="">
        <label for="id">ID:</label>
        <input type="text" name="id" id="id" value="<?= htmlspecialchars($filtroID) ?>">

        <label for="mes">Mes:</label>
        <select name="mes" id="mes">
            <?php for ($i = 1; $i <= 12; $i++): ?>
                <option value="<?= $i ?>" <?= $i == $filtroMes ? 'selected' : '' ?>>
                    <?= date('F', mktime(0, 0, 0, $i, 1)) ?>
                </option>
            <?php endfor; ?>
        </select>

        <label for="anio">Año:</label>
        <input type="number" name="anio" id="anio" value="<?= $filtroAnio ?>">

        <label for="periodo">Periodo:</label>
        <select name="periodo" id="periodo">
            <option value="mensual" <?= $filtroPeriodo === 'mensual' ? 'selected' : '' ?>>Mensual</option>
            <option value="bimestral" <?= $filtroPeriodo === 'bimestral' ? 'selected' : '' ?>>Bimestral</option>
            <option value="trimestral" <?= $filtroPeriodo === 'trimestral' ? 'selected' : '' ?>>Trimestral</option>
        </select>

        <button type="submit">Aplicar Filtros</button>
    </form>

    <!-- Mapa -->
    <div id="map"></div>

    <!-- Gráfica -->
    <div class="grafica-container">
        <canvas id="grafica"></canvas>
    </div>

    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <script>
    // Inicializar el mapa
    var puntos = <?= json_encode($puntos) ?>;
    var centro = <?= json_encode($centro) ?>;
    var map;

    if (centro) {
        // Centrar el mapa en el punto buscado por ID
        map = L.map('map').setView([centro.lat, centro.lon], 16);
    } else {
        // Centrar el mapa en un punto general si no hay búsqueda por ID
        map = L.map('map').setView([19.286, -99.165], 13);
    }

    // Añadir capa base de OpenStreetMap
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    // Crear íconos personalizados
    var iconoVerde = L.icon({
        iconUrl: 'https://cdn.rawgit.com/pointhi/leaflet-color-markers/master/img/marker-icon-green.png',
        iconSize: [25, 41],
        iconAnchor: [12, 41],
        popupAnchor: [1, -34],
        shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/images/marker-shadow.png',
        shadowSize: [41, 41],
    });

    var iconoAzul = L.icon({
        iconUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/images/marker-icon.png',
        iconSize: [25, 41],
        iconAnchor: [12, 41],
        popupAnchor: [1, -34],
        shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/images/marker-shadow.png',
        shadowSize: [41, 41],
    });

    // Añadir marcadores al mapa
    puntos.forEach(function(punto) {
        var icono = (parseInt(punto.avance) === 100) ? iconoVerde : iconoAzul;
        var marker = L.marker([punto.lat, punto.lon], { icon: icono }).addTo(map);
        marker.bindPopup(`
            <b>ID:</b> ${punto.ID}<br>
            <b>Actividad:</b> ${punto.actividad}<br>
            <b>Avance:</b> ${punto.avance}%<br>
            <b>Colonia:</b> ${punto.colonia}<br>
            <b>Dirección:</b> ${punto.direccion}<br>
            <b>Fecha de Registro:</b> ${punto.fecha}
        `);
    });
    // Gráfica de barras
    var datosGrafica = <?= json_encode($datosGrafica) ?>;
    var etiquetas = datosGrafica.map(d => d.actividad);
    var valores = datosGrafica.map(d => d.total);

    new Chart(document.getElementById('grafica'), {
        type: 'bar',
        data: {
            labels: etiquetas,
            datasets: [{
                label: 'Cantidad de Actividades',
                data: valores,
                backgroundColor: ['#ff6384', '#36a2eb', '#ffce56', '#4bc0c0', '#9966ff', '#ff9f40', '#ffcd56', '#c9cbcf'],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: { display: true, position: 'top' },
                tooltip: { enabled: true }
            },
            scales: {
                y: { beginAtZero: true }
            }
        }
    });
    </script>
</body>
</html>
