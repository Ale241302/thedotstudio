-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2023 a las 00:06:44
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capacitaciones`
--

CREATE TABLE `capacitaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `cupo` varchar(45) NOT NULL,
  `fechai` date NOT NULL,
  `fechaf` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `capacitaciones`
--

INSERT INTO `capacitaciones` (`id`, `nombre`, `descripcion`, `cupo`, `fechai`, `fechaf`) VALUES
(7, 'CAP7', 'Cap7', '11', '2023-04-29', '2023-04-29'),
(8, 'CAP8', 'CAP8', '8', '2023-04-29', '2023-05-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `accion` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id`, `usuario`, `accion`, `fecha`) VALUES
(1, 'Ale132402', 'Creacion de Usuario', '2023-04-28 20:37:41'),
(2, 'Ale132402', 'Cerró sesión', '2023-04-28 20:37:47'),
(3, 'ANG132402', 'Creacion de Usuario', '2023-04-28 20:54:18'),
(4, 'ANG132402', 'Cerró sesión', '2023-04-28 20:54:23'),
(5, 'Ale132402', 'Creacion de Usuario', '2023-04-28 21:26:32'),
(6, 'Ale132402', 'Inicio de sesión', '2023-04-28 21:27:17'),
(7, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-28 21:33:09'),
(8, 'Ale132402', 'Inicio de sesión', '2023-04-28 21:34:24'),
(9, 'Ale132402', 'Inicio de sesión', '2023-04-28 21:59:01'),
(10, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-28 21:59:46'),
(11, 'Ale132402', 'Inicio de sesión', '2023-04-28 22:00:43'),
(12, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-28 22:01:28'),
(13, 'Ale132402', 'Inicio de sesión', '2023-04-28 22:28:37'),
(14, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-28 22:29:22'),
(15, 'Ale132402', 'Inicio de sesión', '2023-04-28 22:29:33'),
(16, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-28 22:31:06'),
(17, 'Ale132402', 'Inicio de sesión', '2023-04-28 23:52:16'),
(18, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-28 23:52:51'),
(19, 'Ale132402', 'Cerró sesión', '2023-04-29 00:00:30'),
(20, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:02:35'),
(21, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:04:41'),
(22, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:06:29'),
(23, 'Ale132402', 'Cerró sesión', '2023-04-29 00:07:13'),
(24, 'Ale132402', 'Cerró sesión', '2023-04-29 00:07:42'),
(25, 'ANG132402', 'Creacion de Usuario', '2023-04-29 00:09:12'),
(26, 'ANG132402', 'Cerró sesión', '2023-04-29 00:09:25'),
(27, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:12:12'),
(28, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:34:51'),
(29, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:39:47'),
(30, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:46:19'),
(31, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:48:03'),
(32, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:49:11'),
(33, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 00:50:37'),
(34, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 01:03:59'),
(35, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 01:05:21'),
(36, 'Ale132402', 'Cerró sesión', '2023-04-29 01:29:31'),
(37, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 01:42:18'),
(38, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 01:45:19'),
(39, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 01:47:46'),
(40, 'Ale132402', 'Cierre forzado', '2023-04-29 02:00:36'),
(41, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:16:49'),
(42, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:20:26'),
(43, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:21:42'),
(44, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:25:38'),
(45, 'Ale132402', 'Cerró sesión', '2023-04-29 03:27:35'),
(46, 'Ale132402', 'Cerró sesión', '2023-04-29 03:27:37'),
(47, 'Ale132402', 'Cerró sesión', '2023-04-29 03:27:39'),
(48, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:29:24'),
(49, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:31:01'),
(50, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:35:13'),
(51, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:38:32'),
(52, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:41:51'),
(53, 'Ale132402', 'Cerró sesión', '2023-04-29 03:44:28'),
(54, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:49:40'),
(55, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:51:37'),
(56, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:55:33'),
(57, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 03:58:07'),
(58, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 04:03:51'),
(59, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 04:14:43'),
(60, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 05:01:17'),
(61, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 05:02:20'),
(62, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 05:06:05'),
(63, 'ANG132402', 'Cerró sesión', '2023-04-29 05:18:13'),
(64, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 05:20:19'),
(65, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 05:22:26'),
(66, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 05:24:58'),
(67, 'Ale132402', 'Cerró sesión', '2023-04-29 15:35:25'),
(68, 'Ale132402', 'Cerró sesión', '2023-04-29 15:49:12'),
(69, 'Ale132402', 'Cerró sesión', '2023-04-29 15:49:14'),
(70, 'Ale132402', 'Cerró sesión', '2023-04-29 15:49:16'),
(71, 'DNI132402', 'Creacion de Usuario', '2023-04-29 15:55:36'),
(72, 'DNI132402', 'Cerró sesión', '2023-04-29 15:56:39'),
(73, 'Ale132402', 'Cerró sesión', '2023-04-29 16:11:11'),
(74, 'Ale132402', 'Cerró sesión', '2023-04-29 16:11:13'),
(75, 'Ale132402', 'Inicio de sesión', '2023-04-29 16:12:15'),
(76, 'Ale132402', 'Cerró sesión', '2023-04-29 16:12:26'),
(77, 'Ale132402', 'Inicio de sesión', '2023-04-29 16:12:44'),
(78, 'Ale132402', 'Cerró sesión', '2023-04-29 16:14:42'),
(79, 'ANG132402', 'Inicio de sesión', '2023-04-29 16:14:54'),
(80, 'ANG132402', 'Cerró sesión', '2023-04-29 16:17:43'),
(81, 'Ale132402', 'Inicio de sesión', '2023-04-29 16:18:21'),
(82, 'Ale132402', 'Cerró sesión', '2023-04-29 16:24:53'),
(83, 'Ale132402', 'Cerró sesión', '2023-04-29 16:24:55'),
(84, 'Ale132402', 'Inicio de sesión', '2023-04-29 16:25:06'),
(85, 'Ale132402', 'Cerró sesión', '2023-04-29 16:40:56'),
(86, 'Ale132402', 'Cerró sesión', '2023-04-29 16:40:58'),
(87, 'Ale132402', 'Inicio de sesión', '2023-04-29 16:41:08'),
(88, 'Ale132402', 'Cerró sesión', '2023-04-29 16:46:14'),
(89, 'Ale132402', 'Inicio de sesión', '2023-04-29 16:46:24'),
(90, 'Ale132402', 'Cerró sesión', '2023-04-29 16:48:13'),
(91, 'Ale132402', 'Inicio de sesión', '2023-04-29 16:48:52'),
(92, 'Ale132402', 'Cierre forzado', '2023-04-29 17:28:01'),
(93, 'ANG132402', 'Inicio de sesión', '2023-04-29 17:28:10'),
(94, 'ANG132402', 'Cerró sesión', '2023-04-29 17:36:10'),
(95, 'Ale132402', 'Inicio de sesión', '2023-04-29 17:36:25'),
(96, 'Ale132402', 'Cerró sesión', '2023-04-29 17:41:22'),
(97, 'Ale132402', 'Inicio de sesión', '2023-04-29 17:45:44'),
(98, 'Ale132402', 'Cerró sesión', '2023-04-29 17:46:08'),
(99, 'Ale132402', 'Inicio de sesión', '2023-04-29 17:48:34'),
(100, 'Ale132402', 'Cierre forzado', '2023-04-29 17:49:52'),
(101, 'Ale132402', 'Inicio de sesión', '2023-04-29 18:05:32'),
(102, 'Ale132402', 'Cierre forzado', '2023-04-29 18:05:45'),
(103, 'Ale132402', 'Inicio de sesión', '2023-04-29 19:23:24'),
(104, 'Ale132402', 'Cerró sesión', '2023-04-29 19:23:58'),
(105, 'ANG132402', 'Inicio de sesión', '2023-04-29 19:24:09'),
(106, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 19:32:28'),
(107, 'Ale132402', 'Inicio de sesión', '2023-04-29 19:41:45'),
(108, 'Ale132402', 'Cerró sesión', '2023-04-29 19:41:55'),
(109, 'Ale132402', 'Cerró sesión', '2023-04-29 19:41:57'),
(110, 'ANG132402', 'Inicio de sesión', '2023-04-29 19:42:08'),
(111, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 19:44:25'),
(112, 'ANG132402', 'Inicio de sesión', '2023-04-29 19:44:56'),
(113, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 19:51:43'),
(114, 'ANG132402', 'Inicio de sesión', '2023-04-29 19:51:56'),
(115, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 19:52:57'),
(116, 'ANG132402', 'Inicio de sesión', '2023-04-29 19:53:28'),
(117, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 19:54:23'),
(118, 'ANG132402', 'Inicio de sesión', '2023-04-29 19:55:40'),
(119, 'ANG132402', 'Cerró sesión', '2023-04-29 19:57:12'),
(120, 'Ale132402', 'Inicio de sesión', '2023-04-29 19:57:23'),
(121, 'Ale132402', 'Cerró sesión', '2023-04-29 19:57:53'),
(122, 'ANG132402', 'Inicio de sesión', '2023-04-29 20:53:06'),
(123, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 21:00:07'),
(124, 'ANG132402', 'Inicio de sesión', '2023-04-29 21:02:07'),
(125, 'ANG132402', 'Cerró sesión', '2023-04-29 21:06:04'),
(126, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:14:00'),
(127, 'Ale132402', 'Cerró sesión', '2023-04-29 21:14:13'),
(128, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:15:01'),
(129, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 21:15:35'),
(130, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:17:06'),
(131, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 21:18:01'),
(132, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:22:10'),
(133, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 21:23:10'),
(134, 'ANG132402', 'Inicio de sesión', '2023-04-29 21:25:23'),
(135, 'ANG132402', 'Cerró sesión', '2023-04-29 21:26:35'),
(136, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:28:00'),
(137, 'Ale132402', 'Cerró sesión', '2023-04-29 21:28:32'),
(138, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:33:54'),
(139, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 21:34:47'),
(140, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:39:21'),
(141, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 21:42:54'),
(142, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:43:56'),
(143, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 21:44:46'),
(144, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:44:56'),
(145, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 21:50:12'),
(146, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:51:12'),
(147, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 21:52:52'),
(148, 'Ale132402', 'Inicio de sesión', '2023-04-29 21:53:09'),
(149, 'Ale132402', 'Cerró sesión', '2023-04-29 21:53:30'),
(150, 'ANG132402', 'Inicio de sesión', '2023-04-29 21:53:42'),
(151, 'ANG132402', 'Cerró sesión', '2023-04-29 21:57:45'),
(152, 'Ale132402', 'Inicio de sesión', '2023-04-29 22:00:48'),
(153, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 22:01:38'),
(154, 'Ale132402', 'Inicio de sesión', '2023-04-29 22:02:20'),
(155, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 22:04:39'),
(156, 'Ale132402', 'Inicio de sesión', '2023-04-29 22:05:10'),
(157, 'Ale132402', 'Cerró sesión', '2023-04-29 22:05:35'),
(158, 'Ale132402', 'Inicio de sesión', '2023-04-29 22:07:05'),
(159, 'Ale132402', 'Cerró sesión', '2023-04-29 22:08:00'),
(160, 'ANG132402', 'Inicio de sesión', '2023-04-29 22:08:25'),
(161, 'ANG132402', 'Cierre forzado', '2023-04-29 22:09:25'),
(162, 'Ale132402', 'Inicio de sesión', '2023-04-29 22:43:20'),
(163, 'Ale132402', 'Cerró sesión', '2023-04-29 22:43:49'),
(164, 'ANG132402', 'Inicio de sesión', '2023-04-29 22:44:22'),
(165, 'ANG132402', 'Cerró sesión', '2023-04-29 22:46:13'),
(166, 'ANG132402', 'Inicio de sesión', '2023-04-29 22:57:56'),
(167, 'ANG132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 23:00:18'),
(168, 'ANG132402', 'Inicio de sesión', '2023-04-29 23:02:15'),
(169, 'ANG132402', 'Cerró sesión', '2023-04-29 23:07:45'),
(170, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:12:49'),
(171, 'Ale132402', 'Cerró sesión', '2023-04-29 23:12:58'),
(172, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:15:27'),
(173, 'Ale132402', 'Cerró sesión', '2023-04-29 23:15:42'),
(174, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:19:08'),
(175, 'Ale132402', 'Cerró sesión', '2023-04-29 23:19:53'),
(176, 'ANG132402', 'Inicio de sesión', '2023-04-29 23:20:03'),
(177, 'ANG132402', 'Cerró sesión', '2023-04-29 23:20:10'),
(178, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:20:56'),
(179, 'Ale132402', 'Cerró sesión', '2023-04-29 23:22:19'),
(180, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:24:10'),
(181, 'Ale132402', 'Cerró sesión', '2023-04-29 23:25:08'),
(182, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:28:06'),
(183, 'Ale132402', 'Cerró sesión', '2023-04-29 23:28:19'),
(184, 'ANG132402', 'Inicio de sesión', '2023-04-29 23:28:41'),
(185, 'ANG132402', 'Cerró sesión', '2023-04-29 23:29:24'),
(186, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:29:38'),
(187, 'Ale132402', 'Cerró sesión', '2023-04-29 23:29:51'),
(188, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:30:24'),
(189, 'Ale132402', 'Cerró sesión', '2023-04-29 23:30:49'),
(190, 'DNI132402', 'Inicio de sesión', '2023-04-29 23:31:03'),
(191, 'DNI132402', 'Cerró sesión', '2023-04-29 23:31:12'),
(192, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:36:43'),
(193, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 23:38:15'),
(194, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:38:46'),
(195, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 23:41:41'),
(196, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:43:21'),
(197, 'Ale132402', 'Cerró sesión', '2023-04-29 23:44:27'),
(198, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:48:00'),
(199, 'Ale132402', 'Cerró sesión', '2023-04-29 23:48:21'),
(200, 'ANG132402', 'Inicio de sesión', '2023-04-29 23:49:24'),
(201, 'ANG132402', 'Cerró sesión', '2023-04-29 23:51:23'),
(202, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:52:25'),
(203, 'Ale132402', 'Sesion Cerrada Por Inactividad', '2023-04-29 23:53:19'),
(204, 'Ale132402', 'Inicio de sesión', '2023-04-29 23:59:52'),
(205, 'Ale132402', 'Cerró sesión', '2023-04-30 00:00:29'),
(206, 'CA132402', 'Creacion de Usuario', '2023-04-30 00:01:28'),
(207, 'CA132402', 'Cerró sesión', '2023-04-30 00:01:40'),
(208, 'CA132402', 'Creacion de Usuario', '2023-04-30 00:04:22'),
(209, 'CA132402', 'Cierre forzado', '2023-04-30 00:05:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `nombre`) VALUES
(1, 'usuario'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `nombre`, `correo`, `telefono`, `rol`) VALUES
(1, 'Ale132402', 'MTMyNDAy', 'Ale132402', '132402', '132402', 1),
(2, 'ANG132402', 'MTMyNDAy', 'ANG132402', '132402', '132402', 2),
(3, 'DNI132402', 'MTMyNDAy', 'DNI', '132402', '132402', 1),
(5, 'CA132402', 'MTMyNDAy', 'CA132402', '132402', '132402', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_has_capacitaciones`
--

CREATE TABLE `usuario_has_capacitaciones` (
  `usuario` int(11) NOT NULL,
  `Capacitacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_has_capacitaciones`
--

INSERT INTO `usuario_has_capacitaciones` (`usuario`, `Capacitacion`) VALUES
(1, 7),
(1, 8),
(2, 7),
(3, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capacitaciones`
--
ALTER TABLE `capacitaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_Rol_idx` (`rol`);

--
-- Indices de la tabla `usuario_has_capacitaciones`
--
ALTER TABLE `usuario_has_capacitaciones`
  ADD PRIMARY KEY (`usuario`,`Capacitacion`),
  ADD KEY `fk_usuario_has_Capacitaciones_Capacitaciones1_idx` (`Capacitacion`),
  ADD KEY `fk_usuario_has_Capacitaciones_usuario1_idx` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `capacitaciones`
--
ALTER TABLE `capacitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_Rol` FOREIGN KEY (`rol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_has_capacitaciones`
--
ALTER TABLE `usuario_has_capacitaciones`
  ADD CONSTRAINT `fk_usuario_has_Capacitaciones_Capacitaciones1` FOREIGN KEY (`Capacitacion`) REFERENCES `capacitaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_has_Capacitaciones_usuario1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
