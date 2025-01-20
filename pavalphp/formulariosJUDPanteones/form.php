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
                    <h2 class="title">JUD de Panteones</h2>
                    <div class="form-group">
                        <label for="nombrep">Nombre del panteón:</label>
                        <input type="text" id="nombrep" name="nombrep">
                    </div>
                    <div class="form-group">
                        <label for="actividad">Actividad:</label>
                        <select id="actividad" name="actividad">
                            <option value="">Seleccione una actividad</option>
                            <option value="servicio">Servicio</option>
                            <option value="mantenimiento">Mantenimiento</option>
                            <option value="hornos">Hornos</option>
                        </select>
                    </div>
                    <div class="form-group especificacion" data-actividad="servicio">
                        <label for="especificar">Especifique:</label>
                        <select id="especificar" name="especificar">
                            <option value="">Selecciona una opción</option>
                            <option value="servicio1">Inhumaciones</option>
                            <option value="Construcción y adquisición">Construcción y adquisición</option>
                            <option value="Refrendos">Refrendos</option>
                            <option value="Exhumaciones">Exhumaciones</option>
                            <option value="Re inhumaciones">Re inhumaciones</option>
                            <option value="Incineraciones">Incineraciones</option>
                            <option value="Servicios">Servicios</option>
                            <option value="Encortinados de fosa">Encortinados de fosa</option>
                            <option value="Bóvedas">Bóvedas</option>
                            <option value="Cierre de gavetas y nichos">Cierre de gavetas y nichos</option>
                            <option value="Taludes">Taludes</option>
                            <option value="Desmonte y monte de monumentos">Desmonte y monte de monumentos</option>
                            <option value="Ampliaciones">Ampliaciones</option>
                        </select>
                        <label for="concepto">Concepto:</label>
                        <select id="concepto" name="concepto">
                            <option value="">Selecciona una opción</option>
                            <option value="A título de temporalidad a siete años sin derecho a refrendo">A título de temporalidad a siete años sin derecho a refrendo</option>
                            <option value="A título de temporalidad máxima con derecho a cada refrendo en los términos que fije el Gobierno de la Ciudad de México">A título de temporalidad máxima con derecho a cada refrendo en los términos que fije el Gobierno de la Ciudad de México</option>
                            <option value="A título de temporalidad prorrogable en gaveta con derecho a refrendo, cada siete años">A título de temporalidad prorrogable en gaveta con derecho a refrendo, cada siete años</option>
                            <option value="A título de perpetuidad">A título de perpetuidad</option>
                            <option value="Construcción a título de temporalidad prorrogable para cripta">Construcción a título de temporalidad prorrogable para cripta</option>
                            <option value="Adquisición a título de temporalidad prorrogable para nicho, cada siete años">Adquisición a título de temporalidad prorrogable para nicho, cada siete años</option>
                            <option value="De fosa, cada siete años, de título a temporalidad">De fosa, cada siete años, de título a temporalidad</option>
                            <option value="De gaveta ocupada, cada siete años">De gaveta ocupada, cada siete años</option>
                            <option value="De nicho, cada siete años">De nicho, cada siete años</option>
                            <option value="De cripta familiar no ocupada, cada siete años">De cripta familiar no ocupada, cada siete años</option>
                            <option value="De restos cumplidos">De restos cumplidos</option>
                            <option value="De restos prematuros">De restos prematuros</option>
                            <option value="De restos en fosa, cada vez">De restos en fosa, cada vez</option>
                            <option value="Depósito de restos que se introduzcan en gaveta o nicho donde se encuentren depositados otros restos, incluyendo el desmonte de la placa">Depósito de restos que se introduzcan en gaveta o nicho donde se encuentren depositados otros restos, incluyendo el desmonte de la placa</option>
                            <option value="De cadáveres">De cadáveres</option>
                            <option value="De restos o miembros humanos o fetos">De restos o miembros humanos o fetos</option>
                            <option value="Velatorio">Velatorio</option>
                            <option value="Carroza">Carroza</option>
                            <option value="Ómnibus de acompañamiento">Ómnibus de acompañamiento</option>
                            <option value="De adultos con muros de tabique">De adultos con muros de tabique</option>
                            <option value="De menores con muros de tabique">De menores con muros de tabique</option>
                            <option value="Especial de adultos con muros de tabique">Especial de adultos con muros de tabique</option>
                            <option value="De adultos con muros de concreto precolado">De adultos con muros de concreto precolado</option>
                            <option value="Con cinco losas de concreto de 1.00 X 0.44 X 0.05 m.">Con cinco losas de concreto de 1.00 X 0.44 X 0.05 m.</option>
                            <option value="Con cinco losas de concreto de 0.87 X 0.44 X 0.05 m.">Con cinco losas de concreto de 0.87 X 0.44 X 0.05 m.</option>
                            <option value="Con cinco losas de concreto de 0.60 X 0.30 X 0.05 m.">Con cinco losas de concreto de 0.60 X 0.30 X 0.05 m.</option>
                            <option value="De gaveta grande en cripta">De gaveta grande en cripta</option>
                            <option value="De gaveta chica en cripta">De gaveta chica en cripta</option>
                            <option value="De nichos para restos">De nichos para restos</option>
                            <option value="Grabados de letras, números o signos">Grabados de letras, números o signos</option>
                            <option value="Construcción en fosa">Construcción en fosa</option>
                            <option value="Arreglo en fosa de adultos">Arreglo en fosa de adultos</option>
                            <option value="Arreglo en fosa de menores">Arreglo en fosa de menores</option>
                            <option value="Mantenimiento de fosa otorgada bajo el régimen de perpetuidad">Mantenimiento de fosa otorgada bajo el régimen de perpetuidad</option>
                            <option value="Grande de granito">Grande de granito</option>
                            <option value="Mediano de granito">Mediano de granito</option>
                            <option value="Chico de granito">Chico de granito</option>
                            <option value="De piedra natural">De piedra natural</option>
                            <option value="De guarnición de granito">De guarnición de granito</option>
                            <option value="De citarilla de cemento">De citarilla de cemento</option>
                            <option value="De capilla según presupuesto mínimo">De capilla según presupuesto mínimo</option>
                            <option value="De fosa de adulto">De fosa de adulto</option>
                            <option value="De fosa de menor a fosa para adulto">De fosa de menor a fosa para adulto</option>
                            <option value="Perimetral de banquetas">Perimetral de banquetas</option>
                            <option value="Profundización de fosa de adultos">Profundización de fosa de adultos</option>
                        </select>
                        <label for="costo">Costo:</label>
                        <input type="number" id="costo" name="costo">
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
    
    <!-- JavaScript para cambiar secciones de especificación -->
    <script>
        function toggleEspecificacion() {
            const selectedValue = document.getElementById('actividad').value;
            const especificacion = document.querySelector('.especificacion');
            if (selectedValue === 'servicio') {
                especificacion.style.display = 'block';
            } else {
                especificacion.style.display = 'none';
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            document.getElementById('actividad').addEventListener('change', toggleEspecificacion);
            toggleEspecificacion(); // Llama a la función para asegurarte de que la especificación esté oculta/incluida al cargar la página
        });
    </script>
</body>
</html>
