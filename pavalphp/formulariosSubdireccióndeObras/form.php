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
        <form class="miFormulario" action="">
            <div class="row">
                <div class="column">
                <h2 class="title">Reporte de Obras</h2>
                <div class="form-group">
                        <label for="obra">Obra</label>
                        <select id="obra" name="obra">
                        <option value=""></option>
                            <option value="utopia">Utopia</option>
                            <option value="escuela">Escuela</option>
                            <option value="deportivo">Deportivo</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="unidadt">Unidad Territorial:</label>
                        <select id="unidadt" name="unidadt">
                            <option value="">Seleccione una colonia</option>                          
                        </select>
                    </div>
                    <div class="form-group">
                            <label for="per">Número de permiso/licencia de funcionamiento:</label>
                            <input type="number" id="per" name="per">
                        </div>
                    <div class="form-group">
                        <label for="reporte">Reporte:</label>
                        <select id="reporte" name="reporte">
                        <option value=""></option>
                            <option value="fisico">Avance fisico</option>
                            <option value="financiero">Avance financiero</option>
                        </select>
                    </div>

                    <div class="form-group" id="fisico-section" style="display: none;">
                        <label for="detalles-fisico">Detalles de Avance Físico:</label>
                        <textarea id="detalles-fisico" name="detalles-fisico"></textarea>
                        <label for="avance-fisico">Avance:</label>
                            <input type="number" id="avance-fisico" name="avance-fisico"> 
                    </div>
                    <div class="form-group" id="financiero-section" style="display: none;"> 
                        <label for="per">Monto total de la obra:</label>
                        <input type="number" id="per" name="per">
                        <label for="per">Monto ejecutado: </label>
                        <input type="number" id="per" name="per">
                        <label for="avance-fisico">Avance:</label>
                        <input type="number" id="avance-fisico" name="avance-fisico"> 
                        <label for="per">Monto pendiente: </label>
                        <input type="number" id="per" name="per">
                        <label for="detalles-financiero">Observaciones:</label> 
                        <textarea id="detalles-financiero" name="detalles-financiero"></textarea> 
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
