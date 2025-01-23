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
</head>
<body>
    <?php session_start(); ?>
    <?php if (isset($_SESSION['departamento'])): ?>
    <div class="container">
        <a href="javascript:history.back()" class="back-icon">
            <i class="fas fa-arrow-left"></i> <!-- Ícono de Font Awesome -->
        </a>
        <form class="miFormulario" action="" method="POST">
    <div class="row">
        <div class="column">
            <h2 class="title">Reporte de Obras</h2>

            <!-- Campo de obra -->
            <div class="form-group">
                <label for="obra">Obra</label>
                <select id="obra" name="obra">
                    <option value=""></option>
                    <option value="utopia">Utopía</option>
                    <option value="escuela">Escuela</option>
                    <option value="deportivo">Deportivo</option>
                </select>
            </div>

            <!-- Campo de Unidad Territorial (Colonia) -->
            <div class="form-group">
                <label for="unidadt">Unidad Territorial:</label>
                <select id="unidadt" name="unidadt">
                    <option value="">Seleccione una colonia</option>
                    <?php
                    // Conexión a la base de datos
                    $servername = "indicadorestlalpan.mx"; // Cambiar si es necesario
                    $username = "tlalpan";        // Cambiar si es necesario
                    $password = "o3NvcMy5#8Nhrco%";            // Cambiar si es necesario
                    $dbname = "tlalpandb";       // Cambiar el nombre de la base de datos

                    try {
                        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                        // Consulta para obtener las colonias
                        $sql = "SELECT id, nombre FROM colonias"; // Cambiar "id" y "nombre" según las columnas reales
                        $stmt = $conn->query($sql);

                        // Generar las opciones del select dinámicamente
                        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                            echo "<option value='" . htmlspecialchars($row['id']) . "'>" . htmlspecialchars($row['nombre']) . "</option>";
                        }
                    } catch (PDOException $e) {
                        echo "Error al conectar con la base de datos: " . $e->getMessage();
                    }

                    // Cerrar la conexión
                    $conn = null;
                    ?>
                </select>
            </div>

            <!-- Campo de número de contrato -->
            <div class="form-group">
                <label for="contrato">Número de contrato/licencia de funcionamiento:</label>
                <input type="number" id="contrato" name="contrato">
            </div>

            <!-- Campo de tipo de reporte -->
            <div class="form-group">
                <label for="reporte">Reporte:</label>
                <select id="reporte" name="reporte">
                    <option value=""></option>
                    <option value="fisico">Avance físico</option>
                    <option value="financiero">Avance financiero</option>
                </select>
            </div>

            <!-- Sección de avance físico -->
            <div class="form-group" id="fisico-section" style="display: none;">
                <label for="detalles-fisico">Detalles de Avance Físico:</label>
                <textarea id="detalles-fisico" name="detalles_fisico"></textarea>
                <label for="avance-fisico">Avance (%):</label>
                <input type="number" id="avance-fisico" name="avance_fisico" step="0.01">
            </div>

            <!-- Sección de avance financiero -->
            <div class="form-group" id="financiero-section" style="display: none;">
                <label for="monto-total">Monto total de la obra:</label>
                <input type="number" id="monto-total" name="monto_total" step="0.01">
                <label for="monto-ejecutado">Monto ejecutado:</label>
                <input type="number" id="monto-ejecutado" name="monto_ejecutado" step="0.01">
                <label for="avance-financiero">Avance (%):</label>
                <input type="number" id="avance-financiero" name="avance_financiero" step="0.01">
                <label for="monto-pendiente">Monto pendiente:</label>
                <input type="number" id="monto-pendiente" name="monto_pendiente" step="0.01">
                <label for="detalles-financiero">Observaciones:</label>
                <textarea id="detalles-financiero" name="detalles_financiero"></textarea>
            </div>

            <!-- Botón de envío -->
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
    <script>
        document.getElementById('reporte').addEventListener('change', function() {
            var selectedValue = this.value;
            var fisicoSection = document.getElementById('fisico-section');
            var financieroSection = document.getElementById('financiero-section');

            if (selectedValue === 'fisico') {
                fisicoSection.style.display = 'block';
                financieroSection.style.display = 'none';
            } else if (selectedValue === 'financiero') {
                fisicoSection.style.display = 'none';
                financieroSection.style.display = 'block';
            } else {
                fisicoSection.style.display = 'none';
                financieroSection.style.display = 'none';
            }
        });
    </script>
</body>
</html>

