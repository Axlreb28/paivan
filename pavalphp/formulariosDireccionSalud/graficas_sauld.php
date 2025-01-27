<?php
$servername = "indicadorestlalpan.mx";
$username = "tlalpan";
$password = "o3NvcMy5#8Nhrco%";
$dbname = "tlalpandb";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Obtener filtros
    $programa = $_GET['programa'] ?? 'todos';
    $actividad = $_GET['actividad'] ?? 'todas';
    $colonia = $_GET['colonia'] ?? 'todas';

    // Construir consulta dinámica
    $query = "SELECT ID, ProgramaSocial, Actividad, Colonias, Avance, NombreBeneficiario, ApellidoPaterno, ApellidoMaterno, Sexo, Telefono, FechaRegistro, Direccion, Ubicacion 
              FROM construyendo_salud_en_comunidad WHERE 1=1";

    if ($programa !== 'todos') {
        $query .= " AND ProgramaSocial = :programa";
    }
    if ($actividad !== 'todas') {
        $query .= " AND Actividad = :actividad";
    }
    if ($colonia !== 'todas') {
        $query .= " AND Colonias = :colonia";
    }

    $stmt = $conn->prepare($query);

    if ($programa !== 'todos') {
        $stmt->bindParam(':programa', $programa);
    }
    if ($actividad !== 'todas') {
        $stmt->bindParam(':actividad', $actividad);
    }
    if ($colonia !== 'todas') {
        $stmt->bindParam(':colonia', $colonia);
    }

    $stmt->execute();

    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Preparar datos para las gráficas
    $ids = [];
    $avances = [];
    $ranges = [
        '0-49' => 0,
        '50-89' => 0,
        '90-100' => 0
    ];
    $mapData = [];
    foreach ($data as $row) {
        $ids[] = "Folio: " . $row['ID'];
        $avance = (int)$row['Avance'];
        $avances[] = $avance;

        if ($avance <= 49) {
            $ranges['0-49']++;
        } elseif ($avance <= 89) {
            $ranges['50-89']++;
        } else {
            $ranges['90-100']++;
        }

        $mapData[] = [
            'ID' => $row['ID'],
            'Nombre' => $row['NombreBeneficiario'],
            'ApellidoPaterno' => $row['ApellidoPaterno'],
            'ApellidoMaterno' => $row['ApellidoMaterno'],
            'Sexo' => $row['Sexo'],
            'Telefono' => $row['Telefono'],
            'FechaRegistro' => $row['FechaRegistro'],
            'Direccion' => $row['Direccion'],
            'Avance' => $row['Avance'],
            'Ubicacion' => $row['Ubicacion'],
        ];
    }

    // Calcular promedio
    $promedio = !empty($avances) ? array_sum($avances) / count($avances) : 0;
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    die();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gráficas y Mapa</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <link rel="stylesheet" href="../css/graficas/graficas_salud.css"> <!-- Estilo CSS personalizado -->
</head>
	
<header>Gráficas y Mapa de los programas de Salud</header>
	
<body>
<form method="GET" class="filter-form">
    <label for="programa" class="form-label">Programa Social:</label>
    <select name="programa" class="form-select">
        <option value="todos" <?= isset($_GET['programa']) && $_GET['programa'] === 'todos' ? 'selected' : '' ?>>Todos</option>
        <option value="Construyendo salud en comunidad" <?= isset($_GET['programa']) && $_GET['programa'] === 'Construyendo salud en comunidad' ? 'selected' : '' ?>>Construyendo salud en comunidad</option>
        <option value="La salud se construye desde casa" <?= isset($_GET['programa']) && $_GET['programa'] === 'La salud se construye desde casa' ? 'selected' : '' ?>>La salud se construye desde casa</option>
        <option value="Saludable-mente" <?= isset($_GET['programa']) && $_GET['programa'] === 'Saludable-mente' ? 'selected' : '' ?>>Saludable-mente</option>
        <option value="Transformamos comunidades incluyentes" <?= isset($_GET['programa']) && $_GET['programa'] === 'Transformamos comunidades incluyentes' ? 'selected' : '' ?>>Transformamos comunidades incluyentes</option>
    </select>
    <label for="actividad">Actividad:</label>
    <select name="actividad" class="form-select">
        <option value="todas" <?= isset($_GET['actividad']) && $_GET['actividad'] === 'todas' ? 'selected' : '' ?>>Todas</option>
        <option value="Jornadas de salud" <?= isset($_GET['actividad']) && $_GET['actividad'] === 'Jornadas de salud' ? 'selected' : '' ?>>Jornadas de salud</option>
        <option value="Capacitaciones" <?= isset($_GET['actividad']) && $_GET['actividad'] === 'Capacitaciones' ? 'selected' : '' ?>>Capacitaciones</option>
        <option value="Conversatorios" <?= isset($_GET['actividad']) && $_GET['actividad'] === 'Conversatorios' ? 'selected' : '' ?>>Conversatorios</option>
        <option value="Rehabilitación" <?= isset($_GET['actividad']) && $_GET['actividad'] === 'Rehabilitación' ? 'selected' : '' ?>>Rehabilitación</option>
    </select>

    <label for="colonia">Colonia:</label>
    <select name="colonia" class="form-select">
        <option value="todas" <?= isset($_GET['colonia']) && $_GET['colonia'] === 'todas' ? 'selected' : '' ?>>Todas</option>
        <?php
        $coloniasStmt = $conn->query("SELECT Nombre FROM colonias");
        $colonias = $coloniasStmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($colonias as $col) {
            $selected = isset($_GET['colonia']) && $_GET['colonia'] === $col['Nombre'] ? 'selected' : '';
            echo "<option value=\"" . $col['Nombre'] . "\" $selected>" . $col['Nombre'] . "</option>";
        }
        ?>
    </select>
    <button type="submit" class="btn-filter">Filtrar</button>
