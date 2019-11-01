-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2019 a las 07:13:16
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `preba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(2, 'sdsdss', 'dfdfdfd'),
(17, 'lacteos', 'leche,queso,yogurth'),
(19, 'verduras', 'hortalizas'),
(22, 'verduras', 'lechuga,cebolla'),
(23, 'Electrodomesticos', 'Televisores,computadores,celulares'),
(24, 'Cereales', 'arroz,avena'),
(50, 'gaseosas', 'coca cola ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `direccion`, `fecha_nacimiento`, `telefono`, `email`) VALUES
(123, 'david', 'Guerrero', 'Cra 7 # 3-87 Etapa 3 Torre 1 Apt 402 Torrentes', '1996-02-29', 5132, 'adsas'),
(1287721, 'david', 'guerrero', 'Cra 7 # 3-87 Etapa 3 Torre 1 Apt 402 Torrentes', '2018-05-13', 2147483647, 'jsjj@jaj'),
(42852712, 'Mariluz', 'Loaiza', 'cra 1 este 10 sur', '1988-10-10', 312315123, 'mloaizasanc@hotmail.com'),
(130912793, 'Gloria ', 'Zuluaga', 'Cra 7 # 3-87 Etapa 3 Torre 1 Apt 402 Torrentes', '1996-02-29', 215371, 'adhfads@hjasd'),
(1022413436, 'David', 'Guerrero', 'Cra 7 # 3-87', '1996-02-29', 3123123, 'dadasds@dasdad'),
(1023753192, 'Daniel', 'Guerrero', 'Cra 7 # 3-87 Etapa 3 Torre 1 Apt 402 Torrentes', '2001-01-22', 3123123, 'djgafda@akshgdd.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `num_detalle` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`num_detalle`, `id_factura`, `id_producto`, `cantidad`, `precio`) VALUES
(18, 7, 3, 1283, 213),
(19, 8, 3, 100, 2000),
(26, 1, 1, 5, 1200),
(27, 4, 4, 12, 1000),
(28, 11, 3, 2, 1000),
(29, 1, 3, 5, 1000),
(30, 1, 1, 20, 1000),
(31, 12, 5, 1, 700000),
(33, 13, 3, 2, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `num_factura` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`num_factura`, `id_cliente`, `fecha`) VALUES
(0, 123, '2018-05-29'),
(1, 1022413436, '2016-11-23'),
(4, 1023753192, '2016-06-01'),
(5, 1022413436, '2016-06-01'),
(6, 1022413436, '2016-06-02'),
(7, 1023753192, '2016-06-01'),
(8, 1022413436, '2016-11-07'),
(9, 1022413436, '2016-11-07'),
(10, 1022413436, '2016-11-23'),
(11, 130912793, '2016-11-25'),
(12, 1023753192, '2016-11-26'),
(13, 42852712, '2016-11-26'),
(123876132, 123, '2018-05-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_proveedor` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio`, `stock`, `id_categoria`, `id_proveedor`) VALUES
(1, 'leche', 1000, 12, 2, 128188),
(2, 'queso', 1000, 12, 17, 128188),
(3, 'lechuga', 1000, 200, 19, 128188),
(4, 'yogurt', 1000, 10000, 2, 128188),
(5, 'Televisor LG 32 ', 1000, 1000, 2, 128188),
(12, 'gaseosa', 1231, 12, 2, 231366);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(15) NOT NULL,
  `nombre_proveedor` varchar(50) NOT NULL,
  `direccion_proveedor` varchar(50) NOT NULL,
  `telefono_proveedor` int(20) NOT NULL,
  `ciudad_proveedor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre_proveedor`, `direccion_proveedor`, `telefono_proveedor`, `ciudad_proveedor`) VALUES
(128188, 'nutresa', 'cra30#109', 23123321, 'bogota'),
(231366, 'Postbon', 'cll 123 no 93', 21313, 'bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(15) NOT NULL,
  `nombre_rol` varchar(30) NOT NULL,
  `descripcion_rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`, `descripcion_rol`) VALUES
(1, 'admin', 'administrador'),
(2, 'usuario', 'usuario normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(15) NOT NULL,
  `nombre_usuario` varchar(30) NOT NULL,
  `apellido_usuario` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `id_rol` int(15) NOT NULL,
  `contrasena` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `correo`, `id_rol`, `contrasena`) VALUES
(123121, 'davii', 'guerrero', 'davidguerreroz13@hotmail.com', 1, 'guerrero29'),
(172731, 'stella', 'zuluaga', '1234', 1, ''),
(818289, 'jjj', 'jjj', 'jjj', 1, 'jj'),
(1231231, 'mariluz', 'loaiza', 'malu2230@hotmail.com', 2, 'ddc036e54e0c68c08bba18db4b7216'),
(10223131, 'david', 'guerrero', 'davidguerreroz13@hotmail.com', 1, 'bf918cfab2f89804bc186639fd3e47'),
(12312312, 'mariluz', 'loaiza', 'hadhashd@hadhahs', 2, 'malu'),
(12312323, 'juan', 'perez', 'juan@kjj', 2, '12345'),
(87374327, 'daniel', 'guerrero', 'dsdasda@jajaj', 1, '12345'),
(123123123, 'davvid', 'guerrero', 'davidguerreroz13@hotmail.com', 1, 'guerrero29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`num_detalle`,`id_factura`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_factura` (`id_factura`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`num_factura`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `num_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`num_factura`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
