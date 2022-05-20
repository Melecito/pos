-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2022 a las 17:59:53
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `look_y_cuidado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `IdCitas` int(11) NOT NULL,
  `CitaFecha` date DEFAULT NULL,
  `Color` varchar(50) NOT NULL,
  `CitHora` time DEFAULT NULL,
  `IdMedicoV` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdMascota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) NOT NULL,
  `Cedula` varchar(15) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Celular` varchar(20) NOT NULL,
  `Genero` enum('m','f') NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `IdMedicoV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `IdCompra` int(11) NOT NULL,
  `FechaComp` date DEFAULT NULL,
  `IdCliente` int(11) NOT NULL,
  `CodProduc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `IdMascota` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Raza` varchar(20) NOT NULL,
  `Genero` enum('m','f') NOT NULL,
  `IdMedicoV` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicoveterinario`
--

CREATE TABLE `medicoveterinario` (
  `IdMedicoV` int(11) NOT NULL,
  `Celular` varchar(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Especialidad` varchar(50) NOT NULL,
  `Consultorio` char(3) NOT NULL,
  `Genero` enum('m','f') NOT NULL,
  `Correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `CodProduc` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Cantidad` varchar(50) NOT NULL,
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(11, 'Liliana M Diaz', 'liliD', '$2a$07$usesomesillystringforemVnaGTCxgHkYewdsGlWFgUGKQ9SlWNO', 'Vendedor', 'vistas/img/usuarios/liliD/221.jpeg', 1, '2022-05-20 08:25:59', '2022-05-20 13:25:59'),
(12, 'Jorge Miranda', 'JorgeO', '$2a$07$usesomesillystringforeBrAObg1v2Mrkbobvqx763.gj3Kdetda', 'Almacenista', 'vistas/img/usuarios/JorgeO/833.png', 1, '2022-05-17 20:21:04', '2022-05-18 01:21:04'),
(14, 'Camilo Perez', 'CamiloP', '$2a$07$usesomesillystringforeNUTL2hpIRcyxJBbdJ8SCzPSlW8Vd18q', 'Almacenista', 'vistas/img/usuarios/CamiloP/637.jpeg', 1, '2022-05-15 16:56:18', '2022-05-15 21:56:18'),
(16, 'Ofelia Lopez', 'OfeL', '$2a$07$usesomesillystringforeXNOY6eCBvYQhq5DeZN/4Ey4zsMfz4bu', 'MedicoVet', 'vistas/img/usuarios/OfeL/138.png', 1, '2022-05-15 16:56:03', '2022-05-01 21:50:49'),
(18, 'Mateo Barrera', 'MateoB', '$2a$07$usesomesillystringforeYDxti85SMt1/EjaeB2qeDbtY8s5D4K6', 'Cajero', 'vistas/img/usuarios/MateoB/764.png', 1, '2022-05-17 08:57:46', '2022-05-17 13:57:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;