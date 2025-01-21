-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2025 a las 17:40:23
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tlalpan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoyo_para_el_bienestar_2025`
--

CREATE TABLE `apoyo_para_el_bienestar_2025` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `DimensionPrograma` varchar(255) NOT NULL,
  `Actividad` varchar(255) DEFAULT NULL,
  `Observacion` text DEFAULT NULL,
  `Colectivo` varchar(255) DEFAULT NULL,
  `Acti` varchar(255) DEFAULT NULL,
  `NombreBeneficiario` varchar(255) NOT NULL,
  `ApellidoPaterno` varchar(255) NOT NULL,
  `ApellidoMaterno` varchar(255) NOT NULL,
  `Sexo` enum('hombre','mujer','otro') NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Colonia` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colonias`
--

CREATE TABLE `colonias` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colonias`
--

INSERT INTO `colonias` (`ID`, `Nombre`) VALUES
(1, 'MESA LOS HORNOS'),
(2, 'TEXCALTENCO'),
(3, 'MIRADOR 1A SECC'),
(4, 'LA PRIMAVERA'),
(5, 'LOMAS ALTAS DE PADIERNA SUR'),
(6, 'LOMAS DE PADIERNA (AMPL)'),
(7, 'SAN PEDRO MARTIR (PBLO)'),
(8, 'TLALCOLIGIA'),
(9, 'SAUZALES CEBADALES (U HAB)'),
(10, 'SAN ANDRES TOTOLTEPEC (PBLO)'),
(11, 'SAN MIGUEL XICALCO (PBLO)'),
(12, 'LOMAS DE PADIERNA II'),
(13, 'XAXALCO'),
(14, 'ISIDRO FABELA II (ORIENTE)'),
(15, 'JARDINES EN LA MONTAA'),
(16, 'JARDINES DEL AJUSCO'),
(17, 'AYOCATITLA, ASUNCIN'),
(18, 'ARBOLEDAS DEL SUR'),
(19, 'UNIDADES HABITACIONALES DE TENORIOS'),
(20, 'DOLORES TLALI'),
(21, 'EL ZACATON'),
(22, 'HUESO PERIFERICO-ISSSFAM NO. 7 (U HABS)'),
(23, 'SAN MIGUEL TOPILEJO (PBLO)'),
(24, 'TORIELLO GUERRA'),
(25, 'VIVEROS DE COACTETLAN'),
(26, 'PEDREGAL DE SN NICOLAS 4A SECC I'),
(27, 'LOMAS DE TEPEMECATL'),
(28, 'LA PALMA'),
(29, 'MOVIMIENTO ORGANIZADO DE TLALPAN-EL MIRADOR (RNCDA)'),
(30, 'LA LONJA'),
(31, 'LOMAS HIDALGO'),
(32, 'LA TORTUGA XOLALPA-HCO COLEGIO MILITAR'),
(33, 'JARDINES DE SAN JUAN'),
(34, 'FUENTES Y PEDREGAL DE TEPEPAN'),
(35, 'HEROES DE 1910'),
(36, 'PARQUES DEL PEDREGAL'),
(37, 'PARAJE 38'),
(38, 'EL ARENAL'),
(39, 'CRUZ DEL FAROL'),
(40, 'BOSQUE DE TEPEXIMILPA'),
(41, 'TEZONTITLA'),
(42, 'VALLE DE TEPEPAN'),
(43, 'VISTAS DEL PEDREGAL'),
(44, 'TEPETONGO'),
(45, 'CONDOMINIO DEL BOSQUE (FRACC)-BOSQUE DE TLALPAN'),
(46, 'ISIDRO FABELA I (PONIENTE)'),
(47, 'LOS ENCINOS'),
(48, 'TEPETLICA EL ALTO-3 DE MAYO'),
(49, 'PIEDRA LARGA'),
(50, 'PROGRESO TLALPAN'),
(51, 'HEROES DE PADIERNA II'),
(52, 'PEDREGAL DE SN NICOLAS 4A SECC II'),
(53, 'CONJUNTO HABITACIONAL PEDREGAL DEL LAGO'),
(54, 'BELVEDERE'),
(55, 'PEDREGAL DE SN NICOLAS 1A SECC'),
(56, 'PEDREGAL DE SN NICOLAS 3A SECC'),
(57, 'RINCON LAS HADAS-VILLA ROYALE-FUENTES Y ARCONADA COAPA'),
(58, 'FUENTES DEL PEDREGAL'),
(59, 'AMPLIACION MIGUEL HIDALGO 4A SECC'),
(60, 'GRANJAS COAPA'),
(61, 'BOSQUES DEL PEDREGAL'),
(62, 'ARENAL GUADALUPE TLALPAN'),
(63, 'SANTO TOMAS AJUSCO (PBLO)'),
(64, 'LOMAS DE PADIERNA I'),
(65, '2 DE OCTUBRE'),
(66, 'LA MAGDALENA PETLACALCO (PBLO)'),
(67, 'JUVENTUD UNIDA'),
(68, 'TLALPAN CENTRO'),
(69, 'TLALMILLE'),
(70, 'VERGEL DE COYOACAN-VERGEL DEL SUR'),
(71, 'VILLA LAZARO CARDENAS'),
(72, 'VERANO'),
(73, 'REAL DEL SUR-VILLAS DEL SUR-RESIDENCIAL ACOXPA'),
(74, 'RINCONADA (U HAB)'),
(75, 'AMSA'),
(76, 'FUENTES BROTANTES MIGUEL HIDALGO (U HAB)'),
(77, 'ARENAL PUERTA TEPEPAN'),
(78, 'AMPLIACION MIGUEL HIDALGO 3A SECC'),
(79, 'CALVARIO CAMISETAS'),
(80, 'HACIENDA SAN JUAN-RINCON DE SAN JUAN-CHIMALI'),
(81, 'COAPA 2A SECCION-RAMOS MILLAN'),
(82, 'SANTA URSULA XITLA'),
(83, 'PARRES EL GUARDA (PBLO)'),
(84, 'PRADO COAPA 3A SECCION-POTRERO ACOXPA'),
(85, 'PEDREGAL DE LAS AGUILAS'),
(86, 'ROCA DE CRISTAL'),
(87, 'VILLA DEL PUENTE FOVISSSTE (U HAB)'),
(88, 'NARCISO MENDOZA-VILLA COAPA SUPER MANZANA 6 (U HAB)'),
(89, 'LA JOYA'),
(90, 'LOS PASTORES'),
(91, 'IGNACIO CHAVEZ (U HAB)'),
(92, 'LOMAS DE TEXCALATLACO'),
(93, 'FLORESTA-PRADO-VERGEL COAPA'),
(94, 'EMILIO PORTES GIL PEMEX PICACHO (U HAB)'),
(95, 'FRESNO'),
(96, 'SAN MIGUEL TEHUISCO-LOS ANGELES-AYOMETITLA'),
(97, 'NARCISO MENDOZA-VILLA COAPA SUPER MANZANA 7 (U HAB)'),
(98, 'SAN BARTOLO EL CHICO'),
(99, 'PUEBLO QUIETO'),
(100, 'AMPLIACION MIGUEL HIDALGO 2A SECC'),
(101, 'CHICHICASPATL'),
(102, 'AHUACATITLA'),
(103, 'CHIMILLI'),
(104, 'CUILOTEPEC II'),
(105, 'XAXALIPAC'),
(106, 'SAN PEDRO APOSTOL (BARR)'),
(107, 'VILLA COAPA (RDCIAL)'),
(108, 'COLINAS DEL BOSQUE-LAS TORTOLAS'),
(109, 'LA FAMA'),
(110, 'EJIDOS DE SAN PEDRO MARTIR I (NORTE)'),
(111, 'PEDREGAL DE STA URSULA XITLA'),
(112, 'RANCHO LOS COLORINES (FRACC)'),
(113, 'VALLE ESCONDIDO'),
(114, 'TETENCO (PJE)'),
(115, 'CHIMALCOYOC'),
(116, 'MIGUEL HIDALGO'),
(117, 'ORIENTE (AMPL)'),
(118, 'SAN LORENZO HUIPULCO'),
(119, 'LA MAGUEYERA'),
(120, 'TORRES DE PADIERNA'),
(121, 'BELISARIO DOMINGUEZ'),
(122, 'EJIDOS DE SAN PEDRO MARTIR II (SUR)'),
(123, 'MA ESTHER ZUNO DE ECHEVERRIA-TLALPUENTE'),
(124, 'LA LIBERTAD - IXTLAHUACA'),
(125, 'COAPA-VILLA CUEMANCO'),
(126, 'TEZONTITLA - EL CALVARIO (AMPL)'),
(127, 'TENORIOS INFONAVIT 1 Y 2 (U HAB)'),
(128, 'PLAN DE AYALA'),
(129, 'MIRADOR 2A y 3A SECC'),
(130, 'POPULAR STA TERESA'),
(131, 'NUEVA ORIENTAL COAPA-EX HACIENDA COAPA'),
(132, 'MIRADOR II'),
(133, 'NIO JESUS (BARR)'),
(134, 'ZAPOTE-LUIS DONALDO COLOSIO (U HABS)'),
(135, 'SAN MIGUEL TOXIAC'),
(136, 'JARDINES COAPA-BELISARIO DOMINGUEZ'),
(137, 'CONJUNTO URBANO CUEMANCO (U HAB)'),
(138, 'EL DIVISADERO'),
(139, 'EX HACIENDA SAN JUAN DE DIOS'),
(140, 'GRANJAS COAPA ORIENTE'),
(141, 'OCOTLA - OCOTLA CHICO'),
(142, 'TECORRAL'),
(143, 'SANTISIMA TRINIDAD'),
(144, 'VALLE VERDE'),
(145, 'LOMA BONITA-AMPLIACION TEPEXIMILPA'),
(146, 'NARCISO MENDOZA-VILLA COAPA SUPER MANZANA 1 (U HAB)'),
(147, 'LOMAS DEL PEDREGAL'),
(148, 'NARCISO MENDOZA VILLA COAPA SUPERMANZANA 8 (U HAB)'),
(149, 'ISIDRO FABELA (AMPL)'),
(150, 'MIRADOR DEL VALLE'),
(151, 'SAN MIGUEL AJUSCO (PBLO)'),
(152, 'MIRADOR I'),
(153, 'RESIDENCIAL INSURGENTES SUR (U HAB)'),
(154, 'SN JUAN TEPEXIMILPA (AMPL)'),
(155, 'CULTURA MAYA'),
(156, 'HEROES DE PADIERNA I'),
(157, 'VILLA OLIMPICA LIBERADOR MIGUEL HIDALGO (U HAB)'),
(158, 'SECCION XVI'),
(159, 'CLUB DE GOLF MEXICO-SAN BUENAVENTURA'),
(160, 'ISSSFAM No. 1 (U HAB)-VILLA TLALPAN'),
(161, 'CUCHILLA DE PADIERNA'),
(162, 'LOMAS DE CUILOTEPEC'),
(163, 'NARCISO MENDOZA-VILLA COAPA SUPER MANZANA 2 (U HAB)'),
(164, 'NARCISO MENDOZA-VILLA COAPA SUPER MANZANA 3 (U HAB)'),
(165, 'PEDREGAL DE SN NICOLAS 2A SECC'),
(166, 'ROMULO SANCHEZ-SAN FERNANDO (BARR)-PEA POBRE'),
(167, 'SN JUAN TEPEXIMILPA'),
(168, 'ZACATIENDA'),
(169, 'TRES FUENTES (U HAB)'),
(170, 'LOS VOLCANES'),
(171, 'NUEVO RENACIMIENTO DE AXALCO'),
(172, 'LA GUADALUPANA'),
(173, 'PRADO COAPA 2A SECCION'),
(174, 'ATOCPA SUR'),
(175, 'CANTERA PUENTE DE PIEDRA'),
(176, 'DIAMANTE'),
(177, 'FOVISSSTE SAN PEDRO MARTIR ( U HAB)'),
(178, 'SAN NICOLAS II'),
(179, 'SOLIDARIDAD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `construyendo_salud_en_comunidad`
--

CREATE TABLE `construyendo_salud_en_comunidad` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Actividad` varchar(255) NOT NULL,
  `NombreBeneficiario` varchar(255) NOT NULL,
  `ApellidoPaterno` varchar(255) NOT NULL,
  `ApellidoMaterno` varchar(255) NOT NULL,
  `Sexo` enum('hombre','mujer','otro') NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Colonia` varchar(255) NOT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuidar_y_ser_cuidado_para_el_bienestar_2025`
--

CREATE TABLE `cuidar_y_ser_cuidado_para_el_bienestar_2025` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `DimensionPrograma` varchar(255) NOT NULL,
  `Actividad` varchar(255) DEFAULT NULL,
  `Observacion` text DEFAULT NULL,
  `Colectivo` varchar(255) DEFAULT NULL,
  `Acti` varchar(255) DEFAULT NULL,
  `NombreBeneficiario` varchar(255) NOT NULL,
  `ApellidoPaterno` varchar(255) NOT NULL,
  `ApellidoMaterno` varchar(255) NOT NULL,
  `Sexo` enum('hombre','mujer','otro') NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Colonia` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuidar_y_ser_cuidado_para_el_bienestar_2025`
--

INSERT INTO `cuidar_y_ser_cuidado_para_el_bienestar_2025` (`ID`, `UsuarioID`, `DepartamentoID`, `FormularioID`, `DimensionPrograma`, `Actividad`, `Observacion`, `Colectivo`, `Acti`, `NombreBeneficiario`, `ApellidoPaterno`, `ApellidoMaterno`, `Sexo`, `Telefono`, `FechaNacimiento`, `Colonia`, `Ubicacion`, `Direccion`, `FechaRegistro`) VALUES
(21, 2, 3, 1, 'Beneficiario Directo', 'Colectivos', 'Sin observaciones', 'Grupos', 'Evento', 'Juan', 'Perez', 'Lopez', 'hombre', '9214589637', '2024-07-15', 'Cancún', '200 150', 'Av. Reforma 234, Lt 8, Cs 12', '2025-01-19 02:43:58'),
(22, 4, 2, 2, 'Beneficiario Directo', 'Colectivos', 'Nota importante', 'Comunidades', 'Taller', 'Ana', 'Martinez', 'Gomez', 'mujer', '8179456312', '2025-03-10', 'Playa del Carmen', '150 175', 'Calle 12 Sur, Mz 45, Lt 7, Cs 9', '2025-01-19 02:43:58'),
(23, 5, 1, 3, 'Beneficiario Directo', 'Facilitadores', 'Sin datos', 'Asociaciones', 'Capacitación', 'Carlos', 'Sanchez', 'Torres', 'hombre', '7729658432', '2026-01-22', 'Mérida', '180 130', 'Sm 5, Mz 11, Lt 3, Cs 6', '2025-01-19 02:43:58'),
(24, 6, 7, 1, 'Beneficiario Directo', 'Facilitadores', 'Sin comentarios', 'Grupos', 'Curso', 'María', 'Hernandez', 'Luna', 'mujer', '6628471930', '2024-11-09', 'Tulum', '190 160', 'Km 25 Carretera Federal, Lt 4, Cs 10', '2025-01-19 02:43:58'),
(25, 3, 8, 2, 'Beneficiario Directo', 'Colectivos', 'Observaciones relevantes', 'Colectivos', 'Conferencia', 'Sofia', 'Morales', 'Ruiz', 'mujer', '9826374510', '2025-05-18', 'Puerto Morelos', '125 140', 'Calle Central, Mz 22, Lt 1, Cs 3', '2025-01-19 02:43:58'),
(26, 7, 6, 3, 'Beneficiario Directo', 'Colectivos', 'Detalles adicionales', 'Grupos', 'Actividad Cultural', 'Luis', 'Vega', 'Diaz', 'hombre', '8295613740', '2023-09-30', 'Isla Mujeres', '160 170', 'Zona Hotelera, Lt 20, Cs 5', '2025-01-19 02:43:58'),
(27, 1, 4, 1, 'Beneficiario Directo', 'Facilitadores', 'Notas', 'Asociaciones', 'Seminario', 'Gabriela', 'Cruz', 'Castillo', 'mujer', '9174528936', '2025-02-12', 'Cozumel', '185 150', 'Plaza Principal, Mz 3, Lt 2, Cs 7', '2025-01-19 02:43:58'),
(28, 6, 9, 2, 'Beneficiario Directo', 'Colectivos', 'Sin información', 'Comunidades', 'Charla', 'Fernando', 'Garcia', 'Fernandez', 'hombre', '8329674512', '2024-06-01', 'Valladolid', '140 155', 'Sm 21, Mz 15, Lt 9, Cs 8', '2025-01-19 02:43:58'),
(29, 4, 10, 3, 'Beneficiario Directo', 'Facilitadores', 'Detalles pendientes', 'Grupos', 'Convivencia', 'Andrea', 'Jimenez', 'Mendoza', 'mujer', '9657823410', '2026-08-25', 'Holbox', '200 185', 'Zona Norte, Mz 12, Lt 10, Cs 15', '2025-01-19 02:43:58'),
(30, 4, 1, 1, 'Beneficiario Directo', 'Facilitadores', 'Observaciones', 'Colectivos', 'Actividad', 'Francisco', 'Hidalgo', 'Alvarado', 'hombre', '9984557819', '2025-12-17', 'Bonfil', '175 125', 'Sm 56 Mz 75, Lt 12, Cs 04', '2025-01-19 02:43:58'),
(31, 1, 2, 3, 'Facilitadores', 'Facilitadores', 'Detalles específicos', 'Asociaciones', 'Entrenamiento', 'Oscar', 'Núñez', 'Mora', 'hombre', '8347215489', '2025-04-14', 'Chetumal', '190 145', 'Calle 8, Mz 18, Lt 4, Cs 2', '2025-01-19 02:50:15'),
(32, 2, 5, 2, 'Facilitadores', 'Colectivos', 'Notas adicionales', 'Comunidades', 'Capacitación', 'Laura', 'Ríos', 'Cervantes', 'mujer', '9876543210', '2026-03-20', 'Bacalar', '175 165', 'Sm 25, Mz 9, Lt 6, Cs 8', '2025-01-19 02:50:15'),
(33, 3, 4, 1, 'Facilitadores', 'Facilitadores', 'Revisión pendiente', 'Colectivos', 'Seminario', 'Diego', 'Álvarez', 'Ramírez', 'hombre', '9812654738', '2024-09-03', 'Felipe Carrillo Puerto', '180 155', 'Km 10, Carretera Libre, Lt 2, Cs 1', '2025-01-19 02:50:15'),
(34, 4, 8, 3, 'Facilitadores', 'Colectivos', 'Observaciones menores', 'Grupos', 'Foro', 'Daniela', 'Reyes', 'Aguilar', 'mujer', '8529637410', '2025-11-19', 'Cancún', '140 180', 'Zona Urbana, Mz 12, Lt 9, Cs 7', '2025-01-19 02:50:15'),
(35, 5, 6, 2, 'Facilitadores', 'Facilitadores', 'Detalles en proceso', 'Asociaciones', 'Taller de Innovación', 'Roberto', 'López', 'Pérez', 'hombre', '9428572310', '2024-12-27', 'Puerto Morelos', '190 135', 'Calle Sur, Mz 5, Lt 3, Cs 4', '2025-01-19 02:50:15'),
(36, 6, 3, 1, 'Facilitadores', 'Facilitadores', 'Datos preliminares', 'Comunidades', 'Charla Educativa', 'Camila', 'Martínez', 'Hernández', 'mujer', '9184763215', '2025-06-10', 'Playa del Carmen', '155 170', 'Calle Norte, Mz 21, Lt 1, Cs 10', '2025-01-19 02:50:15'),
(37, 7, 7, 3, 'Facilitadores', 'Colectivos', 'Pendiente revisión', 'Grupos', 'Mesa Redonda', 'Mario', 'Ortiz', 'Sánchez', 'hombre', '8913456721', '2026-01-05', 'Tulum', '165 150', 'Km 22, Carretera Federal, Lt 5, Cs 6', '2025-01-19 02:50:15'),
(38, 5, 1, 2, 'Facilitadores', 'Facilitadores', 'Actualización requerida', 'Colectivos', 'Encuentro Cultural', 'Sofia', 'Castañeda', 'González', 'mujer', '9012376548', '2024-08-30', 'Cozumel', '135 160', 'Zona Centro, Mz 10, Lt 2, Cs 3', '2025-01-19 02:50:15'),
(39, 3, 9, 1, 'Facilitadores', 'Colectivos', 'Detalles relevantes', 'Asociaciones', 'Jornada Social', 'Luis', 'Fernández', 'Díaz', 'hombre', '8192837465', '2025-10-17', 'Isla Mujeres', '150 200', 'Av. Principal, Mz 8, Lt 7, Cs 12', '2025-01-19 02:50:15'),
(40, 1, 3, 2, 'Beneficiario Directo', 'Facilitadores', 'Información pendiente', 'Grupos', 'Taller Creativo', 'Pedro', 'Ramírez', 'Domínguez', 'hombre', '8273946158', '2025-03-22', 'Cancún', '190 140', 'Av. Jardines, Mz 15, Lt 10, Cs 4', '2025-01-19 02:53:51'),
(41, 1, 4, 1, 'Participante', 'Colaboradores', 'Sin observaciones', 'Comunidades', 'Jornada Cultural', 'Lucía', 'Pérez', 'Mejía', 'mujer', '9148327654', '2024-12-11', 'Playa del Carmen', '160 175', 'Sm 23, Mz 18, Lt 5, Cs 7', '2025-01-19 02:53:51'),
(42, 2, 7, 3, 'Beneficiario Indirecto', 'Voluntarios', 'Notas adicionales', 'Asociaciones', 'Charla Técnica', 'Miguel', 'González', 'Castro', 'hombre', '8394756123', '2026-07-15', 'Tulum', '150 190', 'Calle Luna, Mz 8, Lt 2, Cs 10', '2025-01-19 02:53:51'),
(43, 3, 5, 2, 'Beneficiario Directo', 'Coordinadores', 'Revisión en curso', 'Colectivos', 'Mesa Redonda', 'Elena', 'Martínez', 'Ruiz', 'mujer', '9238475610', '2025-11-30', 'Chetumal', '180 165', 'Av. Coral, Mz 12, Lt 7, Cs 3', '2025-01-19 02:53:51'),
(44, 4, 6, 1, 'Participante', 'Líderes', 'Observaciones relevantes', 'Grupos', 'Encuentro Académico', 'Jorge', 'López', 'Cervantes', 'hombre', '8971326540', '2024-05-19', 'Puerto Morelos', '175 135', 'Sm 7, Mz 20, Lt 4, Cs 6', '2025-01-19 02:53:51'),
(45, 5, 2, 3, 'Beneficiario Indirecto', 'Facilitadores', 'Detalles técnicos', 'Asociaciones', 'Foro Educativo', 'Mariana', 'Hernández', 'Velázquez', 'mujer', '9123847651', '2026-02-28', 'Cozumel', '165 180', 'Km 15 Carretera Federal, Lt 3, Cs 1', '2025-01-19 02:53:51'),
(46, 6, 5, 2, 'Participante', 'Colaboradores', 'Sin detalles', 'Comunidades', 'Capacitación Técnica', 'Fernando', 'Ortiz', 'Gómez', 'hombre', '8745639201', '2025-06-21', 'Isla Mujeres', '140 155', 'Zona Hotelera, Mz 9, Lt 11, Cs 5', '2025-01-19 02:53:51'),
(47, 7, 1, 1, 'Beneficiario Directo', 'Voluntarios', 'Notas importantes', 'Colectivos', 'Evento Cultural', 'Andrea', 'Castillo', 'Rojas', 'mujer', '9012837465', '2024-09-10', 'Holbox', '200 125', 'Av. Norte, Mz 11, Lt 6, Cs 8', '2025-01-19 02:53:51'),
(48, 2, 6, 3, 'Beneficiario Indirecto', 'Coordinadores', 'Revisión pendiente', 'Grupos', 'Charla Informativa', 'Santiago', 'Jiménez', 'Mendoza', 'hombre', '9238456712', '2025-12-02', 'Valladolid', '150 145', 'Calle Sur, Mz 22, Lt 9, Cs 12', '2025-01-19 02:53:51'),
(49, 1, 3, 2, 'Colectivos', 'Facilitadores', 'Información pendiente', 'Grupos', 'Taller Creativo', 'Pedro', 'Ramírez', 'Domínguez', 'hombre', '8273946158', '2025-03-22', 'Cancún', '190 140', 'Av. Jardines, Mz 15, Lt 10, Cs 4', '2025-01-19 02:55:50'),
(50, 1, 4, 1, 'Colectivos', 'Colaboradores', 'Sin observaciones', 'Comunidades', 'Jornada Cultural', 'Lucía', 'Pérez', 'Mejía', 'mujer', '9148327654', '2024-12-11', 'Playa del Carmen', '160 175', 'Sm 23, Mz 18, Lt 5, Cs 7', '2025-01-19 02:55:50'),
(51, 2, 7, 3, 'Colectivos', 'Voluntarios', 'Notas adicionales', 'Asociaciones', 'Charla Técnica', 'Miguel', 'González', 'Castro', 'hombre', '8394756123', '2026-07-15', 'Tulum', '150 190', 'Calle Luna, Mz 8, Lt 2, Cs 10', '2025-01-19 02:55:50'),
(52, 3, 5, 2, 'Colectivos', 'Coordinadores', 'Revisión en curso', 'Colectivos', 'Mesa Redonda', 'Elena', 'Martínez', 'Ruiz', 'mujer', '9238475610', '2025-11-30', 'Chetumal', '180 165', 'Av. Coral, Mz 12, Lt 7, Cs 3', '2025-01-19 02:55:50'),
(53, 4, 6, 1, 'Colectivos', 'Líderes', 'Observaciones relevantes', 'Grupos', 'Encuentro Académico', 'Jorge', 'López', 'Cervantes', 'hombre', '8971326540', '2024-05-19', 'Puerto Morelos', '175 135', 'Sm 7, Mz 20, Lt 4, Cs 6', '2025-01-19 02:55:50'),
(54, 5, 2, 3, 'Colectivos', 'Facilitadores', 'Detalles técnicos', 'Asociaciones', 'Foro Educativo', 'Mariana', 'Hernández', 'Velázquez', 'mujer', '9123847651', '2026-02-28', 'Cozumel', '165 180', 'Km 15 Carretera Federal, Lt 3, Cs 1', '2025-01-19 02:55:50'),
(55, 6, 5, 2, 'Colectivos', 'Colaboradores', 'Sin detalles', 'Comunidades', 'Capacitación Técnica', 'Fernando', 'Ortiz', 'Gómez', 'hombre', '8745639201', '2025-06-21', 'Isla Mujeres', '140 155', 'Zona Hotelera, Mz 9, Lt 11, Cs 5', '2025-01-19 02:55:50'),
(56, 7, 1, 1, 'Colectivos', 'Voluntarios', 'Notas importantes', 'Colectivos', 'Evento Cultural', 'Andrea', 'Castillo', 'Rojas', 'mujer', '9012837465', '2024-09-10', 'Holbox', '200 125', 'Av. Norte, Mz 11, Lt 6, Cs 8', '2025-01-19 02:55:50'),
(57, 2, 6, 3, 'Colectivos', 'Coordinadores', 'Revisión pendiente', 'Grupos', 'Charla Informativa', 'Santiago', 'Jiménez', 'Mendoza', 'hombre', '9238456712', '2025-12-02', 'Valladolid', '150 145', 'Calle Sur, Mz 22, Lt 9, Cs 12', '2025-01-19 02:55:50'),
(58, 7, 4, 1, 'Usuarios', 'Voluntarios', 'Datos no disponibles', 'Grupos', 'Jornada Técnica', 'Alberto', 'Navarro', 'Sandoval', 'hombre', '8192037465', '2025-08-18', 'Cancún', '195 140', 'Av. Palmar, Mz 4, Lt 8, Cs 5', '2025-01-19 02:58:13'),
(59, 6, 7, 3, 'Usuarios', 'Facilitadores', 'Pendiente revisión', 'Comunidades', 'Charla Motivacional', 'Isabel', 'Luna', 'Soto', 'mujer', '8253749102', '2026-10-25', 'Playa del Carmen', '165 185', 'Calle Este, Mz 11, Lt 12, Cs 9', '2025-01-19 02:58:13'),
(60, 5, 6, 2, 'Usuarios', 'Coordinadores', 'Sin comentarios', 'Asociaciones', 'Mesa de Trabajo', 'Pablo', 'García', 'Molina', 'hombre', '9142837462', '2024-04-12', 'Tulum', '150 170', 'Km 18 Carretera Libre, Lt 5, Cs 3', '2025-01-19 02:58:13'),
(61, 4, 2, 1, 'Usuarios', 'Colaboradores', 'Detalles en proceso', 'Colectivos', 'Seminario Técnico', 'Carmen', 'Rojas', 'Hernández', 'mujer', '9371845261', '2025-11-16', 'Chetumal', '180 130', 'Av. Los Olivos, Mz 13, Lt 7, Cs 6', '2025-01-19 02:58:13'),
(62, 3, 5, 3, 'Usuarios', 'Voluntarios', 'Observaciones importantes', 'Grupos', 'Curso Práctico', 'Ricardo', 'Ortega', 'Villanueva', 'hombre', '9823745619', '2026-06-14', 'Puerto Morelos', '175 155', 'Sm 10, Mz 9, Lt 3, Cs 4', '2025-01-19 02:58:13'),
(63, 2, 8, 2, 'Usuarios', 'Facilitadores', 'Detalles preliminares', 'Comunidades', 'Capacitación en Campo', 'Valeria', 'Moreno', 'Guzmán', 'mujer', '8923746510', '2024-01-05', 'Cozumel', '160 180', 'Zona Central, Mz 7, Lt 2, Cs 8', '2025-01-19 02:58:13'),
(64, 1, 3, 1, 'Usuarios', 'Líderes', 'Revisión en curso', 'Asociaciones', 'Encuentro Social', 'Felipe', 'Ramírez', 'Carrillo', 'hombre', '9012738546', '2025-03-09', 'Isla Mujeres', '190 145', 'Av. Norte, Mz 5, Lt 11, Cs 7', '2025-01-19 02:58:13'),
(65, 7, 1, 3, 'Usuarios', 'Colaboradores', 'Sin observaciones', 'Colectivos', 'Charla Técnica', 'Ana', 'González', 'Rivas', 'mujer', '9182736450', '2024-07-27', 'Holbox', '145 190', 'Calle Sur, Mz 6, Lt 8, Cs 3', '2025-01-19 02:58:13'),
(66, 6, 9, 2, 'Usuarios', 'Coordinadores', 'Pendiente actualización', 'Grupos', 'Foro Educativo', 'Eduardo', 'Vega', 'Lara', 'hombre', '8237465910', '2026-12-21', 'Valladolid', '175 150', 'Km 10 Carretera Federal, Lt 9, Cs 1', '2025-01-19 02:58:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentoprogramas`
--

CREATE TABLE `departamentoprogramas` (
  `DepartamentoID` int(11) NOT NULL,
  `ProgramaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `ID` int(11) NOT NULL,
  `Departamento` varchar(150) DEFAULT NULL,
  `Contraseña` varchar(50) DEFAULT NULL,
  `VistaEspecial` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`ID`, `Departamento`, `Contraseña`, `VistaEspecial`) VALUES
(1, 'Alcaldía', 'contraseña123', 1),
(2, 'Secretaría Particular', 'contraseña123', 1),
(3, 'Subdirección de Control de Gestión', 'contraseña123', 1),
(4, 'Coordinación de la Unidad de Transparencia Acceso a la Información Pública Datos Personales y Archivos', 'contraseña123', 1),
(5, 'Jefatura de Unidad Departamental de Acceso a la Información Pública y Datos Personales', 'contraseña123', 1),
(6, 'Jefatura de Unidad Departamental de Archivos', 'contraseña123', 1),
(7, 'Dirección de Comunicación Social', 'contraseña123', 1),
(8, 'Líder Coordinador de Proyectos de Servicios Digitales', 'contraseña123', 1),
(9, 'Jefatura de Unidad Departamental de Comunicación', 'contraseña123', 1),
(10, 'Jefatura de Unidad Departamental de Difusión', 'contraseña123', 1),
(11, 'Dirección de la Unidad de Gestión Integral de Riesgos y Protección Civil', 'contraseña123', 1),
(12, 'Subdirección de Atención a Emergencias y Gestión de Riesgos', 'contraseña123', 1),
(13, 'Líder Coordinador de Proyectos de Mitigación de Riesgos', 'contraseña123', 1),
(14, 'Jefatura de Unidad Departamental de Dictaminación de Riesgos', 'contraseña123', 1),
(15, 'Jefatura de Unidad Departamental de Respuesta a Emergencias', 'contraseña123', 1),
(16, 'Dirección del Centro de Servicios y Atención Ciudadana', 'contraseña123', 1),
(17, 'Subdirección de Atención Ciudadana', 'contraseña123', 1),
(18, 'Enlace de Información y Seguimiento a Solicitudes de Servicios “A”', 'contraseña123', 1),
(19, 'Enlace de Información y Seguimiento a Solicitudes de Servicios “B”', 'contraseña123', 1),
(20, 'Subdirección de Ventanilla Única de Trámites', 'contraseña123', 1),
(21, 'Enlace de Atención Ciudadana “A”', 'contraseña123', 1),
(22, 'Enlace de Atención Ciudadana “B”', 'contraseña123', 1),
(23, 'Enlace de Atención Ciudadana “C”', 'contraseña123', 1),
(24, 'Enlace de Atención Ciudadana “D”', 'contraseña123', 1),
(25, 'Jefatura de la Oficina de Asesores y Coordinación Territorial', 'contraseña123', 1),
(26, 'Asesor “A”', 'contraseña123', 1),
(27, 'Asesor “B”', 'contraseña123', 1),
(28, 'Asesor “C”', 'contraseña123', 1),
(29, 'Subdirección Territorial A', 'contraseña123', 1),
(30, 'Jefatura de Unidad Departamental de Obras \"A\"', 'contraseña123', 1),
(31, 'Jefatura de Unidad Departamental de Servicios Urbanos \"A\"', 'contraseña123', 1),
(32, 'Líder Coordinador de Proyectos de Administración \"A\"', 'contraseña123', 1),
(33, 'Subdirección Territorial B', 'contraseña123', 1),
(34, 'Jefatura de Unidad Departamental de Obras \"B\"', 'contraseña123', 1),
(35, 'Jefatura de Unidad Departamental de Servicios Urbanos \"B\"', 'contraseña123', 1),
(36, 'Líder Coordinador de Proyectos de Administración \"B\"', 'contraseña123', 1),
(37, 'Subdirección Territorial C', 'contraseña123', 1),
(38, 'Jefatura de Unidad Departamental de Obras \"C\"', 'contraseña123', 1),
(39, 'Jefatura de Unidad Departamental de Servicios Urbanos \"C\"', 'contraseña123', 1),
(40, 'Líder Coordinador de Proyectos de Administración \"C\"', 'contraseña123', 1),
(41, 'Subdirección Territorial D', 'contraseña123', 1),
(42, 'Jefatura de Unidad Departamental de Obras \"D\"', 'contraseña123', 1),
(43, 'Jefatura de Unidad Departamental de Servicios Urbanos \"D\"', 'contraseña123', 1),
(44, 'Líder Coordinador de Proyectos de Administración \"D\"', 'contraseña123', 1),
(45, 'Subdirección Territorial E', 'contraseña123', 1),
(46, 'Jefatura de Unidad Departamental de Obras \"E\"', 'contraseña123', 1),
(47, 'Jefatura de Unidad Departamental de Servicios Urbanos \"E\"', 'contraseña123', 1),
(48, 'Líder Coordinador de Proyectos de Administración \"E\"', 'contraseña123', 1),
(49, 'Dirección de Planeación del Desarrollo', 'contraseña123', 1),
(50, 'Jefatura de Unidad Departamental de Planeación y Formulación de Proyectos de la Alcaldía', 'contraseña123', 1),
(51, 'Jefatura de Unidad Departamental de Apoyo Técnico y Evaluación de Programas con Reglas de Operación', 'contraseña123', 1),
(52, 'Dirección General de Asuntos Jurídicos y de Gobierno', 'contraseña123', 1),
(53, 'Dirección Jurídica', 'contraseña123', 1),
(54, 'Subdirección de Procedimientos de lo Contencioso', 'contraseña123', 1),
(55, 'Jefatura de Unidad Departamental de Amparos y Recuperación de la Vía Pública', 'contraseña123', 1),
(56, 'Jefatura de Unidad Departamental de Asuntos Civiles, Mercantiles y de Contencioso Administrativo', 'contraseña123', 1),
(57, 'Jefatura de Unidad Departamental de Contratos, Convenios y Permisos en Materia Administrativa', 'contraseña123', 1),
(58, 'Jefatura de Unidad Departamental de Enlace a Juzgados Cívicos, Registro Civil, Junta de Reclutamiento del Servicio Militar Nacional y Derechos Humanos', 'contraseña123', 1),
(59, 'Jefatura de Unidad Departamental de Asuntos Penales', 'contraseña123', 1),
(60, 'Subdirección de Juicios Laborales', 'contraseña123', 1),
(61, 'Subdirección de Verificación y Reglamentos', 'contraseña123', 1),
(62, 'Jefatura de Unidad Departamental de Apoyo Legal', 'contraseña123', 1),
(63, 'Jefatura de Unidad Departamental de Ejecución de Sanciones', 'contraseña123', 1),
(64, 'Subdirección de Calificaciones de Infracciones', 'contraseña123', 1),
(65, 'Jefatura de Unidad Departamental de Instrucción y Acuerdos Administrativos', 'contraseña123', 1),
(66, 'Jefatura de Unidad Departamental de Resoluciones y Cumplimientos', 'contraseña123', 1),
(67, 'Dirección de Gobierno y Vía Pública', 'contraseña123', 1),
(68, 'Subdirección de Gobierno', 'contraseña123', 1),
(69, 'Jefatura de Unidad Departamental de Giros Mercantiles y Espectáculos Públicos', 'contraseña123', 1),
(70, 'Jefatura de Unidad Departamental de Panteones', 'contraseña123', 1),
(71, 'Jefatura de Unidad Departamental de Tianguis y Vía Pública', 'contraseña123', 1),
(72, 'Jefatura de Unidad Departamental de Mercados y Concentraciones', 'contraseña123', 1),
(73, 'Dirección de Ordenamiento Territorial', 'contraseña123', 1),
(74, 'Jefatura de Unidad Departamental de Regularización Territorial', 'contraseña123', 1),
(75, 'Jefatura de Unidad Departamental de Colonias y Asentamientos Humanos Irregulares', 'contraseña123', 1),
(76, 'Jefatura de Unidad Departamental de Padrón Inmobiliario y Viviendas Irregulares', 'contraseña123', 1),
(77, 'Dirección de Seguridad Ciudadana y Construcción de la Paz', 'contraseña123', 1),
(78, 'Subdirección de Proyectos para la Construcción de la Paz', 'contraseña123', 1),
(79, 'Subdirección de Información y Control de Estadística y Tránsito', 'contraseña123', 1),
(80, 'Jefatura de Unidad Departamental de Incidencia y Estadística Delictiva', 'contraseña123', 1),
(81, 'Jefatura de Unidad Departamental de Control Operativo Policial', 'contraseña123', 1),
(82, 'Jefatura de Unidad Departamental de Seguridad Ciudadana y Tránsito', 'contraseña123', 1),
(83, 'Dirección General de Administración y Finanzas', 'contraseña123', 1),
(84, 'Subdirección de Seguimiento de Proyectos Administrativos y Control de Gestión', 'contraseña123', 1),
(85, 'Líder Coordinador de Proyectos de Gestión Documental', 'contraseña123', 1),
(86, 'Subdirección de Cumplimiento de Auditorias y Rendición de Cuentas', 'contraseña123', 1),
(87, 'Dirección de Modernización Administrativa y Tecnologías de la Información y Comunicaciones', 'contraseña123', 1),
(88, 'Jefatura de Unidad Departamental de Modernización Administrativa', 'contraseña123', 1),
(89, 'Subdirección de Tecnologías de la Información y Comunicaciones', 'contraseña123', 1),
(90, 'Jefatura de Unidad Departamental de Desarrollo de Sistemas', 'contraseña123', 1),
(91, 'Jefatura de Unidad Departamental de Soporte Técnico', 'contraseña123', 1),
(92, 'Dirección de Administración de Capital Humano', 'contraseña123', 1),
(93, 'Subdirección de Relaciones Laborales y Capacitación', 'contraseña123', 1),
(94, 'Jefatura de Unidad Departamental de Relaciones Laborales y Prestaciones', 'contraseña123', 1),
(95, 'Jefatura de Unidad Departamental de Capacitación y Desarrollo de Personal', 'contraseña123', 1),
(96, 'Subdirección de Nóminas y Registro de Personal', 'contraseña123', 1),
(97, 'Jefatura de Unidad Departamental de Registro y Movimientos de Personal', 'contraseña123', 1),
(98, 'Dirección de Autogenerados', 'contraseña123', 1),
(99, 'Líder Coordinador de Proyectos de Seguimiento e Informes', 'contraseña123', 1),
(100, 'Dirección de Finanzas', 'contraseña123', 1),
(101, 'Subdirección de Tesorería', 'contraseña123', 1),
(102, 'Subdirección de Contabilidad', 'contraseña123', 1),
(103, 'Jefatura de Unidad Departamental de Registro Contable', 'contraseña123', 1),
(104, 'Subdirección de Programación y Presupuesto', 'contraseña123', 1),
(105, 'Jefatura de Unidad Departamental de Control Presupuestal', 'contraseña123', 1),
(106, 'Dirección de Recursos Materiales y Servicios Generales', 'contraseña123', 1),
(107, 'Jefatura de Unidad Departamental de Almacenes e Inventarios', 'contraseña123', 1),
(108, 'Subdirección de Servicios Generales', 'contraseña123', 1),
(109, 'Jefatura de Unidad Departamental de Control Vehícular, Talleres y Combustible', 'contraseña123', 1),
(110, 'Jefatura de Unidad Departamental de Servicios Generales y Apoyo Logístico', 'contraseña123', 1),
(111, 'Subdirección de Adquisiciones', 'contraseña123', 1),
(112, 'Dirección General de Obras y Desarrollo Urbano', 'contraseña123', 1),
(113, 'Enlace de Seguimientos de Informes de Obras', 'contraseña123', 1),
(114, 'Líder Coordinador de Proyectos de Seguimiento a Solicitudes Específicas de Obra', 'contraseña123', 1),
(115, 'Dirección de Obras y Operación Hidráulica', 'contraseña123', 1),
(116, 'Subdirección de Obras', 'contraseña123', 1),
(117, 'Jefatura de Unidad Departamental de Mantenimiento a Edificios Públicos', 'contraseña123', 1),
(118, 'Jefatura de Unidad Departamental de Obras Viales', 'contraseña123', 1),
(119, 'Jefatura de Unidad Departamental de Planteles Educativos', 'contraseña123', 1),
(120, 'Líder Coordinador de Proyectos de Seguimiento de Infraestructura de Planteles Educativos', 'contraseña123', 1),
(121, 'Jefatura de Unidad Departamental de Construcción de Edificios Públicos', 'contraseña123', 1),
(122, 'Jefatura de Unidad Departamental de Control de Materiales y Equipo', 'contraseña123', 1),
(123, 'Jefatura de Unidad Departamental de Mantenimiento Menor', 'contraseña123', 1),
(124, 'Enlace de Trabajos de Mantenimiento por Administración', 'contraseña123', 1),
(125, 'Subdirección de Operación Hidráulica', 'contraseña123', 1),
(126, 'Jefatura de Unidad Departamental de Construcción de Obras para Saneamiento y Drenaje', 'contraseña123', 1),
(127, 'Jefatura de Unidad Departamental de Obras Hidráulicas', 'contraseña123', 1),
(128, 'Jefatura de Unidad Departamental de Operación de Agua, Saneamiento y Drenaje “A”', 'contraseña123', 1),
(129, 'Jefatura de Unidad Departamental de Operación de Agua, Saneamiento y Drenaje “B”', 'contraseña123', 1),
(130, 'Dirección de Desarrollo Urbano', 'contraseña123', 1),
(131, 'Subdirección de Permisos, Manifestaciones y Licencias', 'contraseña123', 1),
(132, 'Jefatura de Unidad Departamental de Manifestaciones y Licencias de Construcción', 'contraseña123', 1),
(133, 'Jefatura de Unidad Departamental de Alineamientos y Números Oficiales', 'contraseña123', 1),
(134, 'Dirección de Planeación y Control de Obras', 'contraseña123', 1),
(135, 'Jefatura de Unidad Departamental de Seguimiento a Auditorías de Obra Pública', 'contraseña123', 1),
(136, 'Subdirección de Proyectos de Construcción de Obras', 'contraseña123', 1),
(137, 'Jefatura de Departamental de Proyectos de Infraestructura', 'contraseña123', 1),
(138, 'Jefatura de Unidad Departamental de Concursos de Obras', 'contraseña123', 1),
(139, 'Subdirección de Administración de Obras', 'contraseña123', 1),
(140, 'Jefatura de Unidad Departamental de Contratos de Obras', 'contraseña123', 1),
(141, 'Jefatura de Unidad Departamental de Control y Avance Financiero de Obras', 'contraseña123', 1),
(142, 'Dirección General de Servicios Urbanos', 'contraseña123', 1),
(143, 'Jefatura de Unidad Departamental de Gestión de Información', 'contraseña123', 1),
(144, 'Enlace de Proyectos de Análisis', 'contraseña123', 1),
(145, 'Dirección de Proyectos y Programas de Servicios Urbanos', 'contraseña123', 1),
(146, 'Enlace de Brigada de Acción Inmediata de Zona “I”', 'contraseña123', 1),
(147, 'Enlace de Brigada de Acción Inmediata de Zona “II”', 'contraseña123', 1),
(148, 'Enlace de Brigada de Acción Inmediata de Zona “III”', 'contraseña123', 1),
(149, 'Enlace de Brigada de Acción Inmediata de Zona “IV”', 'contraseña123', 1),
(150, 'Jefatura de Unidad Departamental de Agua Potable en Pipas', 'contraseña123', 1),
(151, 'Líder Coordinador de Proyectos de Supervisión de Entrega de Servicio de Agua Potable y Pipas', 'contraseña123', 1),
(152, 'Subdirección de Mejoramiento y Servicios Urbanos', 'contraseña123', 1),
(153, 'Jefatura de Unidad Departamental de Parques y Jardines', 'contraseña123', 1),
(154, 'Jefatura de Unidad Departamental de Instalación y Mantenimiento de Luminarias', 'contraseña123', 1),
(155, 'Subdirección de Servicios a los Pueblos Originarios', 'contraseña123', 1),
(156, 'Jefatura de Unidad Departamental de Mejoramiento de Pueblos', 'contraseña123', 1),
(157, 'Subdirección de Limpia', 'contraseña123', 1),
(158, 'Jefatura de Unidad Departamental de Sistema Básico de Recolección', 'contraseña123', 1),
(159, 'Jefatura de Unidad Departamental de Sistema Mecanizado', 'contraseña123', 1),
(160, 'Subdirección de Ordenamiento Urbano y Movilidad', 'contraseña123', 1),
(161, 'Enlace de Brigada de Acción Inmediata', 'contraseña123', 1),
(162, 'Jefatura de Unidad Departamental de Proyectos de Movilidad', 'contraseña123', 1),
(163, 'Jefatura de Unidad Departamental de Conservación e Imagen Urbana', 'contraseña123', 1),
(164, 'Dirección General de Medio Ambiente, Desarrollo Sustentable y Fomento Económico', 'contraseña123', 1),
(165, 'Líder Coordinador de Proyectos de Seguimiento y Atención de Acuerdos', 'contraseña123', 1),
(166, 'Dirección de Recursos Naturales y Desarrollo Rural', 'contraseña123', 1),
(167, 'Enlace de Proyectos Productivos Sustentables', 'contraseña123', 1),
(168, 'Enlace de Prácticas Agroambientales', 'contraseña123', 1),
(169, 'Jefatura de Unidad Departamental de Recursos Naturales', 'contraseña123', 1),
(170, 'Jefatura de Unidad Departamental de Desarrollo Rural', 'contraseña123', 1),
(171, 'Dirección de Ordenamiento Ecológico y Educación Ambiental', 'contraseña123', 1),
(172, 'Enlace de Seguimiento a Programas y Proyectos de Ordenamiento Ecológico y Educación Ambiental', 'contraseña123', 1),
(173, 'Jefatura de Unidad Departamental de Articulación Urbana y Suelo de Conservación', 'contraseña123', 1),
(174, 'Jefatura de Unidad Departamental de Información y Seguimiento Geográfico', 'contraseña123', 1),
(175, 'Subdirección de Educación e Impacto Ambiental', 'contraseña123', 1),
(176, 'Jefatura de Unidad Departamental de Educación Ambiental', 'contraseña123', 1),
(177, 'Jefatura de Unidad Departamental de Vigilancia e Impacto Ambiental', 'contraseña123', 1),
(178, 'Subdirección de Ordenamiento Ecológico', 'contraseña123', 1),
(179, 'Dirección de Economía Solidaria, Desarrollo y Fomento Económico', 'contraseña123', 1),
(180, 'Líder Coordinador de Proyectos de Atención y Seguimiento de Desarrollo Económico', 'contraseña123', 1),
(181, 'Jefatura de Unidad Departamental de Desarrollo Económico', 'contraseña123', 1),
(182, 'Jefatura de Unidad Departamental de Economía Solidaria y Promoción Cooperativa', 'contraseña123', 1),
(183, 'Dirección de Turismo y Vinculación Internacional', 'contraseña123', 1),
(184, 'Subdirección Turística', 'contraseña123', 1),
(185, 'Jefatura de Unidad Departamental de Vinculación Internacional', 'contraseña123', 1),
(186, 'Jefatura de Unidad Departamental de Actividades Turísticas', 'contraseña123', 1),
(187, 'Dirección General de Bienestar e Igualdad Sustantiva', 'contraseña123', 1),
(188, 'Líder Coordinador de Proyectos de Sistematización “A”', 'contraseña123', 1),
(189, 'Líder Coordinador de Proyectos de Sistematización “B”', 'contraseña123', 1),
(190, 'Coordinación de Desarrollo de Actividades Deportivas', 'contraseña123', 1),
(191, 'Jefatura de Unidad Departamental de Promoción Deportiva', 'contraseña123', 1),
(192, 'Jefatura de Unidad Departamental de Centros Deportivos', 'contraseña123', 1),
(193, 'Dirección de Fomento a la Equidad de Género e Igualdad Sustantiva', 'contraseña123', 1),
(194, 'Jefatura de Unidad Departamental de Igualdad Sustantiva', 'contraseña123', 1),
(195, 'Jefatura de Unidad Departamental de Atención a la Población LGBTTTI', 'contraseña123', 1),
(196, 'Jefatura de Unidad Departamental de Fomento a la Equidad de Género', 'contraseña123', 1),
(197, 'Dirección de Atención a Grupos Prioritarios', 'contraseña123', 1),
(198, 'Líder Coordinador de Proyectos de Seguimiento y Registros', 'contraseña123', 1),
(199, 'Jefatura de Unidad Departamental de Atención a la Juventud', 'contraseña123', 1),
(200, 'Jefatura de Unidad Departamental de Atención a la Población Adulta Mayor', 'contraseña123', 1),
(201, 'Jefatura de Unidad Departamental de Centros de Desarrollo Comunitario Integral', 'contraseña123', 1),
(202, 'Jefatura de Unidad Departamental de Atención a la Infancia', 'contraseña123', 1),
(203, 'Dirección de Salud', 'contraseña123', 1),
(204, 'Subdirección de Atención a la Salud', 'contraseña123', 1),
(205, 'Jefatura de Unidad Departamental de Atención a Personas con Discapacidad', 'contraseña123', 1),
(206, 'Jefatura de Unidad Departamental de Prevención a Adicciones', 'contraseña123', 1),
(207, 'Subdirección de Promoción a la Salud y Protección Animal', 'contraseña123', 1),
(208, 'Dirección General de Participación Ciudadana', 'contraseña123', 1),
(209, 'Subdirección de Participación Comunitaria', 'contraseña123', 1),
(210, 'Jefatura de Unidad Departamental de Atención Comunitaria', 'contraseña123', 1),
(211, 'Subdirección de Concertación y Presupuesto Participativo', 'contraseña123', 1),
(212, 'Jefatura de Unidad Departamental de Unidades Habitacionales y Presupuesto Participativo', 'contraseña123', 1),
(213, 'Dirección de Promoción, Organización y Participación Ciudadana', 'contraseña123', 1),
(214, 'Subdirección de Promoción y Organización Ciudadana Zona \"A\"', 'contraseña123', 1),
(215, 'Enlace de Participación y Gestión Ciudadana \"A 1\"', 'contraseña123', 1),
(216, 'Enlace de Participación y Gestión Ciudadana \"A 2\"', 'contraseña123', 1),
(217, 'Subdirección de Promoción y Organización Ciudadana Zona \"B\"', 'contraseña123', 1),
(218, 'Enlace de Participación y Gestión Ciudadana \"B 1\"', 'contraseña123', 1),
(219, 'Enlace de Participación y Gestión Ciudadana \"B 2\"', 'contraseña123', 1),
(220, 'Subdirección de Promoción y Organización Ciudadana Zona \"C\"', 'contraseña123', 1),
(221, 'Enlace de Participación y Gestión Ciudadana \"C 1\"', 'contraseña123', 1),
(222, 'Enlace de Participación y Gestión Ciudadana \"C 2\"', 'contraseña123', 1),
(223, 'Subdirección de Promoción y Organización Ciudadana Zona \"D\"', 'contraseña123', 1),
(224, 'Enlace de Participación y Gestión Ciudadana \"D 1\"', 'contraseña123', 1),
(225, 'Enlace de Participación y Gestión Ciudadana \"D 2\"', 'contraseña123', 1),
(226, 'Subdirección de Promoción y Organización Ciudadana Zona \"E\"', 'contraseña123', 1),
(227, 'Enlace de Participación y Gestión Ciudadana \"E 1\"', 'contraseña123', 1),
(228, 'Enlace de Participación y Gestión Ciudadana \"E 2\"', 'contraseña123', 1),
(229, 'Dirección General de Derechos Culturales, Educativos, de Ciencia y Tecnología', 'contraseña123', 1),
(230, 'Líder Coordinador de Proyectos de Patrimonio Cultural', 'contraseña123', 1),
(231, 'Jefatura de Unidad Departamental de Gestión y Fomento Cultural', 'contraseña123', 1),
(232, 'Coordinación de Cultura', 'contraseña123', 1),
(233, 'Jefatura de Unidad Departamental de Cultura Comunitaria', 'contraseña123', 1),
(234, 'Subdirección de Promoción Cultural y Recintos Culturales', 'contraseña123', 1),
(235, 'Jefatura de Unidad Departamental de Eventos Públicos', 'contraseña123', 1),
(236, 'Jefatura de Unidad Departamental de Recintos Culturales, Promoción Artística y Cultural', 'contraseña123', 1),
(237, 'Subdirección de Coordinación de Centros de Arte y Oficios', 'contraseña123', 1),
(238, 'Enlace de Centro de Arte y Oficios “A”', 'contraseña123', 1),
(239, 'Enlace de Centro de Arte y Oficios “B”', 'contraseña123', 1),
(240, 'Enlace de Centro de Arte y Oficios “C”', 'contraseña123', 1),
(241, 'Enlace de Centro de Arte y Oficios “D”', 'contraseña123', 1),
(242, 'Enlace de Centro de Arte y Oficios “E”', 'contraseña123', 1),
(243, 'Coordinación de Educación', 'contraseña123', 1),
(244, 'Enlace Operativo para Apoyo a Servicios Educativos “A”', 'contraseña123', 1),
(245, 'Enlace Operativo para Apoyo a Servicios Educativos “B”', 'contraseña123', 1),
(246, 'Jefatura de Unidad Departamental de Atención y Vinculación Educativa', 'contraseña123', 1),
(247, 'Jefatura de Unidad Departamental de Educación y Capacitación', 'contraseña123', 1),
(248, 'Subdirección de Ciencia y Tecnología', 'contraseña123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularios`
--

CREATE TABLE `formularios` (
  `ID` int(11) NOT NULL,
  `NombreFormulario` varchar(150) DEFAULT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formularios`
--

INSERT INTO `formularios` (`ID`, `NombreFormulario`, `UsuarioID`, `DepartamentoID`) VALUES
(1, 'Prueba', 1, 1),
(2, 'rvhdsajnv', 5, 8),
(3, 'addnjvandv', 7, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fortalecimiento_para_el_cuidado_de_las_infancias`
--

CREATE TABLE `fortalecimiento_para_el_cuidado_de_las_infancias` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `DimensionPrograma` varchar(255) NOT NULL,
  `Actividad` varchar(255) DEFAULT NULL,
  `Observacion` text DEFAULT NULL,
  `Colectivo` varchar(255) DEFAULT NULL,
  `Acti` varchar(255) DEFAULT NULL,
  `NombreBeneficiario` varchar(255) NOT NULL,
  `ApellidoPaterno` varchar(255) NOT NULL,
  `ApellidoMaterno` varchar(255) NOT NULL,
  `Sexo` enum('hombre','mujer','otro') NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Colonia` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `judpanteones`
--

CREATE TABLE `judpanteones` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `NombrePanteon` varchar(255) NOT NULL,
  `Actividad` varchar(50) NOT NULL,
  `Especificacion` varchar(255) DEFAULT NULL,
  `Concepto` varchar(255) DEFAULT NULL,
  `Costo` decimal(10,2) DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jud_colonias_y_asentamientos_humanos_irregulares`
--

CREATE TABLE `jud_colonias_y_asentamientos_humanos_irregulares` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Poblado` varchar(255) NOT NULL,
  `NombreAsentamiento` varchar(255) NOT NULL,
  `Actividad` varchar(255) NOT NULL,
  `PorcentajeAsistencias` decimal(5,2) DEFAULT NULL,
  `NumeroLotes` int(11) DEFAULT NULL,
  `Caracteristica` varchar(255) NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jud_de_centros_deportivos`
--

CREATE TABLE `jud_de_centros_deportivos` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Deportivo` varchar(255) NOT NULL,
  `IngresoMensual` decimal(10,2) DEFAULT NULL,
  `MetaQuincenal` decimal(10,2) DEFAULT NULL,
  `Reporte` decimal(10,2) DEFAULT NULL,
  `AlcanceQuincenal` decimal(5,2) DEFAULT NULL,
  `AlcanceMensual` decimal(5,2) DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jud_de_control_operativo_policial`
--

CREATE TABLE `jud_de_control_operativo_policial` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Sector` varchar(255) NOT NULL,
  `Colonia` varchar(255) NOT NULL,
  `Actividad` varchar(255) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jud_de_incidencia_y_estadistica_delictiva`
--

CREATE TABLE `jud_de_incidencia_y_estadistica_delictiva` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `TipoReporte` varchar(255) NOT NULL,
  `Fecha` date NOT NULL,
  `Motivo` varchar(255) NOT NULL,
  `TipoViolencia` varchar(255) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `NombreBeneficiario` varchar(255) NOT NULL,
  `ApellidoPaterno` varchar(255) NOT NULL,
  `ApellidoMaterno` varchar(255) NOT NULL,
  `Sexo` enum('hombre','mujer','otro') NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Colonia` varchar(255) NOT NULL,
  `NoExterior` varchar(50) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Calle` varchar(255) DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jud_de_seguridad_ciudadana_y_de_transito`
--

CREATE TABLE `jud_de_seguridad_ciudadana_y_de_transito` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Actividad` varchar(50) NOT NULL,
  `Colonia` varchar(255) NOT NULL,
  `Meta` int(11) DEFAULT NULL,
  `AlcanceMensual` int(11) DEFAULT NULL,
  `AvancePorcentaje` decimal(5,2) DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jud_de_tianguis_y_via_publica`
--

CREATE TABLE `jud_de_tianguis_y_via_publica` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Dimension` varchar(50) NOT NULL,
  `Caracter` varchar(50) NOT NULL,
  `PuntoVenta` varchar(255) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juventudes_en_transformacion`
--

CREATE TABLE `juventudes_en_transformacion` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `DimensionPrograma` varchar(255) NOT NULL,
  `Actividad` varchar(255) DEFAULT NULL,
  `Observacion` text DEFAULT NULL,
  `Colectivo` varchar(255) DEFAULT NULL,
  `Acti` varchar(255) DEFAULT NULL,
  `NombreBeneficiario` varchar(255) NOT NULL,
  `ApellidoPaterno` varchar(255) NOT NULL,
  `ApellidoMaterno` varchar(255) NOT NULL,
  `Sexo` enum('hombre','mujer','otro') NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Colonia` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento_menor`
--

CREATE TABLE `mantenimiento_menor` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Actividad` varchar(255) NOT NULL,
  `Avance` decimal(5,2) NOT NULL,
  `Colonia` varchar(255) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp(),
  `Coordenadas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mantenimiento_menor`
--

INSERT INTO `mantenimiento_menor` (`ID`, `UsuarioID`, `DepartamentoID`, `FormularioID`, `Tipo`, `Actividad`, `Avance`, `Colonia`, `Direccion`, `FechaRegistro`, `Coordenadas`) VALUES
(1, 2, 3, 1, 'Reparación', 'Banquetas', '75.00', 'San Bartolo', 'Sm 12 Mz 32 Lt 08', '2024-01-10 05:00:00', NULL),
(2, 5, 2, 2, 'Reparación', 'Banquetas', '120.00', 'La Cañada', 'Sm 18 Mz 65 Lt 03', '2024-11-15 05:00:00', NULL),
(3, 3, 5, 3, 'Reparación', 'Banquetas', '90.00', 'Villa Flores', 'Sm 40 Mz 12 Lt 09', '2024-02-20 05:00:00', NULL),
(4, 1, 9, 1, 'Reparación', 'Banquetas', '65.00', 'El Prado', 'Sm 10 Mz 20 Lt 02', '2024-03-18 05:00:00', NULL),
(5, 7, 4, 2, 'Reparación', 'Banquetas', '110.00', 'Monte Bello', 'Sm 55 Mz 08 Lt 07', '2024-04-12 05:00:00', NULL),
(6, 6, 8, 3, 'Reparación', 'Banquetas', '80.00', 'Colinas Verdes', 'Sm 33 Mz 15 Lt 10', '2024-12-30 05:00:00', NULL),
(7, 2, 7, 1, 'Reparación', 'Banquetas', '100.00', 'Lomas Altas', 'Sm 05 Mz 47 Lt 06', '2024-01-25 05:00:00', NULL),
(8, 1, 2, 3, 'Reparación', 'Balizamiento', '95.00', 'Los Álamos', 'Sm 11 Mz 40 Lt 03', '2025-02-14 05:00:00', NULL),
(9, 2, 6, 2, 'Reparación', 'Balizamiento', '85.00', 'La Primavera', 'Sm 20 Mz 36 Lt 09', '2024-11-20 05:00:00', NULL),
(10, 3, 8, 1, 'Reparación', 'Balizamiento', '70.00', 'Bosques del Sol', 'Sm 45 Mz 10 Lt 01', '2025-03-05 05:00:00', NULL),
(11, 3, 3, 3, 'Reparación', 'Balizamiento', '120.00', 'Pinos del Sur', 'Sm 60 Mz 14 Lt 08', '2024-12-18 05:00:00', NULL),
(12, 4, 7, 2, 'Reparación', 'Balizamiento', '110.00', 'Vista Hermosa', 'Sm 08 Mz 21 Lt 05', '2025-01-11 05:00:00', NULL),
(13, 5, 4, 1, 'Reparación', 'Balizamiento', '100.00', 'El Paraíso', 'Sm 29 Mz 12 Lt 07', '2025-02-22 05:00:00', NULL),
(14, 6, 5, 3, 'Reparación', 'Balizamiento', '65.00', 'Granjas Verdes', 'Sm 03 Mz 05 Lt 10', '2024-12-25 05:00:00', NULL),
(15, 7, 9, 3, 'Reparación', 'Bacheo', '130.00', 'El Mirador', 'Sm 13 Mz 18 Lt 02', '2025-01-08 05:00:00', NULL),
(16, 1, 1, 1, 'Reparación', 'Bacheo', '75.00', 'Lomas del Río', 'Sm 09 Mz 22 Lt 05', '2025-02-15 05:00:00', NULL),
(17, 5, 2, 2, 'Reparación', 'Bacheo', '90.00', 'San Rafael', 'Sm 50 Mz 19 Lt 03', '2024-11-28 05:00:00', NULL),
(18, 2, 3, 3, 'Reparación', 'Bacheo', '105.00', 'Monte Escondido', 'Sm 27 Mz 07 Lt 08', '2025-03-10 05:00:00', NULL),
(19, 6, 8, 1, 'Reparación', 'Bacheo', '85.00', 'Valle Dorado', 'Sm 32 Mz 16 Lt 01', '2024-12-22 05:00:00', NULL),
(20, 3, 7, 2, 'Reparación', 'Bacheo', '140.00', 'Puerta del Sol', 'Sm 06 Mz 24 Lt 09', '2025-01-20 05:00:00', NULL),
(21, 2, 4, 3, 'Reparación', 'Bacheo', '95.00', 'Las Colinas', 'Sm 18 Mz 30 Lt 06', '2024-11-30 05:00:00', NULL),
(22, 4, 5, 1, 'Mantenimiento', 'Infraestructura de edificios públicos', '80.00', 'Horizontes', 'Sm 14 Mz 28 Lt 04', '2025-02-03 05:00:00', NULL),
(23, 5, 3, 2, 'Mantenimiento', 'Infraestructura de edificios públicos', '10.00', 'Villa del Mar', 'Sm 21 Mz 11 Lt 07', '2024-12-12 05:00:00', NULL),
(24, 6, 9, 3, 'Mantenimiento', 'Infraestructura de edificios públicos', '100.00', 'Rinconada', 'Sm 31 Mz 40 Lt 02', '2025-01-15 05:00:00', NULL),
(25, 7, 1, 1, 'Mantenimiento', 'Infraestructura de edificios públicos', '95.00', 'Alturas del Valle', 'Sm 07 Mz 35 Lt 10', '2025-03-01 05:00:00', NULL),
(26, 1, 6, 2, 'Mantenimiento', 'Infraestructura de edificios públicos', '20.00', 'Praderas', 'Sm 12 Mz 19 Lt 05', '2024-11-18 05:00:00', NULL),
(27, 2, 8, 3, 'Mantenimiento', 'Infraestructura de edificios públicos', '75.00', 'Río Verde', 'Sm 28 Mz 17 Lt 01', '2025-01-29 05:00:00', NULL),
(28, 3, 7, 1, 'Mantenimiento', 'Infraestructura de edificios públicos', '90.00', 'Cumbre Alta', 'Sm 34 Mz 09 Lt 06', '2025-02-17 05:00:00', NULL),
(29, 3, 3, 1, 'Mantenimiento', 'Infraestructura de centros culturales', '15.00', 'Valle Escondido', 'Sm 18 Mz 22 Lt 07', '2025-02-18 05:00:00', NULL),
(30, 5, 5, 2, 'Mantenimiento', 'Infraestructura de centros culturales', '80.00', 'Cerrito Lindo', 'Sm 22 Mz 10 Lt 03', '2024-12-22 05:00:00', NULL),
(31, 4, 8, 3, 'Mantenimiento', 'Infraestructura de centros culturales', '15.00', 'Altos de la Sierra', 'Sm 14 Mz 34 Lt 08', '2025-01-25 05:00:00', NULL),
(32, 1, 6, 1, 'Mantenimiento', 'Infraestructura de centros culturales', '95.00', 'La Campiña', 'Sm 09 Mz 13 Lt 05', '2024-11-30 05:00:00', NULL),
(33, 2, 4, 1, 'Mantenimiento', 'Infraestructura de centros culturales', '90.00', 'Villas del Sol', 'Sm 30 Mz 19 Lt 02', '2025-01-08 05:00:00', NULL),
(34, 3, 7, 2, 'Mantenimiento', 'Infraestructura de centros culturales', '20.00', 'Colinas Blancas', 'Sm 35 Mz 24 Lt 09', '2025-02-12 05:00:00', NULL),
(35, 4, 9, 3, 'Mantenimiento', 'Infraestructura de centros culturales', '85.00', 'Puerta del Cielo', 'Sm 25 Mz 11 Lt 06', '2024-12-15 05:00:00', NULL),
(36, 5, 2, 3, 'Matenimiento', 'Infraestructura de educativos', '100.00', 'Monte Claro', 'Sm 16 Mz 25 Lt 04', '2025-01-11 05:00:00', NULL),
(37, 6, 4, 2, 'Matenimiento', 'Infraestructura de educativos', '10.00', 'Loma Bonita', 'Sm 08 Mz 13 Lt 09', '2024-12-18 05:00:00', NULL),
(38, 7, 6, 3, 'Matenimiento', 'Infraestructura de educativos', '95.00', 'Jardines del Sur', 'Sm 23 Mz 17 Lt 05', '2025-02-02 05:00:00', NULL),
(39, 4, 9, 1, 'Matenimiento', 'Infraestructura de educativos', '75.00', 'Colinas de la Paz', 'Sm 12 Mz 08 Lt 01', '2024-11-28 05:00:00', NULL),
(40, 4, 1, 3, 'Matenimiento', 'Infraestructura de educativos', '30.00', 'Rincón del Valle', 'Sm 31 Mz 22 Lt 07', '2025-01-20 05:00:00', NULL),
(41, 5, 7, 1, 'Matenimiento', 'Infraestructura de educativos', '85.00', 'Las Haciendas', 'Sm 14 Mz 34 Lt 02', '2025-02-15 05:00:00', NULL),
(42, 1, 8, 2, 'Matenimiento', 'Infraestructura de educativos', '90.00', 'El Refugio', 'Sm 05 Mz 11 Lt 06', '2024-12-09 05:00:00', NULL),
(43, 2, 5, 2, 'Mantenimiento', 'Infraestructura de bibliotecas', '20.00', 'Bosque Real', 'Sm 20 Mz 15 Lt 03', '2025-01-30 05:00:00', NULL),
(44, 3, 3, 3, 'Mantenimiento', 'Infraestructura de bibliotecas', '75.00', 'Villas del Norte', 'Sm 12 Mz 17 Lt 09', '2024-12-14 05:00:00', NULL),
(45, 4, 6, 1, 'Mantenimiento', 'Infraestructura de bibliotecas', '40.00', 'Lomas del Lago', 'Sm 18 Mz 13 Lt 07', '2025-02-05 05:00:00', NULL),
(46, 5, 8, 2, 'Mantenimiento', 'Infraestructura de bibliotecas', '95.00', 'Paseos del Sol', 'Sm 09 Mz 30 Lt 01', '2024-11-22 05:00:00', NULL),
(47, 6, 2, 3, 'Mantenimiento', 'Infraestructura de bibliotecas', '10.00', 'Colinas Verdes', 'Sm 07 Mz 22 Lt 08', '2025-01-18 05:00:00', NULL),
(48, 7, 7, 1, 'Mantenimiento', 'Infraestructura de bibliotecas', '100.00', 'Puerta Dorada', 'Sm 16 Mz 35 Lt 05', '2025-02-10 05:00:00', NULL),
(49, 1, 9, 3, 'Mantenimiento', 'Infraestructura de bibliotecas', '85.00', 'Horizontes del Río', 'Sm 25 Mz 08 Lt 06', '2024-12-08 05:00:00', NULL),
(50, 5, 4, 1, 'Mantenimiento', 'Infraestructura de mercados', '25.00', 'Altos del Mirador', 'Sm 14 Mz 20 Lt 04', '2025-01-07 05:00:00', NULL),
(51, 6, 1, 2, 'Mantenimiento', 'Infraestructura de mercados', '90.00', 'Vistas del Valle', 'Sm 21 Mz 15 Lt 07', '2024-12-19 05:00:00', NULL),
(52, 1, 5, 3, 'Mantenimiento', 'Infraestructura de mercados', '10.00', 'Los Encinos', 'Sm 18 Mz 09 Lt 03', '2025-02-14 05:00:00', NULL),
(53, 2, 6, 2, 'Mantenimiento', 'Infraestructura de mercados', '80.00', 'La Primavera', 'Sm 07 Mz 13 Lt 01', '2024-11-21 05:00:00', NULL),
(54, 3, 8, 3, 'Mantenimiento', 'Infraestructura de mercados', '15.00', 'Monteverde', 'Sm 09 Mz 25 Lt 05', '2025-01-13 05:00:00', NULL),
(55, 4, 7, 1, 'Mantenimiento', 'Infraestructura de mercados', '30.00', 'Bosques del Norte', 'Sm 31 Mz 10 Lt 09', '2025-02-18 05:00:00', NULL),
(56, 5, 9, 2, 'Mantenimiento', 'Infraestructura de mercados', '95.00', 'Puerta de Hierro', 'Sm 12 Mz 17 Lt 06', '2024-12-10 05:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programassociales`
--

CREATE TABLE `programassociales` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrousuarios`
--

CREATE TABLE `registrousuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Contraseña` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrousuarios`
--

INSERT INTO `registrousuarios` (`ID`, `Nombre`, `Apellidos`, `Email`, `Contraseña`) VALUES
(1, 'admin', 'tlalpan', 'tlalpan22234443343443443@gmail.com', '$2y$10$Fl8btGeH27gm0Ax5g.jP1.y1ZaQcqZVWO8k1Pg.chvGxc4eRPdvXi'),
(2, 'dummy', 'uno', 'aws@gmail.com', '$2y$10$Syv7mMHuyh7B4EWsoTfS6ex3vhNMDTa.cY0oHlkyafIaTPQdWSJfS'),
(3, 'domi', '2', 'hpp@gmail.com', '$2y$10$lVfs68oFdvE.f/cSSUTKtuuEiqelpjvGpEGOKg1n7LX5AMyclbga2'),
(4, 'frida', 'lara', 'fridalara@gmail.com', '$2y$10$uJhlGykbAmEO7gQHn58DIe/ocOAKk6.gYjw3c2mqdZJ2X.mmQdlJO'),
(5, 'arca', 'dummy', 'arca@gmail.com', '$2y$10$E9LDTMQF94hYW0Rd1tNyYeHl6SD52FFEswvtwGL9JhREbsCNqUKxS'),
(6, 'Francisco Antonio', 'Hidalgo Alvarado', 'francisco.hidalgo.alvarado@gmail.com', '$2y$10$R3BEBQlhE/n.Jcgy0Y9IQ.GQPRG4geeNdaljJlt86WL9FKWcAdLCi'),
(7, 'Francois', 'Hidalgue', 'francantonihidalgo@gmail.com', '$2y$10$XIQf4.JA1AszQ0i0gNVtBO2VPimxC3gQEViQJzd8cNK5ebHGw6/6S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_banos_publicos`
--

CREATE TABLE `reporte_banos_publicos` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Mercado` varchar(255) NOT NULL,
  `NumeroServicios` int(11) NOT NULL,
  `Recaudacion` decimal(10,2) NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_giros`
--

CREATE TABLE `reporte_giros` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `UnidadTerritorial` varchar(255) NOT NULL,
  `Ubicacion` varchar(255) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Caracter` varchar(50) NOT NULL,
  `TipoGiro` varchar(255) NOT NULL,
  `PropietarioNombre` varchar(255) NOT NULL,
  `PropietarioApellidos` varchar(255) NOT NULL,
  `TipoNegocio` varchar(255) NOT NULL,
  `NumeroPermiso` int(11) NOT NULL,
  `ProgramaProteccionCivil` enum('Sí','No') NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_negocios`
--

CREATE TABLE `reporte_negocios` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Mercado` varchar(255) NOT NULL,
  `NombreNegocio` varchar(255) NOT NULL,
  `PropietarioNombre` varchar(255) NOT NULL,
  `PropietarioApellido` varchar(255) NOT NULL,
  `TipoNegocio` varchar(255) NOT NULL,
  `NumeroPermiso` int(11) NOT NULL,
  `ProgramaProteccionCivil` enum('Sí','No') NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_obras`
--

CREATE TABLE `reporte_obras` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Obra` varchar(255) NOT NULL,
  `UnidadTerritorial` int(11) DEFAULT NULL,
  `PermisoLicencia` varchar(50) NOT NULL,
  `TipoReporte` enum('fisico','financiero') NOT NULL,
  `DetallesAvanceFisico` text DEFAULT NULL,
  `AvanceFisico` decimal(5,2) DEFAULT NULL,
  `MontoTotalObra` decimal(15,2) DEFAULT NULL,
  `MontoEjecutado` decimal(15,2) DEFAULT NULL,
  `MontoPendiente` decimal(15,2) DEFAULT NULL,
  `ObservacionesFinancieras` text DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subdireccion_de_ordenamiento_urbano_y_movilidad`
--

CREATE TABLE `subdireccion_de_ordenamiento_urbano_y_movilidad` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Actividad` varchar(255) NOT NULL,
  `UnidadTerritorial` varchar(255) NOT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `DiagnosticoRubro` text DEFAULT NULL,
  `IntervencionRubro` varchar(255) DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subdireccion_de_prevencion_del_delito`
--

CREATE TABLE `subdireccion_de_prevencion_del_delito` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Dimension` varchar(50) NOT NULL,
  `NombreBeneficiario` varchar(255) NOT NULL,
  `ApellidoPaterno` varchar(255) DEFAULT NULL,
  `ApellidoMaterno` varchar(255) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Sexo` enum('hombre','mujer','otro') DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Actividad` varchar(255) NOT NULL,
  `Espacio` varchar(255) DEFAULT NULL,
  `Colonia` varchar(255) NOT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transformando_en_comunidad`
--

CREATE TABLE `transformando_en_comunidad` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `DimensionPrograma` varchar(255) NOT NULL,
  `Actividad` varchar(255) DEFAULT NULL,
  `Observacion` text DEFAULT NULL,
  `Colectivo` varchar(255) DEFAULT NULL,
  `Acti` varchar(255) DEFAULT NULL,
  `NombreBeneficiario` varchar(255) NOT NULL,
  `ApellidoPaterno` varchar(255) NOT NULL,
  `ApellidoMaterno` varchar(255) NOT NULL,
  `Sexo` enum('hombre','mujer','otro') NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Colonia` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariodepartamentos`
--

CREATE TABLE `usuariodepartamentos` (
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuariodepartamentos`
--

INSERT INTO `usuariodepartamentos` (`UsuarioID`, `DepartamentoID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 123),
(1, 124),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 129),
(1, 130),
(1, 131),
(1, 132),
(1, 133),
(1, 134),
(1, 135),
(1, 136),
(1, 137),
(1, 138),
(1, 139),
(1, 140),
(1, 141),
(1, 142),
(1, 143),
(1, 144),
(1, 145),
(1, 146),
(1, 147),
(1, 148),
(1, 149),
(1, 150),
(1, 151),
(1, 152),
(1, 153),
(1, 154),
(1, 155),
(1, 156),
(1, 157),
(1, 158),
(1, 159),
(1, 160),
(1, 161),
(1, 162),
(1, 163),
(1, 164),
(1, 165),
(1, 166),
(1, 167),
(1, 168),
(1, 169),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 177),
(1, 178),
(1, 179),
(1, 180),
(1, 181),
(1, 182),
(1, 183),
(1, 184),
(1, 185),
(1, 186),
(1, 187),
(1, 188),
(1, 189),
(1, 190),
(1, 191),
(1, 192),
(1, 193),
(1, 194),
(1, 195),
(1, 196),
(1, 197),
(1, 198),
(1, 199),
(1, 200),
(1, 201),
(1, 202),
(1, 203),
(1, 204),
(1, 205),
(1, 206),
(1, 207),
(1, 208),
(1, 209),
(1, 210),
(1, 211),
(1, 212),
(1, 213),
(1, 214),
(1, 215),
(1, 216),
(1, 217),
(1, 218),
(1, 219),
(1, 220),
(1, 221),
(1, 222),
(1, 223),
(1, 224),
(1, 225),
(1, 226),
(1, 227),
(1, 228),
(1, 229),
(1, 230),
(1, 231),
(1, 232),
(1, 233),
(1, 234),
(1, 235),
(1, 236),
(1, 237),
(1, 238),
(1, 239),
(1, 240),
(1, 241),
(1, 242),
(1, 243),
(1, 244),
(1, 245),
(1, 246),
(1, 247),
(1, 248),
(2, 197),
(3, 1),
(3, 3),
(3, 7),
(3, 27),
(3, 131),
(3, 132),
(3, 133),
(3, 135),
(3, 136),
(4, 183),
(4, 187),
(4, 193),
(4, 195),
(4, 198),
(5, 1),
(6, 1),
(7, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apoyo_para_el_bienestar_2025`
--
ALTER TABLE `apoyo_para_el_bienestar_2025`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `colonias`
--
ALTER TABLE `colonias`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `construyendo_salud_en_comunidad`
--
ALTER TABLE `construyendo_salud_en_comunidad`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `cuidar_y_ser_cuidado_para_el_bienestar_2025`
--
ALTER TABLE `cuidar_y_ser_cuidado_para_el_bienestar_2025`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `departamentoprogramas`
--
ALTER TABLE `departamentoprogramas`
  ADD PRIMARY KEY (`DepartamentoID`,`ProgramaID`),
  ADD KEY `ProgramaID` (`ProgramaID`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `formularios`
--
ALTER TABLE `formularios`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NombreFormulario` (`NombreFormulario`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `UsuarioID` (`UsuarioID`);

--
-- Indices de la tabla `fortalecimiento_para_el_cuidado_de_las_infancias`
--
ALTER TABLE `fortalecimiento_para_el_cuidado_de_las_infancias`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `judpanteones`
--
ALTER TABLE `judpanteones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `jud_colonias_y_asentamientos_humanos_irregulares`
--
ALTER TABLE `jud_colonias_y_asentamientos_humanos_irregulares`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `jud_de_centros_deportivos`
--
ALTER TABLE `jud_de_centros_deportivos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `jud_de_control_operativo_policial`
--
ALTER TABLE `jud_de_control_operativo_policial`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `jud_de_incidencia_y_estadistica_delictiva`
--
ALTER TABLE `jud_de_incidencia_y_estadistica_delictiva`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `jud_de_seguridad_ciudadana_y_de_transito`
--
ALTER TABLE `jud_de_seguridad_ciudadana_y_de_transito`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `jud_de_tianguis_y_via_publica`
--
ALTER TABLE `jud_de_tianguis_y_via_publica`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `juventudes_en_transformacion`
--
ALTER TABLE `juventudes_en_transformacion`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `mantenimiento_menor`
--
ALTER TABLE `mantenimiento_menor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `programassociales`
--
ALTER TABLE `programassociales`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `registrousuarios`
--
ALTER TABLE `registrousuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `reporte_banos_publicos`
--
ALTER TABLE `reporte_banos_publicos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `reporte_giros`
--
ALTER TABLE `reporte_giros`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `reporte_negocios`
--
ALTER TABLE `reporte_negocios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `reporte_obras`
--
ALTER TABLE `reporte_obras`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`),
  ADD KEY `fk_colonia` (`UnidadTerritorial`);

--
-- Indices de la tabla `subdireccion_de_ordenamiento_urbano_y_movilidad`
--
ALTER TABLE `subdireccion_de_ordenamiento_urbano_y_movilidad`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `subdireccion_de_prevencion_del_delito`
--
ALTER TABLE `subdireccion_de_prevencion_del_delito`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `transformando_en_comunidad`
--
ALTER TABLE `transformando_en_comunidad`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indices de la tabla `usuariodepartamentos`
--
ALTER TABLE `usuariodepartamentos`
  ADD PRIMARY KEY (`UsuarioID`,`DepartamentoID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apoyo_para_el_bienestar_2025`
--
ALTER TABLE `apoyo_para_el_bienestar_2025`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colonias`
--
ALTER TABLE `colonias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT de la tabla `construyendo_salud_en_comunidad`
--
ALTER TABLE `construyendo_salud_en_comunidad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuidar_y_ser_cuidado_para_el_bienestar_2025`
--
ALTER TABLE `cuidar_y_ser_cuidado_para_el_bienestar_2025`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `formularios`
--
ALTER TABLE `formularios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fortalecimiento_para_el_cuidado_de_las_infancias`
--
ALTER TABLE `fortalecimiento_para_el_cuidado_de_las_infancias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `judpanteones`
--
ALTER TABLE `judpanteones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jud_colonias_y_asentamientos_humanos_irregulares`
--
ALTER TABLE `jud_colonias_y_asentamientos_humanos_irregulares`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jud_de_centros_deportivos`
--
ALTER TABLE `jud_de_centros_deportivos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jud_de_control_operativo_policial`
--
ALTER TABLE `jud_de_control_operativo_policial`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jud_de_incidencia_y_estadistica_delictiva`
--
ALTER TABLE `jud_de_incidencia_y_estadistica_delictiva`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jud_de_seguridad_ciudadana_y_de_transito`
--
ALTER TABLE `jud_de_seguridad_ciudadana_y_de_transito`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jud_de_tianguis_y_via_publica`
--
ALTER TABLE `jud_de_tianguis_y_via_publica`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `juventudes_en_transformacion`
--
ALTER TABLE `juventudes_en_transformacion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mantenimiento_menor`
--
ALTER TABLE `mantenimiento_menor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de la tabla `programassociales`
--
ALTER TABLE `programassociales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registrousuarios`
--
ALTER TABLE `registrousuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `reporte_banos_publicos`
--
ALTER TABLE `reporte_banos_publicos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_giros`
--
ALTER TABLE `reporte_giros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_negocios`
--
ALTER TABLE `reporte_negocios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_obras`
--
ALTER TABLE `reporte_obras`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subdireccion_de_ordenamiento_urbano_y_movilidad`
--
ALTER TABLE `subdireccion_de_ordenamiento_urbano_y_movilidad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subdireccion_de_prevencion_del_delito`
--
ALTER TABLE `subdireccion_de_prevencion_del_delito`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transformando_en_comunidad`
--
ALTER TABLE `transformando_en_comunidad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apoyo_para_el_bienestar_2025`
--
ALTER TABLE `apoyo_para_el_bienestar_2025`
  ADD CONSTRAINT `apoyo_para_el_bienestar_2025_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `apoyo_para_el_bienestar_2025_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `apoyo_para_el_bienestar_2025_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `construyendo_salud_en_comunidad`
--
ALTER TABLE `construyendo_salud_en_comunidad`
  ADD CONSTRAINT `construyendo_salud_en_comunidad_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `construyendo_salud_en_comunidad_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `construyendo_salud_en_comunidad_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cuidar_y_ser_cuidado_para_el_bienestar_2025`
--
ALTER TABLE `cuidar_y_ser_cuidado_para_el_bienestar_2025`
  ADD CONSTRAINT `cuidar_y_ser_cuidado_para_el_bienestar_2025_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `cuidar_y_ser_cuidado_para_el_bienestar_2025_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `cuidar_y_ser_cuidado_para_el_bienestar_2025_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `departamentoprogramas`
--
ALTER TABLE `departamentoprogramas`
  ADD CONSTRAINT `departamentoprogramas_ibfk_1` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`),
  ADD CONSTRAINT `departamentoprogramas_ibfk_2` FOREIGN KEY (`ProgramaID`) REFERENCES `programassociales` (`ID`);

--
-- Filtros para la tabla `formularios`
--
ALTER TABLE `formularios`
  ADD CONSTRAINT `formularios_ibfk_1` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `formularios_ibfk_2` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `fortalecimiento_para_el_cuidado_de_las_infancias`
--
ALTER TABLE `fortalecimiento_para_el_cuidado_de_las_infancias`
  ADD CONSTRAINT `fortalecimiento_para_el_cuidado_de_las_infancias_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fortalecimiento_para_el_cuidado_de_las_infancias_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fortalecimiento_para_el_cuidado_de_las_infancias_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `judpanteones`
--
ALTER TABLE `judpanteones`
  ADD CONSTRAINT `judpanteones_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `judpanteones_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `judpanteones_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jud_colonias_y_asentamientos_humanos_irregulares`
--
ALTER TABLE `jud_colonias_y_asentamientos_humanos_irregulares`
  ADD CONSTRAINT `jud_colonias_y_asentamientos_humanos_irregulares_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_colonias_y_asentamientos_humanos_irregulares_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_colonias_y_asentamientos_humanos_irregulares_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jud_de_centros_deportivos`
--
ALTER TABLE `jud_de_centros_deportivos`
  ADD CONSTRAINT `jud_de_centros_deportivos_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_centros_deportivos_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_centros_deportivos_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jud_de_control_operativo_policial`
--
ALTER TABLE `jud_de_control_operativo_policial`
  ADD CONSTRAINT `jud_de_control_operativo_policial_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_control_operativo_policial_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_control_operativo_policial_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jud_de_incidencia_y_estadistica_delictiva`
--
ALTER TABLE `jud_de_incidencia_y_estadistica_delictiva`
  ADD CONSTRAINT `jud_de_incidencia_y_estadistica_delictiva_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_incidencia_y_estadistica_delictiva_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_incidencia_y_estadistica_delictiva_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jud_de_seguridad_ciudadana_y_de_transito`
--
ALTER TABLE `jud_de_seguridad_ciudadana_y_de_transito`
  ADD CONSTRAINT `jud_de_seguridad_ciudadana_y_de_transito_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_seguridad_ciudadana_y_de_transito_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_seguridad_ciudadana_y_de_transito_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jud_de_tianguis_y_via_publica`
--
ALTER TABLE `jud_de_tianguis_y_via_publica`
  ADD CONSTRAINT `jud_de_tianguis_y_via_publica_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_tianguis_y_via_publica_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_tianguis_y_via_publica_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `juventudes_en_transformacion`
--
ALTER TABLE `juventudes_en_transformacion`
  ADD CONSTRAINT `juventudes_en_transformacion_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `juventudes_en_transformacion_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `juventudes_en_transformacion_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mantenimiento_menor`
--
ALTER TABLE `mantenimiento_menor`
  ADD CONSTRAINT `mantenimiento_menor_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `mantenimiento_menor_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `mantenimiento_menor_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reporte_banos_publicos`
--
ALTER TABLE `reporte_banos_publicos`
  ADD CONSTRAINT `reporte_banos_publicos_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_banos_publicos_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_banos_publicos_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reporte_giros`
--
ALTER TABLE `reporte_giros`
  ADD CONSTRAINT `reporte_giros_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_giros_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_giros_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reporte_negocios`
--
ALTER TABLE `reporte_negocios`
  ADD CONSTRAINT `reporte_negocios_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_negocios_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_negocios_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reporte_obras`
--
ALTER TABLE `reporte_obras`
  ADD CONSTRAINT `fk_colonia` FOREIGN KEY (`UnidadTerritorial`) REFERENCES `colonias` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_obras_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_obras_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_obras_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subdireccion_de_ordenamiento_urbano_y_movilidad`
--
ALTER TABLE `subdireccion_de_ordenamiento_urbano_y_movilidad`
  ADD CONSTRAINT `subdireccion_de_ordenamiento_urbano_y_movilidad_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `subdireccion_de_ordenamiento_urbano_y_movilidad_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `subdireccion_de_ordenamiento_urbano_y_movilidad_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subdireccion_de_prevencion_del_delito`
--
ALTER TABLE `subdireccion_de_prevencion_del_delito`
  ADD CONSTRAINT `subdireccion_de_prevencion_del_delito_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `subdireccion_de_prevencion_del_delito_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `subdireccion_de_prevencion_del_delito_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `transformando_en_comunidad`
--
ALTER TABLE `transformando_en_comunidad`
  ADD CONSTRAINT `transformando_en_comunidad_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `transformando_en_comunidad_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `transformando_en_comunidad_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuariodepartamentos`
--
ALTER TABLE `usuariodepartamentos`
  ADD CONSTRAINT `usuariodepartamentos_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`),
  ADD CONSTRAINT `usuariodepartamentos_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
