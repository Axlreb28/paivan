-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2025 at 03:27 PM
-- Server version: 10.3.39-MariaDB-0+deb10u2
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tlalpandb`
--

-- --------------------------------------------------------

--
-- Table structure for table `apoyo_para_el_bienestar_2025`
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
-- Table structure for table `construyendo_salud_en_comunidad`
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
-- Table structure for table `cuidar_y_ser_cuidado_para_el_bienestar_2025`
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

-- --------------------------------------------------------

--
-- Table structure for table `departamentoprogramas`
--

CREATE TABLE `departamentoprogramas` (
  `DepartamentoID` int(11) NOT NULL,
  `ProgramaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departamentos`
--

CREATE TABLE `departamentos` (
  `ID` int(11) NOT NULL,
  `Departamento` varchar(150) DEFAULT NULL,
  `Contraseña` varchar(50) DEFAULT NULL,
  `VistaEspecial` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departamentos`
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
-- Table structure for table `formularios`
--

CREATE TABLE `formularios` (
  `ID` int(11) NOT NULL,
  `NombreFormulario` varchar(150) DEFAULT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `formularios`
--

INSERT INTO `formularios` (`ID`, `NombreFormulario`, `UsuarioID`, `DepartamentoID`) VALUES
(1, 'Formulario 1', 1, 3),
(2, 'Formulario 2', 2, 2),
(3, 'Formulario 3', 3, 5),
(4, 'Formulario 4', 4, 4),
(5, 'Formulario 5', 5, 6),
(6, 'Cuidar_y_ser_cuidado_para_el_bienestar_2025', 1, 197),
(7, 'Transformando_en_comunidad', 1, 197),
(8, 'Fortalecimiento_para_el_cuidado_y_desarrollo_integral_de_las_infancias', 1, 197),
(9, 'Apoyo_para_el_bienestar_2025', 1, 197),
(10, 'Juventudes_en_transformacion', 1, 197);

-- --------------------------------------------------------

--
-- Table structure for table `fortalecimiento_para_el_cuidado_de_las_infancias`
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
-- Table structure for table `judpanteones`
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
-- Table structure for table `jud_colonias_y_asentamientos_humanos_irregulares`
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
-- Table structure for table `jud_de_centros_deportivos`
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
-- Table structure for table `jud_de_control_operativo_policial`
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
-- Table structure for table `jud_de_incidencia_y_estadistica_delictiva`
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
-- Table structure for table `jud_de_seguridad_ciudadana_y_de_transito`
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
-- Table structure for table `jud_de_tianguis_y_via_publica`
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
-- Table structure for table `juventudes_en_transformacion`
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
-- Table structure for table `mantenimiento_menor`
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
-- Dumping data for table `mantenimiento_menor`
--

INSERT INTO `mantenimiento_menor` (`ID`, `UsuarioID`, `DepartamentoID`, `FormularioID`, `Tipo`, `Actividad`, `Avance`, `Colonia`, `Direccion`, `FechaRegistro`, `Coordenadas`) VALUES
(29, 2, 3, 1, 'Reparación', 'Banquetas', 75.00, 'San Bartolo', 'Sm 12 Mz 32 Lt 08', '2024-01-10 05:00:00', '19.274257, -99.204354'),
(30, 5, 2, 2, 'Reparación', 'Banquetas', 120.00, 'La Cañada', 'Sm 18 Mz 65 Lt 03', '2024-11-15 05:00:00', '19.261830, -99.193460'),
(31, 3, 5, 3, 'Reparación', 'Banquetas', 90.00, 'Villa Flores', 'Sm 40 Mz 12 Lt 09', '2024-02-20 05:00:00', '19.308949, -99.169054'),
(32, 1, 9, 1, 'Reparación', 'Banquetas', 65.00, 'El Prado', 'Sm 10 Mz 20 Lt 02', '2024-03-18 05:00:00', '19.216057, -99.203390'),
(33, 7, 4, 2, 'Reparación', 'Banquetas', 110.00, 'Monte Bello', 'Sm 55 Mz 08 Lt 07', '2024-04-12 05:00:00', '19.227038, -99.175424'),
(34, 6, 8, 3, 'Reparación', 'Banquetas', 80.00, 'Colinas Verdes', 'Sm 33 Mz 15 Lt 10', '2024-12-30 05:00:00', '19.281720, -99.185046'),
(35, 2, 7, 1, 'Reparación', 'Banquetas', 100.00, 'Lomas Altas', 'Sm 05 Mz 47 Lt 06', '2024-01-25 05:00:00', '19.231832, -99.169562'),
(36, 1, 2, 3, 'Reparación', 'Balizamiento', 95.00, 'Los Álamos', 'Sm 11 Mz 40 Lt 03', '2025-02-14 05:00:00', '19.221822, -99.188764'),
(37, 2, 6, 2, 'Reparación', 'Balizamiento', 85.00, 'La Primavera', 'Sm 20 Mz 36 Lt 09', '2024-11-20 05:00:00', '19.260634, -99.192950'),
(38, 3, 8, 1, 'Reparación', 'Balizamiento', 70.00, 'Bosques del Sol', 'Sm 45 Mz 10 Lt 01', '2025-03-05 05:00:00', '19.208150, -99.199673'),
(39, 3, 3, 3, 'Reparación', 'Balizamiento', 120.00, 'Pinos del Sur', 'Sm 60 Mz 14 Lt 08', '2024-12-18 05:00:00', '19.291651, -99.189730'),
(40, 4, 7, 2, 'Reparación', 'Balizamiento', 110.00, 'Vista Hermosa', 'Sm 08 Mz 21 Lt 05', '2025-01-11 05:00:00', '19.260517, -99.190317'),
(41, 5, 4, 1, 'Reparación', 'Balizamiento', 100.00, 'El Paraíso', 'Sm 29 Mz 12 Lt 07', '2025-02-22 05:00:00', '19.237459, -99.190960'),
(42, 6, 5, 3, 'Reparación', 'Balizamiento', 65.00, 'Granjas Verdes', 'Sm 03 Mz 05 Lt 10', '2024-12-25 05:00:00', '19.299561, -99.197890'),
(43, 7, 9, 3, 'Reparación', 'Bacheo', 130.00, 'El Mirador', 'Sm 13 Mz 18 Lt 02', '2025-01-08 05:00:00', '19.257030, -99.173763'),
(44, 1, 1, 1, 'Reparación', 'Bacheo', 75.00, 'Lomas del Río', 'Sm 09 Mz 22 Lt 05', '2025-02-15 05:00:00', '19.210020, -99.202984'),
(45, 5, 2, 2, 'Reparación', 'Bacheo', 90.00, 'San Rafael', 'Sm 50 Mz 19 Lt 03', '2024-11-28 05:00:00', '19.249619, -99.175324'),
(46, 2, 3, 3, 'Reparación', 'Bacheo', 105.00, 'Monte Escondido', 'Sm 27 Mz 07 Lt 08', '2025-03-10 05:00:00', '19.215079, -99.186803'),
(47, 6, 8, 1, 'Reparación', 'Bacheo', 85.00, 'Valle Dorado', 'Sm 32 Mz 16 Lt 01', '2024-12-22 05:00:00', '19.302432, -99.203837'),
(48, 3, 7, 2, 'Reparación', 'Bacheo', 140.00, 'Puerta del Sol', 'Sm 06 Mz 24 Lt 09', '2025-01-20 05:00:00', '19.292993, -99.174186'),
(49, 2, 4, 3, 'Reparación', 'Bacheo', 95.00, 'Las Colinas', 'Sm 18 Mz 30 Lt 06', '2024-11-30 05:00:00', '19.317475, -99.207499'),
(50, 4, 5, 1, 'Mantenimiento', 'Infraestructura de edificios públicos', 80.00, 'Horizontes', 'Sm 14 Mz 28 Lt 04', '2025-02-03 05:00:00', '19.290633, -99.171223'),
(51, 5, 3, 2, 'Mantenimiento', 'Infraestructura de edificios públicos', 10.00, 'Villa del Mar', 'Sm 21 Mz 11 Lt 07', '2024-12-12 05:00:00', '19.247150, -99.176217'),
(52, 6, 9, 3, 'Mantenimiento', 'Infraestructura de edificios públicos', 100.00, 'Rinconada', 'Sm 31 Mz 40 Lt 02', '2025-01-15 05:00:00', '19.212663, -99.189616'),
(53, 7, 1, 1, 'Mantenimiento', 'Infraestructura de edificios públicos', 95.00, 'Alturas del Valle', 'Sm 07 Mz 35 Lt 10', '2025-03-01 05:00:00', '19.278737, -99.199250'),
(54, 1, 6, 2, 'Mantenimiento', 'Infraestructura de edificios públicos', 20.00, 'Praderas', 'Sm 12 Mz 19 Lt 05', '2024-11-18 05:00:00', '19.304538, -99.161709'),
(55, 2, 8, 3, 'Mantenimiento', 'Infraestructura de edificios públicos', 75.00, 'Río Verde', 'Sm 28 Mz 17 Lt 01', '2025-01-29 05:00:00', '19.310085, -99.161725'),
(56, 3, 7, 1, 'Mantenimiento', 'Infraestructura de edificios públicos', 90.00, 'Cumbre Alta', 'Sm 34 Mz 09 Lt 06', '2025-02-17 05:00:00', '19.293275, -99.199883'),
(57, 3, 3, 1, 'Mantenimiento', 'Infraestructura de centros culturales', 15.00, 'Valle Escondido', 'Sm 18 Mz 22 Lt 07', '2025-02-18 05:00:00', '19.253966, -99.174747'),
(58, 5, 5, 2, 'Mantenimiento', 'Infraestructura de centros culturales', 80.00, 'Cerrito Lindo', 'Sm 22 Mz 10 Lt 03', '2024-12-22 05:00:00', '19.208380, -99.203758'),
(59, 4, 8, 3, 'Mantenimiento', 'Infraestructura de centros culturales', 15.00, 'Altos de la Sierra', 'Sm 14 Mz 34 Lt 08', '2025-01-25 05:00:00', '19.246021, -99.181177'),
(60, 1, 6, 1, 'Mantenimiento', 'Infraestructura de centros culturales', 95.00, 'La Campiña', 'Sm 09 Mz 13 Lt 05', '2024-11-30 05:00:00', '19.271487, -99.191044'),
(61, 2, 4, 1, 'Mantenimiento', 'Infraestructura de centros culturales', 90.00, 'Villas del Sol', 'Sm 30 Mz 19 Lt 02', '2025-01-08 05:00:00', '19.306556, -99.181740'),
(62, 3, 7, 2, 'Mantenimiento', 'Infraestructura de centros culturales', 20.00, 'Colinas Blancas', 'Sm 35 Mz 24 Lt 09', '2025-02-12 05:00:00', '19.303686, -99.166173'),
(63, 4, 9, 3, 'Mantenimiento', 'Infraestructura de centros culturales', 85.00, 'Puerta del Cielo', 'Sm 25 Mz 11 Lt 06', '2024-12-15 05:00:00', '19.263535, -99.204128'),
(64, 5, 2, 3, 'Matenimiento', 'Infraestructura de educativos', 100.00, 'Monte Claro', 'Sm 16 Mz 25 Lt 04', '2025-01-11 05:00:00', NULL),
(65, 6, 4, 2, 'Matenimiento', 'Infraestructura de educativos', 10.00, 'Loma Bonita', 'Sm 08 Mz 13 Lt 09', '2024-12-18 05:00:00', NULL),
(66, 7, 6, 3, 'Matenimiento', 'Infraestructura de educativos', 95.00, 'Jardines del Sur', 'Sm 23 Mz 17 Lt 05', '2025-02-02 05:00:00', NULL),
(67, 4, 9, 1, 'Matenimiento', 'Infraestructura de educativos', 75.00, 'Colinas de la Paz', 'Sm 12 Mz 08 Lt 01', '2024-11-28 05:00:00', NULL),
(68, 4, 1, 3, 'Matenimiento', 'Infraestructura de educativos', 30.00, 'Rincón del Valle', 'Sm 31 Mz 22 Lt 07', '2025-01-20 05:00:00', NULL),
(69, 5, 7, 1, 'Matenimiento', 'Infraestructura de educativos', 85.00, 'Las Haciendas', 'Sm 14 Mz 34 Lt 02', '2025-02-15 05:00:00', NULL),
(70, 1, 8, 2, 'Matenimiento', 'Infraestructura de educativos', 90.00, 'El Refugio', 'Sm 05 Mz 11 Lt 06', '2024-12-09 05:00:00', NULL),
(71, 2, 5, 2, 'Mantenimiento', 'Infraestructura de bibliotecas', 20.00, 'Bosque Real', 'Sm 20 Mz 15 Lt 03', '2025-01-30 05:00:00', '19.296491, -99.165364'),
(72, 3, 3, 3, 'Mantenimiento', 'Infraestructura de bibliotecas', 75.00, 'Villas del Norte', 'Sm 12 Mz 17 Lt 09', '2024-12-14 05:00:00', '19.294019, -99.187273'),
(73, 4, 6, 1, 'Mantenimiento', 'Infraestructura de bibliotecas', 40.00, 'Lomas del Lago', 'Sm 18 Mz 13 Lt 07', '2025-02-05 05:00:00', '19.280440, -99.202408'),
(74, 5, 8, 2, 'Mantenimiento', 'Infraestructura de bibliotecas', 95.00, 'Paseos del Sol', 'Sm 09 Mz 30 Lt 01', '2024-11-22 05:00:00', '19.264688, -99.192803'),
(75, 6, 2, 3, 'Mantenimiento', 'Infraestructura de bibliotecas', 10.00, 'Colinas Verdes', 'Sm 07 Mz 22 Lt 08', '2025-01-18 05:00:00', '19.307607, -99.174076'),
(76, 7, 7, 1, 'Mantenimiento', 'Infraestructura de bibliotecas', 100.00, 'Puerta Dorada', 'Sm 16 Mz 35 Lt 05', '2025-02-10 05:00:00', '19.274843, -99.204720'),
(77, 1, 9, 3, 'Mantenimiento', 'Infraestructura de bibliotecas', 85.00, 'Horizontes del Río', 'Sm 25 Mz 08 Lt 06', '2024-12-08 05:00:00', '19.256049, -99.205500'),
(78, 5, 4, 1, 'Mantenimiento', 'Infraestructura de mercados', 25.00, 'Altos del Mirador', 'Sm 14 Mz 20 Lt 04', '2025-01-07 05:00:00', '19.303855, -99.194511'),
(79, 6, 1, 2, 'Mantenimiento', 'Infraestructura de mercados', 90.00, 'Vistas del Valle', 'Sm 21 Mz 15 Lt 07', '2024-12-19 05:00:00', '19.281308, -99.178720'),
(80, 1, 5, 3, 'Mantenimiento', 'Infraestructura de mercados', 10.00, 'Los Encinos', 'Sm 18 Mz 09 Lt 03', '2025-02-14 05:00:00', '19.302653, -99.177583'),
(81, 2, 6, 2, 'Mantenimiento', 'Infraestructura de mercados', 80.00, 'La Primavera', 'Sm 07 Mz 13 Lt 01', '2024-11-21 05:00:00', '19.251129, -99.198094'),
(82, 3, 8, 3, 'Mantenimiento', 'Infraestructura de mercados', 15.00, 'Monteverde', 'Sm 09 Mz 25 Lt 05', '2025-01-13 05:00:00', '19.290083, -99.198030'),
(83, 4, 7, 1, 'Mantenimiento', 'Infraestructura de mercados', 30.00, 'Bosques del Norte', 'Sm 31 Mz 10 Lt 09', '2025-02-18 05:00:00', '19.283919, -99.162230'),
(84, 5, 9, 2, 'Mantenimiento', 'Infraestructura de mercados', 95.00, 'Puerta de Hierro', 'Sm 12 Mz 17 Lt 06', '2024-12-10 05:00:00', '19.256213, -99.182599'),
(85, 1, 3, 2, 'Instalacion', 'Hidrosanitaria', 100.00, 'La Magdalena Contreras', 'Calle de los Encinos 45', '2024-01-10 05:00:00', '19.210116, -99.180085'),
(86, 2, 4, 1, 'Instalacion', 'Bombeo', 55.00, 'San Andrés Totoltepec', 'Av. de los Olivos 123', '2024-02-10 05:00:00', '19.281213, -99.172213'),
(87, 3, 2, 5, 'Instalacion', 'Sistemas electricos', 60.00, 'Nochebuena', 'Calle del Sol 78', '2024-03-10 05:00:00', '19.264515, -99.183781'),
(88, 4, 6, 3, 'Instalacion', 'Albañileria', 70.00, 'San Juan Tepepan', 'Callejón de la Luna 52', '2024-04-10 05:00:00', '19.297363, -99.174423'),
(89, 5, 1, 9, 'Instalacion', 'Pintura', 50.00, 'Pueblo de los Reyes', 'Calle de la Paz 19', '2024-05-10 05:00:00', '19.301757, -99.192511'),
(90, 6, 3, 4, 'Instalacion', 'Resanado', 80.00, 'Parques de la Herradura', 'Avenida Reforma 98', '2024-06-10 05:00:00', '19.309610, -99.170399'),
(91, 7, 5, 2, 'Instalacion', 'Impermeabilización', 60.00, 'Hacienda de Coyoacán', 'Calle del Río 34', '2024-07-10 05:00:00', '19.309277, -99.187490'),
(92, 8, 7, 8, 'Instalacion', 'Herrería', 30.00, 'Villa Coapa', 'Avenida del Bosque 56', '2024-01-10 05:00:00', '19.232277, -99.161218'),
(93, 9, 8, 6, 'Instalacion', 'Hidrosanitaria', 50.00, 'Lomas de Padierna', 'Avenida Nacional 12', '2024-01-10 05:00:00', '19.312270, -99.158232'),
(94, 1, 2, 7, 'Instalacion', 'Bombeo', 65.00, 'San Pedro Mártir', 'Calle de los Pinos 23', '2024-01-10 05:00:00', '19.215140, -99.187941'),
(95, 2, 3, 1, 'Instalacion', 'Sistemas electricos', 75.00, 'La Cañada', 'Calle del Sol 67', '2024-01-10 05:00:00', '19.289729, -99.179293'),
(96, 3, 4, 2, 'Instalacion', 'Albañileria', 85.00, 'Las Águilas', 'Calle Nueva 8', '2024-01-10 05:00:00', '19.271092, -99.197594'),
(97, 4, 5, 3, 'Instalacion', 'Pintura', 90.00, 'La Fama', 'Avenida Central 3', '2024-01-10 05:00:00', '19.235689, -99.173152'),
(98, 5, 6, 4, 'Instalacion', 'Resanado', 20.00, 'El Seminario', 'Calle de los Árboles 44', '2024-01-10 05:00:00', '19.280764, -99.194036'),
(99, 6, 7, 5, 'Instalacion', 'Impermeabilización', 40.00, 'Los Olivos', 'Avenida de los Héroes 100', '2024-01-10 05:00:00', '19.245817, -99.160810'),
(100, 7, 8, 6, 'Instalacion', 'Herrería', 30.00, 'Parque de los Venados', 'Calle Principal 82', '2024-01-10 05:00:00', '19.276142, -99.191567'),
(101, 8, 9, 7, 'Instalacion', 'Hidrosanitaria', 60.00, 'Santa Ursula', 'Calle del Lago 50', '2024-01-10 05:00:00', '19.286843, -99.174975'),
(102, 9, 1, 8, 'Instalacion', 'Bombeo', 45.00, 'San Miguel Topilejo', 'Avenida de la Cima 29', '2024-01-10 05:00:00', '19.217241, -99.182936'),
(103, 1, 3, 9, 'Instalacion', 'Sistemas electricos', 65.00, 'Chimalcoyoc', 'Calle del Bosque 75', '2024-01-10 05:00:00', '19.228485, -99.183500'),
(104, 2, 4, 1, 'Instalacion', 'Albañileria', 80.00, 'San Andrés', 'Calle de la Calera 14', '2024-01-10 05:00:00', '19.298549, -99.172572'),
(105, 3, 5, 2, 'Instalacion', 'Pintura', 90.00, 'Tepepan', 'Avenida México 61', '2024-01-10 05:00:00', '19.208563, -99.159868'),
(106, 4, 6, 3, 'Instalacion', 'Resanado', 30.00, 'Parques de la Fama', 'Calle de las Aguas 99', '2024-01-10 05:00:00', '19.288262, -99.166845'),
(107, 5, 7, 4, 'Instalacion', 'Impermeabilización', 55.00, 'Villa Coapa', 'Avenida Altavista 45', '2024-01-10 05:00:00', '19.302415, -99.163747'),
(108, 6, 8, 5, 'Instalacion', 'Herrería', 70.00, 'San Bartolo', 'Callejón de los Árboles 25', '2024-01-10 05:00:00', '19.294033, -99.192093'),
(109, 7, 9, 6, 'Instalacion', 'Hidrosanitaria', 40.00, 'La Magdalena Contreras', 'Calle de los Pinos 67', '2024-01-10 05:00:00', '19.227384, -99.158532'),
(110, 8, 1, 7, 'Instalacion', 'Bombeo', 50.00, 'San Andrés Totoltepec', 'Calle de las Flores 32', '2024-01-10 05:00:00', '19.246493, -99.165782'),
(111, 9, 2, 8, 'Instalacion', 'Sistemas electricos', 60.00, 'Nochebuena', 'Avenida de la Luz 101', '2024-01-10 05:00:00', '19.219417, -99.205569'),
(112, 1, 3, 9, 'Instalacion', 'Albañileria', 55.00, 'San Juan Tepepan', 'Callejón de la Luna 45', '2024-01-10 05:00:00', '19.302989, -99.196272'),
(113, 2, 4, 1, 'Instalacion', 'Pintura', 75.00, 'Pueblo de los Reyes', 'Calle de la Paz 45', '2024-01-10 05:00:00', '19.264544, -99.161540'),
(114, 3, 5, 2, 'Instalacion', 'Resanado', 90.00, 'Parques de la Herradura', 'Avenida Reforma 100', '2024-01-10 05:00:00', '19.211930, -99.185312'),
(115, 4, 6, 3, 'Instalacion', 'Impermeabilización', 80.00, 'Hacienda de Coyoacán', 'Calle del Río 50', '2024-01-10 05:00:00', '19.218279, -99.199566'),
(116, 5, 7, 4, 'Instalacion', 'Herrería', 70.00, 'Villa Coapa', 'Avenida del Bosque 70', '2024-01-10 05:00:00', '19.262432, -99.206455'),
(117, 6, 8, 5, 'Instalacion', 'Hidrosanitaria', 90.00, 'Lomas de Padierna', 'Avenida Nacional 24', '2024-01-10 05:00:00', '19.274197, -99.159050'),
(118, 7, 9, 6, 'Instalacion', 'Bombeo', 60.00, 'La Cañada', 'Calle de los Pinos 89', '2024-01-10 05:00:00', '19.210358, -99.196354'),
(119, 8, 1, 7, 'Instalacion', 'Sistemas electricos', 55.00, 'San Andrés', 'Calle de la Calera 25', '2024-01-10 05:00:00', '19.211535, -99.181769'),
(120, 9, 2, 8, 'Instalacion', 'Albañileria', 65.00, 'Tepepan', 'Calle México 10', '2024-01-10 05:00:00', '19.258438, -99.168926'),
(121, 1, 3, 9, 'Instalacion', 'Pintura', 85.00, 'Las Águilas', 'Calle Nueva 34', '2024-01-10 05:00:00', '19.259001, -99.206175'),
(122, 2, 4, 1, 'Instalacion', 'Resanado', 70.00, 'La Fama', 'Avenida Central 10', '2024-01-10 05:00:00', '19.287571, -99.179494'),
(123, 3, 5, 2, 'Instalacion', 'Impermeabilización', 100.00, 'El Seminario', 'Calle de los Árboles 18', '2024-01-10 05:00:00', '19.275352, -99.187308'),
(124, 4, 6, 3, 'Instalacion', 'Herrería', 50.00, 'Los Olivos', 'Avenida de los Héroes 25', '2024-01-10 05:00:00', '19.226050, -99.175915'),
(125, 5, 7, 4, 'Instalacion', 'Hidrosanitaria', 65.00, 'Parque de los Venados', 'Calle Principal 45', '2024-01-10 05:00:00', '19.279288, -99.189102'),
(126, 6, 8, 5, 'Instalacion', 'Bombeo', 75.00, 'San Bartolo', 'Callejón de los Árboles 88', '2024-01-10 05:00:00', '19.304519, -99.192198'),
(127, 7, 9, 6, 'Instalacion', 'Sistemas electricos', 45.00, 'San Miguel Topilejo', 'Avenida Nacional 22', '2024-01-10 05:00:00', '19.304766, -99.182346'),
(128, 8, 1, 7, 'Instalacion', 'Albañileria', 55.00, 'Chimalcoyoc', 'Calle del Bosque 99', '2024-01-10 05:00:00', '19.302392, -99.167297'),
(129, 9, 2, 8, 'Instalacion', 'Pintura', 85.00, 'San Juan Tepepan', 'Callejón de la Luna 75', '2024-01-10 05:00:00', '19.255056, -99.170027'),
(130, 1, 3, 9, 'Instalacion', 'Resanado', 50.00, 'Pueblo de los Reyes', 'Calle de la Paz 60', '2024-01-10 05:00:00', '19.257030, -99.207349'),
(131, 2, 4, 1, 'Instalacion', 'Impermeabilización', 40.00, 'Parques de la Herradura', 'Avenida Reforma 25', '2024-01-10 05:00:00', '19.280569, -99.191888'),
(132, 3, 5, 2, 'Instalacion', 'Herrería', 60.00, 'Hacienda de Coyoacán', 'Calle del Río 85', '2024-01-10 05:00:00', '19.270031, -99.162221'),
(133, 4, 6, 3, 'Instalacion', 'Hidrosanitaria', 45.00, 'Villa Coapa', 'Avenida del Bosque 40', '2024-01-10 05:00:00', '19.297976, -99.187710'),
(134, 5, 7, 4, 'Instalacion', 'Bombeo', 70.00, 'Lomas de Padierna', 'Avenida Nacional 30', '2024-01-10 05:00:00', '19.263762, -99.189002'),
(135, 6, 8, 5, 'Instalacion', 'Sistemas electricos', 60.00, 'La Magdalena Contreras', 'Calle de los Pinos 50', '2024-01-10 05:00:00', '19.242192, -99.184148'),
(136, 7, 9, 6, 'Instalacion', 'Albañileria', 80.00, 'La Cañada', 'Calle de los Olivos 20', '2024-01-10 05:00:00', '19.250298, -99.180289'),
(137, 8, 1, 7, 'Instalacion', 'Pintura', 45.00, 'San Andrés Totoltepec', 'Av. de los Olivos 45', '2024-01-10 05:00:00', '19.268424, -99.200668'),
(138, 9, 2, 8, 'Instalacion', 'Resanado', 60.00, 'Nochebuena', 'Calle del Sol 65', '2024-01-10 05:00:00', '19.209878, -99.172591'),
(139, 1, 3, 9, 'Instalacion', 'Impermeabilización', 50.00, 'San Juan Tepepan', 'Callejón de la Luna 22', '2024-01-10 05:00:00', '19.254364, -99.205718'),
(140, 2, 4, 1, 'Instalacion', 'Herrería', 70.00, 'Pueblo de los Reyes', 'Calle de la Paz 52', '2024-01-10 05:00:00', '19.306512, -99.187819'),
(141, 3, 5, 2, 'Instalacion', 'Hidrosanitaria', 65.00, 'Parques de la Herradura', 'Avenida Reforma 77', '2024-01-10 05:00:00', '19.236951, -99.199607'),
(142, 4, 6, 3, 'Instalacion', 'Bombeo', 80.00, 'Hacienda de Coyoacán', 'Calle del Río 12', '2024-01-10 05:00:00', '19.315971, -99.184655'),
(143, 5, 7, 4, 'Instalacion', 'Sistemas electricos', 40.00, 'Villa Coapa', 'Avenida del Bosque 35', '2024-01-10 05:00:00', '19.243379, -99.194491'),
(144, 6, 8, 5, 'Instalacion', 'Albañileria', 60.00, 'Lomas de Padierna', 'Avenida Nacional 14', '2024-01-10 05:00:00', '19.242966, -99.165923'),
(145, 7, 9, 6, 'Instalacion', 'Pintura', 55.00, 'La Magdalena Contreras', 'Calle de los Pinos 15', '2024-01-10 05:00:00', '19.228445, -99.184627'),
(146, 8, 1, 7, 'Instalacion', 'Resanado', 45.00, 'La Cañada', 'Calle de los Olivos 34', '2024-01-10 05:00:00', '19.286264, -99.197109'),
(147, 9, 2, 8, 'Instalacion', 'Impermeabilización', 60.00, 'San Andrés Totoltepec', 'Av. de los Olivos 34', '2024-01-10 05:00:00', '19.305509, -99.165925'),
(148, 1, 3, 9, 'Instalacion', 'Herrería', 55.00, 'Nochebuena', 'Calle del Sol 45', '2024-01-10 05:00:00', '19.260798, -99.161094'),
(149, 2, 4, 1, 'Instalacion', 'Hidrosanitaria', 65.00, 'San Juan Tepepan', 'Callejón de la Luna 89', '2024-01-10 05:00:00', '19.228073, -99.199962'),
(150, 3, 5, 2, 'Instalacion', 'Bombeo', 75.00, 'Pueblo de los Reyes', 'Calle de la Paz 78', '2024-01-10 05:00:00', '19.228699, -99.181934'),
(151, 1, 1, 1, 'Reparación', 'Hidrosanitaria', 10.00, 'LA PRIMAVERA', 'Sm 12 Mz 34 Lt 01', '2020-04-22 05:00:00', '19.207591, -99.207298'),
(152, 4, 3, 2, 'Reparación', 'Bombeo', 20.00, 'LOS PASTORES', 'Av. Las Flores 7', '2021-03-15 05:00:00', '19.209453, -99.203669'),
(153, 7, 8, 5, 'Reparación', 'Sistemas electricos', 30.00, 'LA TORTUGA XOLALPA-HCO COLEGIO MILITAR', 'Callejón del Sol 18', '2022-09-10 05:00:00', '19.243780, -99.186537'),
(154, 2, 1, 4, 'Reparación', 'Albañilería', 40.00, 'JARDINES EN LA MONTAA', 'Av. Tepepan 2', '2020-12-05 05:00:00', '19.219249, -99.193685'),
(155, 3, 9, 1, 'Reparación', 'Pintura', 50.00, 'SAN MIGUEL TEHUISCO-LOS ANGELES-AYOMETITLA', 'Calle Real 20', '2021-06-17 05:00:00', '19.214219, -99.183675'),
(156, 5, 4, 8, 'Reparación', 'Resanado', 60.00, 'FUENTES DEL PEDREGAL', 'Calle Los Robles 6', '2022-10-12 05:00:00', '19.229419, -99.179159'),
(157, 8, 6, 3, 'Reparación', 'Impermeabilización', 70.00, 'RINCONADA (U HAB)', 'Calle de la Loma 9', '2023-05-30 05:00:00', '19.233491, -99.183452'),
(158, 9, 7, 2, 'Reparación', 'Herrería', 80.00, 'JARDINES DEL AJUSCO', 'Av. Periférico Sur 17', '2021-07-22 05:00:00', '19.284060, -99.205646'),
(159, 1, 3, 6, 'Reparación', 'Hidrosanitaria', 90.00, 'LOS ENCINOS', 'Avenida Los Álamos 11', '2022-11-05 05:00:00', '19.218210, -99.188719'),
(160, 4, 5, 7, 'Reparación', 'Bombeo', 100.00, 'SAN PEDRO MARTIR (PBLO)', 'Calle La Primavera 13', '2023-03-19 05:00:00', '19.271963, -99.167338'),
(161, 3, 6, 4, 'Reparación', 'Sistemas electricos', 10.00, 'SANTO TOMAS AJUSCO (PBLO)', 'Calle del Sol 20', '2020-01-23 05:00:00', '19.235895, -99.163453'),
(162, 5, 7, 9, 'Reparación', 'Albañilería', 20.00, 'SAN MIGUEL TOPILEJO (PBLO)', 'Calle Larga 15', '2021-08-19 05:00:00', '19.276833, -99.182066'),
(163, 6, 9, 2, 'Reparación', 'Pintura', 30.00, 'TEZONTITLA', 'Callejón del Viento 3', '2020-02-15 05:00:00', '19.279279, -99.170668'),
(164, 1, 5, 7, 'Reparación', 'Resanado', 40.00, 'LA PRIMAVERA', 'Boulevard San Pedro 9', '2021-04-11 05:00:00', '19.287309, -99.186610'),
(165, 2, 3, 6, 'Reparación', 'Impermeabilización', 50.00, 'HEROES DE 1910', 'Av. Las Palmas 4', '2022-07-30 05:00:00', '19.307864, -99.192071'),
(166, 3, 1, 5, 'Reparación', 'Herrería', 60.00, 'XAXALCO', 'Calle del Árbol 8', '2023-01-10 05:00:00', '19.296130, -99.202356'),
(167, 4, 8, 9, 'Reparación', 'Hidrosanitaria', 70.00, 'JARDINES COAPA-BELISARIO DOMINGUEZ', 'Calle Los Pinos 12', '2021-06-25 05:00:00', '19.218192, -99.198631'),
(168, 5, 2, 4, 'Reparación', 'Bombeo', 80.00, 'TORIELLO GUERRA', 'Calle del Río 16', '2022-10-12 05:00:00', '19.272978, -99.185291'),
(169, 6, 1, 3, 'Reparación', 'Sistemas electricos', 90.00, 'FUENTES Y PEDREGAL DE TEPEPAN', 'Av. Los Cipreses 5', '2023-08-01 05:00:00', '19.255364, -99.165346'),
(170, 1, 7, 6, 'Reparación', 'Albañilería', 100.00, 'LOMAS DE TEPEMECATL', 'Calle Río Nilo 19', '2020-11-29 05:00:00', '19.307602, -99.206457'),
(171, 4, 5, 8, 'Reparación', 'Pintura', 10.00, 'SAN PEDRO APOSTOL (BARR)', 'Calle del Mezquite 21', '2021-02-03 05:00:00', '19.248671, -99.167059'),
(172, 2, 9, 7, 'Reparación', 'Resanado', 20.00, 'PEDREGAL DE SN NICOLAS 4A SECC I', 'Calle Rincón 4', '2022-04-18 05:00:00', '19.308837, -99.198511'),
(173, 3, 1, 2, 'Reparación', 'Impermeabilización', 30.00, 'LA TORTUGA XOLALPA-HCO COLEGIO MILITAR', 'Callejón de la Luna 10', '2020-12-05 05:00:00', '19.222368, -99.200677'),
(174, 5, 6, 1, 'Reparación', 'Herrería', 40.00, 'JARDINES DEL AJUSCO', 'Av. Constitución 25', '2021-09-30 05:00:00', '19.237948, -99.158769'),
(175, 2, 4, 8, 'Reparación', 'Hidrosanitaria', 50.00, 'ISIDRO FABELA II (ORIENTE)', 'Calle La Cima 2', '2022-01-22 05:00:00', '19.212199, -99.193013'),
(176, 3, 8, 3, 'Reparación', 'Bombeo', 60.00, 'RINCON LAS HADAS-VILLA ROYALE-FUENTES Y ARCONADA COAPA', 'Calle Los Naranjos 14', '2023-04-08 05:00:00', '19.242755, -99.170834'),
(177, 6, 2, 5, 'Reparación', 'Sistemas electricos', 70.00, 'XAXALIPAC', 'Callejón del Parque 5', '2022-06-17 05:00:00', '19.285061, -99.191224'),
(178, 1, 3, 7, 'Reparación', 'Albañilería', 80.00, 'VILLA COAPA (RDCIAL)', 'Avenida San Antonio 9', '2023-11-21 05:00:00', '19.263853, -99.178252'),
(179, 4, 1, 6, 'Reparación', 'Pintura', 90.00, 'VALLE DE TEPEPAN', 'Callejón del Sol 13', '2020-09-27 05:00:00', '19.250169, -99.198269'),
(180, 7, 9, 4, 'Reparación', 'Resanado', 100.00, 'LA MAGDALENA PETLACALCO (PBLO)', 'Av. Central 17', '2021-10-12 05:00:00', '19.291036, -99.195339'),
(181, 2, 8, 3, 'Reparación', 'Impermeabilización', 10.00, 'TETENCO (PJE)', 'Calle de la Paz 20', '2020-05-05 05:00:00', '19.310663, -99.159521'),
(182, 5, 3, 8, 'Reparación', 'Herrería', 20.00, 'GRANJAS COAPA', 'Calle de los Álamos 8', '2021-03-22 05:00:00', '19.315778, -99.205350'),
(183, 3, 7, 9, 'Reparación', 'Hidrosanitaria', 30.00, 'SAN LORENZO HUIPULCO', 'Callejón Verde 5', '2022-02-18 05:00:00', '19.236318, -99.198456'),
(184, 6, 1, 5, 'Reparación', 'Bombeo', 40.00, 'SAN MIGUEL AJUSCO (PBLO)', 'Avenida del Pueblo 22', '2023-12-03 05:00:00', '19.220528, -99.205021'),
(185, 7, 2, 4, 'Reparación', 'Sistemas electricos', 50.00, 'SAN MIGUEL TOXIAC', 'Calle Jardín 14', '2020-06-10 05:00:00', '19.305681, -99.191798'),
(186, 4, 8, 2, 'Reparación', 'Albañilería', 60.00, 'LA LIBERTAD - IXTLAHUACA', 'Calle Los Pinos 6', '2021-11-02 05:00:00', '19.305682, -99.181466'),
(187, 1, 3, 6, 'Reparación', 'Pintura', 70.00, 'FUENTES Y PEDREGAL DE TEPEPAN', 'Calle del Río 18', '2022-12-13 05:00:00', '19.309327, -99.204176'),
(188, 5, 9, 7, 'Reparación', 'Resanado', 80.00, 'SAN PEDRO MARTIR (PBLO)', 'Callejón de la Estrella 3', '2023-01-29 05:00:00', '19.268578, -99.178657'),
(189, 6, 1, 5, 'Reparación', 'Impermeabilización', 90.00, 'DOLORES TLALI', 'Av. de los Naranjos 12', '2020-11-15 05:00:00', '19.231543, -99.189386'),
(190, 2, 6, 4, 'Reparación', 'Herrería', 100.00, 'LA PRIMAVERA', 'Calle del Lago 5', '2021-07-28 05:00:00', '19.224622, -99.172928'),
(191, 7, 3, 9, 'Reparación', 'Hidrosanitaria', 10.00, 'LOMAS DE PADIERNA II', 'Callejón del Río 4', '2022-10-05 05:00:00', '19.316423, -99.163663'),
(192, 4, 1, 2, 'Reparación', 'Bombeo', 20.00, 'LOS ENCINOS', 'Calle de la Loma 12', '2023-09-17 05:00:00', '19.252936, -99.185747'),
(193, 5, 8, 6, 'Reparación', 'Sistemas electricos', 30.00, 'JARDINES EN LA MONTAA', 'Calle Real 8', '2020-04-01 05:00:00', '19.310472, -99.188730'),
(194, 6, 2, 1, 'Reparación', 'Albañilería', 40.00, 'EL ARENAL', 'Avenida México 15', '2021-12-07 05:00:00', '19.215053, -99.196644'),
(195, 2, 7, 3, 'Reparación', 'Pintura', 50.00, 'HEROES DE PADIERNA II', 'Callejón Central 6', '2022-05-20 05:00:00', '19.304255, -99.170170'),
(196, 3, 6, 8, 'Reparación', 'Resanado', 60.00, 'VILLA LAZARO CARDENAS', 'Calle San Pedro 19', '2023-02-14 05:00:00', '19.217869, -99.195925'),
(197, 4, 1, 9, 'Reparación', 'Impermeabilización', 70.00, 'VALLE ESCONDIDO', 'Av. Bosques 7', '2020-06-24 05:00:00', '19.303717, -99.173549'),
(198, 5, 3, 4, 'Reparación', 'Herrería', 80.00, 'HEROES DE PADIERNA I', 'Calle Lirio 5', '2021-08-03 05:00:00', '19.292305, -99.166614'),
(199, 7, 4, 2, 'Reparación', 'Hidrosanitaria', 90.00, 'SAN ANDRES TOTOLTEPEC (PBLO)', 'Calle de los Pinos 10', '2022-03-27 05:00:00', '19.292834, -99.186219'),
(200, 6, 5, 1, 'Reparación', 'Bombeo', 100.00, 'CALZADA DE TLALPAN', 'Calle Olivo 8', '2023-09-12 05:00:00', '19.295595, -99.171128');

-- --------------------------------------------------------

--
-- Table structure for table `programassociales`
--

CREATE TABLE `programassociales` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registrousuarios`
--

CREATE TABLE `registrousuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Contraseña` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrousuarios`
--

INSERT INTO `registrousuarios` (`ID`, `Nombre`, `Apellidos`, `Email`, `Contraseña`) VALUES
(1, 'admin', 'tlalpan', 'tlalpan22234443343443443@gmail.com', '$2y$10$Fl8btGeH27gm0Ax5g.jP1.y1ZaQcqZVWO8k1Pg.chvGxc4eRPdvXi'),
(2, 'dummy', 'uno', 'aws@gmail.com', '$2y$10$Syv7mMHuyh7B4EWsoTfS6ex3vhNMDTa.cY0oHlkyafIaTPQdWSJfS'),
(3, 'domi', '2', 'hpp@gmail.com', '$2y$10$lVfs68oFdvE.f/cSSUTKtuuEiqelpjvGpEGOKg1n7LX5AMyclbga2'),
(4, 'frida', 'lara', 'fridalara@gmail.com', '$2y$10$uJhlGykbAmEO7gQHn58DIe/ocOAKk6.gYjw3c2mqdZJ2X.mmQdlJO'),
(5, 'arca', 'dummy', 'arca@gmail.com', '$2y$10$E9LDTMQF94hYW0Rd1tNyYeHl6SD52FFEswvtwGL9JhREbsCNqUKxS'),
(6, 'ivan', 'meraz', 'pataponivan@gmail.com', '$2y$10$a7Cz3qfgjJ58fWp2W//QD.aWp2k06DdDBVEeYIBhbNTkSpMZ9wnFO'),
(7, 'luis', 'mendoza', 'luis.mendoza@gmail.com', '$2y$10$JHLhlbXeH9Yv07L1EO3z/eBQpvh1HpCHqwNj/AfFjcy...'),
(8, 'carla', 'rodriguez', 'carla.rodriguez@gmail.com', '$2y$10$K8ZnMLxF2JpjL9T1CWV8HuQxL9HtlRpFtDQpVAIo8zX...'),
(9, 'juan', 'gomez', 'juan.gomez@gmail.com', '$2y$10$N9Owl2fH3JzkW4T1RWY8JuABlr3ZtUpJqGOPzFAo5FX...'),
(10, 'asd', 'asd', 'asd123@gmail.com', '$2y$10$vTYeu0kFX1STQlmT5KgQuuoB/GVLb53XqU.xssSbro8mLAkhd.Q.2'),
(11, 'Francisco ', 'Hidalgo', 'francantonihidalgo@gmail.com', '$2y$10$R3IJ6i7FCE3VkClf52w9duYbyizy4jol.QPKznWD3/H9.y.YHebBa'),
(12, 'Franco ', 'Farfay', 'franco@gmail.com', '$2y$10$L9UV7yZhhPm1REIJjg.ouehPK0OVbLHc60dCqhrcxNDnJVB9Qbf/m');

-- --------------------------------------------------------

--
-- Table structure for table `reporte_banos_publicos`
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
-- Table structure for table `reporte_giros`
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
-- Table structure for table `reporte_negocios`
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
-- Table structure for table `reporte_obras`
--

CREATE TABLE `reporte_obras` (
  `ID` int(11) NOT NULL,
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL,
  `FormularioID` int(11) NOT NULL,
  `Obra` varchar(255) NOT NULL,
  `UnidadTerritorial` varchar(255) NOT NULL,
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
-- Table structure for table `subdireccion_de_ordenamiento_urbano_y_movilidad`
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
-- Table structure for table `subdireccion_de_prevencion_del_delito`
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
-- Table structure for table `transformando_en_comunidad`
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
-- Table structure for table `usuariodepartamentos`
--

CREATE TABLE `usuariodepartamentos` (
  `UsuarioID` int(11) NOT NULL,
  `DepartamentoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuariodepartamentos`
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
(10, 4),
(11, 1),
(12, 197);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apoyo_para_el_bienestar_2025`
--
ALTER TABLE `apoyo_para_el_bienestar_2025`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `construyendo_salud_en_comunidad`
--
ALTER TABLE `construyendo_salud_en_comunidad`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `cuidar_y_ser_cuidado_para_el_bienestar_2025`
--
ALTER TABLE `cuidar_y_ser_cuidado_para_el_bienestar_2025`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `departamentoprogramas`
--
ALTER TABLE `departamentoprogramas`
  ADD PRIMARY KEY (`DepartamentoID`,`ProgramaID`),
  ADD KEY `ProgramaID` (`ProgramaID`);

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `formularios`
--
ALTER TABLE `formularios`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NombreFormulario` (`NombreFormulario`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `UsuarioID` (`UsuarioID`);

--
-- Indexes for table `fortalecimiento_para_el_cuidado_de_las_infancias`
--
ALTER TABLE `fortalecimiento_para_el_cuidado_de_las_infancias`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `judpanteones`
--
ALTER TABLE `judpanteones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `jud_colonias_y_asentamientos_humanos_irregulares`
--
ALTER TABLE `jud_colonias_y_asentamientos_humanos_irregulares`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `jud_de_centros_deportivos`
--
ALTER TABLE `jud_de_centros_deportivos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `jud_de_control_operativo_policial`
--
ALTER TABLE `jud_de_control_operativo_policial`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `jud_de_incidencia_y_estadistica_delictiva`
--
ALTER TABLE `jud_de_incidencia_y_estadistica_delictiva`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `jud_de_seguridad_ciudadana_y_de_transito`
--
ALTER TABLE `jud_de_seguridad_ciudadana_y_de_transito`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `jud_de_tianguis_y_via_publica`
--
ALTER TABLE `jud_de_tianguis_y_via_publica`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `juventudes_en_transformacion`
--
ALTER TABLE `juventudes_en_transformacion`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `mantenimiento_menor`
--
ALTER TABLE `mantenimiento_menor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `programassociales`
--
ALTER TABLE `programassociales`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `registrousuarios`
--
ALTER TABLE `registrousuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reporte_banos_publicos`
--
ALTER TABLE `reporte_banos_publicos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `reporte_giros`
--
ALTER TABLE `reporte_giros`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `reporte_negocios`
--
ALTER TABLE `reporte_negocios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `reporte_obras`
--
ALTER TABLE `reporte_obras`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `subdireccion_de_ordenamiento_urbano_y_movilidad`
--
ALTER TABLE `subdireccion_de_ordenamiento_urbano_y_movilidad`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `subdireccion_de_prevencion_del_delito`
--
ALTER TABLE `subdireccion_de_prevencion_del_delito`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `transformando_en_comunidad`
--
ALTER TABLE `transformando_en_comunidad`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `FormularioID` (`FormularioID`);

--
-- Indexes for table `usuariodepartamentos`
--
ALTER TABLE `usuariodepartamentos`
  ADD PRIMARY KEY (`UsuarioID`,`DepartamentoID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apoyo_para_el_bienestar_2025`
--
ALTER TABLE `apoyo_para_el_bienestar_2025`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `construyendo_salud_en_comunidad`
--
ALTER TABLE `construyendo_salud_en_comunidad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuidar_y_ser_cuidado_para_el_bienestar_2025`
--
ALTER TABLE `cuidar_y_ser_cuidado_para_el_bienestar_2025`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formularios`
--
ALTER TABLE `formularios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fortalecimiento_para_el_cuidado_de_las_infancias`
--
ALTER TABLE `fortalecimiento_para_el_cuidado_de_las_infancias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `judpanteones`
--
ALTER TABLE `judpanteones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jud_colonias_y_asentamientos_humanos_irregulares`
--
ALTER TABLE `jud_colonias_y_asentamientos_humanos_irregulares`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jud_de_centros_deportivos`
--
ALTER TABLE `jud_de_centros_deportivos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jud_de_control_operativo_policial`
--
ALTER TABLE `jud_de_control_operativo_policial`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jud_de_incidencia_y_estadistica_delictiva`
--
ALTER TABLE `jud_de_incidencia_y_estadistica_delictiva`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jud_de_seguridad_ciudadana_y_de_transito`
--
ALTER TABLE `jud_de_seguridad_ciudadana_y_de_transito`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jud_de_tianguis_y_via_publica`
--
ALTER TABLE `jud_de_tianguis_y_via_publica`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `juventudes_en_transformacion`
--
ALTER TABLE `juventudes_en_transformacion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mantenimiento_menor`
--
ALTER TABLE `mantenimiento_menor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `programassociales`
--
ALTER TABLE `programassociales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrousuarios`
--
ALTER TABLE `registrousuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reporte_banos_publicos`
--
ALTER TABLE `reporte_banos_publicos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporte_giros`
--
ALTER TABLE `reporte_giros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporte_negocios`
--
ALTER TABLE `reporte_negocios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporte_obras`
--
ALTER TABLE `reporte_obras`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdireccion_de_ordenamiento_urbano_y_movilidad`
--
ALTER TABLE `subdireccion_de_ordenamiento_urbano_y_movilidad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdireccion_de_prevencion_del_delito`
--
ALTER TABLE `subdireccion_de_prevencion_del_delito`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transformando_en_comunidad`
--
ALTER TABLE `transformando_en_comunidad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apoyo_para_el_bienestar_2025`
--
ALTER TABLE `apoyo_para_el_bienestar_2025`
  ADD CONSTRAINT `apoyo_para_el_bienestar_2025_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `apoyo_para_el_bienestar_2025_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `apoyo_para_el_bienestar_2025_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `construyendo_salud_en_comunidad`
--
ALTER TABLE `construyendo_salud_en_comunidad`
  ADD CONSTRAINT `construyendo_salud_en_comunidad_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `construyendo_salud_en_comunidad_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `construyendo_salud_en_comunidad_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `cuidar_y_ser_cuidado_para_el_bienestar_2025`
--
ALTER TABLE `cuidar_y_ser_cuidado_para_el_bienestar_2025`
  ADD CONSTRAINT `cuidar_y_ser_cuidado_para_el_bienestar_2025_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `cuidar_y_ser_cuidado_para_el_bienestar_2025_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `cuidar_y_ser_cuidado_para_el_bienestar_2025_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `departamentoprogramas`
--
ALTER TABLE `departamentoprogramas`
  ADD CONSTRAINT `departamentoprogramas_ibfk_1` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`),
  ADD CONSTRAINT `departamentoprogramas_ibfk_2` FOREIGN KEY (`ProgramaID`) REFERENCES `programassociales` (`ID`);

--
-- Constraints for table `formularios`
--
ALTER TABLE `formularios`
  ADD CONSTRAINT `formularios_ibfk_1` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `formularios_ibfk_2` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `fortalecimiento_para_el_cuidado_de_las_infancias`
--
ALTER TABLE `fortalecimiento_para_el_cuidado_de_las_infancias`
  ADD CONSTRAINT `fortalecimiento_para_el_cuidado_de_las_infancias_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fortalecimiento_para_el_cuidado_de_las_infancias_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fortalecimiento_para_el_cuidado_de_las_infancias_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `judpanteones`
--
ALTER TABLE `judpanteones`
  ADD CONSTRAINT `judpanteones_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `judpanteones_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `judpanteones_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `jud_colonias_y_asentamientos_humanos_irregulares`
--
ALTER TABLE `jud_colonias_y_asentamientos_humanos_irregulares`
  ADD CONSTRAINT `jud_colonias_y_asentamientos_humanos_irregulares_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_colonias_y_asentamientos_humanos_irregulares_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_colonias_y_asentamientos_humanos_irregulares_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `jud_de_centros_deportivos`
--
ALTER TABLE `jud_de_centros_deportivos`
  ADD CONSTRAINT `jud_de_centros_deportivos_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_centros_deportivos_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_centros_deportivos_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `jud_de_control_operativo_policial`
--
ALTER TABLE `jud_de_control_operativo_policial`
  ADD CONSTRAINT `jud_de_control_operativo_policial_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_control_operativo_policial_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_control_operativo_policial_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `jud_de_incidencia_y_estadistica_delictiva`
--
ALTER TABLE `jud_de_incidencia_y_estadistica_delictiva`
  ADD CONSTRAINT `jud_de_incidencia_y_estadistica_delictiva_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_incidencia_y_estadistica_delictiva_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_incidencia_y_estadistica_delictiva_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `jud_de_seguridad_ciudadana_y_de_transito`
--
ALTER TABLE `jud_de_seguridad_ciudadana_y_de_transito`
  ADD CONSTRAINT `jud_de_seguridad_ciudadana_y_de_transito_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_seguridad_ciudadana_y_de_transito_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_seguridad_ciudadana_y_de_transito_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `jud_de_tianguis_y_via_publica`
--
ALTER TABLE `jud_de_tianguis_y_via_publica`
  ADD CONSTRAINT `jud_de_tianguis_y_via_publica_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_tianguis_y_via_publica_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `jud_de_tianguis_y_via_publica_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `juventudes_en_transformacion`
--
ALTER TABLE `juventudes_en_transformacion`
  ADD CONSTRAINT `juventudes_en_transformacion_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `juventudes_en_transformacion_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `juventudes_en_transformacion_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `mantenimiento_menor`
--
ALTER TABLE `mantenimiento_menor`
  ADD CONSTRAINT `mantenimiento_menor_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `mantenimiento_menor_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `mantenimiento_menor_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `reporte_banos_publicos`
--
ALTER TABLE `reporte_banos_publicos`
  ADD CONSTRAINT `reporte_banos_publicos_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_banos_publicos_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_banos_publicos_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `reporte_giros`
--
ALTER TABLE `reporte_giros`
  ADD CONSTRAINT `reporte_giros_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_giros_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_giros_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `reporte_negocios`
--
ALTER TABLE `reporte_negocios`
  ADD CONSTRAINT `reporte_negocios_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_negocios_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_negocios_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `reporte_obras`
--
ALTER TABLE `reporte_obras`
  ADD CONSTRAINT `reporte_obras_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_obras_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_obras_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `subdireccion_de_ordenamiento_urbano_y_movilidad`
--
ALTER TABLE `subdireccion_de_ordenamiento_urbano_y_movilidad`
  ADD CONSTRAINT `subdireccion_de_ordenamiento_urbano_y_movilidad_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `subdireccion_de_ordenamiento_urbano_y_movilidad_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `subdireccion_de_ordenamiento_urbano_y_movilidad_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `subdireccion_de_prevencion_del_delito`
--
ALTER TABLE `subdireccion_de_prevencion_del_delito`
  ADD CONSTRAINT `subdireccion_de_prevencion_del_delito_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `subdireccion_de_prevencion_del_delito_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `subdireccion_de_prevencion_del_delito_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `transformando_en_comunidad`
--
ALTER TABLE `transformando_en_comunidad`
  ADD CONSTRAINT `transformando_en_comunidad_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `transformando_en_comunidad_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `transformando_en_comunidad_ibfk_3` FOREIGN KEY (`FormularioID`) REFERENCES `formularios` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `usuariodepartamentos`
--
ALTER TABLE `usuariodepartamentos`
  ADD CONSTRAINT `usuariodepartamentos_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `registrousuarios` (`ID`),
  ADD CONSTRAINT `usuariodepartamentos_ibfk_2` FOREIGN KEY (`DepartamentoID`) REFERENCES `departamentos` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
