-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2023 a las 06:38:24
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
-- Base de datos: `eje01`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `numclie` int(11) NOT NULL,
  `nombre` char(50) DEFAULT NULL,
  `repclie` int(11) DEFAULT NULL,
  `limitecredito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`numclie`, `nombre`, `repclie`, `limitecredito`) VALUES
(2101, 'Luis Garcia Anton', 106, 65000),
(2102, 'Alvaro Rodriguez', 101, 65000),
(2103, 'Jaime Llorens', 105, 50000),
(2105, 'Antonio Canales', 101, 45000),
(2106, 'Juan Suarez', 102, 65000),
(2107, 'Julian Lopez', 110, 35000),
(2108, 'Julia Antequera', 109, 55000),
(2109, 'Alberto Juanes', 103, 25000),
(2111, 'Cristobal Gracia', 103, 50000),
(2112, 'Maria Silva', 108, 50000),
(2113, 'Luisa Maron', 104, 20000),
(2114, 'Cristina Bulini', 102, 20000),
(2115, 'Vicente Martinez', 101, 20000),
(2117, 'Carlos Tena', 106, 35000),
(2118, 'Junipero Alvares', 108, 60000),
(2119, 'Salomon Bueno', 109, 25000),
(2120, 'Juan Malo', 102, 50000),
(2121, 'Vicente Rios', 103, 45000),
(2122, 'Jose Marchante', 105, 30000),
(2123, 'Jose Libros', 102, 40000),
(2124, 'Juan Bolto', 107, 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `numemp` int(11) NOT NULL,
  `nombre` char(50) DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  `oficina` int(11) DEFAULT NULL,
  `titulo` char(20) DEFAULT NULL,
  `contrato` date DEFAULT NULL,
  `jefe` int(11) DEFAULT NULL,
  `cuota` int(11) DEFAULT NULL,
  `ventas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`numemp`, `nombre`, `edad`, `oficina`, `titulo`, `contrato`, `jefe`, `cuota`, `ventas`) VALUES
(101, 'Antonio Viguer', 45, 12, 'representante', '1986-10-20', 104, 300000, 305000),
(102, 'Alvaro Jaumes', 48, 21, 'representante', '1986-12-10', 108, 350000, 474000),
(103, 'Juan Rovira', 29, 12, 'representante', '1987-03-01', 104, 275000, 286000),
(104, 'Jose Gonzales', 33, 12, 'dir ventas', '1987-05-19', 106, 200000, 143000),
(105, 'Vicente Pantalla', 37, 13, 'representante', '1988-02-12', 104, 350000, 368000),
(106, 'Luis Antonio', 52, 11, 'dir general', '1988-06-14', NULL, 275000, 299000),
(107, 'Jorge Gutierrez', 49, 22, 'representante', '1988-11-14', 108, 300000, 186000),
(108, 'Ana Bustamante', 62, 21, 'dir ventas', '1989-10-12', 106, 350000, 361000),
(109, 'Maria Sunta', 31, 11, 'representante', '1999-10-12', 106, 300000, 392000),
(110, 'Juan Victor', 41, NULL, 'representante', '1990-01-13', 104, NULL, 76000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficinas`
--

CREATE TABLE `oficinas` (
  `oficina` int(11) NOT NULL,
  `ciudad` char(20) DEFAULT NULL,
  `region` char(10) DEFAULT NULL,
  `dir` int(11) DEFAULT NULL,
  `objetivo` int(11) DEFAULT NULL,
  `ventas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oficinas`
--

INSERT INTO `oficinas` (`oficina`, `ciudad`, `region`, `dir`, `objetivo`, `ventas`) VALUES
(11, 'Valencia', 'este', 106, 575000, 693000),
(12, 'Alicante', 'este', 104, 800000, 735000),
(13, 'Castellon', 'este', 105, 350000, 368000),
(21, 'Babajoz', 'oeste', 108, 725000, 836000),
(22, 'A Coruña', 'oeste', 108, 300000, 186000),
(23, 'Madrid', 'centro', 108, NULL, NULL),
(24, 'Madrid', 'centro', 108, 250000, 150000),
(26, 'Pamplona', 'norte', NULL, NULL, NULL),
(28, 'Valencia', 'este', NULL, 900000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `codigo` int(11) NOT NULL,
  `numpedido` int(11) DEFAULT NULL,
  `fechapedido` date DEFAULT NULL,
  `clie` int(11) DEFAULT NULL,
  `rep` int(11) DEFAULT NULL,
  `fab` varchar(4) DEFAULT NULL,
  `producto` varchar(11) DEFAULT NULL,
  `cant` int(10) DEFAULT NULL,
  `importe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idfab` varchar(4) NOT NULL,
  `idproducto` varchar(11) NOT NULL,
  `decripcion` char(30) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `existencias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idfab`, `idproducto`, `decripcion`, `precio`, `existencias`) VALUES
('aci', '41001', 'arandela', 58, 277),
('aci', '41002', 'bisagra', 80, 167),
('aci', '41003', 'art t3', 112, 207),
('aci', '41004', 'art t4', 123, 139),
('aci', '4100x', 'junta', 26, 37),
('aci', '4100y', 'extractor', 2888, 25),
('aci', '4100z', 'mont', 2625, 28),
('bic', '41003', 'manivela', 652, 3),
('bic', '41089', 'rodamiento', 225, 78),
('bic', '41672', 'plato', 180, 0),
('fea', '112', 'cubo', 148, 115),
('fea', '114', 'cubo', 243, 15),
('imm', '773c', 'reostato', 975, 28),
('imm', '775c', 'reostato 2', 1425, 5),
('imm', '779c', 'reostato 3', 1875, 0),
('imm', '887h', 'caja clavos', 54, 223),
('imm', '887p', 'perno', 25, 24),
('imm', '887x', 'manivela', 475, 32),
('qsa', 'xk47', 'red', 355, 38),
('qsa', 'xk48', 'red', 134, 203),
('qsa', 'xk48a', 'red', 117, 37),
('rei', '2a44g', 'pas', 350, 14),
('rei', '2a44l', 'bomba l', 4500, 12),
('rei', '2a44r', 'bomba r', 4500, 12),
('rei', '2a45c', 'junta', 79, 210);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`numclie`),
  ADD KEY `fkrepclie` (`repclie`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`numemp`),
  ADD KEY `fkoficina` (`oficina`);

--
-- Indices de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`oficina`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fkclientes` (`clie`),
  ADD KEY `fkcompuesta` (`fab`,`producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idfab`,`idproducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `numclie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2125;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `numemp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  MODIFY `oficina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fkrepclie` FOREIGN KEY (`repclie`) REFERENCES `empleados` (`numemp`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fkoficina` FOREIGN KEY (`oficina`) REFERENCES `oficinas` (`oficina`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fkclientes` FOREIGN KEY (`clie`) REFERENCES `clientes` (`numclie`),
  ADD CONSTRAINT `fkcompuesta` FOREIGN KEY (`fab`,`producto`) REFERENCES `productos` (`idfab`, `idproducto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
