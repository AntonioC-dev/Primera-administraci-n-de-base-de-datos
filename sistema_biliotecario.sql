-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 15:25:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema biliotecario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Ciencia Ficción'),
(2, 'Historia'),
(3, 'Tecnología'),
(4, 'Literatura'),
(5, 'Filosofía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `encargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `nombre`, `apellido`, `encargo`) VALUES
(1, 'Carlos', 'Martínez', 'Jefe de Biblioteca'),
(2, 'Ana', 'López', 'Asistente'),
(3, 'Luis', 'García', 'Catalogador'),
(4, 'María', 'Hernández', 'Recepcionista'),
(5, 'Jorge', 'Pérez', 'Asistente'),
(6, 'Sofía', 'Ramírez', 'Catalogador'),
(7, 'Diego', 'Torres', 'Seguridad'),
(8, 'Valeria', 'Flores', 'Asistente'),
(9, 'Roberto', 'Díaz', 'Recepcionista'),
(10, 'Patricia', 'Morales', 'Jefe de Turno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `año` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `nombre`, `autor`, `año`) VALUES
(1, 'Dune', 'Frank Herbert', '1965-01-01'),
(2, 'Sapiens', 'Yuval Noah Harari', '2011-01-01'),
(3, 'El mundo de Sofia', 'Jostein Gaarder', '1991-01-01'),
(4, 'Clean Code', 'Robert C. Martin', '2008-01-01'),
(5, 'Fahrenheit 451', 'Ray Bradbury', '1953-01-01'),
(6, 'Breve Historia del Tiempo', 'Stephen Hawking', '1988-01-01'),
(7, 'El Quijote', 'Miguel de Cervantes', '1605-01-01'),
(8, 'La República', 'Platón', '0380-01-01'),
(9, 'Inteligencia Artificial', 'Stuart Russell', '1995-01-01'),
(10, '1984', 'George Orwell', '1949-01-01'),
(11, 'Crimen y Castigo', 'Fyodor Dostoievski', '1866-01-01'),
(12, 'El Arte de la Guerra', 'Sun Tzu', '0500-01-01'),
(13, 'Cosmos', 'Carl Sagan', '1980-01-01'),
(14, 'Harry Potter', 'J.K. Rowling', '1997-01-01'),
(15, 'The Pragmatic Programmer', 'Andrew Hunt', '1999-01-01'),
(16, 'Cien Años de Soledad', 'Gabriel García Márquez', '1967-01-01'),
(17, 'Más Platón y Menos Prozac', 'Lou Marinoff', '1999-01-01'),
(18, 'Así Habló Zaratustra', 'Friedrich Nietzsche', '1883-01-01'),
(19, 'El Señor de los Anillos', 'J.R.R. Tolkien', '1954-01-01'),
(20, 'Historia de Roma', 'Theodor Mommsen', '1854-01-01'),
(21, 'Python Crash Course', 'Eric Matthes', '2015-01-01'),
(22, 'La Odisea', 'Homero', '0800-01-01'),
(23, 'El Ser y la Nada', 'Jean-Paul Sartre', '1943-01-01'),
(24, 'Fundación', 'Isaac Asimov', '1951-01-01'),
(25, 'Armas Gérmenes y Acero', 'Jared Diamond', '1997-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `id` int(11) NOT NULL,
  `id_libro` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `estado` varchar(255) NOT NULL,
  `fecha_prestamo` datetime NOT NULL,
  `fecha_devolucion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`id`, `id_libro`, `id_usuario`, `id_empleado`, `id_categoria`, `estado`, `fecha_prestamo`, `fecha_devolucion`) VALUES
(1, 1, 1, 1, NULL, 'devuelto', '2024-01-05 09:00:00', '2024-01-15 10:00:00'),
(2, 2, 2, 2, NULL, 'devuelto', '2024-01-10 10:30:00', '2024-01-20 09:00:00'),
(3, 3, 3, 3, NULL, 'devuelto', '2024-02-01 11:00:00', '2024-02-10 11:00:00'),
(4, 4, 4, 4, NULL, 'activo', '2024-02-15 08:00:00', NULL),
(5, 5, 5, 5, NULL, 'activo', '2024-03-01 09:30:00', NULL),
(6, 6, 6, 6, NULL, 'vencido', '2024-03-05 10:00:00', NULL),
(7, 7, 7, 7, NULL, 'devuelto', '2024-03-10 14:00:00', '2024-03-20 14:00:00'),
(8, 8, 8, 8, NULL, 'devuelto', '2024-03-15 09:00:00', '2024-03-25 09:00:00'),
(9, 9, 9, 9, NULL, 'activo', '2024-04-01 10:00:00', NULL),
(10, 10, 10, 10, NULL, 'vencido', '2024-04-05 11:00:00', NULL),
(11, 11, 11, 1, NULL, 'devuelto', '2024-04-10 08:30:00', '2024-04-20 08:30:00'),
(12, 12, 12, 2, NULL, 'activo', '2024-04-15 09:00:00', NULL),
(13, 13, 13, 3, NULL, 'devuelto', '2024-05-01 10:00:00', '2024-05-11 10:00:00'),
(14, 14, 14, 4, NULL, 'vencido', '2024-05-05 11:30:00', NULL),
(15, 15, 15, 5, NULL, 'devuelto', '2024-05-10 12:00:00', '2024-05-20 12:00:00'),
(16, 16, 16, 6, NULL, 'activo', '2024-05-15 08:00:00', NULL),
(17, 17, 17, 7, NULL, 'devuelto', '2024-06-01 09:00:00', '2024-06-11 09:00:00'),
(18, 18, 18, 8, NULL, 'vencido', '2024-06-05 10:30:00', NULL),
(19, 19, 19, 9, NULL, 'devuelto', '2024-06-10 11:00:00', '2024-06-20 11:00:00'),
(20, 20, 20, 10, NULL, 'activo', '2024-06-15 14:00:00', NULL),
(21, 21, 21, 1, NULL, 'devuelto', '2024-07-01 09:00:00', '2024-07-11 09:00:00'),
(22, 22, 22, 2, NULL, 'activo', '2024-07-05 10:00:00', NULL),
(23, 23, 23, 3, NULL, 'vencido', '2024-07-10 11:00:00', NULL),
(24, 24, 24, 4, NULL, 'devuelto', '2024-07-15 08:00:00', '2024-07-25 08:00:00'),
(25, 25, 25, 5, NULL, 'activo', '2024-08-01 09:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `Codigo_de_identificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `Codigo_de_identificacion`) VALUES
(1, 'Juan', 'Castillo', 10234567),
(2, 'Laura', 'Mendoza', 20345678),
(3, 'Pedro', 'Vásquez', 30456789),
(4, 'Gabriela', 'Reyes', 40567890),
(5, 'Fernando', 'Cruz', 50678901),
(6, 'Isabella', 'Ortega', 60789012),
(7, 'Andrés', 'Vargas', 70890123),
(8, 'Camila', 'Jiménez', 80901234),
(9, 'Ricardo', 'Rojas', 90012345),
(10, 'Natalia', 'Guerrero', 11223344),
(11, 'Héctor', 'Salinas', 22334455),
(12, 'Daniela', 'Aguilar', 33445566),
(13, 'Miguel', 'Sandoval', 44556677),
(14, 'Verónica', 'Ibáñez', 55667788),
(15, 'Alejandro', 'Fuentes', 66778899),
(16, 'Mónica', 'Paredes', 77889900),
(17, 'Cristian', 'Ríos', 88990011),
(18, 'Paola', 'Soto', 99001122),
(19, 'Esteban', 'Cabrera', 10112233),
(20, 'Lucía', 'Miranda', 20223344),
(21, 'Sebastián', 'Peña', 30334455),
(22, 'Claudia', 'Escobar', 40445566),
(23, 'Marcos', 'Villanueva', 50556677),
(24, 'Teresa', 'Medina', 60667788),
(25, 'Gonzalo', 'Acosta', 70778899);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_libro` (`id_libro`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id`),
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `prestamo_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`),
  ADD CONSTRAINT `prestamo_ibfk_4` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