<script>
    // Esperar a que el DOM esté completamente cargado
    document.addEventListener("DOMContentLoaded", function () {
        // Seleccionar el formulario
        const formulario = document.querySelector(".miFormulario");

        // Añadir evento para manejar el envío del formulario
        formulario.addEventListener("submit", function (event) {
            event.preventDefault(); // Prevenir el envío por defecto

            // Validar campos requeridos
            const obra = document.getElementById("obra").value.trim();
            const unidadTerritorial = document.getElementById("unidadt").value.trim();
            const contrato = document.getElementById("contrato").value.trim();
            const reporte = document.getElementById("reporte").value.trim();
            const detallesFisico = document.getElementById("detalles-fisico").value.trim();
            const avanceFisico = document.getElementById("avance-fisico").value.trim();
            const montoTotal = document.getElementById("monto-total")?.value.trim() || null;
            const montoEjecutado = document.getElementById("monto-ejecutado")?.value.trim() || null;
            const avanceFinanciero = document.getElementById("avance-financiero")?.value.trim() || null;
            const montoPendiente = document.getElementById("monto-pendiente")?.value.trim() || null;
            const detallesFinanciero = document.getElementById("detalles-financiero")?.value.trim() || null;

            // Validar campos comunes
            if (!obra || !unidadTerritorial || !contrato || !reporte) {
                alert("Por favor, completa todos los campos obligatorios.");
                return;
            }

            // Validar campos según el tipo de reporte
            if (reporte === "fisico") {
                if (!detallesFisico || !avanceFisico) {
                    alert("Por favor, completa todos los campos de avance físico.");
                    return;
                }

                // Validar porcentaje de avance físico
                if (avanceFisico < 0 || avanceFisico > 100) {
                    alert("El avance físico debe estar entre 0 y 100.");
                    return;
                }
            }

            if (reporte === "financiero") {
                if (!montoTotal || !montoEjecutado || !avanceFinanciero || !montoPendiente || !detallesFinanciero) {
                    alert("Por favor, completa todos los campos de avance financiero.");
                    return;
                }

                // Validar montos y porcentaje de avance financiero
                if (montoTotal <= 0 || montoEjecutado < 0 || montoPendiente < 0 || avanceFinanciero < 0 || avanceFinanciero > 100) {
                    alert("Por favor, verifica los valores en los campos financieros.");
                    return;
                }
            }

            alert("Formulario enviado correctamente.");
        });
    });
</script>

<?php
// Conexión a la base de datos
$servername = "indicadorestlalpan.mx";
$username = "tlalpan";
$password = "o3NvcMy5#8Nhrco%";
$dbname = "tlalpandb";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        session_start();

        // Variables de sesión (asegúrate de que estas variables existan)
        $usuarioID = $_SESSION['UsuarioID'] ?? null;
        $departamentoID = $_SESSION['DepartamentoID'] ?? null;

        // Datos del formulario
        $obra = $_POST['obra'] ?? null;
        $unidadTerritorial = $_POST['unidadt'] ?? null;
        $permisoLicencia = $_POST['contrato'] ?? null;
        $tipoReporte = $_POST['reporte'] ?? null;
        $detallesAvanceFisico = $_POST['detalles_fisico'] ?? null;
        $avanceFisico = $_POST['avance_fisico'] ?? null;
        $montoTotalObra = $_POST['monto_total'] ?? null;
        $montoEjecutado = $_POST['monto_ejecutado'] ?? null;
        $montoPendiente = $_POST['monto_pendiente'] ?? null;
        $observacionesFinancieras = $_POST['detalles_financiero'] ?? null;
        $fechaRegistro = date("Y-m-d H:i:s");

        // Validar campos obligatorios
        if (!$obra || !$unidadTerritorial || !$permisoLicencia || !$tipoReporte) {
            echo "Por favor, completa todos los campos requeridos.";
            exit;
        }

        // Verificar si el mismo registro ya existe para evitar duplicados
        $checkSql = "SELECT COUNT(*) FROM reporte_obras WHERE 
            UsuarioID = :usuarioID AND 
            DepartamentoID = :departamentoID AND 
            Obra = :obra AND 
            UnidadTerritorial = :unidadTerritorial AND 
            PermisoLicencia = :permisoLicencia AND 
            TipoReporte = :tipoReporte";

        $checkStmt = $conn->prepare($checkSql);
        $checkStmt->execute([
            ':usuarioID' => $usuarioID,
            ':departamentoID' => $departamentoID,
            ':obra' => $obra,
            ':unidadTerritorial' => $unidadTerritorial,
            ':permisoLicencia' => $permisoLicencia,
            ':tipoReporte' => $tipoReporte,
        ]);

        if ($checkStmt->fetchColumn() > 0) {
            echo "Este reporte ya fue registrado anteriormente.";
        } else {
            // Insertar en la base de datos
            $sql = "INSERT INTO reporte_obras (
                UsuarioID, DepartamentoID, Obra, UnidadTerritorial, PermisoLicencia, TipoReporte,
                DetallesAvanceFisico, AvanceFisico, MontoTotalObra, MontoEjecutado, MontoPendiente, 
                ObservacionesFinancieras, FechaRegistro
            ) VALUES (
                :usuarioID, :departamentoID, :obra, :unidadTerritorial, :permisoLicencia, :tipoReporte,
                :detallesAvanceFisico, :avanceFisico, :montoTotalObra, :montoEjecutado, :montoPendiente, 
                :observacionesFinancieras, :fechaRegistro
            )";

            $stmt = $conn->prepare($sql);

            $stmt->execute([
                ':usuarioID' => $usuarioID,
                ':departamentoID' => $departamentoID,
                ':obra' => $obra,
                ':unidadTerritorial' => $unidadTerritorial,
                ':permisoLicencia' => $permisoLicencia,
                ':tipoReporte' => $tipoReporte,
                ':detallesAvanceFisico' => $detallesAvanceFisico,
                ':avanceFisico' => $avanceFisico,
                ':montoTotalObra' => $montoTotalObra,
                ':montoEjecutado' => $montoEjecutado,
                ':montoPendiente' => $montoPendiente,
                ':observacionesFinancieras' => $observacionesFinancieras,
                ':fechaRegistro' => $fechaRegistro,
            ]);

            /// Evitar cualquier salida antes de usar header()
ob_start(); // Inicia el buffer de salida
// Procesar el formulario...
header("Location: " . $_SERVER['PHP_SELF']); // Redirigir después de insertar los datos
exit(); // Terminar el script después del redireccionamiento
        }
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
