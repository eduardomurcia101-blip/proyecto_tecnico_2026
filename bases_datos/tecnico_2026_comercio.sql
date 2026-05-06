-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2026 a las 23:31:07
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
-- Base de datos: `tecnico_2026_comercio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `identificacion_cliente` int(11) NOT NULL,
  `nom_cliente` varchar(100) NOT NULL,
  `dirrecion_cliente` varchar(100) NOT NULL,
  `pais_cliente` varchar(100) NOT NULL,
  `telefono_cliente` bigint(11) NOT NULL,
  `fecha_pedido_cliente` date NOT NULL,
  `vendedor_cliente` varchar(100) NOT NULL,
  `region_cliente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--
INSERT INTO `cliente` (`id_cliente`, `identificacion_cliente`, `nom_cliente`, `dirrecion_cliente`, `pais_cliente`, `telefono_cliente`, `fecha_pedido_cliente`, `vendedor_cliente`, `region_cliente`) VALUES
(1, 20000123, 'Ana Gómez', 'Calle Mayor 12', 'España', 612345678, '2026-04-15', 'Luis Díaz', 'Norte'),
(2, 20000234, 'Carlos Ruiz', 'Avenida del Sol 45', 'España', 623456789, '2026-04-18', 'Marta Sánchez', 'Sur'),
(3, 20000345, 'María Fernández', 'Plaza España 8', 'España', 634567890, '2026-04-20', 'Raúl Torres', 'Este'),
(4, 20000456, 'Javier López', 'Calle Luna 16', 'España', 645678901, '2026-04-22', 'Laura Muñoz', 'Oeste'),
(5, 20000567, 'Lucía Martínez', 'Paseo del Prado 30', 'España', 656789012, '2026-04-24', 'Eva Ramírez', 'Norte'),
(6, 20000678, 'Diego Pérez', 'Calle del Árbol 4', 'España', 667890123, '2026-04-26', 'Óscar Vidal', 'Sur'),
(7, 20000789, 'Sofía Sánchez', 'Calle Nueva 22', 'España', 678901234, '2026-04-28', 'Clara Jiménez', 'Este'),
(8, 20000890, 'Miguel Díaz', 'Avenida Real 50', 'España', 689012345, '2026-05-01', 'Pablo Ruiz', 'Oeste'),
(9, 20000901, 'Laura Romero', 'Calle del Mar 3', 'España', 690123456, '2026-05-03', 'Nuria Castillo', 'Norte'),
(10, 20001012, 'Raúl Navarro', 'Plaza Mayor 18', 'España', 701234567, '2026-05-05', 'Sergio Fernández', 'Sur'),
(11, 20001123, 'Elena Torres', 'Calle del Río 7', 'España', 712345678, '2026-05-07', 'Álvaro León', 'Este'),
(12, 20001234, 'Patricia Hernández', 'Avenida del Parque 11', 'España', 723456789, '2026-05-09', 'Isaac Molina', 'Oeste'),
(13, 20001345, 'Andrés Martín', 'Calle Olivo 25', 'España', 734567890, '2026-05-11', 'Elisa Flores', 'Norte'),
(14, 20001456, 'Clara Ruiz', 'Paseo de la Alameda 2', 'España', 745678901, '2026-05-13', 'Sandra Vega', 'Sur'),
(15, 20001567, 'Fernando Castillo', 'Calle del Mercado 9', 'España', 756789012, '2026-05-15', 'Nuria Blanco', 'Este');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento_join`
--

CREATE TABLE `departamento_join` (
  `codigo_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(100) NOT NULL,
  `presupuesto_departamento` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento_join`
--
INSERT INTO `departamento_join` (`codigo_departamento`, `nombre_departamento`, `presupuesto_departamento`) VALUES
(1, 'Ventas', 45000),
(2, 'Marketing', 52000),
(3, 'Finanzas', 61000),
(4, 'Recursos Humanos', 48000),
(5, 'Logística', 53000),
(6, 'Compras', 47000),
(7, 'Atención al Cliente', 50000),
(8, 'Calidad', 49000),
(9, 'Seguridad', 46000),
(10, 'Desarrollo', 62000),
(11, 'Investigación', 64000),
(12, 'Operaciones', 58000),
(13, 'Administración', 55000),
(14, 'Legal', 60000),
(15, 'Sistemas', 63000),
(16, 'Contabilidad', 57000),
(17, 'Proyectos', 59000),
(18, 'Formación', 51000),
(19, 'Comunicación', 54000),
(20, 'Soporte Técnico', 56000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos_linea`
--