</form>




	
    <!-- Contenedor del mapa -->
	<h2 style="text-align:center;">Geolocalización de los folios por filtro</h2>
    <div id="map" class="map-container"></div>

    <!-- Contenedor de las gráficas -->
    <div class="charts-container">
		<h2 style="text-align:center;">Avance de los folios por filtro</h2>
        <div class="chart-container">
            <canvas id="barChart"></canvas>
        </div>
		<h2 style="text-align:center;">Promedio de todos los folios por filtro</h2>
        <div class="chart-container">
            <canvas id="avgBarChart"></canvas>
        </div>
		<h2 style="text-align:center;">promedio de los folios por filtro</h2>
		<div class="chart-container" style="display: flex; justify-content: center; align-items: center;">
			<canvas id="pieChart"></canvas>
		</div>

    </div>

    <footer></footer>

    <script>
        // Datos para gráficas
        const ids = <?= json_encode($ids) ?>;
        const avances = <?= json_encode($avances) ?>;
        const promedio = <?= json_encode($promedio) ?>;
        const ranges = <?= json_encode($ranges) ?>;
        const mapData = <?= json_encode($mapData) ?>;

        // Gráfica de barras
        const barChartCtx = document.getElementById('barChart').getContext('2d');
        new Chart(barChartCtx, {
            type: 'bar',
            data: {
                labels: ids,
                datasets: [{
                    label: 'Porcentaje de Avance',
                    data: avances,
                    backgroundColor: avances.map(value => {
                        if (value <= 50) return 'red';
                        if (value <= 90) return 'yellow';
                        return 'green';
                    })
                }]
            }
        });

        // Gráfica de promedio
        const avgBarChartCtx = document.getElementById('avgBarChart').getContext('2d');
        new Chart(avgBarChartCtx, {
            type: 'bar',
            data: {
                labels: ['Promedio de Avance'],
                datasets: [{
                    label: 'Promedio',
                    data: [promedio],
                    backgroundColor: promedio <= 50 ? 'red' : promedio <= 90 ? 'yellow' : 'blue'
                }]
            }
        });

        // Gráfica de pastel
        const pieChartCtx = document.getElementById('pieChart').getContext('2d');
        new Chart(pieChartCtx, {
            type: 'pie',
            data: {
                labels: ['0-49%', '50-89%', '90-100%'],
                datasets: [{
                    data: [ranges['0-49'], ranges['50-89'], ranges['90-100']],
                    backgroundColor: ['red', 'yellow', 'green']
                }]
            }
        });

        // Mapa
        const map = L.map('map').setView([19.343, -99.161], 12);
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

        mapData.forEach(point => {
            if (point.Ubicacion) {
                const [lat, lng] = point.Ubicacion.split(',').map(Number);
                L.marker([lat, lng]).addTo(map).bindPopup(
                    `<strong>ID:</strong> ${point.ID}<br>
                     <strong>Nombre:</strong> ${point.Nombre} ${point.ApellidoPaterno} ${point.ApellidoMaterno}<br>
                     <strong>Sexo:</strong> ${point.Sexo}<br>
                     <strong>Teléfono:</strong> ${point.Telefono}<br>
                     <strong>Fecha Registro:</strong> ${point.FechaRegistro}<br>
                     <strong>Dirección:</strong> ${point.Direccion}<br>
                     <strong>Avance:</strong> ${point.Avance}%`
                );
            }
        });
    </script>
</body>
</html>
