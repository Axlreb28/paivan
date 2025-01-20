<?php
session_start();
if (!isset($_SESSION['usuario_id'])) {
    header("Location: index.php");
    exit();
}

$conn = new mysqli('localhost', 'root', '', 'tlalpan');
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$usuario_id = $_SESSION['usuario_id'];
$stmt = $conn->prepare("
    SELECT d.ID, d.Departamento
    FROM Departamentos d
    JOIN UsuarioDepartamentos ud ON d.ID = ud.DepartamentoID
    WHERE ud.UsuarioID = ?
");
$stmt->bind_param("i", $usuario_id);
$stmt->execute();
$result = $stmt->get_result();
$departamentos = [];
while ($row = $result->fetch_assoc()) {
    $departamentos[] = $row;
}

$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/menudepartamentos.css">

</head>

<body>
    <?php include 'includes/navbarh.php'; ?>
    <div id="formContent">
        <h2 class="centro">Departamentos</h2>
        
        <!-- Barra de búsqueda -->
        <div id="searchBar" class="mb-3" style="display: none;">
            <input type="text" class="form-control" id="searchInput" placeholder="Buscar departamento...">
        </div>

        <div class="menu-grid" id="departmentMenu">
        <a class="menu-item" href="menusformularios/menuDireccionGPT.php">Direccion de Atencion a Grupos Prioritarios</a>
            <a class="menu-item" href="menusformularios/menuSubdireccionUrbayMovili.php">Subdirección de Ordenamiento Urbano y Movilidad</a>
            <a class="menu-item" href="menusformularios/menuSubdireccióndeObras.php">Subdirección de Obras</a>
            <a class="menu-item" href="menusformularios/menuJUDIncidenciayEstadísticaDelictiva.php">JUD de Incidencia y Estadística Delictiva</a>
            <a class="menu-item" href="menusformularios/menuJUDCentrosDepor.php">JUD de Centros Deportivos</a>
            <a class="menu-item" href="menusformularios/menuDireccióndeSalud.php">Dirección de Salud</a>
            <a class="menu-item" href="menusformularios/menuJUDColoniasyAsntamientosH.php">JUD Colonias y Asentamientos Humanos Irregulares</a>
            <a class="menu-item" href="menusformularios/menuSubdirecciónProgramasPrevenciónDelito.php">Subdirección de Programas y Proyectos de Prevención del Delito</a>
            <a class="menu-item" href="menusformularios/menuJUDSeguridadCiudadanayTránsito.php">JUD de Seguridad Ciudadana y de Tránsito</a>
            <a class="menu-item" href="menusformularios/menuJUDControlOperativoPolicial.php">JUD de Control Operativo Policial</a>
            <a class="menu-item" href="menusformularios/menuJUDPanteones.php">JUD de Panteones</a>
            <a class="menu-item" href="menusformularios/menuJUDTianguisyVíaPública.php">JUD de Tianguis y Vía Pública</a>
            <a class="menu-item" href="menusformularios/menuJUDMercadosyConcentraciones.php">JUD de Mercados y Concentraciones </a>
            <a class="menu-item" href="menusformularios/menuJUDMantenientoMenor.php">JUD de Manteniento Menor</a>
        
        <?php 
            $href_static = [
                'Alcaldía' => 'menusformularios/menuAlcaldia.php',
                'Secretaría Particular' => 'menusformularios/menuSecretariaParticular.php'
            ];

            foreach ($departamentos as $departamento):
                $nombre_departamento = $departamento['Departamento'];
                $href = isset($href_static[$nombre_departamento]) ? $href_static[$nombre_departamento] : '#';
            ?>
                <a class="menu-item" href="<?php echo $href; ?>"><?php echo $nombre_departamento; ?></a>
            <?php endforeach; ?>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var departmentMenu = document.getElementById("departmentMenu");
            var searchBar = document.getElementById("searchBar");
            var searchInput = document.getElementById("searchInput");
            var departments = departmentMenu.getElementsByClassName("menu-item");

            console.log("Número de departamentos:", departments.length); // Mensaje de depuración

            if (departments.length > 15) {
                searchBar.style.display = "block";
            }

            searchInput.addEventListener("keyup", function() {
                var filter = searchInput.value.toLowerCase();
                for (var i = 0; i < departments.length; i++) {
                    var a = departments[i];
                    var txtValue = a.textContent || a.innerText;
                    if (txtValue.toLowerCase().indexOf(filter) > -1) {
                        departments[i].style.display = "";
                    } else {
                        departments[i].style.display = "none";
                    }
                }
            });
        });
    </script>
</body>
</html>

