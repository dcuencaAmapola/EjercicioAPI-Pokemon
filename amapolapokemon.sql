-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2022 a las 21:17:37
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amapolapokemon`
--
CREATE DATABASE IF NOT EXISTS `amapolapokemon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `amapolapokemon`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_26_161139_create_pokemon_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'bulbasaur', 'https://pokeapi.co/api/v2/pokemon/1/', NULL, NULL),
(2, 'ivysaur', 'https://pokeapi.co/api/v2/pokemon/2/', NULL, NULL),
(3, 'venusaur', 'https://pokeapi.co/api/v2/pokemon/3/', NULL, NULL),
(4, 'charmander', 'https://pokeapi.co/api/v2/pokemon/4/', NULL, NULL),
(5, 'charmeleon', 'https://pokeapi.co/api/v2/pokemon/5/', NULL, NULL),
(6, 'charizard', 'https://pokeapi.co/api/v2/pokemon/6/', NULL, NULL),
(7, 'squirtle', 'https://pokeapi.co/api/v2/pokemon/7/', NULL, NULL),
(8, 'wartortle', 'https://pokeapi.co/api/v2/pokemon/8/', NULL, NULL),
(9, 'blastoise', 'https://pokeapi.co/api/v2/pokemon/9/', NULL, NULL),
(10, 'caterpie', 'https://pokeapi.co/api/v2/pokemon/10/', NULL, NULL),
(11, 'metapod', 'https://pokeapi.co/api/v2/pokemon/11/', NULL, NULL),
(12, 'butterfree', 'https://pokeapi.co/api/v2/pokemon/12/', NULL, NULL),
(13, 'weedle', 'https://pokeapi.co/api/v2/pokemon/13/', NULL, NULL),
(14, 'kakuna', 'https://pokeapi.co/api/v2/pokemon/14/', NULL, NULL),
(15, 'beedrill', 'https://pokeapi.co/api/v2/pokemon/15/', NULL, NULL),
(16, 'pidgey', 'https://pokeapi.co/api/v2/pokemon/16/', NULL, NULL),
(17, 'pidgeotto', 'https://pokeapi.co/api/v2/pokemon/17/', NULL, NULL),
(18, 'pidgeot', 'https://pokeapi.co/api/v2/pokemon/18/', NULL, NULL),
(19, 'rattata', 'https://pokeapi.co/api/v2/pokemon/19/', NULL, NULL),
(20, 'raticate', 'https://pokeapi.co/api/v2/pokemon/20/', NULL, NULL),
(21, 'spearow', 'https://pokeapi.co/api/v2/pokemon/21/', NULL, NULL),
(22, 'fearow', 'https://pokeapi.co/api/v2/pokemon/22/', NULL, NULL),
(23, 'ekans', 'https://pokeapi.co/api/v2/pokemon/23/', NULL, NULL),
(24, 'arbok', 'https://pokeapi.co/api/v2/pokemon/24/', NULL, NULL),
(25, 'pikachu', 'https://pokeapi.co/api/v2/pokemon/25/', NULL, NULL),
(26, 'raichu', 'https://pokeapi.co/api/v2/pokemon/26/', NULL, NULL),
(27, 'sandshrew', 'https://pokeapi.co/api/v2/pokemon/27/', NULL, NULL),
(28, 'sandslash', 'https://pokeapi.co/api/v2/pokemon/28/', NULL, NULL),
(29, 'nidoran-f', 'https://pokeapi.co/api/v2/pokemon/29/', NULL, NULL),
(30, 'nidorina', 'https://pokeapi.co/api/v2/pokemon/30/', NULL, NULL),
(41, 'Gomita', 'https://pokeapi.co/api/v2/pokemon/26/', NULL, NULL),
(42, 'Fabri', 'https://pokeapi.co/api/v2/pokemon/31/', NULL, NULL),
(43, 'Rengar', 'https://pokeapi.co/api/v2/pokemon/32/', NULL, NULL),
(44, 'Malzahar', 'https://pokeapi.co/api/v2/pokemon/33/', NULL, NULL),
(45, 'Galio', 'https://pokeapi.co/api/v2/pokemon/33/', NULL, NULL),
(46, 'Cleo', 'https://pokeapi.co/api/v2/pokemon/35/', NULL, NULL),
(47, 'Ziggs', 'https://pokeapi.co/api/v2/pokemon/36', NULL, NULL),
(48, 'Nunu', 'https://pokeapi.co/api/v2/pokemon/37', NULL, NULL),
(49, 'Willup', 'https://pokeapi.co/api/v2/pokemon/49/', NULL, NULL),
(50, 'Corki', 'https://pokeapi.co/api/v2/pokemon/50/', NULL, NULL),
(51, 'Tristana', 'https://pokeapi.co/api/v2/pokemon/51/', NULL, NULL),
(52, 'Swain', 'https://pokeapi.co/api/v2/pokemon/52/', NULL, NULL),
(53, 'Cartus', 'https://pokeapi.co/api/v2/pokemon/53/', NULL, NULL),
(54, 'Lulu', 'https://pokeapi.co/api/v2/pokemon/54/', NULL, NULL),
(55, 'Lulus', 'https://pokeapi.co/api/v2/pokemon/55/', NULL, NULL),
(56, 'Star', 'https://pokeapi.co/api/v2/pokemon/55/', NULL, NULL),
(57, 'Quak', 'https://pokeapi.co/api/v2/pokemon/56/', NULL, NULL),
(58, 'Quaky', 'https://pokeapi.co/api/v2/pokemon/57/', NULL, NULL),
(59, 'Mamu', 'https://pokeapi.co/api/v2/pokemon/58/', NULL, NULL),
(60, 'Gomitas', 'https://pokeapi.co/api/v2/pokemon/59/', NULL, NULL),
(61, 'Grupi', 'https://pokeapi.co/api/v2/pokemon/60/', NULL, NULL),
(62, 'Lili', 'https://pokeapi.co/api/v2/pokemon/62/', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
