-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2024 a las 18:34:18
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
-- Base de datos: `mvcaprendiz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apprendice`
--

CREATE TABLE `apprendice` (
  `idapprendice` int(11) NOT NULL,
  `typedoc` varchar(100) NOT NULL,
  `numdoc` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `datenac` date NOT NULL,
  `genere` varchar(30) NOT NULL,
  `city` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `apprendice`
--

INSERT INTO `apprendice` (`idapprendice`, `typedoc`, `numdoc`, `name`, `datenac`, `genere`, `city`) VALUES
(1, 'TI', '10283721', 'Yuber', '2024-05-31', 'Male', 'Sogamoso'),
(2, 'CE', '512323423', 'Franco', '2024-05-28', 'Female', 'Duitama'),
(3, 'TI', '987655678', 'Sofia', '2030-05-16', 'Male', 'Tunja'),
(4, 'CC', '1213', 'yo', '2024-05-07', 'Male', 'po'),
(5, 'TI', '21', 'ds', '2024-05-13', 'Male', 'sad'),
(6, '', '2', 's', '2024-05-01', 'Female', 's'),
(7, 'CC', '121', 'f', '2024-05-08', 'Male', 'adawd'),
(8, 'CC', '2', 's', '2024-05-01', 'Female', 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `idfile` int(11) NOT NULL,
  `numfile` varchar(7) NOT NULL,
  `namefile` varchar(100) NOT NULL,
  `campus` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `idapprendice` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`idfile`, `numfile`, `namefile`, `campus`, `city`, `idapprendice`) VALUES
(10, '213', 'asd', 'CEDEAGRO Agricultural and Agroindustrial Development Center', 'Sogamoso', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apprendice`
--
ALTER TABLE `apprendice`
  ADD PRIMARY KEY (`idapprendice`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `numfile` (`numfile`),
  ADD KEY `idapprendice` (`idapprendice`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apprendice`
--
ALTER TABLE `apprendice`
  MODIFY `idapprendice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `idfile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`idapprendice`) REFERENCES `apprendice` (`idapprendice`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
