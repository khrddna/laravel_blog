-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 02:05 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', 'post-images/xHyByUdCThYgXjipxTT993NfRlwZcw7u9oaPZuAI.jpg', '2022-10-04 20:13:24', '2022-10-19 18:44:44'),
(2, 'Personali', 'personaliti', 'post-images/ZLfZMw3I6PVi9Zyvb8fKRz5lYcSIDmHt6kd2zUEu.jpg', '2022-10-04 20:13:24', '2022-10-17 02:36:33'),
(3, 'Web Design', 'web-design', 'post-images/MKEd7NsppqhmvYosq4yxXholSyNTMoE7N5CoKUpR.png', '2022-10-04 20:13:24', '2022-10-19 18:45:54'),
(5, 'Multimedia', 'multimedia', 'post-images/uhTw6SpI3RgvnjqIMRaTmte7yXgr7NUry2WwLw7T.jpg', '2022-10-09 20:54:34', '2022-10-09 20:54:34'),
(6, 'Tata Boga', 'tata-boga', 'post-images/leZEnT4o5VC75B0f7kAXoiZgqH1WqvAk09Qru1zA.jpg', '2022-10-13 23:52:05', '2022-10-19 18:49:11'),
(8, 'Hiburan', 'hiburan', 'post-images/FPu6PeOV9WxJ2h8hJzJTB6ZjNIeyicVgSuycHOIk.jpg', '2022-10-19 18:42:17', '2022-10-19 18:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_26_071938_create_posts_table', 1),
(6, '2022_09_27_022355_create_categories_table', 1),
(7, '2022_10_03_032401_add_is_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Eaque eligendi minus eum provident.', 'non-explicabo-libero-adipisci-corrupti-recusandae-ipsa-nobis', 'post-images/FKqt3lD8lYruSJXkSY6ww3fTYdtiNXxvK2FyrGN5.jpg', 'Omnis molestiae voluptates culpa porro doloribus odio. Et dicta omnis earum tempora rem cumque. Ipsa officia ut quo autem est saepe dolor quod.Est consequatur ea et nulla corporis. Temporibus consecte...', '<div>Omnis molestiae voluptates culpa porro doloribus odio. Et dicta omnis earum tempora rem cumque. Ipsa officia ut quo autem est saepe dolor quod.<br><br></div><div>Est consequatur ea et nulla corporis. Temporibus consectetur occaecati ut eum. Eum eligendi et nesciunt. Et eos et illo et et.<br><br></div><div>Et ea sed quam. Quibusdam adipisci exercitationem sed soluta.<br><br></div><div>Quam quis nam iure. Adipisci ut ab unde quae. Quo natus eum placeat in.<br><br></div><div>Asperiores ipsam eos et illum rerum et in. Inventore deserunt enim nobis illum et consequatur ut temporibus. Dolores neque incidunt qui. Magni accusantium sapiente dolores.<br><br></div><div>Fugit minus voluptatem voluptatibus ducimus laudantium. Culpa sunt provident ut accusamus qui fugiat dolorem. Hic minima occaecati a voluptas quis officiis enim amet.<br><br></div><div>Voluptas doloremque perferendis iusto aut. Dolores sint commodi optio nostrum non aperiam saepe. Autem rerum magni id enim aut minima ratione tempora. Exercitationem sunt mollitia aliquam aut velit iure.<br><br></div><div>Doloribus aliquam non qui facere nihil. Vel vero nihil quis sed consequatur debitis mollitia delectus. Quia est esse saepe voluptatum temporibus. Ducimus nisi quos earum. Eligendi velit vel quo incidunt dolorem.<br><br></div>', NULL, '2022-10-04 20:13:24', '2022-10-12 01:24:28'),
(3, 2, 4, 'Est corrupti.', 'voluptatibus-molestiae-quia-molestiae-molestiae', NULL, 'Incidunt possimus reprehenderit quod. Consequatur voluptas id est. Voluptatem at corrupti reiciendis vel assumenda. Illo animi id expedita nemo.', '<p>Odit doloremque sequi velit. Reiciendis quo vitae architecto voluptatem ipsum vel magnam. Aut sed consequuntur porro iusto sapiente voluptas. Voluptate qui omnis et vel qui ullam.</p><p>Saepe neque molestias ut voluptas cumque iusto. Ab ut id quia repellat. Molestiae id nobis autem laborum inventore esse. Quis dolore quia soluta sapiente quis optio aut.</p><p>Qui voluptatem doloremque enim iusto veritatis maxime. Quae iure inventore nulla. Aut nobis voluptatum aperiam tenetur eos blanditiis.</p><p>Quo magnam et unde. Sit sit sint aut consequuntur facilis. Id rerum numquam ut expedita sed.</p><p>Illo voluptatem consequatur placeat beatae nobis non. Qui quidem minus omnis nulla unde reprehenderit. Libero iste laudantium officia sint laborum aspernatur. Sequi ut praesentium est et non.</p>', NULL, '2022-10-04 20:13:24', '2022-10-04 20:13:24'),
(4, 3, 4, 'In sequi dolores similique dolores.', 'soluta-aut-doloremque-voluptas-deleniti-aliquid-id', NULL, 'Nisi voluptatem distinctio nihil omnis quia. Molestiae accusantium harum molestiae cumque voluptatum architecto. Hic nemo et voluptatem ex ipsum.', '<p>Error iure sapiente voluptas praesentium temporibus et. Et sed et cum. Rerum hic nisi delectus minus numquam odit neque. Quaerat sed sint numquam ut sit corporis iste.</p><p>Provident autem sunt consequuntur voluptates exercitationem. Quibusdam doloremque non quos dolorum sequi beatae. Nobis culpa sed velit ut alias.</p><p>Hic sequi quod nostrum et. Aperiam quam blanditiis et consequatur ab voluptas. Molestiae quos quo nisi quisquam non.</p><p>Quo ea tempora est et. Iusto in occaecati minus. Voluptatem quo consequuntur assumenda vero dolores. Eum illum molestiae aut quas enim qui.</p><p>Molestiae eum aspernatur illo consequatur praesentium voluptatem. Nobis aperiam magni esse qui. Enim nihil qui blanditiis commodi blanditiis totam laboriosam ut.</p>', NULL, '2022-10-04 20:13:24', '2022-10-04 20:13:24'),
(8, 2, 4, 'Rerum aut.', 'similique-quis-neque-itaque-nesciunt-doloribus-recusandae-blanditiis-fugit', NULL, 'Quo totam aut est assumenda temporibus rem recusandae. Esse nihil saepe perspiciatis numquam odit itaque. Optio cupiditate fugiat aliquid et.', '<p>Architecto id rem esse nihil molestias cupiditate illo. Laudantium quasi quam sequi. Quia consequuntur unde dicta consectetur aut. Exercitationem similique a facilis harum ex numquam eos.</p><p>Dolores hic dolores quia dolore reiciendis. Et autem rerum reprehenderit eius mollitia. Est ex eos neque ratione vel.</p><p>Tempora expedita nisi numquam sit quis vel. Praesentium nisi voluptas autem. Magnam cupiditate debitis sint. Molestiae non nisi tempora alias similique ipsum ducimus nisi.</p><p>Officiis reiciendis maiores earum ducimus est. Vero est asperiores dolor repellendus ut est. Minima magnam et voluptates est ut. Consequatur ab magnam quos nam vel quibusdam.</p><p>Impedit qui velit illo aut. Sunt similique sit explicabo animi nisi. Dolores nemo dolor beatae dicta provident vitae.</p><p>Voluptas ea doloremque omnis tenetur aut aut. Atque molestiae ut at ipsa dolor molestiae. Rerum est est sint nam quas sit.</p><p>Dolorem omnis blanditiis dolore et. Rerum nobis velit inventore rerum. Maxime animi quis id qui sed voluptatem. Error rerum voluptates assumenda qui sit voluptatum et consequatur. In sequi ipsam tempore distinctio.</p><p>Ullam qui nihil sapiente a reprehenderit. Expedita voluptatem accusamus minus possimus omnis ratione reprehenderit. Odit deserunt quas fuga beatae error.</p><p>Vel et minima totam explicabo ipsa blanditiis autem. Ipsa esse sed dolorem est. Qui exercitationem enim reprehenderit perferendis doloremque fugit saepe. Alias occaecati temporibus consequatur omnis laboriosam.</p>', NULL, '2022-10-04 20:13:24', '2022-10-04 20:13:24'),
(9, 1, 4, 'Dolor amet qui molestias sunt officiis sed rerum.', 'nisi-eum-quo-qui-perferendis-iste-sed-magnam-et', NULL, 'Dolor et hic ea iusto. Impedit molestiae sequi eum neque vel. Saepe maxime odio est doloribus ipsam rem incidunt.', '<p>Similique officia minima recusandae quisquam recusandae aut. In illum tempore impedit reprehenderit aut. Optio nam nihil perferendis vitae. Aut laborum enim possimus eum voluptatum qui aut.</p><p>Facilis natus dignissimos accusamus odit aut quisquam. Sit sunt quasi mollitia veritatis. Repellat provident iure voluptas cumque placeat sed.</p><p>Impedit harum rerum omnis magnam temporibus veritatis impedit maiores. Voluptatem repellat qui ad est animi voluptatem molestiae modi. Quae in deserunt consequuntur modi et aut consequatur.</p><p>Sit doloribus debitis esse est facere corporis. Aperiam occaecati enim expedita laboriosam. Reprehenderit soluta eos hic nisi laudantium et. Molestiae nobis occaecati sit quia minima quam aliquam. Tempora et sint aliquid ea et consectetur molestias.</p><p>Qui ut at non sed dignissimos nihil et. Esse laudantium inventore odio dolor veniam quo. Id eos quisquam eaque consequatur vel sint sed. Ut corporis laudantium quis consequatur officiis sint voluptas.</p><p>Nam iure expedita enim enim. Sit porro qui quo repellendus nihil deserunt. Eum asperiores et quas dolorem quasi dolores placeat. Ducimus libero qui voluptatem rem nostrum deserunt. A accusantium facere nihil voluptas.</p><p>Facere in quas ex error. Provident asperiores repudiandae autem incidunt expedita autem provident.</p>', NULL, '2022-10-04 20:13:24', '2022-10-04 20:13:24'),
(11, 3, 1, 'Corrupti qui ut delectus quae culpa doloremque quia qui dolorum.', 'odio-possimus-magni-accusamus-voluptatum-sapiente-eligendi-nostrum', 'post-images/RZJpDgPsLwCfXZe3kW0RM0eliwDglRPmwojecF1p.jpg', 'Quis molestiae cum hic soluta qui. Quasi laudantium id quam incidunt ullam. Qui quia et non. Optio tempora explicabo hic sed.Dolores magnam deleniti aspernatur corporis et ducimus beatae. Consequuntur...', '<div>Quis molestiae cum hic soluta qui. Quasi laudantium id quam incidunt ullam. Qui quia et non. Optio tempora explicabo hic sed.<br><br></div><div>Dolores magnam deleniti aspernatur corporis et ducimus beatae. Consequuntur maiores cumque dolores qui ut. Natus ad eaque laboriosam neque molestiae quaerat eos molestiae. Quia soluta inventore harum ex qui qui.<br><br></div><div>Assumenda temporibus veniam eum quisquam. Rerum enim ea perferendis. Dolores voluptatum inventore consectetur est laborum perferendis enim. Officiis omnis laboriosam id quam.<br><br></div><div>Et aut quibusdam sequi cum. Atque vero saepe eum neque molestiae. Eligendi et atque accusantium harum et nam nulla.<br><br></div><div>Non qui vitae doloremque modi voluptatem ab quia quaerat. Et et praesentium vero impedit aut rerum neque. Numquam quo cupiditate sit quia ut autem explicabo. Quia quo illum explicabo repudiandae velit nisi nulla. Est sequi ab debitis quod ex qui vero.<br><br></div><div>Perferendis quidem explicabo tenetur et blanditiis suscipit libero et. Aliquam ipsam eos eius ducimus accusamus. Rerum deleniti molestiae ducimus corrupti. Voluptas quidem voluptatem aliquid aut ea et velit.<br><br></div><div>Incidunt inventore perferendis quasi natus repellendus. Id et neque libero. Aspernatur sint ad ea debitis perferendis facere. Vitae iure suscipit non iure dolor rerum quia molestiae.<br><br></div><div>Temporibus maxime mollitia nesciunt iure aliquid veniam recusandae. Illum et reiciendis rem est. Reiciendis cum corporis eum ea et officia.<br><br></div><div>Sed labore voluptate tenetur ut. Adipisci ea eveniet et eligendi velit provident. Est ipsam mollitia esse quasi expedita corporis. Consequatur odit sint dolore aperiam dolor. Repellendus aliquam expedita quasi nobis excepturi.<br><br></div><div>Sapiente aspernatur sed vitae est accusantium voluptas totam. Quasi pariatur eligendi eos dicta. Temporibus id aliquam ratione ut nesciunt totam praesentium.<br><br></div>', NULL, '2022-10-04 20:13:24', '2022-10-12 01:20:17'),
(14, 3, 4, 'Laboriosam commodi quisquam quis cum mollitia iste reiciendis aut.', 'quia-praesentium-voluptatum-ducimus-nostrum-consequuntur-id', NULL, 'Aut qui nesciunt quidem vel ea. Quia beatae molestiae deserunt dolorem error. Possimus ut sunt ab nam vel.', '<p>Aut aliquam magnam officiis. Tempora in non velit neque nesciunt. Tempore dolor qui velit tempora. Impedit mollitia accusantium autem voluptatem repellat repudiandae sit non.</p><p>Aut aut excepturi pariatur quibusdam quis minus et. Ut quia perferendis dolorum doloremque qui qui. Suscipit iusto nemo soluta quis.</p><p>Iusto nisi rerum eos rerum architecto exercitationem et. Beatae magni nobis nobis molestias dolorem et esse. Tenetur beatae ullam animi. Similique exercitationem quas vitae illo.</p><p>Vel ea dolore corporis earum aliquam. Incidunt eligendi cupiditate necessitatibus rerum sit omnis enim neque. Dolor porro dignissimos quo assumenda.</p><p>Nisi at quia ad doloremque. Doloribus aspernatur nihil qui eos voluptatibus ut. Fugiat officiis quia dolor omnis quia aliquam fugiat voluptates.</p><p>Optio dignissimos quia qui aperiam earum. Accusamus sint repudiandae autem repellat. Aut voluptas sint corporis ut minima tempora eligendi.</p><p>Ea perspiciatis vitae accusamus similique sit fugit reiciendis. Qui eveniet temporibus accusamus incidunt quia. Possimus dicta reiciendis sunt. Sed officia qui molestiae recusandae enim tempore.</p><p>Reprehenderit tempora ipsa ea. Provident blanditiis fugiat dicta autem quaerat. Incidunt enim velit doloremque. Ut error eius error est saepe vel quisquam.</p><p>Dolorem iste hic quod maxime nihil. Sit dolorem illum qui dicta sapiente aut aut.</p><p>Dolores cumque quia ut ducimus numquam assumenda quia. Assumenda magni modi aut non perspiciatis exercitationem saepe labore. Illum et nihil qui quae qui sit.</p>', NULL, '2022-10-04 20:13:24', '2022-10-04 20:13:24'),
(16, 3, 3, 'Nihil at aut fugiat dolorem sint quia quibusdam culpa vero.', 'aut-quia-aliquam-et-consequatur-quod-a', 'post-images/z7mYej5v6KJPqLzrsGRW66F0vj37U80qqjCuvCZL.jpg', 'Aliquid expedita enim et sint ducimus ut accusamus. Modi rerum consectetur ipsam quia tenetur. Asperiores a rerum et sint.Consequatur doloremque quis qui voluptas error eum. Ea aut pariatur voluptas c...', '<div>Aliquid expedita enim et sint ducimus ut accusamus. Modi rerum consectetur ipsam quia tenetur. Asperiores a rerum et sint.<br><br></div><div>Consequatur doloremque quis qui voluptas error eum. Ea aut pariatur voluptas cumque aliquid quaerat aut. Aut omnis sequi sapiente eum provident similique. Praesentium perferendis eaque explicabo dolores aliquid quidem.<br><br></div><div>Labore doloremque deleniti ut illo corrupti. Quis labore ea at beatae odit. Rerum in deserunt consequatur deleniti voluptatem maxime. Ea id natus perspiciatis temporibus velit.<br><br></div><div>Laborum reiciendis iusto exercitationem assumenda. Aut sapiente impedit illum cupiditate nemo corporis ipsam qui. Omnis omnis soluta qui sint quia atque. Aut iste dicta quas nostrum in.<br><br></div><div>Soluta maxime eligendi eos fugiat et accusantium esse aut. Consequatur cupiditate quam repellat magni quidem. Et occaecati et consequatur sed qui impedit. Ea quaerat accusamus accusamus harum impedit rerum et.<br><br></div><div>Vitae corporis possimus soluta et sed repellendus. Totam ea rem explicabo suscipit aut. Rem aut tempora minima nihil eum sint. Consequuntur labore expedita aperiam temporibus vero molestiae distinctio.<br><br></div>', NULL, '2022-10-04 20:13:25', '2022-10-06 01:55:39'),
(17, 3, 1, 'Cumque occaecati praesentium quas ab.', 'rerum-molestias-accusamus-cum-vol', 'post-images/xcjVoZTxUplNLi4UrjOFTENvFQG16xUw4vUTAI7k.jpg', 'Excepturi voluptas debitis rem amet laudantium. Fugiat autem placeat sint repellat eaque quia.Nobis aperiam molestias ea. Repellat repellat dolorem animi ducimus quam rerum facere. Voluptate id incidu...', '<div>Excepturi voluptas debitis rem amet laudantium. Fugiat autem placeat sint repellat eaque quia.<br><br></div><div>Nobis aperiam molestias ea. Repellat repellat dolorem animi ducimus quam rerum facere. Voluptate id incidunt vel ut at dolores sed. Placeat minus ducimus numquam et.<br><br></div><div>Harum et ut sed in et asperiores sequi. Officiis in qui maiores dolorem voluptatem. Nulla consequatur reprehenderit enim sed.<br><br></div><div>Fugiat dicta totam impedit quae dolores. Aperiam ipsa accusantium aut. Deserunt hic et hic consequatur.<br><br></div><div>Fugit et in optio. Debitis asperiores non natus mollitia saepe qui inventore. Ad quidem aliquam sed sint sapiente.<br><br></div><div>Quidem iste sed est similique. Ea impedit illum culpa magni. Eum ea sed libero veritatis. Ratione pariatur facere voluptatem et. Dolorem doloremque sed nesciunt quis odit mollitia eos.<br><br></div><div>Qui esse omnis quaerat possimus vel et. Nostrum repudiandae veritatis eum voluptatem accusantium. Ullam eos recusandae ipsum facilis ipsam et. Quasi quam accusantium corporis quo in vel.<br><br></div>', NULL, '2022-10-04 20:13:25', '2022-10-16 23:51:59'),
(18, 2, 4, 'Porro nobis harum quae culpa.', 'qui-cumque-mollitia-unde-ullam', NULL, 'Voluptates temporibus laboriosam et culpa quo quod dolorum. Quos amet voluptatem ut. Consequatur iure vero et quae qui laudantium consectetur perferendis.', '<p>Quam ratione ipsam doloribus id. Odio enim suscipit minus animi ut odit et. In sunt autem nam. Commodi voluptatibus quia incidunt ut vel consequuntur commodi velit.</p><p>Sunt qui quos quas perferendis. Perferendis est aperiam minima ipsa eum deserunt. Et omnis qui quibusdam voluptatem ab saepe fugiat iste.</p><p>Dolor sint deserunt fugit cum eos doloremque quaerat. Ut quidem non delectus iure. Eius explicabo aut tempora libero illum dolore quia magnam.</p><p>Totam magni eius in sunt dolorem autem tempore. Veritatis dicta adipisci consequatur velit mollitia. Repellendus numquam aliquid amet tempore ipsum voluptas deserunt. Dolorem quae ab laborum ipsam. Delectus quas quibusdam ex.</p><p>Non repellendus provident temporibus velit impedit quasi accusantium aliquid. Officiis sunt qui non qui fuga. Possimus distinctio expedita ut et sit qui magnam. Sequi quos vitae numquam.</p><p>In omnis dolor voluptatem vel. Illum nesciunt consequatur dolor vel voluptas non. Nisi nulla perferendis ad.</p><p>Culpa ut voluptas sed. Consectetur expedita nihil dignissimos. Adipisci eum nihil quisquam dolores. Eius alias eos nam dignissimos dolor nostrum voluptatum.</p><p>Voluptas neque esse quia officia assumenda. Saepe sint minima at reiciendis ut nesciunt cupiditate. Ad facilis quasi voluptatum accusantium ipsam et. Aut accusantium inventore itaque iure veniam aut soluta.</p><p>Voluptatem quidem et et amet. Praesentium veritatis velit ea nam. Sit rem veniam veritatis adipisci voluptas. Et molestiae numquam deleniti.</p><p>Explicabo quis molestias nesciunt officiis modi. Impedit magni necessitatibus vel ea libero voluptatum. Maxime eos qui labore dolores quaerat.</p>', NULL, '2022-10-04 20:13:25', '2022-10-04 20:13:25'),
(19, 2, 3, 'Officia voluptas similique.', 'velit-doloribus-nesciunt-dolores-nemo', 'post-images/gxR2RQoddiZZbwIOALBSUgOjHpf1EpCsCa7xBoLS.jpg', 'Rem consequatur quia ut voluptas earum voluptas. Tenetur vero magnam deleniti eius quia suscipit. Dolore occaecati ipsam iusto et quis minus quam. Sequi animi voluptate maxime.Deleniti sint quia non v...', '<div>Rem consequatur quia ut voluptas earum voluptas. Tenetur vero magnam deleniti eius quia suscipit. Dolore occaecati ipsam iusto et quis minus quam. Sequi animi voluptate maxime.<br><br></div><div>Deleniti sint quia non vitae quisquam minus facere totam. Accusantium totam magnam officia illum. Ex eaque et sed incidunt inventore sunt minus. Aut sunt error ratione placeat aut.<br><br></div><div>Architecto libero placeat sapiente occaecati rerum ex aut. Asperiores qui sed ut aut et. Iste porro est hic vel accusantium blanditiis. Sequi ut aut porro.<br><br></div><div>Hic quia et quae eos distinctio non hic similique. Eveniet veniam et quibusdam recusandae nam consequatur.<br><br></div><div>Quia reprehenderit est sed minima aut quasi at dolore. Ut assumenda aliquid cumque minus minima numquam et. Quaerat magni temporibus reprehenderit voluptatum ab consequatur voluptas.<br><br></div><div>Nulla omnis sit iusto quo ullam esse similique possimus. Vitae libero officia dolores aut dolorem. Qui tempore alias occaecati qui sed. Nihil rerum natus et commodi nobis rem id.<br><br></div>', NULL, '2022-10-04 20:13:25', '2022-10-12 01:24:50'),
(21, 1, 1, 'Judul Perdana', 'judul-perdana', 'post-images/M4M1KywFoNeXuxboibG7JAt6Z3EIcyx5qEgqu2JX.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitationullamco laboris nisi ut ali...', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation<br>ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in&nbsp;<br><br>reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>', NULL, '2022-10-09 20:57:50', '2022-10-16 23:45:10'),
(22, 5, 1, 'Judul Kedua', 'judul-kedua', 'post-images/r3ZVWfWoLB1t5fAndYrNRGvMinRlUtKDAYBBtjtx.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut al...', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>', NULL, '2022-10-13 19:48:50', '2022-10-13 19:48:50'),
(23, 2, 7, 'BTS', 'bts', 'post-images/4AX7zQVCt7QrjwrObJEv3qrwXtLFgxrqA7TH6005.jpg', 'BTS ( Bahasa Korea :&nbsp; ; RR :&nbsp; Bangtan Sonyeondan ) , juga dikenal sebagai Bangtan Boys , adalah boy band Korea Selatan yang dibentuk pada 2010 dan memulai debutnya pada 2013 di bawah Big Hit...', '<div><strong>BTS</strong> ( Bahasa <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Korean_language?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Korea</a> :&nbsp; ; <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Revised_Romanization_of_Korean?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">RR</a> :&nbsp; <em>Bangtan Sonyeondan </em>) , juga dikenal sebagai <strong>Bangtan Boys , adalah </strong><a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Boy_band?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">boy band</a> Korea Selatan yang dibentuk pada 2010 dan memulai debutnya pada 2013 di bawah <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Big_Hit_Music?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Big Hit Entertainment</a> . Septet—terdiri dari anggota <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Kim_Seok-jin?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Jin</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Suga_(rapper)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Suga</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/J-Hope?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">J-Hope</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/RM_(rapper)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">RM</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Jimin?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Jimin</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/V_(singer)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">V</a> , dan <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Jungkook?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Jungkook</a> —bersama-sama menulis dan memproduksi banyak materi mereka sendiri. Awalnya <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Hip_hop_music?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">hip hop</a>grup, gaya musik mereka telah berkembang untuk menggabungkan berbagai genre; lirik mereka sering membahas kesehatan mental, masalah remaja usia sekolah dan <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Coming_of_age?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">kedewasaan</a> , kehilangan, perjalanan menuju cinta diri, dan individualisme. Karya mereka juga sering merujuk pada sastra, filsafat, dan konsep psikologis, dan mencakup alur cerita <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Parallel_universes_in_fiction?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">alam semesta alternatif</a> .<br><br>Setelah diluncurkan pada tahun 2013 dengan album single mereka <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/2_Cool_4_Skool?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>2 Cool 4 Skool</em></a> , BTS masing-masing merilis album studio berbahasa Korea pertama mereka, <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Dark_%26_Wild?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Dark &amp; ​​Wild</em></a> , dan album studio berbahasa Jepang, <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Wake_Up_(BTS_album)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Wake Up</em></a> , pada tahun 2014. Album studio Korea kedua grup tersebut, <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Wings_(BTS_album)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Wings</em></a> ( 2016), adalah yang pertama menjual satu juta kopi di Korea Selatan. Pada tahun 2017, BTS telah memasuki pasar musik global, memimpin <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Korean_wave?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">gelombang Korea</a> ke Amerika Serikat dan memecahkan beberapa rekor penjualan. Mereka menjadi ansambel Korea pertama yang menerima <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/RIAA_certification?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">sertifikasi Emas</a> dari <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Recording_Industry_Association_of_America?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Asosiasi Industri Rekaman Amerika</a> (RIAA) untuk single mereka \" <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Mic_Drop_(song)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Mic Drop</a>\", serta grup pertama dari Korea Selatan yang menduduki puncak <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Billboard_200?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Billboard</em>&nbsp;200</a> dengan album studio mereka <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Love_Yourself:_Tear?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Love Yourself: Tear</em></a> (2018). BTS menjadi salah satu dari sedikit grup sejak <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/The_Beatles?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">The Beatles</a> pada 1966–1968 dengan empat album nomor satu AS di kurang dari dua tahun, dan <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Love_Yourself:_Answer?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Love Yourself: Answer</em></a> (2018) adalah album Korea pertama yang disertifikasi Platinum oleh RIAA. Pada tahun 2020, BTS menjadi artis Korea Selatan pertama yang mencapai nomor satu di <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Billboard_Hot_100?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Billboard</em>&nbsp;Hot 100</a> dan <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Billboard_Global_200?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Billboard</em>&nbsp;Global 200</a> dengan singel <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/63rd_Annual_Grammy_Awards?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">nominasi Grammy</a> mereka \" <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Dynamite_(BTS_song)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Dynamite</a> \". Selanjutnya mereka merilis \" <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Savage_Love_(Laxed_%E2%80%93_Siren_Beat)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp#BTS_remix\">Savage Love</a> \", \" <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Life_Goes_On_(BTS_song)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Life Goes On</a>\", \" <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Butter_(song)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Butter</a> \", dan \" <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Permission_to_Dance?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Permission to Dance</a> \" menjadikan mereka artis tercepat untuk mendapatkan empat single nomor satu AS sejak <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Justin_Timberlake?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Justin Timberlake</a> pada 2006.<br><br></div><div><br>Pada tahun 2022, BTS adalah artis terlaris dalam sejarah Korea Selatan, telah menjual lebih dari 30 juta album melalui <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Gaon_Music_Chart?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Circle Chart</a> , dan album studio mereka <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Map_of_the_Soul:_7?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Map of the Soul: 7</em></a> (2020) adalah <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/List_of_best-selling_albums_in_South_Korea?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">album terlaris dari semuanya. waktu di Korea Selatan</a> .</div>', NULL, '2022-10-19 18:16:38', '2022-10-19 18:16:38'),
(24, 2, 6, 'ASTRO', 'astro', 'post-images/vYz2gn2fdRzK2i10N3WANvhefAMnyvNPrahLLZt6.jpg', 'Astro ( Korea :&nbsp; ) adalah boy band Korea Selatan yang dibentuk oleh Fantagio yang memulai debutnya pada tahun 2016. [1] Grup ini terdiri dari enam anggota: MJ , Jinjin , Cha Eun-woo , Moon Bin ,...', '<div><strong>Astro</strong> ( <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Korean_language?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Korea</a> :&nbsp; ) adalah boy<a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Boy_band?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"> band</a> Korea Selatan yang dibentuk oleh <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Fantagio?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Fantagio</a> yang memulai debutnya pada tahun 2016. <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Astro_(South_Korean_band)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp#cite_note-1\">[1]</a> Grup ini terdiri dari enam anggota: <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/MJ_(South_Korean_singer)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">MJ</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Jinjin?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Jinjin</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Cha_Eun-woo?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Cha Eun-woo</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Moon_Bin?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Moon Bin</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Rocky_(singer)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Rocky</a> dan <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Yoon_San-ha?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Yoon San-ha</a> . <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Astro_(South_Korean_band)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp#cite_note-2\">[2]</a> Mereka memulai debutnya dengan single \"Hide &amp; Seek\" dari debut EP <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Spring_Up?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Spring Up</em></a> mereka , dan kemudian dinobatkan oleh <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Billboard_(magazine)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\"><em>Billboard</em></a> sebagai salah satu grup <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/K-pop?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">K-pop</a> baru terbaik tahun 2016<br><br>Anggota Astro dikenal sebagai iTeen Boys saat berlatih sebagai bagian dari Fantagio iTeen, program pengembangan bakat pemula di bawah agensi manajemen <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Fantagio?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Fantagio</a> . Nama grup dan anggota diumumkan pada Agustus 2015. <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Astro_(South_Korean_band)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp#cite_note-4\">[4]</a> Bulan itu, mereka membintangi serial drama web berjudul <em>To Be Continued</em> . <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Astro_(South_Korean_band)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp#cite_note-5\">[5]</a> Web drama ini menampilkan para anggota sebagai diri mereka sendiri, serta <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Kim_Sae-ron?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Kim Sae-ron</a> , <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Seo_Kang-joon?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Seo Kang-joon</a> , dan <a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Hello_Venus?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Hello Venus</a> .<br><br>Anggota</div><ul><li><a href=\"https://en-m-wikipedia-org.translate.goog/wiki/MJ_(South_Korean_singer)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">MJ</a> ( ) _</li><li><a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Jinjin?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Jinjin</a> ( ) _</li><li><a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Cha_Eun-woo?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Cha Eun </a>Woo ( )</li><li>Moon&nbsp;<a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Moon_Bin?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Bin </a>( )</li><li><a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Rocky_(singer)?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Rocky</a> ( ) _</li><li><a href=\"https://en-m-wikipedia-org.translate.goog/wiki/Yoon_San-ha?_x_tr_sl=en&amp;_x_tr_tl=id&amp;_x_tr_hl=en&amp;_x_tr_pto=wapp\">Yoon San </a>Ha ( )</li></ul>', NULL, '2022-10-19 18:23:47', '2022-10-19 18:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Khoiruddina', 'khrddna', 'dina@gmail.com', NULL, '$2y$10$WKWhYgYuyUC8/L1ETwbSX.9dcHVwagy3ROV.nIJZZry29b2z4xNqm', NULL, '2022-10-04 20:13:23', '2022-10-19 00:57:26', 1),
(3, 'Dadap Hidayanto M.Kom.', 'yanto', 'haryanto@gmail.com', '2022-10-04 20:13:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9Nrdv6iYGBmxd6sW0I30H3TXW6hmlF6YpKKh9iEMOGJNCUX4t3Aanj8gkQ6y', '2022-10-04 20:13:24', '2022-10-19 01:00:03', 0),
(4, 'Halima Sadina Susanti', 'gawati', 'tamba.eka@example.net', '2022-10-04 20:13:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'avV5AtTwsUkR6Q9JXT4lI6WMwyznsaRYYxsLhnhvEN7SGufBvtQuFtJKkiMP', '2022-10-04 20:13:24', '2022-10-18 20:38:30', 0),
(6, 'Lee Dong Min', 'nunu', 'nunu30@gmail.com', NULL, '$2y$10$YgOF7tgbkFt39Xz4/JeecO6B0UYhL/sUGpIcxTNsHrNN8i2WHQfNK', NULL, '2022-10-13 20:22:43', '2022-10-19 00:55:26', 1),
(7, 'Jekey', 'joko', 'kokie12@gmail.com', NULL, '$2y$10$q4mGik9I8kT0VC5ZT2qn1OCeRglMwhAy24X7II.RrM06LwUnmpMh2', NULL, '2022-10-14 00:03:26', '2022-10-14 00:03:26', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
