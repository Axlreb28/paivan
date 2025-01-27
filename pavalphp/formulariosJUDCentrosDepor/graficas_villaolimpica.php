<?php
// Configuración de conexión a la base de datos
$servername = "indicadorestlalpan.mx";
$username = "tlalpan";
$password = "o3NvcMy5#8Nhrco%";
$dbname = "tlalpandb";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Variables de filtro predeterminadas
    $year = isset($_GET['year']) ? $_GET['year'] : 2025;
    $month = isset($_GET['month']) ? $_GET['month'] : null;
    $deportivo = isset($_GET['deportivo']) ? $_GET['deportivo'] : 'Todos';

    // Consulta base con filtros
    $query = "SELECT 
                Deportivo, 
                SUM(MetaQuincenal) AS TotalMetaQuincenal, 
                SUM(AlcanceQuincenal) AS TotalAlcanceQuincenal, 
                SUM(IngresoMensual) AS TotalIngresoMensual, 
                SUM(AlcanceMensual) AS TotalAlcanceMensual
              FROM jud_de_centros_deportivos 
              WHERE YEAR(FechaRegistro) = :year";

    // Aplicar filtro por mes
    if ($month) {
        $query .= " AND MONTH(FechaRegistro) = :month";
    }

    // Aplicar filtro por deportivo
    if ($deportivo !== 'Todos') {
        $query .= " AND Deportivo = :deportivo";
    }

    $query .= " GROUP BY Deportivo";

    $stmt = $conn->prepare($query);
    $stmt->bindParam(':year', $year, PDO::PARAM_INT);

    if ($month) {
        $stmt->bindParam(':month', $month, PDO::PARAM_INT);
    }

    if ($deportivo !== 'Todos') {
        $stmt->bindParam(':deportivo', $deportivo, PDO::PARAM_STR);
    }

    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Datos para las gráficas
    $deportivos = [];
    $metaQuincenal = [];
    $alcanceQuincenal = [];
    $ingresoMensual = [];
    $alcanceMensual = [];

    foreach ($results as $row) {
        $deportivos[] = $row['Deportivo'];
        $metaQuincenal[] = $row['TotalMetaQuincenal'];
        $alcanceQuincenal[] = $row['TotalAlcanceQuincenal'];
        $ingresoMensual[] = $row['TotalIngresoMensual'];
        $alcanceMensual[] = $row['TotalAlcanceMensual'];
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gráficas con Chart.js</title>
    <link rel="stylesheet" href="../css/graficas/styles.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <header>
       Gráficas de Alcance Quincenal y Mensual
    </header>

    <!-- Filtros -->
    <form method="GET">
        <label for="year">Año:</label>
        <input type="number" name="year" id="year" value="<?= htmlspecialchars($year) ?>">

        <label for="month">Mes:</label>
        <select name="month" id="month">
            <option value="">Todos</option>
            <?php for ($i = 1; $i <= 12; $i++): ?>
                <option value="<?= $i ?>" <?= $month == $i ? 'selected' : '' ?>><?= date('F', mktime(0, 0, 0, $i, 10)) ?></option>
            <?php endfor; ?>
        </select>

        <label for="deportivo">Deportivo:</label>
        <select name="deportivo" id="deportivo">
            <option value="Todos" <?= $deportivo === 'Todos' ? 'selected' : '' ?>>Todos</option>
            <?php foreach (array_unique(array_column($results, 'Deportivo')) as $dep): ?>
                <option value="<?= htmlspecialchars($dep) ?>" <?= $deportivo === $dep ? 'selected' : '' ?>><?= htmlspecialchars($dep) ?></option>
            <?php endforeach; ?>
        </select>

        <button type="submit">Filtrar</button>
    </form>

    <!-- Gráfica quincenal -->
    <div class="chart-container">
        <h2>Alcance vs Meta Quincenal</h2>
        <canvas id="quincenalChart"></canvas>
    </div>

    <!-- Gráfica mensual -->
    <div class="chart-container">
        <h2>Alcance vs Ingreso Mensual</h2>
        <canvas id="mensualChart"></canvas>
    </div>

    <footer></footer>

    <script>
        const deportivos = <?= json_encode($deportivos) ?>;
        const metaQuincenal = <?= json_encode($metaQuincenal) ?>;
        const alcanceQuincenal = <?= json_encode($alcanceQuincenal) ?>;
        const ingresoMensual = <?= json_encode($ingresoMensual) ?>;
        const alcanceMensual = <?= json_encode($alcanceMensual) ?>;

        // Gráfica quincenal
        new Chart(document.getElementById('quincenalChart'), {
            type: 'bar',
            data: {
                labels: deportivos,
                datasets: [
                    {
                        label: 'Meta Quincenal',
                        data: metaQuincenal,
                        backgroundColor: 'rgba(75, 192, 192, 0.5)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1
                    },
                    {
                        label: 'Alcance Quincenal',
                        data: alcanceQuincenal,
                        backgroundColor: 'rgba(153, 102, 255, 0.5)',
                        borderColor: 'rgba(153, 102, 255, 1)',
                        borderWidth: 1
                    }
                ]
            },
            options: {
                responsive: true,
                plugins: {
                    tooltip: { enabled: true }
                }
            }
        });

        // Gráfica mensual
        new Chart(document.getElementById('mensualChart'), {
            type: 'bar',
            data: {
                labels: deportivos,
                datasets: [
                    {
                        label: 'Ingreso Mensual',
                        data: ingresoMensual,
                        backgroundColor: 'rgba(255, 159, 64, 0.5)',
                        borderColor: 'rgba(255, 159, 64, 1)',
                        borderWidth: 1
                    },
                    {
                        label: 'Alcance Mensual',
                        data: alcanceMensual,
                        backgroundColor: 'rgba(54, 162, 235, 0.5)',
                        borderColor: 'rgba(54, 162, 235, 1)',
                        borderWidth: 1
                    }
                ]
            },
            options: {
                responsive: true,
                plugins: {
                    tooltip: { enabled: true }
                }
            }
        });
    </script>
</body>
</html>
