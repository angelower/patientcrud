-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-10-2024 a las 04:42:42
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `doc` int(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `edad` int(3) NOT NULL,
  `genero` varchar(25) NOT NULL,
  `eps` varchar(50) NOT NULL,
  `cholt` double NOT NULL,
  `hdl` double NOT NULL,
  `ldl` double NOT NULL,
  `trig` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Registro pacientes con resultado ';

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `doc`, `name`, `lastname`, `edad`, `genero`, `eps`, `cholt`, `hdl`, `ldl`, `trig`) VALUES
(10000, 123456, 'Carlos', 'Pérez', 34, 'Masculino', 'SaludTotal', 190.5, 55.4, 130.2, 160.3),
(10001, 123457, 'María', 'Gómez', 28, 'Femenino', 'Compensar', 180.1, 60, 120.5, 140.1),
(10002, 123458, 'Luis', 'Ramírez', 45, 'Masculino', 'Sura', 200.3, 50.3, 140, 170.5),
(10003, 123459, 'Ana', 'López', 52, 'Femenino', 'Sanitas', 220.5, 45.2, 150.8, 200.2),
(10004, 123460, 'Jorge', 'Martínez', 40, 'Masculino', 'Nueva EPS', 210, 48.5, 135.4, 180),
(10005, 123461, 'Laura', 'Rodríguez', 30, 'Femenino', 'SaludTotal', 175, 65, 110, 130),
(10006, 123462, 'Diego', 'González', 36, 'Masculino', 'Sura', 195.2, 58.6, 125.4, 155),
(10007, 123463, 'Andrea', 'Castro', 25, 'Femenino', 'Compensar', 165.7, 70, 105, 120),
(10008, 123464, 'Felipe', 'Torres', 48, 'Masculino', 'Nueva EPS', 230, 40, 160, 210),
(10009, 123465, 'Marta', 'Salazar', 55, 'Femenino', 'Sanitas', 240.5, 35, 170.5, 220.5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
