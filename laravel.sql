-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 06 2020 г., 21:32
-- Версия сервера: 5.7.30-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_show` tinyint(1) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `viewed` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `description_short`, `description`, `image`, `image_show`, `meta_title`, `meta_description`, `meta_keyword`, `published`, `viewed`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Босс программист - программист', 'boss-programmist-programmist-0107201041', '<p><strong>Босс программист - программист</strong></p>', '<p>Босс программист - программист</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, '2020-07-01 07:41:18', '2020-07-01 07:41:18'),
(2, 'Босс программист - программист', 'boss-programmist-programmist-0107201100', '<p><strong>Босс программист - программист</strong></p>', '<p>Босс программист - программист</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, '2020-07-01 08:00:30', '2020-07-01 08:00:30'),
(3, 'Босс программист - программист', 'boss-programmist-programmist-0107201108', '<p><strong>Босс программист - программист</strong></p>', '<p>Босс программист - программист</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, '2020-07-01 08:08:09', '2020-07-01 08:08:09'),
(4, 'Босс программист - программист', 'boss-programmist-programmist-0107201109', '<p><strong>Босс программист - программист</strong></p>', '<p>Босс программист - программист</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, '2020-07-01 08:09:10', '2020-07-01 08:09:10'),
(5, 'Босс программист - программист', 'boss-programmist-programmist-0107201110', '<p><strong>Босс программист - программист</strong></p>', '<p>Босс программист - программист</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, '2020-07-01 08:10:25', '2020-07-01 08:10:25'),
(6, 'Босс программист - программист', 'boss-programmist-programmist-0107201120', '<p><strong>Босс программист - программист</strong></p>', '<p>Босс программист - программист</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, '2020-07-01 08:20:34', '2020-07-01 08:20:34'),
(7, 'Босс программист - программист', 'boss-programmist-programmist-0107201123', '<p><strong>Босс программист - программист</strong></p>', '<p>Босс программист - программист</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 2, '2020-07-01 08:23:12', '2020-07-02 10:43:28'),
(8, '1', '1-0207200810', '<p>IO</p>', '<p>Y</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, '2020-07-02 05:10:41', '2020-07-02 05:10:41'),
(9, 'U', 'u-0207200822', '<p>UU</p>', '<p>UUUUUU</p>', NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2020-07-02 05:22:07', '2020-07-02 05:22:07'),
(12, 'U', 'u-0207200909', '<p>UUUUUUUUUUUUUUU</p>', '<p>U</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, '2020-07-02 06:09:23', '2020-07-02 06:09:23'),
(13, 'нн', 'nn-0207201116', '<p>н</p>', '<p>н</p>', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, '2020-07-02 08:16:06', '2020-07-02 08:16:06'),
(14, '1', '1-0207201900', '<p>2</p>', '<p>2</p>', NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 2, '2020-07-02 16:00:40', '2020-07-03 03:13:30');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `parent_id`, `published`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'new_cat', 'lara1', 1, 1, NULL, NULL, '2020-07-04 21:00:00', '2020-07-04 21:00:00'),
(2, 'laravel1', 'laravel1-3006201041', 0, 1, NULL, NULL, '2020-06-30 07:41:59', '2020-07-03 03:16:12'),
(3, 'laravel2', 'laravel2-3006201043', 0, 1, NULL, NULL, '2020-06-30 07:43:58', '2020-07-05 09:46:04'),
(4, 'laravel5', 'laravel2-3006201114', 0, 1, NULL, NULL, '2020-06-30 08:14:05', '2020-07-03 03:19:35'),
(5, 'laravel6', 'laravel2-0207201900', 2, 1, NULL, NULL, '2020-07-02 16:00:57', '2020-07-05 15:19:30'),
(6, 'laravel7', 'laravel7-0507201819', 2, 1, NULL, NULL, '2020-07-05 15:19:16', '2020-07-05 15:23:34'),
(7, 'реьд', 'red-0507201819', 2, 1, NULL, NULL, '2020-07-05 15:19:42', '2020-07-05 15:19:42'),
(8, 'css', 'css-0507201819', 2, 1, NULL, NULL, '2020-07-05 15:19:55', '2020-07-05 15:19:55'),
(9, 'php', 'php-0507201820', 3, 1, NULL, NULL, '2020-07-05 15:20:00', '2020-07-05 15:20:00'),
(10, 'js', 'js-0507201820', 3, 1, NULL, NULL, '2020-07-05 15:20:16', '2020-07-05 15:20:16'),
(11, 'kotlin', 'kotlin-0507201820', 3, 1, NULL, NULL, '2020-07-05 15:20:27', '2020-07-05 15:20:27'),
(12, 'java', 'java-0507201820', 4, 1, NULL, NULL, '2020-07-05 15:20:36', '2020-07-05 15:20:36'),
(13, 'c++', 'c-0507201820', 4, 1, NULL, NULL, '2020-07-05 15:20:46', '2020-07-05 15:20:46'),
(16, 'cc', 'cc-0507201821', 4, 1, NULL, NULL, '2020-07-05 15:21:08', '2020-07-05 15:21:08'),
(17, 'sql', 'sql-0507201821', 4, 1, NULL, NULL, '2020-07-05 15:21:22', '2020-07-05 15:21:22');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryables`
--

CREATE TABLE `categoryables` (
  `category_id` int(11) NOT NULL,
  `categoryables_id` int(11) NOT NULL,
  `categoryables_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categoryables`
--

INSERT INTO `categoryables` (`category_id`, `categoryables_id`, `categoryables_type`) VALUES
(2, 9, 'App\\Article'),
(2, 12, 'App\\Article'),
(2, 7, 'App\\Article'),
(3, 7, 'App\\Article');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2020_05_28_081938_create_createusers_table', 1),
(12, '2020_06_29_085024_create_categories_table', 2),
(13, '2020_06_30_174309_create_articles_table', 3),
(16, '2020_07_01_054027_create_categoryables_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `age`, `fio`, `about`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$P8/tn8Fr6jiCN0PFCdAWo.FemDTvqxwnSoViwtlb6/8l8/4/89Kom', NULL, '2020-05-29 03:47:42', '2020-06-26 16:11:48', 18, 'gfjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '3\r\n2'),
(2, 'wwwz', 'wwwz@admin.com', NULL, '$2y$10$ENC2E9EX.CS6rHlCwdcAGupEAqVlNbxrho8PSpggkS7/nuI7SY/Se', NULL, '2020-06-28 15:33:15', '2020-06-28 15:33:15', NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
