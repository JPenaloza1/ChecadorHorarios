-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2022 a las 04:22:52
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `checador_usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id_asistencia` int(10) NOT NULL,
  `id_empleado` int(5) NOT NULL,
  `fecha` date NOT NULL,
  `entrada` time NOT NULL,
  `salida` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id_asistencia`, `id_empleado`, `fecha`, `entrada`, `salida`) VALUES
(1, 10001, '2022-04-03', '08:00:00', '17:00:00'),
(2, 10012, '2022-04-03', '12:07:00', '22:02:00'),
(3, 10001, '2022-04-04', '12:00:00', '20:00:00'),
(4, 10014, '2022-04-04', '11:57:00', '18:04:00'),
(5, 10015, '2022-04-04', '07:57:00', '14:06:00'),
(6, 10001, '2022-04-05', '10:00:00', '18:00:00'),
(7, 10018, '2022-04-05', '05:50:00', '22:01:00'),
(8, 10001, '2022-04-06', '07:00:00', '12:00:00'),
(9, 10001, '2022-04-06', '13:00:00', '16:00:00'),
(10, 10013, '2022-04-06', '00:07:00', '23:00:00'),
(11, 10015, '2022-04-06', '05:51:00', '20:03:00'),
(12, 10001, '2022-04-07', '08:00:00', '10:00:00'),
(13, 10001, '2022-04-07', '12:00:00', '18:00:00'),
(14, 10012, '2022-04-07', '14:00:00', '00:07:00'),
(15, 10014, '2022-04-07', '08:09:00', '23:04:00'),
(16, 10001, '2022-04-08', '12:00:00', '20:00:00'),
(17, 10015, '2022-04-08', '09:53:00', '20:04:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(30) NOT NULL,
  `apellido_materno` varchar(30) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `apellido_paterno`, `apellido_materno`, `rfc`, `genero`, `fecha_nacimiento`, `fecha_ingreso`) VALUES
(10001, 'Jonathan', 'Penaloza', 'Sanchezz', '123456789asdf', 'Masculino', '2001-01-01', '2021-01-08'),
(10012, 'Victor', 'Lopez', 'Vasquez', '654789123951', 'Masculino', '2022-02-01', '2022-02-05'),
(10013, 'Valeria', 'Hernandez', 'Lopez', '753951456852', 'Femenino', '2022-02-23', '2022-02-25'),
(10014, 'Zaira', 'Hernandezz', 'Martinez', '1597358526129', 'Femenino', '2022-01-03', '2022-01-26'),
(10015, 'Alexis', 'Sanchez', 'Mendoza', '0159753849756', 'Masculino', '2000-07-17', '2021-06-01'),
(10018, 'Jose', 'Vado', 'Robles', 'ASD148DFG589G', 'Masculino', '2000-03-01', '2022-02-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_empleado` int(5) NOT NULL,
  `domingo` varchar(50) NOT NULL,
  `lunes` varchar(50) NOT NULL,
  `martes` varchar(50) NOT NULL,
  `miercoles` varchar(50) NOT NULL,
  `jueves` varchar(50) NOT NULL,
  `viernes` varchar(50) NOT NULL,
  `sabado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_empleado`, `domingo`, `lunes`, `martes`, `miercoles`, `jueves`, `viernes`, `sabado`) VALUES
(10001, '08:00-17:00', '12:00-20:00', '10:00-18:00', '07:00-12:00 13:00-16:00', '08:00-10:00 12:00-18:00', '12:00-20:00', ''),
(10012, '12:00-22:00', '', '', '', '14:00-00:00', '', ''),
(10013, '', '', '', '00:00-23:00', '', '', ''),
(10014, '', '12:00-18:00', '', '', '08:00-23:00', '', ''),
(10015, '', '08:00-14:00', '', '06:00-20:00', '', '10:00-22:00', ''),
(10018, '', '', '06:00-22:00', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(10) NOT NULL,
  `id_empleado` int(5) NOT NULL,
  `contrasena` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `id_empleado`, `contrasena`) VALUES
('Jonathan', 10001, '8fe3175caf217ffbc1e96a7b24aabf2371ad7f2166709eab4871febb14e398a46511f4deddeb29bea57f17566dcdfdd7b250febaf9caee874f1202f550aa2ddf');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id_asistencia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10019;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
