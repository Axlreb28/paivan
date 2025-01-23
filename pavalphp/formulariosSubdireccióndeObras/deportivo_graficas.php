<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "tlalpan";
$dbname = "tlalpan";

// Conexión a la base de datos
$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Error en la conexión: " . $conn->connect_error);
}

// Filtrar por colonia si está definido
$coloniaFilter = isset($_GET['colonia']) ? $_GET['colonia'] : null;

// Consulta para obras tipo "Utopia"
$query = "SELECT r.ID, r.AvanceFisico, r.MontoTotalObra, r.MontoEjecutado, c.Nombre AS Colonia
          FROM reporte_obras r
          LEFT JOIN colonias c ON r.UnidadTerritorial = c.ID
          WHERE r.Obra = 'Deportivo'";

if ($coloniaFilter) {
    $query .= " AND c.Nombre = '" . $conn->real_escape_string($coloniaFilter) . "'";
}

$result = $conn->query($query);

// Procesar los datos
$ids = [];
$avanceFisico = [];
$montoTotal = [];
$montoEjecutado = [];
$colonias = [];
$montoPendiente = [];
$totalAvanceFisico = 0;
$registroCount = 0;

while ($row = $result->fetch_assoc()) {
    $ids[] = "Folio: " . $row['ID'];
    $avanceFisico[] = $row['AvanceFisico'];
    $montoTotal[] = $row['MontoTotalObra'];
    $montoEjecutado[] = $row['MontoEjecutado'];
    $colonias[] = $row['Colonia'];
    $montoPendiente[] = $row['MontoTotalObra'] - $row['MontoEjecutado'];
    $totalAvanceFisico += $row['AvanceFisico'];
    $registroCount++;
}

// Calcular promedio de Avance Físico
$promedioAvanceFisico = $registroCount > 0 ? $totalAvanceFisico / $registroCount : 0;

$conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gráficas de Deportivo</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/graficas/utopia_graficas.css">
</head>
    <!-- Header -->
    <header>
        Gráficas de Obras: Deportivos
    </header>


    <!-- Formulario de Filtro -->
    <form method="get">
        <label for="colonia">Filtrar por unidad territorial:</label>
        <select name="colonia" id="colonia">
            <option value="">Todas las unidades territoriales</option>
            <?php
            // Obtener lista de colonias
            $conn = new mysqli($host, $username, $password, $database);
            $coloniasQuery = "SELECT Nombre FROM colonias ORDER BY Nombre";
            $coloniasResult = $conn->query($coloniasQuery);

            while ($colonia = $coloniasResult->fetch_assoc()) {
                $selected = ($coloniaFilter == $colonia['Nombre']) ? 'selected' : '';
                echo "<option value='" . $colonia['Nombre'] . "' $selected>" . $colonia['Nombre'] . "</option>";
            }
            $conn->close();
            ?>
        </select>
        <button type="submit" class="btn btn-danger">Filtrar</button>
    </form>
     <!-- Contenedor de Gráficas -->
     <div class="container" style="text-align: center;">
        <div class="chart-container">
            <h2> Distribución de avance físico</h2>
            <canvas id="avanceFisicoChart"></canvas>
            <p>El gráfico muestra el avance físico (%) para cada obra clasificada por folio.</p>
            <p>Promedio de Avance Físico: <?= round($promedioAvanceFisico, 2) ?>%</p>
        </div>

        <div class="chart-container">
            <h2>Avance financiero frente avance físico</h2>
            <canvas id="financieroFisicoChart"></canvas>
            <p>Este gráfico compara el porcentaje ejecutado del monto financiero con el avance físico de cada obra.</p>
        </div>

        <div class="chart-container">
            <h2>monto Total frente el monto ejecutado</h2>
            <canvas id="montoChart"></canvas>
            <p>El gráfico contrasta el monto total con el monto ejecutado para cada obra, mostrando las diferencias.</p>
        </div>
    </div>

    <!-- Footer -->
    <footer></footer>

    <!-- Scripts para Gráficas -->
    <script>
        const ids = <?= json_encode($ids) ?>;
        const avanceFisico = <?= json_encode($avanceFisico) ?>;
        const montoTotal = <?= json_encode($montoTotal) ?>;
        const montoEjecutado = <?= json_encode($montoEjecutado) ?>;
        const montoPendiente = <?= json_encode($montoPendiente) ?>;

        // Gráfica 1
        new Chart(document.getElementById('avanceFisicoChart'), {
            type: 'bar',
            data: {
                labels: ids,
                datasets: [{
                    label: 'Avance Físico (%)',
                    data: avanceFisico,
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                indexAxis: 'y',
                scales: { x: { beginAtZero: true } }
            }
        });

        // Gráfica 2
        const financieroFisicoData = montoEjecutado.map((monto, index) => ({
            ejecutado: Math.min((monto / montoTotal[index]) * 100, 100),
            fisico: avanceFisico[index]
        }));

        new Chart(document.getElementById('financieroFisicoChart'), {
            type: 'bar',
            data: {
                labels: ids,
                datasets: [
                    { label: 'Porcentaje Ejecutado', data: financieroFisicoData.map(d => d.ejecutado), backgroundColor: 'rgba(75, 192, 192, 0.5)' },
                    { label: 'Avance Físico (%)', data: financieroFisicoData.map(d => d.fisico), backgroundColor: 'rgba(255, 159, 64, 0.5)' }
                ]
            },
            options: { scales: { y: { beginAtZero: true } } }
        });

        // Gráfica 3
        new Chart(document.getElementById('montoChart'), {
            type: 'bar',
            data: {
                labels: ids,
                datasets: [
                    { label: 'Monto Total', data: montoTotal, backgroundColor: 'rgba(153, 102, 255, 0.5)' },
                    { label: 'Monto Ejecutado', data: montoEjecutado, backgroundColor: 'rgba(255, 205, 86, 0.5)' }
                ]
            },
            options: {
                plugins: {
                    tooltip: {
                        callbacks: {
                            afterLabel: function(context) {
                                const index = context.dataIndex;
                                const pendiente = montoPendiente[index];
                                const porcentaje = ((montoEjecutado[index] / montoTotal[index]) * 100).toFixed(2);
                                return `Monto Pendiente: ${pendiente} (Ejecutado: ${porcentaje}%)`;
                            }
                        }
                    }
                }
            }
        });
    </script>
</body>
</html>
