-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Apr 2023 pada 18.01
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'funtionality', '2023-01-04 19:26:17', '2023-01-04 19:26:17'),
(2, 'Reliability', '2023-01-04 19:26:17', '2023-01-04 19:26:17'),
(3, 'Usability', '2023-01-04 19:26:17', '2023-01-04 19:26:17'),
(4, 'Efficiency', '2023-01-04 19:26:17', '2023-01-04 19:26:17'),
(5, 'Maintainability', '2023-01-04 19:26:17', '2023-01-04 19:26:17'),
(6, 'Portability', '2023-01-04 19:26:17', '2023-01-04 19:26:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_04_020715_create_permissions_table', 1),
(6, '2022_02_04_020803_create_roles_table', 1),
(7, '2022_02_04_020910_create_role_user_table', 1),
(8, '2022_02_04_021018_create_permission_role_table', 1),
(9, '2022_04_13_070826_create_categories_table', 1),
(10, '2022_04_13_070920_create_questions_table', 1),
(11, '2022_04_13_071022_create_options_table', 1),
(12, '2022_04_13_072027_create_results_table', 1),
(13, '2022_04_13_072320_create_question_result_table', 1),
(14, '2022_12_16_023921_create_subcategories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_text1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_text2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_text3` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_text4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_text5` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `points1` int(11) DEFAULT NULL,
  `points2` int(11) DEFAULT NULL,
  `points3` int(11) DEFAULT NULL,
  `points4` int(11) DEFAULT NULL,
  `points5` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text1`, `option_text2`, `option_text3`, `option_text4`, `option_text5`, `points1`, `points2`, `points3`, `points4`, `points5`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 19:38:23', '2023-01-04 19:38:23'),
(2, 2, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 19:39:29', '2023-01-04 19:39:29'),
(3, 3, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 19:50:15', '2023-01-04 19:50:15'),
(5, 4, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 19:52:51', '2023-01-04 19:52:51'),
(6, 5, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 19:54:15', '2023-01-04 19:54:15'),
(7, 6, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 19:55:01', '2023-01-04 19:55:01'),
(8, 7, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 19:56:07', '2023-01-04 19:56:07'),
(9, 8, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 19:58:53', '2023-01-04 19:58:53'),
(10, 9, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 19:59:45', '2023-01-04 19:59:45'),
(11, 10, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 20:00:51', '2023-01-04 20:00:51'),
(12, 11, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 20:01:49', '2023-01-04 20:01:49'),
(13, 12, 'Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik', 'Sangat Kurang Baik', 100, 80, 60, 40, 20, '2023-01-04 20:02:37', '2023-01-04 20:02:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', NULL, NULL),
(2, 'user_management_create', NULL, NULL),
(3, 'user_management_edit', NULL, NULL),
(4, 'user_management_view', NULL, NULL),
(5, 'user_management_delete', NULL, NULL),
(6, 'permission_access', NULL, NULL),
(7, 'permission_create', NULL, NULL),
(8, 'permission_edit', NULL, NULL),
(9, 'permission_view', NULL, NULL),
(10, 'permission_delete', NULL, NULL),
(11, 'role_access', NULL, NULL),
(12, 'role_create', NULL, NULL),
(13, 'role_edit', NULL, NULL),
(14, 'role_view', NULL, NULL),
(15, 'role_delete', NULL, NULL),
(16, 'user_access', NULL, NULL),
(17, 'user_create', NULL, NULL),
(18, 'user_edit', NULL, NULL),
(19, 'user_view', NULL, NULL),
(20, 'user_delete', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(22, 4, 2, NULL, NULL),
(24, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `subcategory_id`, `question_text`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Saya merasa fitur-fitur website SIAKAD sesuai dengan kebutuhan?', '2023-01-04 19:29:54', '2023-01-04 19:29:54'),
(2, 1, 2, 'Apakah hasil pengolahan data pada SIAKAD tersebut sesuai dengan yang diharapkan ?', '2023-01-04 19:30:18', '2023-01-04 19:30:18'),
(3, 1, 3, 'Apakah SIAKAD tersebut dapat berinteraksi dengan sistem lainnya?', '2023-01-04 19:30:57', '2023-01-04 19:30:57'),
(4, 1, 4, 'Dapatkah SIAKAD mengantisipasi / mencegah akses yang tidak sah?', '2023-01-04 19:31:19', '2023-01-04 19:31:19'),
(5, 1, 5, 'Apakah SIAKAD mengikuti aturan standar aplikasi atau regulasi hukum yang berlaku?', '2023-01-04 19:31:50', '2023-01-04 19:31:50'),
(6, 2, 6, 'Apakah kesalahan penerapan SIAKAD pada perangkat kerasnya telah perbaharui dari waktu ke waktu?', '2023-01-04 19:32:39', '2023-01-04 19:32:39'),
(7, 2, 7, 'Apakah SIAKAD telah mampu mempertahankan tingkat kinerjanya dalam kasus kesalahan karena software dan hardware ?', '2023-01-04 19:33:11', '2023-01-04 19:33:11'),
(8, 2, 8, 'Dapatkah SIAKAD memulihkan data kembali jika terjadi kegagalan?', '2023-01-04 19:33:35', '2023-01-04 19:33:35'),
(9, 2, 9, 'Apakah SIAKAD telah mematuhi standar kehandalan sebuah perangkat lunak?', '2023-01-04 19:34:17', '2023-01-04 19:34:17'),
(10, 3, 10, 'Apakah para pengguna (user) SIAKAD dapat mengerti cara menggunakannya dengan mudah?', '2023-01-04 19:35:09', '2023-01-04 19:35:09'),
(11, 3, 11, 'Apakah langkah-langkah operasional SIAKAD dapat dipelajari dengan mudah?', '2023-01-04 19:35:59', '2023-01-04 19:35:59'),
(12, 3, 12, 'Apakah SIAKAD dapat digunakan hanya dengan menggunakan sumber daya seadanya?', '2023-01-04 19:36:43', '2023-01-04 19:36:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `question_result`
--

CREATE TABLE `question_result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `result_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `points1` int(11) DEFAULT 0,
  `points2` int(11) DEFAULT 0,
  `points3` int(11) DEFAULT 0,
  `points4` int(11) DEFAULT 0,
  `points5` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `results`
--

INSERT INTO `results` (`id`, `user_id`, `total_points`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2023-01-04 20:03:14', '2023-01-04 20:03:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL),
(3, 'user', '2023-01-04 22:34:34', '2023-01-04 22:34:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Suitability', '2023-01-04 19:26:17', '2023-01-04 19:26:17'),
(2, 'Accurateness', '2023-01-04 19:26:17', '2023-01-04 19:26:17'),
(3, 'Interoperability', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(4, 'Security', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(5, 'Functionality Compliance', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(6, 'Maturity', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(7, 'Fault Tolerance', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(8, 'Recoverability', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(9, 'Reliability Compliance', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(10, 'Understandability', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(11, 'Learnability', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(12, 'Operability', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(13, 'Attractiveness', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(14, 'Usability Compliance', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(15, 'Recoverability', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(16, 'Time behavior', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(17, 'resource utilization', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(18, 'Efficiency Compliance', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(19, 'Analysability', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(20, 'Changeability', '2023-01-04 19:26:18', '2023-01-04 19:26:18'),
(21, 'Stability', '2023-01-04 19:26:19', '2023-01-04 19:26:19'),
(22, 'Testability', '2023-01-04 19:26:19', '2023-01-04 19:26:19'),
(23, 'Adaptability', '2023-01-04 19:26:19', '2023-01-04 19:26:19'),
(24, 'Instability', '2023-01-04 19:26:19', '2023-01-04 19:26:19'),
(25, 'co-existence', '2023-01-04 19:26:19', '2023-01-04 19:26:19'),
(26, 'Replacability', '2023-01-04 19:26:19', '2023-01-04 19:26:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `job`, `nim`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Dosen', '1234567', 'admin@example.com', NULL, '$2y$10$4PTafd./PgUEs3G1/vNUh.h.wN3rbzMEVCSeV3uTzxpRZvxPJJHui', 'M6lCBGLppRWhWqpJA3Dkmd8F3XCfF1L3XmQ8BZfwgUEX9Ht2CjIi0TKve8LG', NULL, NULL),
(2, 'Rizki', 'mahasiswa', '2103079', 'qwer@gmail.com', NULL, '$2y$10$k2k6aQ6eqaYYrPAePu7NKuAWV8yzB4f35etFbpj1S1yPIuNQvwQk.', NULL, '2023-01-04 21:38:12', '2023-01-04 21:38:12'),
(3, 'rul', 'mahasiswa', '2000', 'rul@gmail.com', NULL, '$2y$10$rYSfV4B4Wkqaekh.5Bbfzuwj/rSQA2F8i9hLpxEcnL0Y3pU.780Ty', NULL, '2023-01-04 21:48:20', '2023-01-04 21:48:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `question_result`
--
ALTER TABLE `question_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_result_result_id_foreign` (`result_id`),
  ADD KEY `question_result_question_id_foreign` (`question_id`),
  ADD KEY `question_result_option_id_foreign` (`option_id`);

--
-- Indeks untuk tabel `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `question_result`
--
ALTER TABLE `question_result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `question_result`
--
ALTER TABLE `question_result`
  ADD CONSTRAINT `question_result_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_result_id_foreign` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