CREATE TABLE `elementos_linea` (
  `id_elementos_linea` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `precio_unidad_elementos_linea` int(10) DEFAULT NULL,
  `cantidad_elemnetos_linea` int(3) DEFAULT NULL,
  `precio_ampliado_elementos_linea` int(10) DEFAULT NULL,
  `nombre_producto_elementos_linea` varchar(100) DEFAULT NULL,
  `total_elementos_linea` int(10) DEFAULT NULL,
  `cantidad_existencia_elementos_linea` int(3) DEFAULT NULL,
  `fecha_pedido_elementos_linea` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `elementos_linea`
--
INSERT INTO `elementos_linea` (`id_elementos_linea`, `id_factura`, `id_producto`, `precio_unidad_elementos_linea`, `cantidad_elemnetos_linea`, `precio_ampliado_elementos_linea`, `nombre_producto_elementos_linea`, `total_elementos_linea`, `cantidad_existencia_elementos_linea`, `fecha_pedido_elementos_linea`) VALUES
(1, 1, 1, 120, 2, 240, 'Auriculares inalámbricos', 240, 50, '2026-04-15'),
(2, 2, 2, 85, 1, 85, 'Teclado mecánico', 85, 40, '2026-04-18'),
(3, 3, 3, 45, 3, 135, 'Ratón ergonómico', 135, 70, '2026-04-20'),
(4, 4, 4, 230, 1, 230, 'Monitor 24"', 230, 25, '2026-04-22'),
(5, 5, 5, 75, 2, 150, 'Impresora multifunción', 150, 30, '2026-04-24'),
(6, 6, 6, 15, 5, 75, 'Cartucho tinta negro', 75, 120, '2026-04-26'),
(7, 7, 7, 25, 4, 100, 'Cable HDMI', 100, 80, '2026-04-28'),
(8, 8, 8, 50, 2, 100, 'Disco duro externo', 100, 45, '2026-05-01'),
(9, 9, 9, 18, 3, 54, 'Memoria USB 64GB', 54, 90, '2026-05-03'),
(10, 10, 10, 130, 1, 130, 'Router inalámbrico', 130, 35, '2026-05-05'),
(11, 11, 11, 140, 1, 140, 'Portátil 14"', 140, 15, '2026-05-07'),
(12, 12, 12, 60, 2, 120, 'Altavoces Bluetooth', 120, 40, '2026-05-09'),
(13, 13, 13, 40, 3, 120, 'Webcam HD', 120, 50, '2026-05-11'),
(14, 14, 14, 5, 10, 50, 'Soporte para portátil', 50, 100, '2026-05-13'),
(15, 15, 15, 110, 1, 110, 'Tablet 10"', 110, 20, '2026-05-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_join`
--

CREATE TABLE `empleado_join` (
  `codigo_join` int(11) NOT NULL,
  `nif_join` int(11) NOT NULL,
  `nombre_join` varchar(100) NOT NULL,
  `apellido1_join` varchar(100) NOT NULL,
  `apellido2_join` varchar(100) NOT NULL,
  `codigo_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado_join`
--
INSERT INTO `empleado_join` (`codigo_join`, `nif_join`, `nombre_join`, `apellido1_join`, `apellido2_join`, `codigo_departamento`) VALUES
(1, 100001, 'Ana', 'García', 'López', 1),
(2, 100002, 'Carlos', 'Pérez', 'Sánchez', 2),
(3, 100003, 'María', 'Ruiz', 'Fernández', 3),
(4, 100004, 'Javier', 'Martínez', 'Gómez', 4),
(5, 100005, 'Lucía', 'Hernández', 'Moreno', 5),
(6, 100006, 'Diego', 'Jiménez', 'Romero', 6),
(7, 100007, 'Sofía', 'Díaz', 'Navarro', 7),
(8, 100008, 'Miguel', 'Torres', 'Ruiz', 8),
(9, 100009, 'Laura', 'Román', 'Ortiz', 9),
(10, 100010, 'Raúl', 'Cruz', 'Vargas', 10),
(11, 100011, 'Elena', 'Ramos', 'Molina', 11),
(12, 100012, 'Diego', 'Mejía', 'Cortés', 12),
(13, 100013, 'Patricia', 'Espinosa', 'Suárez', 13),
(14, 100014, 'Andrés', 'Castillo', 'Guerra', 14),
(15, 100015, 'Clara', 'Reyes', 'Núñez', 15),
(16, 100016, 'Fernando', 'Bravo', 'Gil', 16),
(17, 100017, 'Nuria', 'Cabrera', 'Soto', 17),
(18, 100018, 'Sergio', 'Vega', 'Ibáñez', 18),
(19, 100019, 'Marta', 'Marín', 'Campos', 19),
(20, 100020, 'Rubén', 'Cano', 'Flores', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_pedido_factura` date DEFAULT NULL,
  `subtotal_factura` int(10) DEFAULT NULL,
  `descuento_factura` int(10) DEFAULT NULL,
  `region_factura` varchar(100) DEFAULT NULL,
  `vendedor_factura` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--
INSERT INTO `factura` (`id_factura`, `id_cliente`, `fecha_pedido_factura`, `subtotal_factura`, `descuento_factura`, `region_factura`, `vendedor_factura`) VALUES
(1, 1, '2026-04-15', 240, 10, 'Norte', 'Luis Díaz'),
(2, 2, '2026-04-18', 85, 5, 'Sur', 'Marta Sánchez'),
(3, 3, '2026-04-20', 135, 0, 'Este', 'Raúl Torres'),
(4, 4, '2026-04-22', 230, 15, 'Oeste', 'Laura Muñoz'),
(5, 5, '2026-04-24', 150, 10, 'Norte', 'Eva Ramírez'),
(6, 6, '2026-04-26', 75, 0, 'Sur', 'Óscar Vidal'),
(7, 7, '2026-04-28', 100, 5, 'Este', 'Clara Jiménez'),
(8, 8, '2026-05-01', 100, 10, 'Oeste', 'Pablo Ruiz'),
(9, 9, '2026-05-03', 54, 0, 'Norte', 'Nuria Castillo'),
(10, 10, '2026-05-05', 130, 5, 'Sur', 'Sergio Fernández'),
(11, 11, '2026-05-07', 140, 20, 'Este', 'Álvaro León'),
(12, 12, '2026-05-09', 120, 10, 'Oeste', 'Isaac Molina'),
(13, 13, '2026-05-11', 120, 0, 'Norte', 'Elisa Flores'),
(14, 14, '2026-05-13', 50, 0, 'Sur', 'Sandra Vega'),
(15, 15, '2026-05-15', 110, 15, 'Este', 'Nuria Blanco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nom_producto` varchar(100) NOT NULL,
  `precio_unidad_producto` int(5) NOT NULL,
  `numero_existencia_producto` int(3) NOT NULL,
  `categoria_producto` varchar(100) NOT NULL,
  `descuento_producto` int(5) NOT NULL,
  `cantidad_total_existencia_producto` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--
INSERT INTO `producto` (`id_producto`, `nom_producto`, `precio_unidad_producto`, `numero_existencia_producto`, `categoria_producto`, `descuento_producto`, `cantidad_total_existencia_producto`) VALUES
(1, 'Auriculares inalámbricos', 120, 50, 'Electrónica', 10, 50),
(2, 'Teclado mecánico', 85, 40, 'Periféricos', 5, 40),
(3, 'Ratón ergonómico', 45, 70, 'Periféricos', 0, 70),
(4, 'Monitor 24"', 230, 25, 'Pantallas', 15, 25),
(5, 'Impresora multifunción', 75, 30, 'Oficina', 10, 30),
(6, 'Cartucho tinta negro', 15, 120, 'Consumibles', 0, 120),
(7, 'Cable HDMI', 25, 80, 'Accesorios', 0, 80),
(8, 'Disco duro externo', 50, 45, 'Almacenamiento', 10, 45),
(9, 'Memoria USB 64GB', 18, 90, 'Almacenamiento', 0, 90),
(10, 'Router inalámbrico', 130, 35, 'Redes', 5, 35),
(11, 'Portátil 14"', 140, 15, 'Computación', 20, 15),
(12, 'Altavoces Bluetooth', 60, 40, 'Audio', 10, 40),
(13, 'Webcam HD', 40, 50, 'Video', 0, 50),
(14, 'Soporte para portátil', 5, 100, 'Accesorios', 0, 100),
(15, 'Tablet 10"', 110, 20, 'Computación', 15, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `departamento_join`
--
ALTER TABLE `departamento_join`
  ADD PRIMARY KEY (`codigo_departamento`);

--
-- Indices de la tabla `elementos_linea`
--
ALTER TABLE `elementos_linea`
  ADD PRIMARY KEY (`id_elementos_linea`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `empleado_join`
--
ALTER TABLE `empleado_join`
  ADD KEY `empleado_join_ibfk_1` (`codigo_departamento`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento_join`
--
ALTER TABLE `departamento_join`
  MODIFY `codigo_departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `elementos_linea`
--
ALTER TABLE `elementos_linea`
  ADD CONSTRAINT `elementos_linea_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`),
  ADD CONSTRAINT `elementos_linea_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `empleado_join`
--
ALTER TABLE `empleado_join`
  ADD CONSTRAINT `empleado_join_ibfk_1` FOREIGN KEY (`codigo_departamento`) REFERENCES `departamento_join` (`codigo_departamento`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
