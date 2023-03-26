-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-03-2023 a las 02:53:44
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escobedo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

DROP TABLE IF EXISTS `contactos`;
CREATE TABLE IF NOT EXISTS `contactos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) DEFAULT NULL,
  `apellido` varchar(500) DEFAULT NULL,
  `correo` varchar(500) DEFAULT NULL,
  `mensaje` varchar(10000) DEFAULT NULL,
  `activo` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedidoweb`
--

DROP TABLE IF EXISTS `detallespedidoweb`;
CREATE TABLE IF NOT EXISTS `detallespedidoweb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productollanta_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `preciounitario` decimal(10,2) DEFAULT NULL,
  `pedidoweb_id` int DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detallespedidoweb`
--

INSERT INTO `detallespedidoweb` (`id`, `productollanta_id`, `cantidad`, `preciounitario`, `pedidoweb_id`, `importe`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '250.00', 1, '250.00', '2023-03-22 19:09:22', '2023-03-22 19:09:22'),
(2, 1, 5, '250.00', 2, '1250.00', '2023-03-23 03:59:36', '2023-03-23 03:59:36'),
(3, 2, 2, '500.50', 2, '1001.00', '2023-03-23 03:59:36', '2023-03-23 03:59:36'),
(4, 1, 1, '250.00', 3, '250.00', '2023-03-23 05:40:12', '2023-03-23 05:40:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimensionllanta`
--

DROP TABLE IF EXISTS `dimensionllanta`;
CREATE TABLE IF NOT EXISTS `dimensionllanta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dimension` varchar(500) DEFAULT NULL,
  `numrin_id` int NOT NULL,
  `activo` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dimensionllanta`
--

INSERT INTO `dimensionllanta` (`id`, `dimension`, `numrin_id`, `activo`, `created_at`, `updated_at`) VALUES
(1, '175/70R13', 3, '1', '2023-03-26 01:14:27', '2023-03-26 01:22:03'),
(2, '185/60R14', 1, '1', '2023-03-26 01:39:24', '2023-03-26 01:39:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llantas`
--

DROP TABLE IF EXISTS `llantas`;
CREATE TABLE IF NOT EXISTS `llantas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombrellanta` varchar(500) DEFAULT NULL,
  `marca_id` int DEFAULT NULL,
  `dimension_id` int DEFAULT NULL,
  `imagen` varchar(1000) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `llantas`
--

INSERT INTO `llantas` (`id`, `nombrellanta`, `marca_id`, `dimension_id`, `imagen`, `precio`, `descripcion`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'Llanta De Emergencia', 2, 2, 'llanta.png', '250.00', 'llanta para cualquier emergencia', 1, '2023-03-11 17:14:43', '2023-03-12 10:54:05'),
(2, 'Llanta Michelin Ultra Fast', 1, 1, 'michelinll.png', '500.50', 'Para un carro especial', 1, '2023-03-25 19:41:44', '2023-03-26 01:41:44'),
(3, 'Goodyear', 2, 2, 'logo.png', '250.00', 'llanta de buena calidad', 1, '2023-03-25 19:39:33', '2023-03-26 01:39:33'),
(4, 'Tornel', 2, 2, 'michelinll.png', '500.50', 'Para una fecha especial', 1, '2023-03-26 02:55:19', '2023-03-26 02:55:19'),
(5, 'Roadking', 2, 2, 'llanta.png', '250.00', 'llanta de buena calidad', 1, '2023-03-26 02:55:53', '2023-03-26 02:55:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imagen` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nombremarca` varchar(500) DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `imagen`, `nombremarca`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'marcamiche.png', 'Miche', 1, '2023-03-01 10:33:23', '2023-03-01 11:12:42'),
(2, 'bri.png', 'Bridgestone', 1, '2023-03-01 11:13:24', '2023-03-01 11:13:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2023_03_17_153918_create_sessions_table', 1),
(21, '2023_03_17_161705_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 103),
(1, 'App\\Models\\User', 104),
(2, 'App\\Models\\User', 105),
(1, 'App\\Models\\User', 106);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numerorin`
--

DROP TABLE IF EXISTS `numerorin`;
CREATE TABLE IF NOT EXISTS `numerorin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numrin` varchar(500) DEFAULT NULL,
  `tipovehiculo_id` int DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `numerorin`
--

INSERT INTO `numerorin` (`id`, `numrin`, `tipovehiculo_id`, `activo`, `created_at`, `updated_at`) VALUES
(1, '14', 1, 1, '2023-03-25 19:52:42', '2023-03-26 01:52:42'),
(2, '24', 2, 1, '2023-03-25 19:52:51', '2023-03-26 01:52:51'),
(3, '13', 1, 1, '2023-03-25 19:51:03', '2023-03-26 01:51:03'),
(4, '18', 1, 1, '2023-03-26 01:46:27', '2023-03-26 01:46:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidosweb`
--

DROP TABLE IF EXISTS `pedidosweb`;
CREATE TABLE IF NOT EXISTS `pedidosweb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) DEFAULT NULL,
  `apellido` varchar(500) DEFAULT NULL,
  `compania` varchar(500) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `estado_pais` varchar(500) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `celular` varchar(500) DEFAULT NULL,
  `nota` varchar(500) DEFAULT NULL,
  `subtotal` varchar(500) DEFAULT NULL,
  `total` varchar(500) DEFAULT NULL,
  `ventahecha` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidosweb`
--

INSERT INTO `pedidosweb` (`id`, `nombre`, `apellido`, `compania`, `direccion`, `estado_pais`, `cp`, `email`, `celular`, `nota`, `subtotal`, `total`, `ventahecha`, `created_at`, `updated_at`) VALUES
(1, 'Karina', 'LLEscobedo', 'KarianM', 'Fracc. Pedregales, calle 62 691 x 45, y 45A, Cd Caucel, 97314 Caucel, Yuc.', 'Merida, Yucatan', 97314, 'karinamoo414@gmail.com', '99999999999', 'jvsakdb', '250.00', '250.00', 0, '2023-03-22 19:09:22', '2023-03-22 19:09:22'),
(2, 'Fernando', 'LLEscobedo', 'KarianM', 'Fracc. Pedregales, calle 62 691 x 45, y 45A, Cd Caucel, 97314 Caucel, Yuc.', 'Merida, Yucatan', 97314, 'karinamoo414@gmail.com', '99999999999', NULL, '2,251.00', '2,251.00', 1, '2023-03-22 22:02:29', '2023-03-23 04:02:29'),
(3, 'Karina', 'LLEscobedo', 'fert', 'Fracc. Pedregales, calle 62 691 x 45, y 45A, Cd Caucel, 97314 Caucel, Yuc.', 'Merida, Yucatan', 97314, 'karinamoo414@gmail.com', '99999999999', NULL, '250.00', '250.00', 0, '2023-03-23 05:40:12', '2023-03-23 05:40:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin.inicio', 'web', '2023-03-17 23:09:34', '2023-03-17 23:09:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', '2023-03-17 23:09:34', '2023-03-17 23:09:34'),
(2, 'Cliente', 'web', '2023-03-17 23:09:34', '2023-03-17 23:09:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

DROP TABLE IF EXISTS `servicios`;
CREATE TABLE IF NOT EXISTS `servicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreservicio` varchar(500) DEFAULT NULL,
  `descripcionservicio` varchar(1000) DEFAULT NULL,
  `imagen` varchar(1000) DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombreservicio`, `descripcionservicio`, `imagen`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'Reparacion', 'Ayudamos a gente en problemas con su vehiculo', 'Screenshot_1.png', 1, '2023-03-08 10:55:31', '2023-03-08 10:58:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

DROP TABLE IF EXISTS `sesion`;
CREATE TABLE IF NOT EXISTS `sesion` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('aA69CRHmgmyYSeykVa8MG6qHEu1wT2lwA0FTMoBS', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidjdhTHpNa1pRZ0VFcFdMUzd5emZ3UnQ3REdiZlFsbXliMjkyZ3hNUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbC5sbGVzY29iZWRvL3RpZW5kYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1679798940),
('Chme6UT8WVMT40rOCzwaikNOzmfmK7XqqPAHbSXe', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSk9VSmNKazdXTTFLQml2NGc2VTQ1Wjl4RU12Mk1CbERxNjhKT3BkMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9sb2NhbC5sbGVzY29iZWRvL3RpZW5kYT9idXNjYXJub21icmU9Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1679797430),
('EZSYU3UEugZ8aAX8JXRAcx0uaVvFfH2Z3mfcfRaV', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjJxWTBIN0xkeFdPU1dGUHdCMGpMSFRad0FuWHR5OUdyNjFMOHRhMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbC5sbGVzY29iZWRvL3RpZW5kYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679797430),
('HrBkEOPFuGozu1Ls0sb7GDvkplyZhbtOtKWvh0Mz', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHhrUUx6NWxDMjJvSEVwdGtCSUdrUXF3Q1ZkcmRpMmxYblFWZlhBMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbC5sbGVzY29iZWRvL3RpZW5kYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679798278),
('iTa0M9eGIxjoxAKfDAu9HyqZ5OumG6wE17MRxH4K', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXJXWUhYbzZva3lPV25HMTZKY0pZNk5XbTBUd3hzTVcyTXJvRG8xTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbC5sbGVzY29iZWRvL3RpZW5kYT9yaW49MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679798278),
('m2acwuHdz4vJDIVzpCUfD2wVK3tepGTuUfpnkrNo', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzJoMTRoeUdvY2R4NmVaSERJZ2RKd3RtdTFTOGxnNzlSNG5BRE85MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9sb2NhbC5sbGVzY29iZWRvL3RpZW5kYT9idXNjYXJub21icmU9Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1679792465),
('wEFeMTWWr1jmW7L1N2iap6LTBExld0uX3coCHWlR', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmlRTHJ1MFZKTW9QRmZTbENqR2tXVWl0NzBrelJCUWhMdHNydDNQMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbC5sbGVzY29iZWRvL3RpZW5kYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679792466),
('zw9U10cIJzaN63uSPKTPbKNxOnEzVWj5HvcoxmKn', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFFGSm01eTNsdmZCOTN3em1rcjdSTmpsejJZU0RxbkFjZ0hjS3czayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbC5sbGVzY29iZWRvL2xsYW50YS9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1679792405);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovehiculo`
--

DROP TABLE IF EXISTS `tipovehiculo`;
CREATE TABLE IF NOT EXISTS `tipovehiculo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehiculo` varchar(500) DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipovehiculo`
--

INSERT INTO `tipovehiculo` (`id`, `vehiculo`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'Automovil', 1, '2023-03-01 11:00:28', '2023-03-01 11:05:50'),
(2, 'camioneta', 1, '2023-03-25 19:52:29', '2023-03-26 01:52:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

DROP TABLE IF EXISTS `trabajadores`;
CREATE TABLE IF NOT EXISTS `trabajadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `telefono`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', NULL, NULL, '$2y$10$yotuBu6hGw1H1EEJsodqh.mfkZu7tXqIfJZucA9j1MJIj87OFU8mK', NULL, NULL, NULL, 'aUW903NtfFvi23EOw4Jtrpe0KlFYsPcGpHtKdst4JRLiOwxdDveY0QZiMNS5', NULL, NULL, '2023-03-17 23:09:34', '2023-03-17 23:09:34'),
(2, 'Cliente', 'cliente@mail.com', NULL, NULL, '$2y$10$JJX2WEf/m7UUSf7PW1kuIur.sW0/I763hbthP48V3RTgS35qiylhi', NULL, NULL, NULL, 'DqN8bHN9wm0FK4YvNzXUgy8c6p5zZ0Jmg7TEZXsoiwQDW1sGPDnNoFuSqCYF', NULL, NULL, '2023-03-17 23:09:34', '2023-03-17 23:09:34'),
(3, 'Marc Green', 'abagail.windler@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qtu1TitsaT', NULL, NULL, '2023-03-17 23:09:34', '2023-03-17 23:09:34'),
(4, 'Vada Schuppe', 'meda54@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5OE8eRGA8j', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(5, 'Mrs. Jeanie Smith', 'muhammad36@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'zZrjhlIRxA', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(6, 'Ms. Fiona Prosacco I', 'timmothy.fadel@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'fzTqQQhZZy', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(7, 'Claire Wyman', 'kpagac@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'VY5FaaXQ03', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(8, 'Ms. Gerda Metz', 'kira.dooley@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'aVi7u91zcJ', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(9, 'Zula Wintheiser', 'narciso35@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'H6dO81aIim', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(10, 'Prof. Jules Langosh', 'rowe.roberta@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vpwuJgPrxV', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(11, 'Prof. Darlene Miller II', 'krunolfsson@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'e1TaA93n0S', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(12, 'Marge Stoltenberg', 'ronny.kemmer@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'kmEcCUR7sx', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(13, 'Otilia Prosacco', 'burnice93@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '3Ynl5pSwed', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(14, 'Mariano Reilly', 'amber88@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'bez1P3yusc', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(15, 'Prof. Simeon Robel V', 'adaline30@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'RX0Wgu0B5o', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(16, 'Friedrich Koepp', 'zita52@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'aY00lZnhqN', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(17, 'Sylvia Kovacek', 'xcremin@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'FddXPKp8XD', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(18, 'Juvenal Gislason', 'swaniawski.hershel@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'N6flgsqmDr', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(19, 'Prof. Rosendo Green V', 'vebert@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0FOfm88Fzr', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(20, 'Vaughn Rath', 'reilly18@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'bNuv1tTkIV', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(21, 'Lilian Mueller', 'everardo.kemmer@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '26bieqbFsn', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(22, 'Howard Lesch', 'swaniawski.jazmyn@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'txkKz1ndTx', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(23, 'Alfred Raynor Sr.', 'anderson77@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'gLsR0k7EjW', NULL, NULL, '2023-03-17 23:09:35', '2023-03-17 23:09:35'),
(24, 'Aliyah Jakubowski', 'ohegmann@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yIVaLkPR6W', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(25, 'Miss Cortney Treutel DVM', 'hgoldner@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'KxwNL4mUgl', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(26, 'Mr. Garrick Cummings I', 'adriana52@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'afFTkjgOYm', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(27, 'Judson Hoeger', 'fletcher.herzog@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0TIu6PCDD5', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(28, 'Anahi Rowe', 'hazel.koch@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'UrxdYP38WW', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(29, 'Mr. Lambert Leffler', 'dannie.herman@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'zs73FvXAGg', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(30, 'Mr. Hadley D\'Amore', 'glenda08@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8gQAmy0Kh2', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(31, 'Robert Hermann', 'ondricka.magnus@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vUDOU7PHPQ', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(32, 'Miss Marion Schaefer', 'sydnee.turner@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Q4CUPKTuRx', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(33, 'Helmer Huel', 'aherzog@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'TR5aqHqQtN', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(34, 'Prof. Josiane Kozey', 'bschaefer@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '9nLth2eZvx', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(35, 'Barry Beer', 'eichmann.freeda@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Cn1Z6d5dkG', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(36, 'Prof. Elisha Wiegand IV', 'keira11@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'T4vM8HkTQq', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(37, 'Darwin Ledner MD', 'jbahringer@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xYwVhQOMk6', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(38, 'Jazmyne Reynolds', 'fstrosin@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0X1Flj3FWW', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(39, 'Louisa Hodkiewicz', 'andre26@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'AXOD9F1ODm', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(40, 'Prof. Roscoe Mayert', 'claire.wisoky@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'YyJ5lRgt1i', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(41, 'Dr. Braden Lebsack', 'narciso53@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ducT137MLZ', NULL, NULL, '2023-03-17 23:09:36', '2023-03-17 23:09:36'),
(42, 'Pearl Feeney', 'lina71@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'AyXHevykXI', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(43, 'Raegan Bartoletti', 'tschinner@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wfr5NEokQ4', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(44, 'Arlene Gislason', 'mazie.berge@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MfRF14NcWR', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(45, 'Wayne Kihn V', 'kuvalis.ubaldo@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0wJDvZA6MC', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(46, 'Paul Waters Sr.', 'holly.kuvalis@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'VUTLsTRoZx', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(47, 'Katarina Lind', 'frida.kunde@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'LT3Y8Z1qhi', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(48, 'Dayne Lehner DDS', 'thompson.hermina@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'KnYywp3ttI', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(49, 'Mr. Nathaniel Bailey DDS', 'qmiller@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Mv1MfSL93Z', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(50, 'Juston Morissette', 'frankie95@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'gaBxj4ghqc', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(51, 'Scarlett Kuphal', 'iva.walter@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'mDZ909Svie', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(52, 'Millie Senger I', 'pcartwright@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'XzXVVqNF0c', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(53, 'Shanelle Gusikowski', 'luther91@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'c2UMeZiC7V', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(54, 'Mr. Lafayette Rolfson PhD', 'blaze88@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'HAOoWCW3U1', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(55, 'Fabian Crooks', 'stacy.monahan@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'snQNXUyx9L', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(56, 'Dr. Sylvan Pouros DDS', 'uterry@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'F09zrigNOk', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(57, 'Mr. Rick Mohr MD', 'smith.valentine@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'sftjeIH3qx', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(58, 'Karolann Wehner', 'octavia.kovacek@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'm8ZVHRrcb5', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(59, 'Hilton Wolf Jr.', 'lkoelpin@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ykAboyC5I6', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(60, 'Mr. Stone Okuneva', 'marjolaine53@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'N8u9tbgK8p', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(61, 'Dr. Amari Funk Sr.', 'ikuphal@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'KcYh1w7qFI', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(62, 'Dr. Jamaal Gorczany', 'toy.fritz@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wyBNOJmFBw', NULL, NULL, '2023-03-17 23:09:37', '2023-03-17 23:09:37'),
(63, 'Prof. Marcelo Kohler', 'aniya.mcglynn@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 't7rSRrMGNS', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(64, 'Mrs. Daphnee Miller II', 'sylvester.hammes@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1Wj9wg2ry6', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(65, 'Garfield Marquardt', 'reba82@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'GGRZ0LJ6TS', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(66, 'Junior Sauer', 'schultz.malcolm@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'jJBXHING1U', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(67, 'Verlie Crist', 'helmer.bode@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'sZX1uZnnaM', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(68, 'Dr. Newton Eichmann V', 'kbalistreri@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'jpfLngIuo1', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(69, 'Raphael Lang', 'toby.schinner@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '05JIR24Iug', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(70, 'Dorothy Rosenbaum DDS', 'pfunk@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'hLo3X9Ad1s', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(71, 'Ms. Bethany Bartoletti', 'filomena.haag@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xXjmu1eGIg', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(72, 'Isaias Denesik', 'elaina.okon@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'OM0zkxSDEl', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(73, 'Gayle Dickinson', 'dietrich.chad@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'IoEHhiVXPZ', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(74, 'Alfonzo Gorczany', 'nolan.camilla@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'p3t5yT6Xln', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(75, 'Cordia Schuppe', 'mueller.rigoberto@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'UtPJJQrMQD', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(76, 'Amelie Hilpert', 'erdman.sienna@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'uDbXDGLYr2', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(77, 'Sasha Jenkins', 'dominique.damore@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8MnOBJfIUL', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(78, 'Ms. Emelie Feil', 'sipes.adam@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'N1NcmFbzk5', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(79, 'Mohamed Barton', 'hailie.carter@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '3THKaahbqX', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(80, 'Ophelia Jerde', 'jacobs.cayla@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'UvHJbaaLps', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(81, 'Prof. Natalia Streich', 'alicia.rice@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'SJeCOISe6P', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(82, 'Prof. Dee Hermiston Jr.', 'botsford.autumn@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'EuHEiARq5A', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(83, 'Wilfredo Rolfson', 'carli94@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NPz2j6ZGpG', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(84, 'Prof. Gaylord Stokes', 'aurelio15@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'CK6buW5a0K', NULL, NULL, '2023-03-17 23:09:38', '2023-03-17 23:09:38'),
(85, 'Jamey Dach', 'qquigley@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'X2GrlrONWa', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(86, 'Sibyl Bernhard', 'scarlett.schamberger@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'TIRiYLGzQ3', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(87, 'Naomie VonRueden', 'pwitting@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vsxw4tIBAd', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(88, 'Nadia Rice', 'charley03@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1i9q0juweV', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(89, 'Tess Jakubowski', 'margot81@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'fUkQkCggA5', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(90, 'Zion Emard DVM', 'dfunk@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Tw70U5hA7w', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(91, 'Niko Bernier', 'ogislason@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'fWxxsCzwwU', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(92, 'Alexandrine Fisher II', 'rbeahan@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1A9at1hkXz', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(93, 'Arjun Bergstrom', 'mherzog@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NtVGXLpXhK', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(94, 'Kallie Beahan', 'ida08@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 's6dWWDRRCq', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(95, 'Mireille Russel III', 'daphney.oconnell@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'lDsUbrXiYp', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(96, 'Prof. Karson Howell DVM', 'kohler.yvonne@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'QM38gyAA41', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(97, 'Cruz Monahan III', 'blair59@example.org', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'BJtqPD1feL', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(98, 'Graham Denesik DDS', 'kklein@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'C6uQ7Z3M29', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(99, 'Kale Tillman', 'elegros@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MtXvyCpKzF', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(100, 'Ismael Stracke I', 'nswaniawski@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Cf3hoAm7hl', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(101, 'Mrs. Mara Schamberger DDS', 'angel.sanford@example.com', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '03Pah9SAXu', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(102, 'Cindy Walter', 'reece02@example.net', NULL, '2023-03-17 23:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'k14PWFuZUw', NULL, NULL, '2023-03-17 23:09:39', '2023-03-17 23:09:39'),
(103, 'Empleado2', 'Empleado2@12mail.com', '9999923339', NULL, '$2y$10$dVnTAzNgneMS2WdbOHh0yeNT5GY3VM0RMqHWn4ajjFHmQSApUK2ty', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 23:11:25', '2023-03-17 23:11:25'),
(104, 'admin204', 'admin204@gmail.com', '9999999999', NULL, '$2y$10$ML8oiqrPGs2Zh85mHYkzWeEi5BFb.gDjkrL/na6gTrlks1b5a.ic2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 23:11:50', '2023-03-17 23:11:50'),
(105, 'pedro', 'pedro@gmail.com', '9999999997', NULL, '$2y$10$MTCH/fgh2SenJ2Da88cPq.yq73.IztLKXKydHL2VONQ6xjiKuU3c.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 23:32:08', '2023-03-19 23:32:08'),
(106, 'Escobedo', 'escobedo@gmail.com', '9778455548', NULL, '$2y$10$P8kz/dNkUD3z964DZ5m0V.dbLl0RYiKY.BQ7KWOIClImu4er1LLOO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-23 04:08:10', '2023-03-23 04:08:10');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
