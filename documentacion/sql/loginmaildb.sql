-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2020 a las 18:39:23
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `loginmaildb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lg_estadocivil`
--

CREATE TABLE `lg_estadocivil` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `Anotacion` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `lg_estadocivil`
--

INSERT INTO `lg_estadocivil` (`Id`, `Nombre`, `Anotacion`) VALUES
(1, 'Casado(a)', ''),
(2, 'Soltero(a)', ''),
(3, 'Unión Marital', 'En Colombia, la Unión Marital de Hecho ha sido reconocida recientemente por la Corte Suprema de Justicia como un tercer estado civil.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lg_identificacion`
--

CREATE TABLE `lg_identificacion` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `Acronimo` varchar(5) COLLATE utf8_bin NOT NULL,
  `Creada` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modificada` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `lg_identificacion`
--

INSERT INTO `lg_identificacion` (`Id`, `Nombre`, `Acronimo`, `Creada`, `Modificada`) VALUES
(1, ' Cédula de Ciudadanía', 'C.C.', '2020-03-02 12:09:20', NULL),
(2, 'Cédula de Extranjería', 'CE', '2020-03-02 12:11:24', NULL),
(3, 'Pasaporte', 'PA', '2020-03-02 12:11:24', NULL),
(4, 'Cédula de Extranjería', 'CE', '2020-03-02 12:11:33', NULL),
(5, 'Pasaporte', 'PA', '2020-03-02 12:11:33', NULL),
(6, 'Tarjeta de Identidad', 'TI', '2020-03-02 12:12:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lg_usuarios`
--

CREATE TABLE `lg_usuarios` (
  `Id` int(11) NOT NULL,
  `Id_Identificacion` int(11) NOT NULL COMMENT 'tipo identificación',
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `Apellido` varchar(30) COLLATE utf8_bin NOT NULL,
  `FechaN` datetime NOT NULL,
  `Id_estadoCivil` int(11) NOT NULL,
  `Firma` text COLLATE utf8_bin NOT NULL,
  `Foto` text COLLATE utf8_bin NOT NULL,
  `Creada` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modificada` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lg_estadocivil`
--
ALTER TABLE `lg_estadocivil`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`);

--
-- Indices de la tabla `lg_identificacion`
--
ALTER TABLE `lg_identificacion`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`);

--
-- Indices de la tabla `lg_usuarios`
--
ALTER TABLE `lg_usuarios`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Identificacion` (`Id_Identificacion`),
  ADD KEY `lg_usuarios_civilFk` (`Id_estadoCivil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lg_estadocivil`
--
ALTER TABLE `lg_estadocivil`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lg_identificacion`
--
ALTER TABLE `lg_identificacion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `lg_usuarios`
--
ALTER TABLE `lg_usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lg_usuarios`
--
ALTER TABLE `lg_usuarios`
  ADD CONSTRAINT `lg_usuarios_civilFk` FOREIGN KEY (`Id_estadoCivil`) REFERENCES `lg_estadocivil` (`Id`),
  ADD CONSTRAINT `lg_usuarios_identFk_1` FOREIGN KEY (`Id_Identificacion`) REFERENCES `lg_identificacion` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
