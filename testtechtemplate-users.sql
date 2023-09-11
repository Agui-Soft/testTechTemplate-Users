-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-09-2023 a las 21:23:26
-- Versión del servidor: 8.0.30
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `testtechtemplate-users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_11_205810_create_tasks_table', 2);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `completed`, `created_at`, `updated_at`) VALUES
(1, 11, 'Natus voluptate ab est.', 'Reprehenderit sed fugit maxime recusandae. Cumque est ad quo nulla et. Dolor sed enim dignissimos laborum et illo. Odio omnis consequatur cum.', 0, '2023-09-12 03:05:53', '2023-09-12 03:05:53'),
(2, 11, 'Deleniti vel tempore sed inventore.', 'Aut provident fuga non veniam ut. Corrupti sit iure voluptatem ut in eos. Libero consequatur alias fuga omnis. Aliquam dolorum laborum voluptas blanditiis dolor et sint rerum.', 1, '2023-09-12 03:05:53', '2023-09-12 03:05:53'),
(3, 12, 'Libero aperiam rerum autem fugit tenetur ut voluptatem voluptatem.', 'Quidem enim similique enim. Et nulla sit pariatur consequatur quos.', 0, '2023-09-12 03:05:53', '2023-09-12 03:05:53'),
(4, 12, 'Explicabo sunt aperiam repudiandae.', 'Nam sunt quo aut alias repellendus voluptatem. Exercitationem quos laborum non nemo consequatur et. Atque excepturi molestiae ut. Dolorem architecto magni ut minima dolorum.', 0, '2023-09-12 03:05:53', '2023-09-12 03:05:53'),
(5, 12, 'Odio aliquid aut qui corporis aut.', 'Iure recusandae laboriosam mollitia nesciunt enim animi dignissimos. Fugit voluptatem incidunt doloremque et corrupti ut. Dicta facere doloribus aliquam excepturi.', 1, '2023-09-12 03:05:53', '2023-09-12 03:05:53'),
(6, 12, 'Rerum quos nulla nisi ut expedita.', 'Ipsum eaque dignissimos accusamus harum officia neque. Mollitia qui dolores quis. Sapiente at fugit accusantium sint.', 0, '2023-09-12 03:05:53', '2023-09-12 03:05:53'),
(7, 12, 'Esse perferendis eligendi dolorem.', 'Et et repudiandae suscipit. Fugiat minima odio a quas et. Ut odio non ex unde molestiae quia quis est.', 1, '2023-09-12 03:05:53', '2023-09-12 03:05:53'),
(8, 13, 'Ipsam eum dignissimos consequatur accusamus.', 'Facere quisquam iste facere et magnam. Aut ea nam repudiandae neque explicabo minus dicta occaecati. Sed nam est fugiat quasi totam et. Nisi dolor adipisci vel reiciendis pariatur.', 1, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(9, 13, 'Eum incidunt tempore est occaecati ut corrupti.', 'Minima nisi eius incidunt consequuntur eaque sit. Amet veritatis molestiae optio velit expedita. Ratione aut perferendis architecto voluptatem maxime sint qui. Aperiam eligendi voluptates animi eum.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(10, 13, 'Unde perferendis consequatur quo tempore.', 'Dolor est quidem non. Blanditiis quo enim voluptatibus facere facilis facere. Vitae quisquam hic iure sunt unde recusandae. Perferendis fuga at porro iste rerum nostrum.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(11, 13, 'Odio quisquam autem eius.', 'Sint molestias repellat asperiores mollitia. Qui ipsa quisquam minima. Repellendus sapiente ut aut. Repellendus deleniti sunt qui blanditiis iusto unde sed.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(12, 14, 'Possimus beatae libero corrupti modi.', 'Nobis ullam quo quia quibusdam. Dolores dolor molestiae quasi velit dolor temporibus molestias eligendi. Distinctio aut qui et et facilis eveniet.', 1, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(13, 14, 'Natus incidunt porro officiis vero.', 'Dolores libero exercitationem perferendis accusamus. Voluptatem harum eos voluptas quo enim numquam. Ut voluptatum id voluptatibus asperiores facere suscipit suscipit.', 1, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(14, 14, 'Asperiores similique voluptas exercitationem magnam eius soluta molestias.', 'Voluptatem earum ea ipsa quos voluptatem voluptatibus quam impedit. Voluptas sequi nulla est voluptatem a accusamus ducimus.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(15, 14, 'Dolorem et provident exercitationem veritatis sed nihil eveniet.', 'Quia id non doloribus corrupti totam atque. Ut voluptas accusantium non qui maxime. Autem tempore in a sint molestias voluptatibus.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(16, 14, 'Soluta eaque dolor vel perspiciatis.', 'Ullam itaque a et accusantium laborum. Repudiandae sed numquam ipsum consequatur.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(17, 15, 'Incidunt accusamus voluptas itaque vitae minus.', 'Quas quam voluptatem sed quia voluptates. Rerum dicta ab delectus ut dolores cum expedita. Sapiente velit hic quis neque. Laborum fugiat quam ullam accusantium eaque aut. Hic alias voluptatem illum nemo.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(18, 15, 'Sed quaerat eius sit id pariatur libero quia.', 'Eligendi ea praesentium reprehenderit illum aspernatur sunt. Delectus quasi totam porro nihil. Possimus cum nam cumque deleniti dolorem.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(19, 15, 'Doloribus impedit vero quis nemo enim ipsum.', 'Sunt natus a quis a quis rerum. Necessitatibus rem dolore commodi molestiae ut minima consequatur.', 1, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(20, 16, 'In a optio dicta ullam.', 'Aut et inventore aut. Est modi omnis sed nisi quas. Porro aliquid quia maxime repellendus ex assumenda.', 1, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(21, 16, 'Libero sit et ex magnam deserunt quia atque.', 'Dolorem vel pariatur velit officia dolorum odio explicabo. Repellat praesentium eos dolore aliquam nihil. Eveniet facere ipsa amet non minus est.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(22, 17, 'Voluptatem placeat sed qui voluptatem repudiandae dolor perferendis.', 'Ad laborum eum facilis officiis rerum fuga. Quod et ea laudantium ut enim quo eum. Consequatur rem consequatur pariatur laboriosam. Sed qui harum veritatis.', 1, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(23, 18, 'Mollitia corrupti ab repellendus enim ducimus.', 'Consequatur unde laborum et. Sed ut commodi est aperiam blanditiis. Perferendis libero maiores veritatis officia suscipit molestias.', 1, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(24, 18, 'Incidunt mollitia aut autem dolore.', 'Ut sit non vitae ipsa. Et ea minus veritatis aut illo. Ipsam reprehenderit ea maxime. Omnis repudiandae architecto minima sit sint reiciendis sunt et.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(25, 19, 'Totam voluptas sed accusamus.', 'Nam itaque blanditiis eius quam. Voluptas quasi veniam occaecati vel quos ipsam vero. Dolorem rerum sit molestiae nam sapiente occaecati. Voluptates officiis facere illum hic.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(26, 20, 'Mollitia repellendus blanditiis consequatur perspiciatis accusantium.', 'Et autem quis dicta modi. Sequi animi qui est dicta quibusdam est accusamus mollitia. Dolor dolorem nobis repudiandae et laborum. Aut qui ut in veniam.', 0, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(27, 20, 'Eius sit veritatis tempora et accusantium nemo impedit aut.', 'Vel non nam vel aspernatur. Est nihil dolor in vel. Exercitationem dolorum totam deleniti nesciunt quam. Doloribus maiores magnam porro cum. Fugiat consectetur voluptatem similique amet ex tempora consequatur.', 1, '2023-09-12 03:05:54', '2023-09-12 03:05:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Jimmy Goyette DVM', 'gunnar92@example.net', NULL, '$2y$10$EcLwh9eBFgCMjYlcD16nZ.tj9Wz10KUkntrQOxd1WwCE61GXEiOMa', NULL, '2023-09-12 02:54:23', '2023-09-12 02:54:23'),
(2, 'Lyric Jacobs', 'schuster.leon@example.net', NULL, '$2y$10$rbs0ty4O4f9rCfOP9FJ7oOjgktUgIceM2PHsCMl1LCiRy3MZ0G8NW', NULL, '2023-09-12 02:54:23', '2023-09-12 02:54:23'),
(3, 'Tabitha Stanton', 'wisozk.aaron@example.org', NULL, '$2y$10$IwqMxNi9BmP88/5Xx8p0JeLuJrqknTV0AdQD.8dSjfIbyOLt32fPi', NULL, '2023-09-12 02:54:23', '2023-09-12 02:54:23'),
(4, 'Halie Reinger', 'gorczany.elias@example.org', NULL, '$2y$10$yFCXW47NEfIje9uGe7jOvuVFz8Ni6E1RB1pnYfqnwp6GNcDVxNRUK', NULL, '2023-09-12 02:54:23', '2023-09-12 02:54:23'),
(5, 'Mr. Sage Kessler IV', 'mcglynn.roel@example.net', NULL, '$2y$10$hqCNWjX1U7EyInoL5KOBf.wUT5t9bOEiO8HJCzFUFox.uSQjTjnT6', NULL, '2023-09-12 02:54:23', '2023-09-12 02:54:23'),
(6, 'Fannie Wolff', 'rodriguez.cecile@example.org', NULL, '$2y$10$.aoYBFy6bg3QehAdvHDPw.gLc.EaTYLbwVfsgnk57/ozneYuNM5KG', NULL, '2023-09-12 02:54:23', '2023-09-12 02:54:23'),
(7, 'Quinn Luettgen', 'arnulfo.senger@example.org', NULL, '$2y$10$e7lquhqzT17sBIfueVwjBOwB72Y4S5qiznJrjAQkm4t8upbsRj19C', NULL, '2023-09-12 02:54:24', '2023-09-12 02:54:24'),
(8, 'Dr. Judd Bins DVM', 'slueilwitz@example.org', NULL, '$2y$10$0YzEvN8zHvcpItv6csNZ1e12xX3xW0hS3.4YIRQdVx9FXq5xYDDoi', NULL, '2023-09-12 02:54:24', '2023-09-12 02:54:24'),
(9, 'Laury Kutch', 'toby.hoeger@example.org', NULL, '$2y$10$MPhw2tESQTEiUB3ausqxUeD7g.pUmo27QsekxVixTNGiXc86VRyIC', NULL, '2023-09-12 02:54:24', '2023-09-12 02:54:24'),
(10, 'Bettye Jacobson', 'tressie71@example.org', NULL, '$2y$10$s5EBdyn3BaNkD4SY1PGVt.2lPngclj5/MRuWvVi9g1iSxXadHVKDK', NULL, '2023-09-12 02:54:24', '2023-09-12 02:54:24'),
(11, 'Teresa Dare', 'kuhic.luther@example.com', NULL, '$2y$10$ovskevftpvGwk9YZ9QcUJu2Iv6tZgB9F0pB/g7lBcbnBGUjrG5T/i', NULL, '2023-09-12 03:05:53', '2023-09-12 03:05:53'),
(12, 'Brando Ullrich', 'olson.judson@example.org', NULL, '$2y$10$6n55nA814uN5P3jl/X0yJu3dF/ci0yKvLe87fvKKMnhcW6W/fWWXG', NULL, '2023-09-12 03:05:53', '2023-09-12 03:05:53'),
(13, 'Dr. Alfonzo Schroeder', 'boyd.hahn@example.org', NULL, '$2y$10$gnybxHJflBjeqY3a48yzoe1EhotekLja.c2pYPLrTQpmz08bjKzTu', NULL, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(14, 'Estella Bruen', 'monserrat19@example.org', NULL, '$2y$10$9fuBKTvw3snnEoBzd0vENePF47iRt6g..XoKCNIoSAGjeqInAAoki', NULL, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(15, 'Deangelo Jaskolski', 'dylan.mohr@example.net', NULL, '$2y$10$ztQuSK.n.p4QH/4OxWPpkeb3MBhko8ByGgzUfEOi7HHl34G9N89KK', NULL, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(16, 'Dimitri Leuschke', 'norene47@example.org', NULL, '$2y$10$I6FSbNZOmhk1nn84FjnQjeen9.oUCws6cBy1.QE8SjiuvGJG2g05m', NULL, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(17, 'Rusty Leuschke', 'abbott.sienna@example.net', NULL, '$2y$10$es/x6cHEUA2WxruYzLJWo.QqEijhJnvLZhakUUB.3zg9rGIoFG.Ci', NULL, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(18, 'Elaina Ratke III', 'hessel.green@example.com', NULL, '$2y$10$76UfvMbz/xmz0jru.OteROuw2ctp4UXSxujs4obUlhqj.YZ.utw1W', NULL, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(19, 'Brock Lehner', 'kellen18@example.com', NULL, '$2y$10$vkJl.XfTSzg5xdtAe/2luunsHe69zhBoOO8D6vG7oNiZoGthtN0q.', NULL, '2023-09-12 03:05:54', '2023-09-12 03:05:54'),
(20, 'Jacquelyn Kilback II', 'qskiles@example.net', NULL, '$2y$10$/eF5KF1QEag12nnQRo3uieTIl028B06g3ZmEHHM8yORKmGHY4Ta1m', NULL, '2023-09-12 03:05:54', '2023-09-12 03:05:54');

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
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
