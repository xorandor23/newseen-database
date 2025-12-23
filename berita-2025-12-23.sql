-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2025 at 04:12 AM
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
-- Database: `berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tgl_terbit` date NOT NULL,
  `is_premium` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `judul`, `isi`, `gambar`, `tgl_terbit`, `is_premium`, `created_at`, `updated_at`) VALUES
(20, 10, 1, 'Pure Storage and Azure’s role in AI-ready data for enterprises', '[\"Many organisations are trying to update their infrastructure to improve efficiency and manage rising costs. But the path is rarely simple. Hybrid setups, legacy systems, and new demands from AI in the enterprise often create trade-offs for IT teams.\",\"Recent moves by Microsoft and several storage and data-platform vendors highlight how enterprises are trying to deal with these issues, and what other companies can learn from them as they plan their own enterprise AI strategies.\",\"Modernisation often stalls when costs rise\",\"Many businesses want the flexibility of cloud computing but still depend on systems built on virtual machines and years of internal processes. A common problem is that older applications were never built for the cloud. Rewriting them can take time and create new risks. But a simple “lift and shift” move often leads to higher bills, especially when teams do not change how the workloads run.\",\"Some vendors are trying to address this by offering ways to move virtual machines to Azure without major changes. Early users say the draw is the chance to test cloud migration without reworking applications on day one. For some, this early testing is tied to preparing systems that will later support enterprise AI workloads.\",\"They also point to lower storage costs when managed through Azure’s own tools, which helps keep the move predictable. The key lesson for other companies is to look for migration paths that match their existing operations instead of forcing a full rebuild from the start.\",\"Data protection and control remain top concerns in hybrid environments\",\"The risk of data loss or long outages still keeps many leaders cautious about large modernisation plans. Some organisations are now building stronger recovery systems in on-premises, edge, and cloud locations. Standard planning now includes features like immutable snapshots, replication, and better visibility of compromised data.\",\"A recent integration between Microsoft Azure and several storage systems seeks to give companies a way to manage data in on-premises hardware and Azure services. Interest has grown among organisations that need local data residency or strict compliance rules. These setups let them keep sensitive data in-country while still working with Azure tools, which is increasingly important as enterprise AI applications depend on reliable and well-governed data.\",\"For businesses facing similar pressures, the main takeaway is that hybrid models can support compliance needs when the control layer is unified.\",\"Preparing for AI often requires stronger data foundations, not a full rebuild\",\"Many companies want to support AI projects but don’t want to overhaul their entire infrastructure. Microsoft’s SQL Server 2025 adds vector database features that let teams build AI-driven applications without switching platforms. Some enterprises have paired SQL Server with high-performance storage arrays to improve throughput and reduce the size of AI-related data sets. The improvements are becoming part of broader enterprise AI planning.\",\"Teams working with these setups say the attraction is the chance to run early AI workloads without committing to a new stack. They also report that more predictable performance helps them scale when teams begin to train or test new models. The larger lesson is that AI readiness often starts with improving the systems that already hold business data instead of adopting a separate platform.\",\"Managing Kubernetes alongside older systems introduces new complexity\",\"Many enterprises now run a mix of containers and virtual machines. Keeping both in sync can strain teams, especially when workloads run in more than one cloud. Some companies are turning to unified data-management tools that allow Kubernetes environments to sit alongside legacy applications.\",\"One example is the growing use of Portworx with Azure Kubernetes Service and Azure Red Hat OpenShift. Some teams use it to move VMs into Kubernetes through KubeVirt while keeping familiar workflows for automation. The approach aims to reduce overprovisioning and make capacity easier to plan. For others, it is part of a broader effort to make their infrastructure ready to support enterprise AI initiatives. It also gives companies a slower, safer path to container adoption. The broader lesson is that hybrid container strategies work best when they respect existing skills rather than forcing dramatic shifts.\",\"A clearer path is emerging for companies planning modernisation\",\"Across these examples, a common theme stands out: most enterprises are not trying to rebuild everything at once. They want predictable migration plans, stronger data protection, and practical ways to support early AI projects. The tools and partnerships now forming around Azure suggest that modernisation is becoming less about replacing systems and more about improving what is already in place.\",\"Companies that approach modernisation in small, steady steps – while keeping cost, security, and data needs in view – may find it easier to move forward without taking on unnecessary risk.\",\"See also: Bain & Company issues AI Guide for CEOs, opens Singapore hub\",\"Want to learn more about AI and big data from industry leaders? Check out AI & Big Data Expo taking place in Amsterdam, California, and London. The comprehensive event is part of TechEx and is co-located with other leading technology events, click here for more information.\",\"AI News is powered by TechForge Media. Explore other upcoming enterprise technology events and webinars here.\"]', 'berita/1763659058_Pure-Storage-and-Azures-role-in-AI-ready-data-for-enterprises-scaled-e1763619259178.jpg', '2025-11-21', 0, '2025-11-20 10:17:38', '2025-11-20 10:17:38'),
(21, 10, 1, 'Pure Storage and Azure’s role in AI-ready data for enterprises', '[\"Many organisations are trying to update their infrastructure to improve efficiency and manage rising costs. But the path is rarely simple. Hybrid setups, legacy systems, and new demands from AI in the enterprise often create trade-offs for IT teams.\",\"Recent moves by Microsoft and several storage and data-platform vendors highlight how enterprises are trying to deal with these issues, and what other companies can learn from them as they plan their own enterprise AI strategies.\",\"Modernisation often stalls when costs rise\",\"Many businesses want the flexibility of cloud computing but still depend on systems built on virtual machines and years of internal processes. A common problem is that older applications were never built for the cloud. Rewriting them can take time and create new risks. But a simple “lift and shift” move often leads to higher bills, especially when teams do not change how the workloads run.\",\"Some vendors are trying to address this by offering ways to move virtual machines to Azure without major changes. Early users say the draw is the chance to test cloud migration without reworking applications on day one. For some, this early testing is tied to preparing systems that will later support enterprise AI workloads.\",\"They also point to lower storage costs when managed through Azure’s own tools, which helps keep the move predictable. The key lesson for other companies is to look for migration paths that match their existing operations instead of forcing a full rebuild from the start.\",\"Data protection and control remain top concerns in hybrid environments\",\"The risk of data loss or long outages still keeps many leaders cautious about large modernisation plans. Some organisations are now building stronger recovery systems in on-premises, edge, and cloud locations. Standard planning now includes features like immutable snapshots, replication, and better visibility of compromised data.\",\"A recent integration between Microsoft Azure and several storage systems seeks to give companies a way to manage data in on-premises hardware and Azure services. Interest has grown among organisations that need local data residency or strict compliance rules. These setups let them keep sensitive data in-country while still working with Azure tools, which is increasingly important as enterprise AI applications depend on reliable and well-governed data.\",\"For businesses facing similar pressures, the main takeaway is that hybrid models can support compliance needs when the control layer is unified.\",\"Preparing for AI often requires stronger data foundations, not a full rebuild\",\"Many companies want to support AI projects but don’t want to overhaul their entire infrastructure. Microsoft’s SQL Server 2025 adds vector database features that let teams build AI-driven applications without switching platforms. Some enterprises have paired SQL Server with high-performance storage arrays to improve throughput and reduce the size of AI-related data sets. The improvements are becoming part of broader enterprise AI planning.\",\"Teams working with these setups say the attraction is the chance to run early AI workloads without committing to a new stack. They also report that more predictable performance helps them scale when teams begin to train or test new models. The larger lesson is that AI readiness often starts with improving the systems that already hold business data instead of adopting a separate platform.\",\"Managing Kubernetes alongside older systems introduces new complexity\",\"Many enterprises now run a mix of containers and virtual machines. Keeping both in sync can strain teams, especially when workloads run in more than one cloud. Some companies are turning to unified data-management tools that allow Kubernetes environments to sit alongside legacy applications.\",\"One example is the growing use of Portworx with Azure Kubernetes Service and Azure Red Hat OpenShift. Some teams use it to move VMs into Kubernetes through KubeVirt while keeping familiar workflows for automation. The approach aims to reduce overprovisioning and make capacity easier to plan. For others, it is part of a broader effort to make their infrastructure ready to support enterprise AI initiatives. It also gives companies a slower, safer path to container adoption. The broader lesson is that hybrid container strategies work best when they respect existing skills rather than forcing dramatic shifts.\",\"A clearer path is emerging for companies planning modernisation\",\"Across these examples, a common theme stands out: most enterprises are not trying to rebuild everything at once. They want predictable migration plans, stronger data protection, and practical ways to support early AI projects. The tools and partnerships now forming around Azure suggest that modernisation is becoming less about replacing systems and more about improving what is already in place.\",\"Companies that approach modernisation in small, steady steps – while keeping cost, security, and data needs in view – may find it easier to move forward without taking on unnecessary risk.\",\"See also: Bain & Company issues AI Guide for CEOs, opens Singapore hub\",\"Want to learn more about AI and big data from industry leaders? Check out AI & Big Data Expo taking place in Amsterdam, California, and London. The comprehensive event is part of TechEx and is co-located with other leading technology events, click here for more information.\",\"AI News is powered by TechForge Media. Explore other upcoming enterprise technology events and webinars here.\"]', 'berita/1763659124_Pure-Storage-and-Azures-role-in-AI-ready-data-for-enterprises-scaled-e1763619259178.jpg', '2025-11-21', 0, '2025-11-20 10:18:44', '2025-11-20 10:18:44'),
(43, 17, 3, 'Hello World', '[\"hduiahduiahduaihduiahdiauhdaiuwhdawiudawuidawhduaiwhduaihdawiuhnxauidnhauhwdnauidhauidhnxwuhnxauidh\"]', 'berita/1766112874_The 5 Biggest Cloud Computing Trends In 2021.jpg', '2025-12-19', 0, '2025-12-18 19:54:35', '2025-12-18 19:54:35'),
(46, 17, 3, 'mkalmklmslakw', '[\"ansknxkjxs\"]', 'berita/KmqBP79pH2dqg8xZY7tup4UTT0dWHNNeZeIARNwS.png', '2025-12-22', 0, '2025-12-22 02:59:48', '2025-12-22 02:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id_bookmark` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_berita` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `disukai`
--

CREATE TABLE `disukai` (
  `id_disukai` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_berita` bigint(20) UNSIGNED NOT NULL,
  `suka` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_berita` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'ai', '2025-11-20 11:31:48', '2025-11-20 11:32:02'),
(2, 'mobile', '2025-11-20 11:41:34', '2025-11-20 11:41:34'),
(3, 'news', '2025-11-20 11:41:34', '2025-11-20 11:41:34'),
(4, 'computer', '2025-12-17 01:49:22', '2025-12-17 01:49:35');

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
(4, '2025_10_17_152158_create_beritas_table', 1),
(5, '2025_10_17_152501_create_kategoris_table', 1),
(6, '2025_10_17_152656_create_disukais_table', 1),
(7, '2025_10_17_152748_create_histories_table', 1),
(8, '2025_10_20_085203_modify_role_in_user_table', 1),
(9, '2025_10_20_091205_create_personal_access_tokens_table', 1),
(10, '2025_10_20_092753_add_membership_to_user_and_is_premium_to_berita_table', 1),
(11, '2025_11_03_154526_add_foto_profil_to_user_table', 1),
(12, '2025_11_04_134138_create_bookmarks_table', 1),
(13, '2025_11_04_134200_create_notifications_table', 1),
(14, '2025_11_04_134240_create_reports_table', 1),
(15, '2025_11_06_142927_create_token_table', 1),
(16, '2025_12_16_081811_add_verification_column_to_user_table', 2),
(17, '2025_12_22_045725_create_otps_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id_notification` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'info',
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `email`, `otp`, `expires_at`, `created_at`, `updated_at`) VALUES
(6, 'newseencompany@gmail.com', '852970', '2025-12-22 02:34:47', '2025-12-22 02:24:47', '2025-12-22 02:24:47'),
(7, 'cfull062@gmail.com', '383972', '2025-12-22 02:42:20', '2025-12-22 02:32:20', '2025-12-22 02:32:20');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'f4bf8da1cc23067e6a01f3857be47e40209af8ab4ff5b984c82433a4230ed682', '[\"*\"]', '2025-11-16 23:15:18', NULL, '2025-11-16 23:12:35', '2025-11-16 23:15:18'),
(2, 'App\\Models\\User', 5, 'auth_token', '672b2cd5fdaa26a335917e2b41ba5fdb428e7542cd155d08695bb823181fee1b', '[\"*\"]', NULL, NULL, '2025-11-17 00:22:01', '2025-11-17 00:22:01'),
(3, 'App\\Models\\User', 5, 'auth_token', '359f1a6d7302040b283a8fd3a07cb3a908bfe27c4439843a36033116a4bcbc77', '[\"*\"]', NULL, NULL, '2025-11-17 02:07:41', '2025-11-17 02:07:41'),
(4, 'App\\Models\\User', 5, 'auth_token', '9d857be40454df92e4b79e5845fbb0b98f64919ce66875cee6d97606c2c90725', '[\"*\"]', NULL, NULL, '2025-11-17 02:09:14', '2025-11-17 02:09:14'),
(5, 'App\\Models\\User', 5, 'auth_token', 'bde89493faeaeaec792a50e5b437a0dad0d08142116dd5b2145cb46235a99fd0', '[\"*\"]', NULL, NULL, '2025-11-17 02:12:17', '2025-11-17 02:12:17'),
(6, 'App\\Models\\User', 3, 'auth_token', '010a0699069fc8f653d7406f21babfeee75542f7250d720528d6f971f63fcb52', '[\"*\"]', '2025-11-17 21:13:38', NULL, '2025-11-17 21:09:29', '2025-11-17 21:13:38'),
(7, 'App\\Models\\User', 6, 'auth_token', '465ab1fe971593d1c04bbd8315b7d90606ce317ebe3246ccf921f40436c9a4b7', '[\"*\"]', NULL, NULL, '2025-11-18 07:47:25', '2025-11-18 07:47:25'),
(8, 'App\\Models\\User', 6, 'auth_token', '60266fedabcd8d9c0327ae2474fa3b97932c7bd22fd5519dc232ea8b8ec2a13b', '[\"*\"]', '2025-11-18 08:32:15', NULL, '2025-11-18 08:30:57', '2025-11-18 08:32:15'),
(9, 'App\\Models\\User', 6, 'auth_token', 'abbee5faac18372f051c0b986c79b99fccb5ea58dd042a56624ac0baf0e7f7f4', '[\"*\"]', '2025-11-18 08:35:51', NULL, '2025-11-18 08:35:12', '2025-11-18 08:35:51'),
(10, 'App\\Models\\User', 7, 'auth_token', '57c8c71774f59b57f3ed42966eacbdb5d594b8a1291ed545d7577cdb45cc97dd', '[\"*\"]', NULL, NULL, '2025-11-18 19:52:49', '2025-11-18 19:52:49'),
(11, 'App\\Models\\User', 7, 'auth_token', 'db7ccd3f1e501882af5faf3dfef2c7365b802175f88e9c4de80de6cde81b5164', '[\"*\"]', NULL, NULL, '2025-11-18 19:58:29', '2025-11-18 19:58:29'),
(12, 'App\\Models\\User', 7, 'auth_token', 'c6fb510baf7c64e5f86f984b94dab1e05915e8e5a1ce9cb0af1ff0c6b1e3b426', '[\"*\"]', NULL, NULL, '2025-11-18 20:00:06', '2025-11-18 20:00:06'),
(13, 'App\\Models\\User', 7, 'auth_token', 'a2992437d998fa69a044d38b03318ee1151611700f4aba7e23b662aaa07c09f7', '[\"*\"]', NULL, NULL, '2025-11-18 20:04:00', '2025-11-18 20:04:00'),
(14, 'App\\Models\\User', 7, 'auth_token', 'd6b7456b61bf0d942e2071b4f4ced9fea2230435c7c9ee6dcd317189f733cdf8', '[\"*\"]', '2025-11-18 21:56:22', NULL, '2025-11-18 20:05:05', '2025-11-18 21:56:22'),
(15, 'App\\Models\\User', 7, 'auth_token', '68ba7e72ad32a813819108b3bfa8f41f28c82ec722db1b10164ee25847e66f9d', '[\"*\"]', NULL, NULL, '2025-11-18 20:07:51', '2025-11-18 20:07:51'),
(16, 'App\\Models\\User', 7, 'auth_token', '8c30ca8076c2cc599d9c07b14f0d8e7730db157ad3f00357abea4c0f4614f495', '[\"*\"]', NULL, NULL, '2025-11-18 20:08:48', '2025-11-18 20:08:48'),
(17, 'App\\Models\\User', 7, 'auth_token', '27f008bc0f81c40e9d3264bc509b120d6f9023153fa669970afbe68884fc2ecd', '[\"*\"]', NULL, NULL, '2025-11-18 20:09:23', '2025-11-18 20:09:23'),
(18, 'App\\Models\\User', 7, 'auth_token', '7198d93de7b37e93dbce8e8aa91b4530a3f0ef7724b51e0febb9e90dd972aaa6', '[\"*\"]', NULL, NULL, '2025-11-18 20:09:59', '2025-11-18 20:09:59'),
(19, 'App\\Models\\User', 7, 'auth_token', 'b23ba739aa3493fb445f5c13e0297f2583942fb0f21ae9c56c959760ca4d6af7', '[\"*\"]', NULL, NULL, '2025-11-18 20:11:39', '2025-11-18 20:11:39'),
(20, 'App\\Models\\User', 7, 'auth_token', '8c8cce354a46ef158c4f1768fac31fa0f52d409869bf98e653f14de26b6495ac', '[\"*\"]', NULL, NULL, '2025-11-18 20:15:18', '2025-11-18 20:15:18'),
(21, 'App\\Models\\User', 7, 'auth_token', 'bfc129a491039673a96ef25dbe04d966a0ee712dd216651ab31d4b35bcc83642', '[\"*\"]', '2025-11-18 22:14:06', NULL, '2025-11-18 20:23:14', '2025-11-18 22:14:06'),
(22, 'App\\Models\\User', 8, 'auth_token', 'ddbb52d5f7b817888a3b6ec8f1365e0cf40b48f99bf0e7eb0f4e8abf2ffdbb63', '[\"*\"]', '2025-11-18 22:16:45', NULL, '2025-11-18 22:16:30', '2025-11-18 22:16:45'),
(23, 'App\\Models\\User', 8, 'auth_token', '224f09e15750cc17d2f1dfb687f8c6793eefbbae72db6e1ca03f87e313c40fcd', '[\"*\"]', '2025-11-18 22:28:32', NULL, '2025-11-18 22:25:35', '2025-11-18 22:28:32'),
(24, 'App\\Models\\User', 9, 'auth_token', 'c8e53b68d9b6ffbf37fa05ed9f989fdf5bf9995397ac3b73cd367219251f2f66', '[\"*\"]', '2025-11-19 00:18:44', NULL, '2025-11-19 00:04:19', '2025-11-19 00:18:44'),
(25, 'App\\Models\\User', 10, 'auth_token', 'b8bd0ca86ab212630d84db8cdfea09a06d86a153c918e145fe515304511de41e', '[\"*\"]', '2025-11-19 03:21:02', NULL, '2025-11-19 00:36:01', '2025-11-19 03:21:02'),
(26, 'App\\Models\\User', 10, 'auth_token', '52b078e72e5865b709657653d96de517deedf474d5fee4f4846c01ba6060213f', '[\"*\"]', '2025-11-19 01:34:46', NULL, '2025-11-19 00:48:50', '2025-11-19 01:34:46'),
(27, 'App\\Models\\User', 10, 'auth_token', 'dac00fc1d1d1e1a717010fda815b886e4da289245bdba0e8f2750174e2245f65', '[\"*\"]', '2025-11-20 07:25:01', NULL, '2025-11-19 01:40:34', '2025-11-20 07:25:01'),
(28, 'App\\Models\\User', 10, 'auth_token', '179a79d226e023f917892d6380883b3a4e21255967004daf810ae28601fecd3f', '[\"*\"]', '2025-11-19 07:27:59', NULL, '2025-11-19 06:53:57', '2025-11-19 07:27:59'),
(29, 'App\\Models\\User', 10, 'auth_token', '9790f81a7244ceb0ffe291024ad2f55b1ec21addae153d74834b476eec067ce3', '[\"*\"]', '2025-11-19 09:34:11', NULL, '2025-11-19 09:15:09', '2025-11-19 09:34:11'),
(30, 'App\\Models\\User', 10, 'auth_token', '3093af994d962eb2d8f380814e02977c59625d260345113ebb2d89a6bc202782', '[\"*\"]', '2025-11-25 20:51:32', NULL, '2025-11-19 09:24:25', '2025-11-25 20:51:32'),
(31, 'App\\Models\\User', 10, 'auth_token', 'a9699505c01463df5d34b1dff4bd0814c3a741fb1325e023242aec8c7e392412', '[\"*\"]', NULL, NULL, '2025-11-21 02:52:00', '2025-11-21 02:52:00'),
(32, 'App\\Models\\User', 12, 'auth_token', 'a9941b8071a6590d0edfe42d920ff9153113fdb1899a983abac493ea95c27868', '[\"*\"]', '2025-12-02 06:25:37', NULL, '2025-11-25 20:53:50', '2025-12-02 06:25:37'),
(33, 'App\\Models\\User', 14, 'auth_token', 'c0035abde030712ffb82886eb5cecba898cfa267df2430eb23a5e20927525eea', '[\"*\"]', '2025-12-16 01:01:49', NULL, '2025-12-16 00:55:24', '2025-12-16 01:01:49'),
(34, 'App\\Models\\User', 14, 'auth_token', 'c6313429e9d0317e5009de686624ce0119c9270b5e39b59ccb03ee838cb37ce4', '[\"*\"]', '2025-12-16 02:23:31', NULL, '2025-12-16 01:25:49', '2025-12-16 02:23:31'),
(35, 'App\\Models\\User', 14, 'auth_token', 'a75143cc3506f0806c0f0698d8bd1ed4451579acbbcad70b4fb1e9be120c3b89', '[\"*\"]', '2025-12-16 02:24:19', NULL, '2025-12-16 02:24:17', '2025-12-16 02:24:19'),
(36, 'App\\Models\\User', 17, 'auth_token', '63aa3a00169d55011e9926a3ccb42df5c7b15926aa0e0e1a01f0f963f4e59b5f', '[\"*\"]', '2025-12-17 18:03:32', NULL, '2025-12-16 18:07:43', '2025-12-17 18:03:32'),
(37, 'App\\Models\\User', 18, 'auth_token', '2d750229a84b97490b39e579703b91122facb11e5137df17a6c89dac0cdf0b61', '[\"*\"]', '2025-12-17 18:13:28', NULL, '2025-12-17 18:06:48', '2025-12-17 18:13:28'),
(38, 'App\\Models\\User', 17, 'auth_token', '69a56dd1319f88af45dcc158b661ff2b8108d2681fde59b174b5c0076b0a2d88', '[\"*\"]', '2025-12-18 21:47:12', NULL, '2025-12-17 18:15:39', '2025-12-18 21:47:12'),
(39, 'App\\Models\\User', 19, 'auth_token', '3fb2c693908ff7d6741b8210b89735f3ecd29c868b4c47cfda8c52c235d8acce', '[\"*\"]', '2025-12-18 10:03:29', NULL, '2025-12-18 10:03:19', '2025-12-18 10:03:29'),
(40, 'App\\Models\\User', 17, 'auth_token', 'da2a23de5b1efdf0e1d81b9f98813c777fbe3cf45ec4b96be9bd5cc0e3814a10', '[\"*\"]', NULL, NULL, '2025-12-18 18:38:21', '2025-12-18 18:38:21'),
(41, 'App\\Models\\User', 17, 'auth_token', '5932d508d14604a80c6925af11892ca66d179cda62bb91a557d28d11c488247a', '[\"*\"]', '2025-12-18 20:46:13', NULL, '2025-12-18 18:42:47', '2025-12-18 20:46:13'),
(42, 'App\\Models\\User', 17, 'auth_token', '796008492538f04af55e450d783d1642d15bd9d6616247c7341607e317497917', '[\"*\"]', '2025-12-18 23:39:08', NULL, '2025-12-18 23:39:02', '2025-12-18 23:39:08'),
(43, 'App\\Models\\User', 39, 'auth_token', '2167cd3a32123839645304118a82212fc474d8e3c026ba7242d58cbaaf7eb5d6', '[\"*\"]', NULL, NULL, '2025-12-19 01:51:35', '2025-12-19 01:51:35'),
(44, 'App\\Models\\User', 39, 'auth_token', '8a279993f39ac313c5f9a4758ea445286a491a7f31acb11cb684229a6483739e', '[\"*\"]', '2025-12-19 03:27:10', NULL, '2025-12-19 03:26:24', '2025-12-19 03:27:10'),
(45, 'App\\Models\\User', 39, 'auth_token', 'a4a662815a12cce8331fbf51c98f16fac6f8ed28196ed79fd88e4e11e5edfd7b', '[\"*\"]', NULL, NULL, '2025-12-19 03:49:49', '2025-12-19 03:49:49'),
(46, 'App\\Models\\User', 39, 'auth_token', 'db686cd61a09012daf5e5fddd063c091b501df091c04a117e5e95c7c51d6f510', '[\"*\"]', NULL, NULL, '2025-12-19 04:06:45', '2025-12-19 04:06:45'),
(47, 'App\\Models\\User', 39, 'auth_token', '7e924816287fc26aebf39c7b373db16c0d19eebb924aad2fe97a403c61ac77c0', '[\"*\"]', NULL, NULL, '2025-12-19 04:16:41', '2025-12-19 04:16:41'),
(48, 'App\\Models\\User', 46, 'auth_token', 'b143a08bd54d6e26c73fc3053dfb9d65dd263ccc0c82506ab9619d734e8b967a', '[\"*\"]', NULL, NULL, '2025-12-21 21:37:08', '2025-12-21 21:37:08'),
(49, 'App\\Models\\User', 46, 'auth_token', '4775112a900e441b5c7f14c290a2d0ee676389a0b760848caacbd12cc18e190f', '[\"*\"]', NULL, NULL, '2025-12-22 00:54:53', '2025-12-22 00:54:53'),
(50, 'App\\Models\\User', 46, 'auth_token', '3c3d2eddbfccc04582dab1cc55136f9a0cae52021a3a29439763361b9621e421', '[\"*\"]', NULL, NULL, '2025-12-22 01:02:21', '2025-12-22 01:02:21'),
(51, 'App\\Models\\User', 46, 'auth_token', '17352dffa71a981afb7f772bc9dfdb11051dd2e7c8bc803274801dc945996172', '[\"*\"]', NULL, NULL, '2025-12-22 01:15:09', '2025-12-22 01:15:09'),
(52, 'App\\Models\\User', 46, 'auth_token', '30d38569788097b832ae47ab9494fd33ea470ba36619a20f2b05dd05ad46783b', '[\"*\"]', NULL, NULL, '2025-12-22 01:41:26', '2025-12-22 01:41:26'),
(53, 'App\\Models\\User', 17, 'auth_token', 'f20100f097abd2f9307f2fc4b49b80f289c79bab45eff323722c5bd942df5cce', '[\"*\"]', NULL, NULL, '2025-12-22 01:52:31', '2025-12-22 01:52:31'),
(54, 'App\\Models\\User', 17, 'auth_token', '87d8ea9aa22536049624be70ef5e06ab00363c97ab1c0fcebdd2d20e523879be', '[\"*\"]', NULL, NULL, '2025-12-22 02:26:23', '2025-12-22 02:26:23'),
(55, 'App\\Models\\User', 46, 'auth_token', '587ad1dcb924f67d13766b3254dab30aac1a8a949b6fd0db81f30422a5a58c22', '[\"*\"]', NULL, NULL, '2025-12-22 02:33:33', '2025-12-22 02:33:33'),
(56, 'App\\Models\\User', 17, 'auth_token', '1b326cdf7486b6cc08507359580f1a27626ba335e90c226bc5a9db4e6b39d96b', '[\"*\"]', NULL, NULL, '2025-12-22 02:34:19', '2025-12-22 02:34:19'),
(57, 'App\\Models\\User', 46, 'auth_token', 'ec2fd402c2a3321eee5449a805d6c3f3cd7671a7f6b8183520f91b54f9b46846', '[\"*\"]', NULL, NULL, '2025-12-22 02:48:44', '2025-12-22 02:48:44'),
(58, 'App\\Models\\User', 17, 'auth_token', '3e6bea77fc03d9a893f33fc8fa136f43c69cef5104700484bf3d44db4207b114', '[\"*\"]', NULL, NULL, '2025-12-22 02:51:55', '2025-12-22 02:51:55'),
(59, 'App\\Models\\User', 17, 'auth_token', '72c6837fa27ca6efdab07eb99b0b3a62b113ff6a9324dc0e5830b0b8ec96b4d1', '[\"*\"]', NULL, NULL, '2025-12-22 03:04:00', '2025-12-22 03:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id_report` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_berita` bigint(20) UNSIGNED NOT NULL,
  `reason` enum('spam','konten_tidak_pantast','hoax','pelanggaran_hak_cipta','lainnya') NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','reviewed','resolved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('010mOrFusZNZuAJwZlcyX1WadBNe2PLnp1vOphYT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidm1sMmRvakNLcnpqUkVwcGpXSlRqV1k5SEZNRXRRM0Y3MktBdUN6NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395836),
('04k8wVovg3ZpCUehTGf4y9bs1HcQUBeSo4dSllGA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjFKbG9UY1A3emFLQkxma3FFWUtoNXpTalRGSE1FWGFNSlE0Nlo5SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395844),
('0ad7tavErO9mjbzwglGODWdqEOcSyp9B2EnUPRjP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicklBNWVVRlp0cXZQbThJZW1ISUlNVFhOdk5UR2U3Q3hpN1piczA5aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395879),
('0iXCCiYWNGgjgHyx1ctDrk88LrmeOBRKRqqnKluN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDZMa21aTGRFbm91VmtRWElWekEwcDViS1Uxc3hncGtVaVJQZGZnRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396925),
('0RsP5dxwLxxjKhtOrQdU1d6WfcCRQVerzKhr7X3a', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHIwRXJoQm5HOXQyRXZWM3NNZXRubmJzM1ZuSFBEamJGWGdKRUI4RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397040),
('0S1qONs67oNBhxpdjjjkQTUCEIy3i34xAvBL6X7l', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmlyS1FvUkVLU09EWVZKQkpMS0ZVS0twUnJzZ21mbFBWWFlEc21NYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398354),
('0wYy0ZQquAIjzBoSxFd8ANndWgROJonLRRw18TT7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkdvcjFSdEM1Yk1lSGVieDBxZGJuM0ppNmVlT2VZTmVIZENzTDI1RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396059),
('1q8TqFkeBRBUufn7FbTp9nmQE0EA8KswQ4pd9rQb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblhSSm1qZWdqRWxycU5QYXhHR1dramttVWRScnJUbmdLc21YNGlZaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397008),
('1rEK8VKzOB6xtYf49bXEqKvDZcCy3x9JdB8mcAFY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2ZqbWI5NWloZDdXQURvN0RMTmZOTVFJcUtGR1Z3U1Nnb2FvcWFnUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMzkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395190),
('1uq9veUBQ17AOnsz69B5rCaz8N5t24iWYBCLzHwJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazNrcE4yaWsxdUE3bGRhOHRmTVJ3eU52cXBPT1RMMTdzaEdxTXFkTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395878),
('24jnzPkOcX13t26yJ0GklWvfTcv3qYuZDETNoj2y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHBrM0p6bFRGbDVlMDJXWmVxVVhDS2ZMVHY5a3ZjcVFqbWUyWjlTUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397811),
('2CNpn6cmAMA0UgdfbNdSKjSH0siCReXc4CWzm8Eo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVIyQWNacVNsajNLM3ljWGtYTXNTbHZwR2JlM2toVlUwT3lnVllodCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397134),
('2xuKR5qJlX1UC0mmQsUcPGsi8zEah5gOWWqpJwNy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2Y3VzBnUXFnY3RQZDRFT1pNc0RxNzBiWkczSTRnUEZGVFBReU1vaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393792),
('31WzyfHpW9SN2LZcAqitI203j0Z6OzuDOSSJOH1q', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGpzejVuUllHQ0I1M1paejNlcWlXUzYyUkRzMkZzTGdIaHVLNkk4ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397204),
('340UGmAIf9VN7Q2XGFBa7jionLn1ZMYgN57hgFFG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmxTMEo3ZE9XNFVZZ0NXY2t1WVo4V2hMalZXdU5uaEdUaG03azl4SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395643),
('3BBFraxn6KdtHuz8oEwqUamHlOCedh9RKaICUkyg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUJzT055a1dQRnRSY3RzMXdkQmZRQmtGRnh4WUh5aHpIdW05cnpMeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397813),
('3eFQhYUUAUI2Gr5z0tQBB9YLyqp6MfS5hilCTp4W', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEhRSnp0SnoyZWd2VXN4NGIwOGhHbmZOVzJ3azNuTHRkOHRZS2VOdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395878),
('3lspqZ35Gc5tmgaEKJWBWXKkQ7pDEOVMxTnusVbJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUpqUEM1MUxpa3pUejJBbEU3ZHJFMmMxTWp2ZFRDVnRwRkkzdktFOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395221),
('3Qa6fRrj4cu42urkvGjwyEi4jdQ5mLT8lzSb0vb6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUEzQjBMZ045UW44WkFEb1hpb1RhNjNGTmtWYWI4Um1FYm5NejE2bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393529),
('3ZcveF83nWEm2hglxda23PugJqu0ORcTdGzja0va', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWlFVDRkMFBVbkhNZjdYMk1lTXl3Q2R0ejVHN2ZhdU9MWXBEaEtsUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397133),
('4631mDU1X7Y8dmaSFZYu6MMIMErJRgHIZrPMNsBI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWs4QnYzV1RRVHo3amhJZ3g3bzc0dzBZS1ZDVlMzYUJTOTQwUnJzayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397124),
('4iWb5sqW0xJFNoigsOlgeszW9AKh9n88FTkEIReG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDRMYUU5T21QWlMwVWJJM0J1RDNwanZDWko1Q3pyWmhxRm82ZzBjdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395920),
('4OZdaeMvpGwAf2Ke1QI9p1eiNoRUB6qJvUQWZfxD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWI0MVd5cnhPdG1iUFpFenBna2F4ZERWQnJVWTg1Q1F1TXYzZkhVbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396014),
('4qjoDYbsN8iTiTP3k21qsQfrotGoNfOZvG7PELWu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWxPcXE2b1RBeGhGM3hQN1pVT1kxTU42bjhzWUQ4RGRKMlZjNVB0OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397040),
('4RJsz0jcONpbPV1pfxc0ahcxfzC0h16YJ6odW3Zs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWNzRlFZTHVGMDdiRUFLdjZkazdNNTlHS242Qm9IdXl5ZXllZ2Q5UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393246),
('4xLnLUzny9Mf25CbUNvGNuoJkt03QHTBY24Ac4jV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekRUQU9qMmFPUlFtNXExU3VwMElCNURPR0d5WmpkczlKMklkU1B4USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766400524),
('597sbOblmpa3s5SfpSiS6z90Q7XBafiPGkr2yxXF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHVZdUZpMEFoVzJ6UjhPWDc1SHF5RWtMSklPRjRQWXBIMEoxOWdQOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397053),
('5JdrjtclstiBufGolNnj6t5puJXtkvVMsc0M0Bm7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmxBdWF5VVltMUNiZ3NUdmUzeFVNZVBiR0ZUNXNhMnF4b2c4WkdhTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398191),
('5v7lE8ukbN2kMj0Txq8yetqXIob7X3GFmMVYIayg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHF0WTdBaFRqSE1pb1MxbzdIemZyRVhta0NOYkdXU21PTHlXeUZwYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396983),
('5w8f4UWK8Doo4QZDR9PrJqoi8Ik0n1vl9YKPSEbB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEZsQ1hBR21JYzN0dFJMUFVha1F0MU52Z2l0Uzl2eGFjZTJ6a0ZCciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397848),
('5yjWRGvpnEB94Cyz0RMxhD5JrsJg4eqBlSl4qzsm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnhrejNENHI4TVNFSHg4b2MzOG1KeU5FdUVacXZlRWFxWFJhVmQ5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398191),
('60DUFbUZtCPzwKfZb4F1knww4BpF3ouuW8ACIBtj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVFyZmdPZ2FwTEo1UEpxNWo2Y2d2NlNqMEtQanAxVklzeGUyNWE3dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398358),
('6pU97TrnJe0zbeicHpaagdNGzuS4jqBi1gTiXYYQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlpkRWx1ZGl0T2VkR1F0eEFGdndBZ1lCODJvbnZ1ZDk0OGN2RnMxRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396983),
('6r2tHad2sEIC7kDDJaSfCJCybA8lq7vErKykiJAd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWp4bHRzQ2RVd2JUbjRmSlJpblRLODdNMHB4OWdnZUpZVTNNTnNPOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395883),
('7iUk4apJ0fBldLEpzgPBgirr2btI3PwzKUChnsWp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3gxWDRhelJJSGxyNU9FZmhHczRJNXdxNVd2eXlrN3drVTZkRWt1UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395922),
('7LlTzIQNd4T7k5oUQR1TmwMtQYcRYWIKn8trCPg4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzJJZ0x6Y1ZwOFdnZGcwTnFtclc3eGpzTGt4bDJLWVdaczJEbHJyVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395874),
('83fcePmVsPOwyBu2z2VTi0tF2OTVqBAiF2x0j9q9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUFoWXAza3pZUmdsRXl2YWRESlJJZmVSMHlXUmZ3ck5SN3ZIT01RTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397134),
('8D6eSLObBn7kYIyQ0QwI53AjNhKwTbd8iJ8y4z7F', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3FEbFo5MmIxaUw2TzNkd0lOcjR2WFR3bnlFVzRyOEd1emhjMzh0VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766394811),
('8hj90HnSIpsppwQ4vo1sJf2gJZvnBaXM2FPrnwgd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVk9mZUNVaFY3YmVhRG1lbjFlTnVoNndIYjhrMDhGd2t2YXluWXpGTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398358),
('8kb9aGrHixzEPlohnrQtJQtWNlHTby7Pw5bqBId5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGJ6UUNXNVpkdkF5Y1V5N0lTTmduREc5VktveUFmcEpTUzJZUVJDUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397117),
('8LXzu2xhv2gwm8CMwffNMJU7Hw7c2HtTSciYmlC5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVFhU1lYUkY1dldiY2xSZ2hKcmRDb29paXdZeVhLdTVLN0QxbE9CRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399188),
('8qav5gHfnEnT3veXrofqwMkbzFsDuAiYhCZydYM6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEJwalZpQkI2cHJGbVFJM1ZBdmRmYWRVMnFadlB4bVJoSkVyV05vaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398190),
('8qL6gHJk5xD4SEf8kuhK6FjKwj8kdhOXjc1YZ6nA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzRSVXRqcUlGUjNoSkxOamxzS1l0U3pueU9FVkFGWENKU1BxdG00SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397812),
('9dHqLfU9EvilTi6m018AV5gK75IXxRwRnauyGdTu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmtSUGtFdkI2RzdPajJacWZJTVd2a3BVZEhQbkJaZmhPS05nUDNwMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766394782),
('9HmFYvyjwrbY7Rgg2yRIScTZ5vxl8tc0ELRzbiic', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWZBRktmNFFXVk1JTzBvc3Q3Z0Uwb0NJQnRpamFJb3RraXZBMmt0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397030),
('9jtvQqDJVCDSzURl1PIWVlghEUmwMcAZlpcr3ceq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSG5PazZTOUpKejl6UVk0T083Y0x2VDFpM2hwZm1SdTZOTEVmSzNlTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395883),
('9LACPedHjc8fzs1qR6n3J39uwJODcITb0pc7Xg2P', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUc0ZU1aUktuSzJIRlRVbzg4MmJoQ3BENEtSZjhIWkZ4aE1iOVZPTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397007),
('9WUuyeQk2oqlFVMIcnwy1Jyx1bM8IySHc4NAuL9M', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczhpUVBrSXdoUFVxdGxNRG9yZ2FNMzZnMUxSck9EWU0zclRLQnU5cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395701),
('9zsXS053heMXAedC2MhQHNqlhrqdXhodPiPn0QcC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejFJWnk2NWh6NmE1UDdOVmxuZWkzSjlHeEVhSG5BNXZzV2JMVkIyUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397007),
('A3SxoiNakq4LV8H9mDoHlYmm5kknPovCe2d4P29U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDNOdXhxaFljQnVGQ0JwTHg5dmFSU2o1SThJQXBNalloVHVSNG1jaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393829),
('amXFRSpoBv2Tusy2poMnphm0Zb8lqemVs1VAKE5V', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGZCWnB1cTFCdk5qZlFDTGo1NVRwYjRiVkRpeG9HQmtQQXJUUzlqZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395882),
('AU1dT9XUvFPjvypO2g4MAicSSEaIgwe3rsRWKx0O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2xiUnJtaUdqbzlJcERYTkpPeGNJZUdOTFZ4WWt3bWppblRlYXZPTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396060),
('bIbWXnXadDUbgfYlIc02PJgc6KHBvhTAF7AIcfUJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUU3TjdHc21TQnVueDdqYjlZNnNZSkpmUXlRSldtUTBTT2g1TnJPNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397811),
('bImQqepHDXwm7KLPYvnLyue6Kee8ybpjYUkN2qNk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkEyTVgxcThTTEY0TjgxMHZDbm5oaTlTdjJuc1Bodng4WVRSMmJteCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766394216),
('BmEB3gqDjpA4bDDhWePRmhxdn923eS0bL1t91aeX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEdFaUdXakEyVUMxUWV0QVM2c3lVMzRSYjYySENOeGNuUWNWbk5WcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397121),
('BmMeTgdWN8ZATAaXyGo66tbcYSIlrIjVLzKn8e5F', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVBCQm9hRVk4VlBZMzV5MWtMS3hoMVN3bVRsdHVraGIybklpd21iUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397274),
('bs2HK3XcHmfW4D1KQxarA8Q0gN96Cl13RdSBJQfo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR01uQjNEM1JVVkpONVBxUWxUN29jMUs5Znh6d3RTU0NFYmN2dzFnQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393872),
('bsgGQb1f56YdAQAb723YiOnJDwzkwO2SUrsdi2Dp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzRRYW9Vc1lycGZycTRlREFKTXFhc215QUhWcElQTTB4eG5ac00yZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396901),
('bZNQPsYVNRhhpDJZXK9YCahxnyduQosH15ujC2LO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkpDaTlDUnVjTTduNWRmT2hSWTd1RDRjdmxZdEZLSXI3aDk5dzFOaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397010),
('CeHHXglrszsGgfj6AexVZkquVMi7075JCjny9Ncc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmk2ZGhsQ2JzUk9BTVZCcW1zbkVGcXM1M3hDZlZIMkFjN01OWkpSdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397059),
('cF7bzE0krxEozd7F1UtBJcfUly8WM6tRl1BHP3Lw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3d1QmMzZkdYMjVOSG9RdmlPM2V6eEwzQk43QTdQVTl1RkhvWUlTSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398298),
('CHkic8IEOaR42Y8s9HzXNzaSwUJ3RAjvPVQjqD6S', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHIzWUtCcWoyTTR0V2VnOFA5NWtrb2puZmZabkc1SjBOSGFWR1ZLVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397030),
('CKBqI4CjcTr3cGKPNAig1wg0BUEcTDe7cP2tEQNG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWh6OTJWa280TExWMGxHd0RxdEkzZGx5T1BLWE1VNnNiRU9sWElQUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393995),
('clLVff1LodKcenQKjrwc75qXK0xnbhrC3Z3L3inr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3k2Y2RNWWtyUFlwQnV4U1J1RkJmV1dPR21hT0Y1OFVONG9vbkRycSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397019),
('CoUb7DkxH8WunVzOABS0yZ7BftMfZ4lSWbmDRawk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3hQa3VZeFg2azZmeWtUdW5XNWJqVWp0cXk0Q2taRWdndjV5SmFmaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393553),
('cvAKFGAyiV7pyH1Aj4DJeICCjUlbJ5sesU6M8TOD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXRLaEhnN1pYdTBwM25oVHl6TDFKV1d2SlV2QUVVb0szdXNLNjBYRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397052),
('cxoHBbyZfGOt7l0hkSeVjViutF8l0Mc8RKAncDVf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemczQmVZcXBZWElzN3VvZ0lqejBxR1pIMGJOQXc4R1NCNzI1VWZjdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397033),
('D0UAYqIlEgm4pYbN78V5QMk5MvEuvcg9fy4vikam', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVpOajRaQ0ttdlYxaWk1V044NTVjWUgxYVZUamhCbVV3M0tyWXZOTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398299),
('D4aoBFPbB21RiFuHf0BJBT3FNtaw1ifzCzwo0xOF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjBXVXcwZnJ0V3c4cnk1eTVOYWZEa3psNG1lVGxtSEMzSkpIbE9NUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396020),
('d6vDXrLGT9AQwsajOJjXkD46wm95mzQeqmnDyL5j', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjFDWGlRUHU3RVlGSHJiamhMSFNRdzZrSFRLakUyQVA2Q08xNmV3WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397815),
('d8l9f9L4KJPOq08FXt6IJu27fASJZjzkB6ndCzuo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjhFTUFBZms0SnhLZHpmanY5emxlVTBUbjBZYnBzR29qYTNWeGd0SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397842),
('de8hWuUGx4nDLnP6LDh5OWt8A4zCI34PpX7KVXz1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVByUzFBcjlYbzh2cEFxTXJkaDZBUVZ6alZDZ0NSRTY2bjBHTUJwOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397013),
('Djd9wFIaQ46sjskLoiP3eO3Q9ZZ130jJJgRtGtsn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEJzbkprMHhnM21kUTluRENLc3ppTHBmNG1CUlAyMGwycjBqZGxHTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766392888),
('dJfs6Wi4ZXHCZlNx4ydS6hlbRUZ6MrPcaX6robrH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZThmVDBVeWlHR3Y1dkpvTDA4M3ViaERqNVhFd2c5akUwWExLWWx3QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397027),
('dtJkU2DqCXvAXVD7R9Ch0URz9ZNNxvV0v8laqID5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVFjcHVMTGhHUXc2R1NaSXRMNEM3dVQ0SkJRQk1DTkV0SkxnSkowUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395876),
('dUv54vXDSFDJ8wVP2WWpqcBBjy608tQfbqCcHH9a', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUxaSnU0Y1A4UmNNRlBsTU9oVzA5MjhVbjBuM0s3SnBiclR6NFBjRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398222),
('dWIDkTOoxG37FhW7WQxKTDXpg8P4tSVCDHufPgtq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0NzSlpLa1pPYVRCZ0xxY09xcmlHeVhZMUZ2SEhTM1FhZ2pxeUJMayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397813),
('dZt4PZSI0gEkznBXwd3oC5r6jQVR7thAgz7UZzUp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXRidVQxRUJmN1o5djJPOEM5ejU1ODByM1MyTjdNeXdKUE10ZU53byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393528),
('e0ddZ9HIpkZcWi16nKGbY2VQoCEScRNYWErUHnte', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2pxdVI1aFBVYWdVU2haNUVXblNDQmhOaGtjb3hKWVM4MlBVNm9GRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393247),
('E6yE2IMe6pF8cCi2SHBZ7rtjMQp4nxFlGTsSkhyf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUFPR3FpVzVuajYxVDlFU0FsemdqamE4Z3VPcjRlYmNtdUNMeHVxTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393238),
('e9g1vViVqULtfM0aoTZisUVMch7hFub6MK9EWpzB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2l6ZFJXSEJ4eGdyNmNrbUUweDN6cWhwclpSRDhRQ0F0M3BXV2pjOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397008),
('EcDZ1h8NkHA1MJwlOVuJtNNAuYL0L1JDnuTghpKc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVRzY084d2NlZUlCMkNWb2RlSklWZ2Z6ZnlNRnZnMjNIVWRLVG10YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397124),
('EcNimAT5bNFLPdqHpplxnTVwEO5vrkhhAOI4z7jp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEp6OTg0cmRBM21oQzJINlM1SzFhbDZlVWZEOXhkSTc2OEE2Mk5XQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393069),
('eEyHC72j52ePREDGbyGypNNaQdXUO07GgRI8G3w2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjZOYWRHaFRLaFFGWmUzbTloVUlVd3NkU3c4SGZkMHl2bWZnUUZhQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397815),
('eh28CSgugWrGPr7pJ9jGx3cDxCYPd0d0PT8ZMs5R', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmd6RHZZTkM3dnlmMzJSaElwTXE4ZDBWUmV5Wk1RWnJQZzlGbGhkUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766392893),
('EmNZ8I2qB8klYrTeA2RWvpd0W9vt9d8ZKnPJYN69', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWhyT0NxdlRJcEI4MzZmUmNTNnh5VUVpV2E2enlOQlVuUlJpeGFTZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395584),
('EOIZGiXT7nO8oBJAI4ae5s2v7rBhkkeV61f5VQ5t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1RkRmlJeW00MEx2RkhENVNuZVdLTklBNUZWQW9HaTVuNkdHeVlZNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397657),
('eR2NXCg8byCvyBB4MWhWgNaTG1EyT2Q63jcRabt5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG5LcmdzcEhiVko1ZlJJbHBaYWZRaGluNnFqRlN0d1d5b244Ylg2byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397816),
('EXfOifOQAIr34pMNTCt8rqMAO4KHcxqL7bfriQXj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVERwWjEyRXdxOFJjM2dvTEFIeGpRRDFub085b0Ftd3ZLTWw5VUhUbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395922),
('EYyK9ORTk1HcZItF2GoFNxaOeIs7r1ZshLr3hdgt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0p1eE5ER0lEeHJaQ2owNFp3Ykk3WWJ0ZXJoc1BzU0dFUjhpeEZzdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396900),
('F0Qri7bnpemJpvoTRlADVdJH1g0ILwi3pPKF7MiD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDlXZEFseFpHUW1UaUFZWmJtd2FPVWRLdk9Nd3d3Q3lnMXk0TXhadCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397816),
('F8SFQlmqtAJepw8mPVZYju7XP9FwvPMzPgKVhThB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT280MGdPTjNGYnQyVGRGY0EyVVdpdzgwOVNtcjBsTjBRMUg2WldlcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396020),
('FdovoutxiKV3F3S2Y2pWjRFpGEy8izo1R5p4MFzg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHdvcUhjTVY3WGFncDJVb2lwWUxibGIyTk43aEcxY2xoVU1YZUNJRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397814),
('fDsEVJzKi1tL3Iaf8YaQSv2KRWo0GbkkoYVKoZap', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWgyRXdXNHF1UHY3TEU2T0ZKakxsQUNMV3Jab0o5NDJVNWt0Y1dIOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398297),
('fe5oB4CcSR5zCyTzKG09heHpszEXncczn9Fb0L4r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3dxUncxNHlCU21xQzFjVkx0UlUzNElEcVlTMUVadWJ5TjNPbGlpUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395836),
('fEl9f62uKZ7sYowwTCTWDoKStMwFRDDtB1NAq54j', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVVNaDhranplM3F2UDhEYkdRcnhYZmVTcVMxelpOamI3SFZNTmZqNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395222),
('Fg3D9QWNQyGC40mfAgmIbmh15gHrKMqYL0MQ2g6I', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXh2VVdUajEzMGc2cmprNUpMM1lvNXZBbXF6eFVYTjhwSVhwb1E3SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766392887),
('FHb8MCK7sWAcSoJNr5RBABBBlnZRMoPds1IszQXs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnFWSWQ3WHRPd1hxY3hKdmF0UllJb0g1VVg0SFVKMDl0UnY1djZkbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395837),
('fHxumQlMx7W9rJI4G3dRQb7K5Z05MspzqrWtiNDj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUZjZ29QVjJXT1RlOUoya280czF2VncxUzZRdmtEVVlLZlF5eUZ3dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397812),
('FkqTrAL6Byd4OKyFVwr1pOLIYvfBEWa1iXaCmfDT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2UwN21sekJQZXhYbTNqdGZvbXJUekRLVjlSTGZ1d1ZLQ3pYZElZSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397038),
('fMhle82GSLB1LQBzXLYonwWvIK2FowuuajQ2MEXX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaFNxY09BZXM4V0ZiS0RxUnpaRlZseUEwdGtENW93Z3loVUNKQ0QzeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766392898),
('FpDxMBR5L3bdC1xXJHukKaxVTJep0cRJ44ZXVBHO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2RWQ3ZNZ1pORU9aMTlrRGk4M2czdmZPN1JIcEJISUEyUENUZjFDVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397047),
('G0m5Xn6p1kjCirQYDqeelmkZWXeL7MmQH6nc9Euc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGxSeno1RlQwVm1tcktVMEdHbHRXRlRoOHUzQ1ByUkZhV2h0V01yZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766396979),
('gCfKMdnMgep4cfEFxVYcW1YQAmbOwOS89vpWaYBi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEVIVGZnckszbWJ5eXVvRTRtdDMyRHc3eVBDN1VNZGNYN1pyZ1VGSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397669),
('GI1SvFdVRnREGEIY6ysWZnIhqS6jhaPJttenVN9D', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU4zUmhhVkY1bDcxT2huMUxYOGV1YVloU2JTa2paSkxVd091NVZzeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395878),
('gKy9DAkUIUyPEcK5phVreNuUrNu7dPO8z6IBnzQo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUZLNlBBRENPcGd3QklZYm0xTlVhdnlXMWgzS2FnTmJKWU9vNnZ6ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397011),
('GNGBS71XikziZo2TOnMLOtIJqLKM6VliehmOeL0O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVE84amtLTlRHaTNqNzZiVXQzVklKYUx3T3RqU2VUSW9FVlJsR2pMbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766394035),
('GOt206ly574F4IaKFexJen7laWLPgzMLojc2BWDB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFpWakRZUmFTNERuVFVraVhNaWJQNnpEWk01aGtxdFpnbmVVcHhocyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396020);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GQT6eTB6V3NvGmxXn4suO8ItHi3vZGhTLB6AM213', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUU1emxEVWlqYVk2Z1pqazN2ZjFGaXYyNG5QYlZpVzRQWVJnRmtkOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397848),
('H0btw4v1ljn6R9XyskSJ329DISkuRH0xJhFQGBfb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVFDWllWWUVFY1lrTERIM2YxclF2UFJnYlFhZGg1dmRiRVZzaWI5ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393059),
('H2PplECTyt2SNrTx6pRsROj2hoKvPTybxo5ntCwF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFpnOWN3QmxINWRmUm10V3llZE9laTE3Mk9uOW5HRkE1QVo0WjRVVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396901),
('hBCWRJnE78TxMdiOO7UdUoFFMhCX8y2q2CG1EMwp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE12Q3h2UlJHMEtGbVhLYnZGY1J2VEJhRmdjR3NQem9ETndMV2lMSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397669),
('hgzFIPeusog9noVIaGoKTz9CB7lkQj818CVrKKEI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmZEZ0FMNFl0elZmZmNiVVpKdTlZWWRzckNWbmJoT1JSTlVDNGdoZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzIwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397845),
('HiNZX7i9BMjXLJGCg2YGkOxdW9kvEQAx0AmgiNZv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmRFdEhmWUc4WTR3MUthVnU2RE9NV3ZuMTV2WDZ1bjhnS2VES1R5NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397841),
('hpgR7CDi4KplVbBpHJjIeDnJuOF00RX3ZciPVeEQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjROSENVS1pGR3haWEk5WTJrZXd4TU8xOU1zSnZ4V0t4blluRXk4eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397059),
('hv9yaSrIXhwRiJYLwqbRYMJygU3xiIxwclKbHCOa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkE4YndQRE9iME1zbm10ZHRWSnQ5WUtuRVRKa216cmVaRFlQek9nNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397040),
('IBcwIWOxmlORhVQZboVu6mcvD0ZlQ9PT9Mg01RHM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWpOSHhMVEJhS2tnZ2JoQTVkU1AwbGxUM2haU21UQTB2VXJLdGVRdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398356),
('IBUlIauEPaHtKTXpCITidjqn8vbECLSIDKWaYRNh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFNxVkVHamdyRTBGZ3ZvRUhMYW9aa21ZVTlxaEY1bW1HSHpRemY5OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393247),
('IkF4JlbjdBOGnuGSB3ps08tZxbVkStBl7vsZ9pya', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlV0dlhHZjBJRG5pcWhMOGlMNDk0U0RuZ0psRkxoTUJqZWxMMDhXbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393553),
('ipIAGLKKgSW0Oag8p8I8zGoOK9DHqKIlXwEANs32', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVRtQ25QRkcxeTJSZktqbnlhaTFOdjZ6RGQzS3dzYmNJV05yTGVYbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393230),
('iqHtH2upFLDxzNJrkM5SZBmWtPsipMvLT8F8p4b3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWU5OXlpS1ZVN05Ud1VpeVo5WFJOYnpSQTFjWE5UR0F6RFBRR0cyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396925),
('IS64eBV6Rw81Q5Dl6JUYlNYr1PaMMM5ZDOYScO5l', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWdqcXlFcm11NVpCNzhzY05lcE84MnRZRVUydVhvbDloZGIyT2tZUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399203),
('iXR4cqrJszGLb0sTkgDppR9qAEdhVncONnh264cu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHlYR1ZUeXQ2T1BpbjZia3JDZkZHNmNEbnhDMERUSm54RXRkNWZ4WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396901),
('iyKUXegDSdW8NIn6hE46EQwqzk8rKZXuEiT5Ap9Z', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlNJS0pFcXVObjdPNkVteGprRnlCVmJaV284N2k4NmlwVTVyY05DdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397041),
('J0NrfxZWo2toNA3qk6fjqnVAzDopkq3r4UUTPD8U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEJqaFY4YnNhd0JacUNjbGRabERzWWFUMGlKeTNhaUtNMkZXU2xJNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396014),
('J0SdIGDEZJ0U3CjeO6w0ve50LAo9XbRdvDRJlJpL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVJ6cFVIRWUzSm5yQ0pZNU5saFdZQ2JDTVl3dkV3Qm9KeHhmMXNRQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397146),
('J1BXlQuALYaT6ZlujHwoHc4TytrrAIkXk537ezWX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0FBZmxZbW1ZN096bDhBOW1NUm16ZE9hRGtSU2ZuYnR2bUVIdG9VUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766398354),
('J7zGohwas6DnAd88WcYSy17KbI3w6kdZMj1RhS4N', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieENBeVpseUFNSmtLem5BS0pSeGpzcWFkekV6WTZwaUpwTERCaDNjaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395642),
('jfpEwmw533jLiClEt2H0lFJelLpHflemKLYpZtX5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGY5M1FhMDBac0QzYkhWckUzNHpvTEo0U1pieElaeHBhaWM2SFd6ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393892),
('JoHLpYlUJ79pFrPd3AytwCxko7YjL5rirQcEGbJ1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlBOUklVTlhneDlBODFlZHNXcnJIejZWSzdzSmZNNm0ySXBib0FPQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396926),
('jsNKXxNIbzFGPFEUaTjNAtcqStroxOGCxgJITHUG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGRZOUZha0R1aERDMjR1Y01Wc1hiODVLR3cwUHhxZ1FQMVhjYnlkbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397121),
('jt4MKEiG061FxtWr3fggswLhREqYl5U8EMpM6IjA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejZtVnFwTjIwNnZraVluSlhzUEVQYTllNVJPVzZCZnM2VzNXdlJJbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393238),
('JVYuF1TKmJ3jyxByaztdjfWBC1nc08h6heidz3Oe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3BIclRHRURzSjJGNzk3MHRhZU1Oc2hieDB2b08wNTE3bGNCMjlBQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398357),
('jY8xZyykru2xMfKuhtJX6ZUy0HZXFx1ZgnYyzmsz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWZFUjR6bUZ6cXJpaDRGY09URE40elgxVlFXeEs1R1NTTFpIcldKUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393098),
('k4dT0a0ud8cQNFEaOnZ3an8D4UtEcCiqKz19gAlt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmxHOUxhTnpvbkhmakxOYzlqTHRISjdRRjVCTm1KRXBETGdyaGJMMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395642),
('K5s9CQIQ0FaxXxHd3KpX7i46HGjWxYv6cIMZvP3N', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUpQaDVYZzg4ZTQyU0g2b1VlTmNySkg5U01QQVppeE41aWRldVhhMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395697),
('k7XHFOb1sBAVfYD85UbTOMrRQ28bKecHNQXfFrxP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVlmV1BQN2VyT1FFaHRxQWJWQW0wSml1V0x3SFM2RVhwR296Rlo5dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395875),
('k9goKb1oM084AMvHJdFeJaV1ZbdiE2RwfKtke9I0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjF6N04zaDNoaUdwVWtvUW56VEVoSk9GM0pvS3VBdHlSTUdGR1dzSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395879),
('KaaLQHxw5pooJhbKtraYaVdJu4686aVGVFAm50mM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWVQUHZuRWxSQWVIbkFab3FtbkljU0plVWNSb0h0ZllRcHZrNWhxZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397850),
('KAjLILKnvSwgwbXUUb3jbr2yigv7J0oWhnIapXrh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE10UDBkbldEMDFqWmtzVW1ONHBXbm5LY0R3eE51djI5UGx2M1hlbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393855),
('KBbTJ81jfFOZ4XGAZG83bWr3Gl1tX4D6aRa98Vr3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVBVbnRpeDRLUmw2UTFHUXRlNFQ0V0dKUzBjQXliY1A3Sk9VRXRIayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395875),
('kegOsYiu2ZXKjt95j0kSWDcc4ikbZSzW0oUjlQHg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialZHR3prMHR5UkhxMXNPZWdNYXZhQ2JaemdBSHJFOWZyVnNKTzVPUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399198),
('KHPVlpeCQOwcDj6Lj8Cv0as1I1b1hjOhrtWGmCq7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1o4RHZZd2dvaXFJVWRhRnJuN2l4YWd5YnVleXNyZDUyQ0ZJd1F2cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397027),
('knMsVJdQEwBJhFvbCdvQdjFr386xNlQqEbhgYk4h', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlRIRVJsRTB1VXU2N3pQdGlnQXJMM0Y2Ulhxc2kxbmUzdVpmOWNkQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395880),
('kUPbffJvHc1mG0c9De269d45sT8qI4pwANuwN79o', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFg1SjFKZUNOSk51R1RjbTFmUEhMZXNESERMNHg3V09nMTlhUW5BayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396924),
('kV2cWEUHBCL2YGvMAeZeFCstC0o6es4s8An0V7ST', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUNYa1BpdUs2NTN4anRMYXBvTjNDTHZhbmpjZG9FNlM5U2ZTcjJqayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396983),
('l6BsRG9hDsZvtBvUEiwHEtIte40IRaFFdnLyv1Ia', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXhCNUZqSEo4WHhaVmg5eVlxM01scVZMWDFLZ0NjcmpVS3RHMk5BSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395881),
('L6gjxTRfkvlEtEJUKBhnx14MQNq2V7QC9VpjkGAE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3BHVjZxTXJjNVdEMUJUUllvVkpZOTVOOFhxRDlqSXY0bWhqY25sZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393243),
('lboNEGRISK3uPA1Z4FFy1EvPzSF8x46NAhE3jaHc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMko4UmRybFdTdGhHcWlXRjQxczBMWHdmQWFhUUpIT3dUbmVMaGJFSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393555),
('LBoWPzMxGUYn5TSoP0I66yIKZncrT32Ly2cv3gxm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXFsS3hsM0tHZndYY2Vpd2VkRXIzS011am10dHNxVjhNZDBBWGs1SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398359),
('lP7PWTUe7VV18TIH4gsOy6PlF4AbD2sSFnZs62YL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkN3d3kxTUlTTGJXM3dmTTVSejdUdnZtQmFpN0JLYXdycDhCVGswaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395844),
('m2ypdReVbZpojDcrCCDsQN3sgTwmZm3s98BDABso', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlVvVVViaDY0UVFtWnM5R3U2VUY1dXkwdUZTdVVnU3VnMUFQdjllTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398359),
('m4y3ZjQGOjJYvLeZoPt5eOBl2teiaIdAwicWymOy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG1mN3BOQm9lUjMxNThMM2FmRzBkYWFYNTZndWFKYTJuY0pJamROSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397125),
('M685m6iDKOQTVpXY9phxRejDM9XC6Z97eLOeGmVW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVURqUzBRTzlieEh1QlFBNTN4S1BUb0tOTVR5SHNuUU5EM2E2RDRSSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393866),
('M8CGJAxBcAQrenCcWMZLTH8LUPsEdpgk8vNXdfRJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEY5WDU4Vkl5Z0hsbFpCVEFnRVB6UEVsTHN2RUUxQUpVSDIzWUFvVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397133),
('mEV7J9LxXUrehw5Hw765ZZHosN3CZxgc9BpQNhNr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnBiYjhuNFZJMFVtdnBmYks0TXFYYWY5dkxjZ3RNdzVwd3lYTW11eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397842),
('mGS0UZsoRSZUDa5pheWD6fecCDDK32i8lucZruY0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUpEWGVHVlF2THVuamRaM2hIUHV4WVM1eTJqUFd6TXp0Vk10RURMViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396982),
('mhkNyWF2GwNcbBJ5J4P0E7zN81Z3ChA3AYgBFUJK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXFldXAxd0N2V05wejMyMFMyWXg0MzBpazNaeDVNVDhLQ09GaFliSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397146),
('MhxkQyzEIPdqNU24AADmt8UHQGyhajc0xLBrjGmI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFBiVk9uVFZ0ZTFEQ2d1R2tLTzQycGpsRnNOdVAzdWVEOWtNbm1ieCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393528),
('mkuQKQDMbGHIMzOPgEe961wvJLfn4v54Ziy0itkw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWVCODU5WGVTcnRHbWMwTHJ2SU9sVklYR29qOWNZSU9OZmNoaHJaciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397668),
('mnREYSPvJBA07KIVFVD6myr1gt7euaS2MHpDdiMY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNW4zVEs2M2pweTZGbFJGU0F2bkFqTXlBUzZJV2dBOHZnUUlFUE0zNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397138),
('MRp9n796TrWclqOe5Vhei8dUnoryACx4bmfJ4EtN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGNPV3kzZnZJakh1Y2NmaE1iQXNOVHc5MEs3SzByT3ZLZzA1MXY4ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398298),
('mSFvU7wPtHKdz1gcYORNDIOXCaDVVXgV7uSbtVx3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1BzOVNDWGdNdzgxUnNGSExiTnphTTE2TE1pelFBM29lMTNMZEdGbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395877),
('mSXMGzxotsJXVy8iYyaQGLCiHwQ84W6LwiSX5xpG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTY3aFhOVVg2Mk1nT0RmR2o5ZzRSeDM2dTk3U21pcW9ucEJCOVk1eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399204),
('mtVyXxmK9Gsv3YczTxHriS7STbQLq93kcanESwjn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE1DMDJKMFVydzUxZXBkWTZWVzhnRDNUS1dIVTFNOGhHdVdzaThXUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395838),
('MvtyGzG5TcpYBh8hSErZZZoi4DpT4wDQjvZ3Gkjd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVJWQnJMQkQwdEVDd2xlaWNHZThyYVNtMFhObkkxTnJkMm9iWGxrTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397028),
('MWhU9PXDg8DmIZUf0BcXMjk5nXemFzpFaAGULrc1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDgzVzU2NUVFQVJGOFI2MnlqMktxZU1QNE9BeUZGVEtkU2tXMFJZRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766400526),
('MxPJ936yGK25PaS1NSrHYcN5X6WfoON9oOzJBTr3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieENuZzRCVE1LdjJyUFI5RlB3N2pXeGVvVHo2UkhNb2daWVFPbVFrMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395880),
('n8jrxIAzxfWTtZHaROYt706LaW7vIMfkM20b2KpJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDBybDBUZWhCdTMxRWFUVzJ2QTBKblJBMlFLRW9pSjRkV2Q5SUI4ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397019),
('NlIcFxD7irwcuitIWIvtL0yWdkgszWutfUN8WbHr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmp3UjBwUTFRNk4ya0ZXT1ZHWHhjVWpteXo3dE16NGZKejc3b2tJNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397033),
('NOFlRDF9CM2ykgujwlksLoWzLzqwbT4kFzfuatNl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3B5WHZoYkVIVDRvcnhFU0hQWk1xVDNORWE3bHV2YUhJVHpLWFBRUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393553),
('NTiZqv6oLKPZYcjK17hULNymjS4zMQSXCh9JyVGG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2owQk9BTHdrZE1sQ1FnWVpnd3ptdXFoaDk1RDM5TExTR3NRUG1pRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397116),
('nwx9ocQ9vZhdbgliYwJoUIYumN1fmHupjCGE9qqe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE1TcWhOUW9RbUtQTXQ0N2ZSU2F4N3JjVlZ0b1NkUFk3c0hZZDdMZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397657),
('NXIJiHg7tke8q24htcDgq6amnGJCOJMdQYZs0lhJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlZ1eWNHTG56WGViU3ZJTmVhcm0yUnFjRnUzUFJxN2sxbXlxajdjdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395702),
('nZWbaHJ2TY3AfWFb5prpBo4rB3tfO0lzSlZdFZWa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUFYYXhJS0NVUDd4elV1dnQ1T0plRDByakJTSk5WQ1JnVnZwdjFPTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766399206),
('OBSVJCPGbOB93qeSYJqsOu4mmHI3NeB0NJKSrjgS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGdlc3lVY0Iyb2JWeEJEdzY3VzFXcFhCeWUxMzdxYWQweWhVaFloMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395698),
('orlmN5BNeAH1ECwUhS3qqh7nEUlQ2HCMhxSgFpS4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmpHcHFKWGlQaGRtWGFVY0JyenZOdlJZcGRzdkZxSGp4d1ZVYUdkbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395221),
('PA1ygq745rO8oobbww7Qt5D8Xs3MdF2KkbZgx9aP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUNMNnRWTFc4M24zSXh2bEo3dkVFMlpkU3NKM3M0b2FOOWR3VUdQNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396015),
('PC8XzP0YygNkMoSqrEc7kZs32cfmo2an4vhNqMHL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3hWcEgyOGh5T1VlZVhSdGpQaUJ6aTRnZ2lINHpEOGR1bFNoS2E5ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397262),
('pEaRs4GR5GxxzPSFuBhFrawvjp7ANudDmIuoHJKH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlZQb0xGUHl2eENrMEZkeDlzaEdPMDlnc2Z4aDVSMmlsc2YzT2lYayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395881),
('pEGy37Jx7pUYZwp1ZTdGlydGnD7pkJ1qBUxsINMY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibURTVVVBd25qNkZQdGJHUUp4OUNKM085YjJ3M2tvWmFQZlBNa3ZiSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzIwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766396985),
('PioW51R1seSqslt7KBPoVwJW6SvOTWi6YnJ7uKgC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0FlSW1OSXphUnhzb3dXRldKeVVaanYzWTNRVkpiZWlFQVJuN3hlQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393237),
('PnwUEw1cqirxAu0CDzq6odARnfpC2RjXbGfb5CPJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHlCUG4xSWlWaHdoek94S3RaWFducUNGRzU0MmtmMXFjdTJnMkw0RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397848),
('PqQeanCTuyyqjtVGDVWSQ71Zk0GBQ9exLKkapyRV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEtDNzNSb0JPNXBEUm81ZWdFTEVZem5yV29lMUZjVHZRRGcxNVBscyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766392888),
('PwiVcUvDvw0dmHT6IIpcnDDr3xMWhlaDO9CvIHVH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2xsSmt4NnA4M1RVOUFKa1lzTTA5RmFxMmRjNG5xNUpScW5TcmVsUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396060),
('pwma8ESEXVeSRvOiHYEUORrg8oaiWirWPZazmikm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHpNYUhRZFhNenU4bVJrWGRZU1NVM2YzUXoxeXc5MVlwbjdUQWkwYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397027),
('PXJiUMxbJVSghgKnPbfQ2xel42x1SwcnFtbB68bT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2g5b1pHdXNsRkRXWm51M2hFaUdOb2V2VDRKMldTSUNYMUtTVVphaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397013),
('pxXwPTIDGDMN00i4MSjo2tf5bwo4LdzqjTBEL0Le', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXFkTktQSk5UZlJuRHVnaUNDb1dVdjVDcWR4UTFJWlo5RE9pZlRrZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395880),
('q32MaYy99ldAP71hrorHHsuQ6kFukA8J65QevPMW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGhXcnlJN3N3YktUQVRrRkxtUGdCc0xucDB3RW1LVjRPNlNwVU9mSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398355),
('q6VHYd13TaC4RQiTHfdbSqsKCLuGVe4QtCFgczQv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTA0a0lDNnRPYWFPMFBLUjg2Qk9KaGJ2U3dtWEo1WXo1enozNVJRdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397050),
('qoa2CKiKBS3WSn2NNDsiaN59UuVkrqYTtNWNKPO8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN21Pb0RNQ2xYTlJERkxWVURUM0Y2NlVCeHZGSzBtNFhWVmNkc2k5byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397668),
('QQig6dMhJvr4XWUJw3b8SJN5COcG4gqu1L3Glxlp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0FOM1U2RXNqUnh3aW9Uc1IzV3JLMlVpSnRaV3VCQmlsVk5jNHdwMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393806),
('QtaFkXe4LMQKlx1ss8HDr4L5zp71PvVnjxCigrwD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEk5bm9mVk9JQ0l4aWlZWEIzMEdXeHVDOG03Wlk1aHE3RkMwYjZzUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766400525),
('QtzEpKRdWuyrz66gBnPwJIU98N4BlzYS154sVtJh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzJNTmRaN09rOWtMejZ6RzdyMzVKdG9kTThtZEl0ZDRrMnA4eTdFUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399204),
('qV5QstN7Ih2FzukNpBlsrT4FON5pZB4AeZQ9kc51', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzBPZU15RERid2ZkaEZDUk52MTh1aUJLMWhPMFBGR1RRY2Z5WHdUdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397053),
('qwe3FBOdEqck01Se5GbWehrXtP03hC1TxP7MkoGX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEk0M1NQSkRmUmgxNTZpWUxyVlF2TE5ZN2tkUnhYUlNza3BnNWExdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397841),
('R9tenJ5ARFw85tFnq0P5xdJWsSjNgTMnus9NP4Yl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDRCZmVtMmVtS1VBeUxOQ0NxVFh2SkgzVVlIcFhJaVlXbzB6Q2dINiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397037),
('RcWCY4scEOOhNnRNGgHCwd0LBhf7XVlGQQIW905e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3RmQldWV2JqWGlUdGZSUVliM3ZnVFlMMmw1VlM1S1ZNbzhXeXZSbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397847),
('Rf7g4wuSzKd2jk9xLgQ7LNSp3HVCRyMQlHyIAVeh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTBSZ2JsVXZnQlFZMjM3TFpWUWU0S2FLbEpaaEhxR0owQ2NUOU1nMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395222),
('rMF5x6PBoEPrg7iDXc8B4jj5HB8QksCxKcaoXqBV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmh2NkxnTzZ4YmZydFFtUVROZHBsTUpvNjBLSGdiQVBNaWN6RzA3ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvMjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393859),
('Rn6iYtiUfWOvCOIbTriHECnvU3CHtxAYDIQ0Hd6L', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0VKRDdOWWpaTnU1bGpPeUNPaWVWUzM1bXI5M21EVVRVbjhCcUNZWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395584),
('RoZ7Xp5mbUTcyp0MmjgZCoo6qkiva9v0ci6bkH76', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUFPVFRzVWVJWWdBM216emVZZXpSMDJrMVJTUU9RZks1d1pLbGZQYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397124),
('RQuCABpkjXD5iIfNOqUmzsfoh5I7i53hRJ4ORWRK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXhLdm4yWjBEeFFXVkZFZXgzdDE0dTdLcVBtSW9XeThRem9Qdk50cyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9fQ==', 1766400524),
('rQvnzzfpFUuFVySLCfGf0NorhwR0bbQCGhF5F3N4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFBxQ3VFYXNLWHA4Y056UW5RWTE4NzcyRWRYMU4zWEtzcDhSc2t5QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395702),
('RYRQN9bwaMnhSxhXYxqEtZUvrN9WwvkIP6jNzPYf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE84UGVPM0pDS1ZuMnhiYk1hRHc2NVNuQ0lxMDVndzhsb0lBYWM4ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395585),
('SEYQJruTpBxuSvj08NfQG63c57EqEKS8Jg5OyJOd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1pWcmdtWkxMcGVjRTY5cFRiVTk2c0hnZ3BhdHBLRUV2M09JcE9sVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396088),
('Sp6J2b0UL4ePjPJ5MZcQeN3RKkvxwdQhdy2BAz4Z', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1NEMVdrZm1qT09aQjYxZHZJZFBRQ1hpTFFaMmhyWWN6NExROElwTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397052),
('spvcftWPlBl6PMOz3TEwxYbuHIvQPMjdhYkvsQ1c', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGlZdk9ZQVVUa3MySENXNWtLY1QxSndEcnBhZDhMeTZneDI3cFJOUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395921),
('SRHTufmR8ZHCg67rXlmkxIzoFAdxrwTcQqoMEZpp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzNObmRtVkdsR2xCQzB1SWV4Tk9nTFBaNWFmdUlpa3lYdHRQZUFWaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397117),
('SuoSe9O7Mz6mYirFFPrlaNY26DejNdu31uzA1dVF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianFPWU5HZEVVMkpOb1pUczhpQk9GMTh4M0plb1REeHBvS3NDOUhtaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399199),
('sWLWgUt7eZYewnN0cXymATglUYVOKY0ZFJqcR7Cn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGppY0lEeXRvT2Rqc1A5VHBicVVEUmhiUW5vYVF1RVZyN3JncTlORiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397050),
('T0JEvi2wfuXcq0CMNBjza66N4w3hpyRX7iZqEesV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVg3VWVEdmFLaVlFMTRxbUg0NGhodkhReEFBcmRDRkN4RXp4ODFyZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395841),
('t2GkW6Wc2Zslyf1TazeYM4CUubPGrcndC4ILzj0l', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUZqZDd0ZGlrMTJsbXRSdmdhWVowR2lBRW9iR0lCUjA0eldZTUtpTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766396979),
('t5X8KX4nLvb755cioXFhOBejaufyEvQQUcgutH9U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnNYclkzZTBtU053bHI2cjgxR3ZMSmdDRTY0enJJaWZJYnRleEpzcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397270),
('t7jqpPkPUWcC3qSr6ivKkwEbLCZeq1baRiGBak3Q', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzdCOHpTTnYyMjdnSTNVMFA1cWE0Sk5aVmhHeUc3NjRXT0VNbmhMZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399189),
('t7ZUO4JegVSkSQMzyOx0kobPTAoN525ygI19ywtE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWpNMHhCQ3hYdXZjOWRRaTRuaHJmT1VBT1FGQWtma1lyMWlUVEt1ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396060);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('taE3whji1NnVWmsIpkQEjWdPL4HLKahJEdSrJEXh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTk4UU5ySXpaWFVNbTJNNTNnRms5ZnQwY0VtQXdzcjFhNm5XUDNUcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399187),
('tFixZKj4irS6B6cDKlHxMtVbTDQwwhgVTuZ2Hpfx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUhud1FMOUpSQ0UxdlZPd2VqaEJORmJqeTlqNk1sclFZWjJWSzFtUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397058),
('U38sXZEwRL2Htqv03EZb0N02QZFdUSx5RNuGHJNx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmliMTdWQzVMSTdCcTh0SWNtN01tOGxYanpGVm9uc0tuV2kwbFJCMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393247),
('uIoYUUUpFu23hHAm2MgNqDftA3kkkj9vjRXvyO7I', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUlQRURLdGJvalNPbVIyRGpnWEVkTjNFenpYRnpjeHhBdXNieE5zSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397116),
('uQBsfly1hW0uysgT0z7V2R3pdWbxIj71ZJRMLCe5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmRSUzNtRTBldUlpNDVIMXZyUDZzaGM3WkFuc0xUYVFRZ29Kelp5QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766397137),
('uRP33WC3Uh3EIX9J0WRPmDE4UXwCXTCn4dXgzVAa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTB2d2ZFaGh1NWNvYXdud1B4Um9IZENSekN5RWVvQldqa00xbDNENCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396021),
('UT69axBBiIuqxrbYJwy4YwPTifOpj3FaG5jekQ05', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamJwRWRKSUpmeTVHVmh0MTdKMDRoNGxhbHF4NnQzaThlZGZLdDdKbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395585),
('uTOjZV8Ll8Ea9Y9r1CyxSWd8f804BbhziG4VJDDM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmpadVFOV2VVdllUaTNFalI3MEdBTDBYQnM2YUZQRGNIdGszcHdPZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398190),
('utQs7BiNzOmrfVHyjQXf6VueiQY8nOOA2Id5hVJt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakJGRm0yUGloUnRJakZhZ0pRR1pXbHhiZUc3RkZKbkk3SVE2VkgwWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398223),
('VbQd9h9wtRdJHaj4pDfK52zydZZ14XG3skoqRWuW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTdZOW8ybjE4VWtoOTFRbEhiVWV6ZklMQU9NMEpUbk1ZTXRCU08yRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396755),
('Vftj5vWdFnHMnsDENWy0q8aF3MzjhuitNMoBP8Wz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXJmOGtZZ25ZYjVjM3BEM2JhU0dGUXhQVGtMRkVBaXBkclRidk9jUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766392887),
('vhsQkAVOKbFmbLokootDHX0zzUvse8ANmgMmtLry', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFRrUlhGS1pFbFM4djhmRHh3cTNTVVZJNlczZkl6cXo1SHhEckZCMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395838),
('VlmAUIeC5NETqp3LFebCdSV6V0eNn0ynrFXLc6N6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0FmTUlUaGozWjBuRzFOS3NSMFhvcnhJRVphd1Bxc2x0eGIxTWdYdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395843),
('vPmCPH8OJBRq8z9a4XblATbXwiNvZBapH6SxZOOE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTW5Xelo3WU01c1VYNktrS3JRS3FCUVAwckJVZ1BmdXhrTFdYcGlDMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397657),
('vtL3tvCe5IdUZaoiBMhswoJxeoY3ZZIDJlGu5wEc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVVlTDRGckZiRHhrRWxyR1RLS0Q4REZxQjNQdEE1amg3WTBZMzdocCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbXlpbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766396985),
('vxagJ7A1MoZgAStYqCeKWK116pvlp9hipm3SYkOs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1NpQXF5aW4zbEp5R1JTQW9udWNvSnc0U2FSeks4SkpzSmpzYmtxNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397656),
('vxEe1oSiDO2nCjt9CQ12xFaGHH10mOpfH8TFOPBv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDdvdjBZQUF1YTRlUFdqYVFqN1R0a1hGNUJGSGJIZHJpY1V6ajhmVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395698),
('W958IYo4KTxwjtx63mfK3PpTqqBLr1GCiM9qZ49K', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnZ5MjE5UE1rY0doclN5a3ZMR2c0Q1JKRFdBZWRLZlViNXczMndPTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398222),
('wARAB0nNkcU5zKjovgzG44edusCRO5gMvMx8XrBH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVNLTTllU1Jka203aVk4WXdzT1lMN3BZc3k4MDVCaTJMNGkwYkFtciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393554),
('wBHLtERDU5wjKWEDtxq8QMtdlpAAcepF8QOuSbjM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTFhb0l5eUU1OTA5cmYxdktOcGlJd2pVSXdWellCaGFtdTNtZTN6SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393237),
('wEQ0Nu63fIBCJQ09j5YnWsEaRIR9Y7dLubYNB7fJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzVOMGpmSjJ3bHZqbmZxTDJTbzJSZmxRMG5YdnJCTDJ2UVZRRm9wVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL3VzZXIvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393902),
('Wh1ewh0xdmJxdfsejA4SLa4mlnq6clbIelr9I9oq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejd0SlRNWmJmNEtLV1lMZ2cwS3Q0eU5zS2FTUDRSUHlDNXRoQkVDOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399197),
('WMouKk1q1kjnzQSZI2q9do6L90tCX2OLxXWVYJbC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibE1VblJDQ2puTmlaWWZlQmVaTWtqNkpKenhMbmc0Tkp3Zkh0d3RURSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395840),
('WOx4AtFf4zcz1FBH9Fj10O5KBJjO2706jEsQ69IO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnhoRkRYdk5XMWlBMlZZUTJMV1JKVnlOa3JkMnpFbmJjUXE0QldTSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399189),
('X0bRno11aInY3LpAP19Q1hROutYM3bJr3U54rsHn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUZ4NVdORVRqZVpqNm9DeFUzSnU4TVJJMnhHa2M1NDVrQzdZRTRYRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766393529),
('X1C0d5Ew0hYo2UWZyrbz5fR0pBkQlQnfdsiFrcAz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHFGSHVIYnY0RTZzYmk1cDByMWR6TmRuN2xweWlnNEltMmRKaTZZSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399198),
('X7aDiBc2EuQoH8fhGZECZ9lYclqKpcUnR2a1LfWi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3JrQnRqVlZRcFFydFBEWG1KZDlNQ0NWVm91djNjOWJCNlVpUWtmYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766396014),
('XdoYMXDOB7qdJZfpJVd9MrGxJzEceQ8toeA8iJ9T', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjM4dWMyNnZNczNYSE1jdTVFb3UxZzV5VHZoVng3c09lTGRCWUdoSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397034),
('xf6uJc3jd0vS6tTWMi2LmAJVHpfdH8O8yC7B5rJn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGZOb0xoc0JHWHB5Ync2QjEyeXduNGpNRXh2UUUxVXV0bjRHM1dHUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395699),
('xieXxhDeBCT8nKJGHeTIkQzbsRKvDOip54toigpH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQU13Mm5EUVV1TUJwbFl4UURoOXc5TExOZk9zUURkcDhQMk5DTWdoTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397059),
('Y4E2TzI9VplOPIwOYUpHSs4oq0ENoVHaRzhsF3WV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEh0bDdreUNFejJMWFllckVhQW5FREdjOVp6OEp6M1c3SlRSZzlWaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395840),
('Y4mSW74AJzP1yitqJZBgGT2yBJy9XmzzJM2TTuH2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEhMZzk3NGRlcnIwNjdCWUI2bXFxM0Q1aVQ0ZUtKZkZVeXJhVFpIcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395641),
('y4QH4jis5Fdg5I4qYgTkwnRxGClv2Pfsnd65OQc8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRG1sTllibTRSVVNuWmNFbnJhN1R0cU81dzFCMW90dmJRdFR1azhkMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397013),
('y52LEFlyJEiLJzDfVtioQeRswC6Z14cLNO5mmHwW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlA5eWVPaDRJWFdwRHRJT0Nrb3hUVWpwT1BURzQ5OE41dG5HMnp2YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhLzQzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766399276),
('Y5iFYUVePHeH1sU41DF32Ne0Pmbxnk8K0XMrLUHx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiank5em95cTJ5RWM4WDlLcTVCOUE3Q0xTZmN3NEtVcDR1N2VCQ0ljUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766398223),
('YAavh0ak4wyMXXc9CbAMN5kU6gNe8R25r1dbwXPh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDBHVGlEclo3OE1WNzVtVlFpY05XWW5rSUdFbHFuenBXY3pIQ1NIZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395883),
('YbO5rvTHcuUe178AlpmlPbVOPEgvFcXpOqixkMhX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUFnVmVCVHVVNndIYXg3eElLaFNZNm5VOTJKaVZIeUJBUVBBOXFqNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766399204),
('YDE1XdcWan4HBZkd4JaEn004pStvoLv082W4j8J1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2Ewd0xjc3hSTTFzcmVPaW5pM1c5RFptc3ptVDN4c2dRUDU4UG5kZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395703),
('YePwmhF4gJ23BJmr2AbkzEGZWvr27u6ieD4lt2HE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2Q2Z0s0S3BnTWQ4R0ltVjBEOXdmZDA2THU0NG1Ob0dVTGF1UFhIcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397012),
('yQ8LsgAoM1HumTEf54ayjUGWK55nL2NugS0xfATl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3hQdmF4OTRpSnJiV0hIcjdoNVJIUVZISHRPOVNDZ1RCRVlrYWs3ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766400525),
('YqMaB8fJNY3EpwxWgCEhc928uoGGPo0U8dNjkfC7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1dpbzZIclN5bWxmTE1iYWNET2FYekhFelE2dHF1a0hQa2xnRGdNdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397810),
('Yxr3taMmYr7EpiaWOicHoT13HCjFXZOMEWzC4IfF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjF0NERFM0VGWjc3aktYVjQ2d2F3RzcwOXUyWkQ4WUNqQlJwZjUxOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395882),
('z0c8j6s1V7KFZLLavP5mHTZJ7ZHSccBPLKp81aoM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicG5GOGppMFY5alV6Y20wUTdETWdzT0ZMNjduT3ZjaUY4a1JtcXFCbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvc2VhcmNoP2xpbWl0PTIwJnE9aGR1aWEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397046),
('z4ZbkeGmvpKjm65gKDZyVJdAcimghSszBZ2TRzld', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTNsR01pNkttWXFFSWpBbWRCNkp6aWt0MkYzcExpVFhtS21Uckt4bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766397033),
('z8ub2Qk4XfMgRdFxl0lBjwjvpvYdnbashuTwgfwO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYll0dWVTVmUwdjBva3RPWE01ejBpZ1VHeXdZQlVxbzJMU0V6YlgwZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvYmVyaXRhL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766395844);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id_token` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` enum('unused','used') NOT NULL DEFAULT 'unused',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','penulis','pembaca') NOT NULL,
  `membership` enum('guest','free','premium') NOT NULL,
  `foto_profil` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `name`, `email`, `email_verified_at`, `role`, `membership`, `foto_profil`, `remember_token`, `created_at`, `updated_at`) VALUES
(17, 'admin', '$2y$12$BSN1rFSlS4C7Y.AqUB21y.M7kjgguIusLWp3aJLYK4xa2HuGk83ZS', 'Admin Power', 'newseencompany@gmail.com', '2025-12-16 17:43:09', 'admin', 'free', 'profil/1766396863_fb57d6a6-3cbc-422e-8f20-290679d6f4ee.png', NULL, '2025-12-16 17:39:58', '2025-12-22 02:47:43'),
(18, 'Karsa', '$2y$12$REMrUm6RvRZvfnwRfjFrV.IcrYGSWAluNoliHIiYpk8IY3qj8A0.q', 'danana', 'manata@gmail.com', '2025-12-17 18:06:11', 'pembaca', 'free', NULL, NULL, '2025-12-17 18:04:34', '2025-12-18 20:54:27'),
(39, 'johntoe', '$2y$12$mXwPSA/3j1QMwv3.PQGZeueKFZSFSg6moC8c2D8DQb0/ahUk.QEAq', 'John Moe', 'john@gmail.com', '2025-12-04 08:51:20', 'penulis', 'free', NULL, NULL, '2025-12-19 01:50:50', '2025-12-22 02:20:02'),
(46, 'xorandor23', '$2y$12$DObi8wCak25FEpMC6Ata.uDMtXSDGSDQLz.se1lCSzdgfnfNblMGG', 'Raihan Julyandri', 'cfull062@gmail.com', '2025-12-21 21:35:12', 'penulis', 'free', 'profil/1766378274_2ecbf6ba-1d6d-466d-9785-3eb1c1c4ce14.png', NULL, '2025-12-21 21:33:37', '2025-12-22 02:46:03'),
(47, 'han770o', '$2y$12$5w7rkWIh123upWKz7rdU7OV/EcAwGidgG6o4zXLoa3LJsdXkje/iS', 'Raihan J', 'raihanjulyandri@gmail.com', '2025-12-22 03:38:32', 'pembaca', 'free', NULL, NULL, '2025-12-22 03:37:31', '2025-12-22 03:38:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id_bookmark`),
  ADD UNIQUE KEY `bookmarks_id_user_id_berita_unique` (`id_user`,`id_berita`),
  ADD KEY `bookmarks_id_berita_foreign` (`id_berita`);

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
-- Indexes for table `disukai`
--
ALTER TABLE `disukai`
  ADD PRIMARY KEY (`id_disukai`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

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
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_kategori_unique` (`kategori`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id_notification`),
  ADD KEY `notifications_id_user_is_read_index` (`id_user`,`is_read`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `reports_id_user_foreign` (`id_user`),
  ADD KEY `reports_id_berita_foreign` (`id_berita`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`),
  ADD UNIQUE KEY `token_token_unique` (`token`),
  ADD KEY `token_id_user_foreign` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id_bookmark` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disukai`
--
ALTER TABLE `disukai`
  MODIFY `id_disukai` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id_notification` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id_report` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id_token` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_id_berita_foreign` FOREIGN KEY (`id_berita`) REFERENCES `berita` (`id_berita`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookmarks_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_id_berita_foreign` FOREIGN KEY (`id_berita`) REFERENCES `berita` (`id_berita`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
