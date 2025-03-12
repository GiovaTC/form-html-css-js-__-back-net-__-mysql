-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2025 a las 00:22:23
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `col1` varchar(255) DEFAULT NULL,
  `col2` varchar(255) DEFAULT NULL,
  `col3` varchar(255) DEFAULT NULL,
  `col4` varchar(255) DEFAULT NULL,
  `col5` varchar(255) DEFAULT NULL,
  `col6` varchar(255) DEFAULT NULL,
  `col7` varchar(255) DEFAULT NULL,
  `col8` varchar(255) DEFAULT NULL,
  `col9` varchar(255) DEFAULT NULL,
  `col10` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `col9`, `col10`) VALUES
(1, 'Dato1_1', 'Dato1_2', 'Dato1_3', 'Dato1_4', 'Dato1_5', 'Dato1_6', 'Dato1_7', 'Dato1_8', 'Dato1_9', 'Dato1_10'),
(2, 'Dato2_1', 'Dato2_2', 'Dato2_3', 'Dato2_4', 'Dato2_5', 'Dato2_6', 'Dato2_7', 'Dato2_8', 'Dato2_9', 'Dato2_10'),
(3, 'Dato3_1', 'Dato3_2', 'Dato3_3', 'Dato3_4', 'Dato3_5', 'Dato3_6', 'Dato3_7', 'Dato3_8', 'Dato3_9', 'Dato3_10'),
(4, 'Dato4_1', 'Dato4_2', 'Dato4_3', 'Dato4_4', 'Dato4_5', 'Dato4_6', 'Dato4_7', 'Dato4_8', 'Dato4_9', 'Dato4_10'),
(5, 'Dato5_1', 'Dato5_2', 'Dato5_3', 'Dato5_4', 'Dato5_5', 'Dato5_6', 'Dato5_7', 'Dato5_8', 'Dato5_9', 'Dato5_10'),
(6, 'Dato6_1', 'Dato6_2', 'Dato6_3', 'Dato6_4', 'Dato6_5', 'Dato6_6', 'Dato6_7', 'Dato6_8', 'Dato6_9', 'Dato6_10'),
(7, 'Dato7_1', 'Dato7_2', 'Dato7_3', 'Dato7_4', 'Dato7_5', 'Dato7_6', 'Dato7_7', 'Dato7_8', 'Dato7_9', 'Dato7_10'),
(8, 'Dato8_1', 'Dato8_2', 'Dato8_3', 'Dato8_4', 'Dato8_5', 'Dato8_6', 'Dato8_7', 'Dato8_8', 'Dato8_9', 'Dato8_10'),
(9, 'Dato9_1', 'Dato9_2', 'Dato9_3', 'Dato9_4', 'Dato9_5', 'Dato9_6', 'Dato9_7', 'Dato9_8', 'Dato9_9', 'Dato9_10'),
(10, 'Dato10_1', 'Dato10_2', 'Dato10_3', 'Dato10_4', 'Dato10_5', 'Dato10_6', 'Dato10_7', 'Dato10_8', 'Dato10_9', 'Dato10_10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
