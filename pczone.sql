-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2021 a las 02:42:54
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pczone`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IDcliente` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `celular` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IDcliente`, `nombre`, `Telefono`, `email`, `direccion`, `celular`) VALUES
(1, 'isaac flores', '8122131', 'isaac@gmail.com', 'calles dos hermanos', '6182295487'),
(3, 'meñoooooo', '4654654', '@', 'sdfsdfs', '459569');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `IDcompra` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `IDventa` int(10) NOT NULL,
  `IDproducto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IDempleado` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`IDempleado`, `nombre`, `direccion`, `email`) VALUES
(12, 'Jorge Campos', 'lomas', 'Jorge@gmail.com'),
(13, 'Raul lopez', 'lomas 2', 'Raul@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `IDequipo` int(30) NOT NULL,
  `nombre_equipo` varchar(30) NOT NULL,
  `accesorio` varchar(60) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `falla_descripcion` varchar(300) NOT NULL,
  `observaciones` varchar(300) NOT NULL,
  `serie` varchar(30) NOT NULL,
  `IDclienFK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`IDequipo`, `nombre_equipo`, `accesorio`, `contraseña`, `falla_descripcion`, `observaciones`, `serie`, `IDclienFK`) VALUES
(1, 'asd', 'ad', 'asd', 'asd', 'asd', 'asd', 1),
(3, 'HP', 'HEADSET', '1234', 'FALLA ELECTRICA', 'NINGUNA', '252525', 3),
(5, 'asdsad', 'ggggggggggggggggggggggg', 'ggggggggg', 'ggg', 'ggg', 'ggggggg', 1),
(6, 'adsadd', 'sadsa', 'sad', 'asd', 'asd', 'asd', 3),
(7, 'PCGAMERSUPER', 'NO', '2525255', 'FALLA CARGA', 'NINGUNA', 'RTGDFSDSDSFGSDFG', 3),
(9, '', '', '', '', '', '', 1),
(10, 'pruebagamer', 'pruebaaccesorio', 'prueba', 'prueba', 'prueba', 'prueba', 1),
(11, 'oscar', 'isaac', 'firulais', 'ssjsjdjdnj', 'djdndnejn', '12', 1),
(12, 'feed', 'defeww', 'wfefwex', 'dwefewf', 'dwfewfw', 'fewfew', 1),
(13, 'fghgfh', 'fgh', 'fgh', 'fgh', 'fgh', 'fgh', 3),
(14, 'dfgdg', 'sdfgsdfg', 'dsf', 'sdf', 'sdf', 'sdf', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `IDproducto` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio_compra` int(6) NOT NULL,
  `color` varchar(15) NOT NULL,
  `stock` int(2) NOT NULL,
  `precio_venta` int(7) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `categoria` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`IDproducto`, `nombre`, `precio_compra`, `color`, `stock`, `precio_venta`, `descripcion`, `categoria`) VALUES
(785, 'plumassssssss', 50, 'rojas', 10, 70, 'son rojas con tapa	', 'oficina'),
(2525, 'Mica', 50, 'Transparente', 30, 150, 'Micas para pantalla de laptops	', 'accesorios'),
(4896, 'tonners', 50, 'negro', 125, 85, 'negro impresora HP', 'impresoras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `IDservicio` int(30) NOT NULL,
  `fecha_servicio` date NOT NULL,
  `tipo_servicio` varchar(30) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `costo_total` int(5) NOT NULL,
  `estado_servicio` int(5) NOT NULL,
  `fecha_estimada` date NOT NULL,
  `IDclienFK` int(10) NOT NULL,
  `IDequipoFK` int(30) NOT NULL,
  `IDempleadoFK` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`IDservicio`, `fecha_servicio`, `tipo_servicio`, `fecha_vencimiento`, `costo_total`, `estado_servicio`, `fecha_estimada`, `IDclienFK`, `IDequipoFK`, `IDempleadoFK`) VALUES
(104, '2021-12-03', '2', '2021-12-02', 500, 5, '2021-12-10', 1, 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `IDventa` int(11) NOT NULL,
  `IDclienFK` int(10) NOT NULL,
  `fecha_venta` date NOT NULL,
  `total` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDcliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`IDcompra`),
  ADD KEY `IDventa` (`IDventa`),
  ADD KEY `IDproducto` (`IDproducto`),
  ADD KEY `IDproducto_2` (`IDproducto`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IDempleado`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`IDequipo`),
  ADD KEY `IDclienFK` (`IDclienFK`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IDproducto`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`IDservicio`),
  ADD KEY `IDclienFK` (`IDclienFK`),
  ADD KEY `IDequipoFK` (`IDequipoFK`),
  ADD KEY `IDempleadoFK` (`IDempleadoFK`),
  ADD KEY `IDclienFK_2` (`IDclienFK`),
  ADD KEY `IDequipoFK_2` (`IDequipoFK`),
  ADD KEY `IDempleadoFK_2` (`IDempleadoFK`),
  ADD KEY `IDequipoFK_3` (`IDequipoFK`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`IDventa`),
  ADD KEY `IDclienFK` (`IDclienFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IDcliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `IDempleado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `IDequipo` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `IDservicio` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`IDventa`) REFERENCES `venta` (`IDventa`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`IDproducto`) REFERENCES `producto` (`IDproducto`);

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`IDclienFK`) REFERENCES `cliente` (`IDcliente`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`IDclienFK`) REFERENCES `cliente` (`IDcliente`),
  ADD CONSTRAINT `servicios_ibfk_4` FOREIGN KEY (`IDequipoFK`) REFERENCES `equipo` (`IDequipo`),
  ADD CONSTRAINT `servicios_ibfk_5` FOREIGN KEY (`IDempleadoFK`) REFERENCES `empleado` (`IDempleado`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`IDclienFK`) REFERENCES `cliente` (`IDcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
