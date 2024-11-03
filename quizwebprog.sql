-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2024 at 06:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizwebprog`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_31_10000_create_mscategories_table', 1),
(5, '2024_10_31_135336_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mscategories`
--

CREATE TABLE `mscategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mscategories`
--

INSERT INTO `mscategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Interactive Multimedia', '2024-11-01 09:34:37', '2024-11-01 09:34:37'),
(2, 'Software Engineering', '2024-11-01 09:34:37', '2024-11-01 09:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `likes`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Human and Computer Interaction', 833, 'quia-quo-id-nesciunt-voluptatem-iure-corrupti', 'Blanditiis dolore est rerum deleniti at est omnis. Et velit fugit facere. Rerum non asperiores omnis quas tempora doloremque fuga. Voluptatem corporis provident aliquam officia vel dolorem.\n\nAd odit harum molestiae cupiditate animi. Sit aut sed debitis. Deleniti dolores velit nam sit assumenda quisquam. Sit culpa maiores labore eos illo.\n\nNihil cumque assumenda aut molestiae optio quisquam. Modi id qui et sapiente. Eum voluptas autem aspernatur reiciendis non nostrum et.', 'https://via.placeholder.com/640x480.png/0088ee?text=interactive+multimedia+quia', '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(2, 7, 1, 'User Experience', 520, 'sit-ullam-sapiente-voluptatum-cupiditate-tempora-qui-ea', 'Error repudiandae laboriosam at sit voluptatem enim provident. Nostrum aliquid ut iure magnam laborum voluptates nemo. Ad placeat voluptatem et velit.\n\nArchitecto autem ut autem recusandae. Animi nobis delectus et. Sed aut iusto quia quia.\n\nQuidem harum facilis tempore commodi qui vitae. Voluptas placeat et velit quae voluptates corporis. Dolorem qui eligendi dignissimos officia explicabo. Doloribus quod velit vitae autem vel fuga nulla animi.', 'https://via.placeholder.com/640x480.png/002200?text=interactive+multimedia+qui', '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(3, 10, 1, 'User Experience', 755, 'facere-laboriosam-maxime-ut-cupiditate-perspiciatis-deserunt-voluptatibus', 'Quia non similique vel praesentium. Ratione sit cum qui minus repudiandae. Ut exercitationem voluptatibus error soluta architecto cumque. Autem et asperiores reiciendis architecto est amet iusto. Qui dignissimos tempora beatae cum expedita.\n\nA nemo cum ducimus quo. Illo nulla autem qui dolore assumenda.\n\nEst in minus doloremque. Eos fugiat qui ut.', 'https://via.placeholder.com/640x480.png/00ccee?text=interactive+multimedia+mollitia', '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(4, 9, 2, 'Human and Computer Interaction', 53, 'autem-vel-est-culpa-est-non-quia-officia-corrupti', 'Dicta eos saepe nihil impedit cumque nihil ab occaecati. Inventore itaque officiis dolor. Rerum recusandae explicabo dolorem deleniti optio. Eligendi sit consequuntur in error expedita.\n\nEt quo vitae consequatur recusandae ab praesentium nesciunt facilis. Qui necessitatibus voluptatibus voluptas voluptatem quo voluptatum assumenda. Quidem incidunt qui adipisci nostrum cupiditate libero.\n\nVel eos quo voluptas soluta laudantium vero dolore. Et voluptatibus minus doloremque. Iusto dolorum voluptate vel tempore ducimus.', 'https://via.placeholder.com/640x480.png/00bb77?text=interactive+multimedia+quibusdam', '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(5, 10, 2, 'Pattern Software Design', 56, 'assumenda-quia-error-laborum-eos-explicabo-officiis-eum', 'Repudiandae temporibus officia tenetur suscipit ratione qui et. Nisi impedit mollitia ipsam veritatis accusamus assumenda explicabo. Labore cumque totam ut error.\n\nQuia est et sequi est quia. Sunt ipsum qui atque quibusdam. Porro hic ipsum vel fugit.\n\nEos dolorem ipsum recusandae ullam accusantium hic asperiores. Consequatur quod quia quas voluptatibus. Et harum modi debitis dolor quaerat qui quaerat.', 'https://via.placeholder.com/640x480.png/0099ee?text=interactive+multimedia+atque', '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(6, 9, 1, 'Agile Software Development', 164, 'libero-nemo-velit-et-sed-at', 'Quis commodi dignissimos aut. Voluptatem quia perferendis cupiditate rerum deleniti dolore sed.\n\nQuidem qui aut aut omnis est. Repellat corrupti porro mollitia maiores dolor est. Natus rerum sint corrupti magni natus debitis. Veritatis non commodi reiciendis. Earum cumque expedita quod sed.\n\nPossimus ut a aspernatur enim molestias aut et. Sed libero qui ipsam voluptatem aperiam. Voluptatem quis aut aliquam ut quae qui. Quaerat quaerat et odit nostrum.', 'https://via.placeholder.com/640x480.png/00ffbb?text=interactive+multimedia+voluptate', '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(7, 4, 2, 'User Experience for Digital Immersive Technology', 252, 'et-dolores-velit-dicta-qui-est', 'Aut mollitia beatae ratione repellat recusandae ab iste porro. Et eius est eaque libero. Vel natus nulla eligendi saepe ipsa. Non accusantium tempora dolorem aut.\n\nAdipisci culpa laborum et porro. Impedit dolor quis inventore aut numquam itaque. Ut dolore dolor totam dolores quidem beatae odio. Facere alias quod aliquam et. Nisi non itaque et tempore tempore tempore.\n\nDolorem iusto quia sit id ad necessitatibus voluptatibus. Maiores voluptas molestias nam laudantium quibusdam fugit nihil. Doloribus velit facere sequi. Doloribus qui laudantium hic rerum aut qui eligendi.', 'https://via.placeholder.com/640x480.png/004499?text=interactive+multimedia+nobis', '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(8, 1, 1, 'User Experience', 969, 'sint-qui-excepturi-sunt-aut', 'Et iure aperiam placeat tenetur. Non reiciendis placeat placeat et temporibus. A commodi cumque voluptatem est est.\n\nEarum ducimus magni debitis natus. Rerum quo iusto et distinctio excepturi ipsam magni. Architecto assumenda error enim error debitis ratione. Soluta aspernatur dignissimos ad quis ut ex tempora.\n\nEnim architecto atque consequatur et explicabo qui. Vel recusandae eum ut rerum necessitatibus voluptatem qui. Autem cumque vel quos vero laudantium rerum nemo. Placeat aut repudiandae harum quo.', 'https://via.placeholder.com/640x480.png/00bbbb?text=interactive+multimedia+et', '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(9, 1, 2, 'Human and Computer Interaction', 218, 'consequatur-omnis-velit-commodi-sint-minima', 'Ut ut eaque nam molestiae sunt dicta. Sit quia perspiciatis eveniet et vitae quae. Ex praesentium sunt esse enim asperiores excepturi quisquam. Consectetur quod perferendis id iste eum ratione deserunt.\n\nVeniam dolores facilis alias voluptatum rerum iste omnis. Architecto sed ut eos ipsum. Impedit non sit voluptate dolore deserunt est.\n\nEsse dolorem eum est sunt. Sit eos dicta repellendus doloribus cum. Voluptas vero reiciendis qui aperiam provident blanditiis omnis. Delectus aut illum voluptas aliquam.', 'https://via.placeholder.com/640x480.png/00bb44?text=interactive+multimedia+doloremque', '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(10, 3, 2, 'Agile Software Development', 212, 'nesciunt-id-alias-quis-eum-temporibus-voluptas', 'Repellat tenetur repellat qui veniam enim aliquam. Unde dignissimos debitis autem dolore ut est ea. Labore mollitia molestias qui qui. Qui similique harum asperiores perspiciatis hic nostrum.\n\nCorrupti esse doloremque molestiae aliquam dolor et eos. Dolor cum delectus ut velit reiciendis id ea facilis. Quisquam dolorem molestiae molestiae est laudantium rerum repudiandae.\n\nEt nulla distinctio dolorum sit. Impedit hic et minus voluptas nihil nam. Sit itaque nisi et aspernatur ea sit sint. Voluptas quis amet rerum. Nulla quo libero velit eos est quia.', 'https://via.placeholder.com/640x480.png/0088bb?text=interactive+multimedia+tenetur', '2024-11-01 09:34:40', '2024-11-01 09:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Tlp3X9083htncYf7LNmvKLTj5I1we157DY78jHiE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjJRSzVSTzNSbzRyZTA1cVRSZGdnRGlCd01NTmxycDgzd1Z6Q0hUTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730482288);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `specialist`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ina Maryati S.T.', 'vzulkarnain@gmail.com', 'Perangkat Desa', NULL, '$2y$12$OkYdI9kBcU3TNfRULiYQDOwtCRuTAoUleW0d34NUvlHkneMwbWfLu', NULL, '2024-11-01 09:34:38', '2024-11-01 09:34:38'),
(2, 'Rudi Salahudin', 'huwais@gmail.com', 'Seniman', NULL, '$2y$12$lyxUuDRzZKIlkacs49AXxupseAhyXrZNuZuwX./p.Dai8Rqs/entu', NULL, '2024-11-01 09:34:38', '2024-11-01 09:34:38'),
(3, 'Laswi Panji Latupono S.T.', 'karna.mustofa@yahoo.co.id', 'Buruh Harian Lepas', NULL, '$2y$12$eUDoZi/LjFNYoU.lR0cN...OCcUObuViHdWl1QkKbLG3XZFhSNE0m', NULL, '2024-11-01 09:34:38', '2024-11-01 09:34:38'),
(4, 'Rahmi Puspita S.Psi', 'hhasanah@gmail.com', 'Perangkat Desa', NULL, '$2y$12$ts3DDZ2uAS0T92Og/z0Bue9ClCQ1TinDluAMNDXYtewoRk27BollC', NULL, '2024-11-01 09:34:39', '2024-11-01 09:34:39'),
(5, 'Ilsa Pertiwi M.M.', 'dwidiastuti@gmail.co.id', 'Tukang Batu', NULL, '$2y$12$LQ3k51yazYN/OCrE7gSeJunueWzIbTaza9WKvDsnnUnBz4y34Iqn.', NULL, '2024-11-01 09:34:39', '2024-11-01 09:34:39'),
(6, 'Dono Kamal Manullang M.Kom.', 'empluk.wahyuni@yahoo.co.id', 'Pilot', NULL, '$2y$12$rX2O2o3MyFXrd8g6olKaCe6LiNYejM/U3rIchNGIlzxRllfnXjtp2', NULL, '2024-11-01 09:34:39', '2024-11-01 09:34:39'),
(7, 'Winda Halimah', 'simon.tamba@nababan.go.id', 'Dosen', NULL, '$2y$12$hIi.N.th6Oh299n7rHKsPOg1VyqXmCk7iW9r6J1vTO6z8LxKYhYhC', NULL, '2024-11-01 09:34:39', '2024-11-01 09:34:39'),
(8, 'Ibrani Estiawan Maheswara', 'simanjuntak.kamidin@pudjiastuti.name', 'Imam Masjid', NULL, '$2y$12$yxGRNTXdFc0lsAvawAcoNu/e6C8wCJMgO4icj3HUBpl7zan6JZhKS', NULL, '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(9, 'Titin Riyanti S.IP', 'kusumo.johan@gmail.co.id', 'Programmer', NULL, '$2y$12$hOHjU/u4ZysOQ/KCvgNSpuRyKpix3xcquU3KLO5iICfzcYG6a2yg6', NULL, '2024-11-01 09:34:40', '2024-11-01 09:34:40'),
(10, 'Anita Kusmawati S.E.I', 'ika29@yahoo.com', 'Mekanik', NULL, '$2y$12$1eLjGqNcX.2Dx9JC5I5wCeNZdGORcnlZH6qRMic6XpP0hL6KJC/.S', NULL, '2024-11-01 09:34:40', '2024-11-01 09:34:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mscategories`
--
ALTER TABLE `mscategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mscategories`
--
ALTER TABLE `mscategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `mscategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
