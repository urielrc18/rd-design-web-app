-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2023 a las 06:28:37
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pdo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(7) NOT NULL,
  `categoria_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_ubicacion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_ubicacion`) VALUES
(2, 'Estampado', 'servicios'),
(3, 'Impresion', 'servicios'),
(4, 'Confeccion', 'otros'),
(5, 'Impresion de vinil', 'servicios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias`
--

CREATE TABLE `guias` (
  `id_guia` int(11) NOT NULL,
  `prd1` varchar(500) NOT NULL,
  `prd2` varchar(500) NOT NULL,
  `prd3` varchar(500) NOT NULL,
  `prd4` varchar(500) NOT NULL,
  `prd5` varchar(500) NOT NULL,
  `prd6` varchar(500) NOT NULL,
  `prd7` varchar(500) NOT NULL,
  `prd8` varchar(500) NOT NULL,
  `prd9` varchar(500) NOT NULL,
  `prd10` varchar(500) NOT NULL,
  `precio_prd1` decimal(30,2) NOT NULL,
  `precio_prd2` decimal(30,2) NOT NULL,
  `precio_prd3` decimal(30,2) NOT NULL,
  `precio_prd4` decimal(30,2) NOT NULL,
  `precio_prd5` decimal(30,2) NOT NULL,
  `precio_prd6` decimal(30,2) NOT NULL,
  `precio_prd7` decimal(30,2) NOT NULL,
  `precio_prd8` decimal(30,2) NOT NULL,
  `precio_prd9` decimal(30,2) NOT NULL,
  `precio_prd10` decimal(30,2) NOT NULL,
  `fecha` date NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `numero_cliente` varchar(10) NOT NULL,
  `tipo_prd1` int(11) NOT NULL,
  `tipo_prd2` int(11) NOT NULL,
  `tipo_prd3` int(11) NOT NULL,
  `tipo_prd4` int(11) NOT NULL,
  `tipo_prd5` int(11) NOT NULL,
  `tipo_prd6` int(11) NOT NULL,
  `tipo_prd7` int(11) NOT NULL,
  `tipo_prd8` int(11) NOT NULL,
  `tipo_prd9` int(11) NOT NULL,
  `tipo_prd10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `guias`
--

INSERT INTO `guias` (`id_guia`, `prd1`, `prd2`, `prd3`, `prd4`, `prd5`, `prd6`, `prd7`, `prd8`, `prd9`, `prd10`, `precio_prd1`, `precio_prd2`, `precio_prd3`, `precio_prd4`, `precio_prd5`, `precio_prd6`, `precio_prd7`, `precio_prd8`, `precio_prd9`, `precio_prd10`, `fecha`, `nombre_cliente`, `numero_cliente`, `tipo_prd1`, `tipo_prd2`, `tipo_prd3`, `tipo_prd4`, `tipo_prd5`, `tipo_prd6`, `tipo_prd7`, `tipo_prd8`, `tipo_prd9`, `tipo_prd10`) VALUES
(123, 'Camiseta Chelsea', 'Camiseta PSG', 'Estampado en Polo', '', '', '', '', '', '', '', '25.00', '30.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-04', 'jose carlos mariategui', '987654321', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_nombre` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_precio` decimal(30,2) NOT NULL,
  `producto_stock` int(25) NOT NULL,
  `producto_foto` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_id` int(7) NOT NULL,
  `usuario_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_precio`, `producto_stock`, `producto_foto`, `categoria_id`, `usuario_id`) VALUES
(1, '1313', 'sfdfds', '13.00', 4, 'sfdfds_28.png', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `id_tipo` int(11) NOT NULL,
  `nombre_tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`id_tipo`, `nombre_tipo`) VALUES
(1, 'sublimado'),
(2, 'estampado'),
(3, 'impresion'),
(4, 'corte'),
(5, 'confeccion'),
(6, 'prenda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(10) NOT NULL,
  `usuario_nombre` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `usuario_apellido` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `usuario_usuario` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `usuario_clave` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `usuario_email` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_usuario`, `usuario_clave`, `usuario_email`) VALUES
(2, 'Administrador', 'Principal', 'Administrador', '$2y$10$EPY9LSLOFLDDBriuJICmFOqmZdnDXxLJG8YFbog5LcExp77DBQvgC', ''),
(3, 'admin', 'admin', 'admin', '$2y$10$A6Ia0VVbvmR/yRoz5QMgSOjNpO6LjdGy98l3P3XgsEegQ/nh/swQO', ''),
(4, 'alex', 'rodriguez', 'alexrod17', '$2y$10$KmldwXL5FOgiR9rIWAhU3OkyEfEeuL9mYWtVsKbEOzpg8JZ8fy4/q', 'alexrod123@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `guias`
--
ALTER TABLE `guias`
  ADD PRIMARY KEY (`id_guia`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
