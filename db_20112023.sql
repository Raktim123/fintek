-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 05:56 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fintek`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_img` varchar(200) NOT NULL,
  `banner_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_title`, `banner_img`, `banner_link`) VALUES
(1, 'Empowerment Through Learning', 'banner/5x23KBXYz5IDKN606cAqr193LSUKXmD5qjXfEEXd.jpg', 'https://www.google.com/'),
(2, 'Empowerment Through Learning', 'banner/avyNoNPwv3M0UT1X9q6QkYSJlyc01eFoTZHpxwWP.jpg', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 0, 'Development', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'categories/W0xxAVdPZ179nLpGsiGneOowglLnIRScSVDi4fPh.jpg', '2023-10-12 23:23:23', '2023-10-12 23:23:23'),
(2, 1, 'Artificial Intelligence', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'categories/JVycEw5iAzRaFFYuhbfNuov1ZG9kIMDSdl1JWDBz.jpg', '2023-10-12 23:26:23', '2023-10-12 23:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `course_id`, `title`, `created_at`, `updated_at`) VALUES
(2, 1, 'Introduction', '2023-10-12 23:51:59', '2023-10-13 01:34:35'),
(3, 1, 'Basic of Tensorflow', '2023-10-12 23:55:11', '2023-10-13 01:37:10'),
(4, 3, 'Introduction', '2023-10-13 00:45:32', '2023-10-13 00:49:09'),
(5, 3, 'Fundamentals', '2023-10-13 00:49:11', '2023-10-13 00:49:21'),
(6, 3, 'Workflow', '2023-10-13 00:49:24', '2023-10-13 00:49:38'),
(7, 3, 'Neural network classification', '2023-10-13 00:49:45', '2023-10-13 00:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `privacy` longtext DEFAULT NULL,
  `termsncond` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `privacy`, `termsncond`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `level` enum('BEGINNER','INTERMEDIATE','EXPERT','ALL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_type` enum('FREE','PAID') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `instructor_id`, `title`, `subtitle`, `thumbnail`, `language`, `category_id`, `level`, `price_type`, `price`, `sale_price`, `is_approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Test', 'Test1', NULL, 'ABC', 1, 'BEGINNER', 'FREE', 0, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_metas`
--

CREATE TABLE `course_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `things_to_learn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirements` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_audience` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_metas`
--

INSERT INTO `course_metas` (`id`, `course_id`, `things_to_learn`, `requirements`, `target_audience`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"Artificial Neural Networks (ANNs) \\/ Deep Neural Networks (DNNs)\",\"Predict Stock Returns\",\"Time Series Forecasting\",\"Computer Vision\",\"How to build a Deep Reinforcement Learning Stock Trading Bot\",\"GANs (Generative Adversarial Networks)\"]', '[\"Know how to code in Python and Numpy\",\"For the theoretical parts (optional), understand derivatives and probability\",\"Mobile or Laptop\",\"Good internet connection\"]', '[\"Student\",\"Expert\"]', '2023-10-12 23:27:33', '2023-10-12 23:45:20'),
(3, 3, '[\"Everything from getting started with using PyTorch to building your own real-world models\",\"Understand how to integrate Deep Learning into tools and applications\",\"Build and deploy your own custom trained PyTorch neural network accessible to the public\",\"Master deep learning and become a top candidate for recruiters seeking Deep Learning Engineers\"]', '[\"A computer (Linux\\/Windows\\/Mac) with an internet connection is required\",\"Basic Python knowledge is required\",\"Previous Machine Learning knowledge is recommended, but not required (we provide sufficient supplementary resources to get you up to speed!)\"]', '[\"Student\",\"Intermediate\",\"Expert\"]', '2023-10-13 00:40:58', '2023-10-13 00:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `order_id`, `student_id`, `course_id`, `created_at`, `updated_at`) VALUES
(3, 16, 1, 1, '2023-10-16', '2023-10-16'),
(4, NULL, 4, 3, '2023-10-19', '2023-10-19'),
(5, NULL, 4, 1, '2023-10-19', '2023-10-19'),
(6, NULL, 1, 1, '2023-10-19', '2023-10-19'),
(7, NULL, 4, 1, '2023-10-19', '2023-10-19');

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
-- Table structure for table `forummessages`
--

CREATE TABLE `forummessages` (
  `id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `fr_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `stat` int(11) NOT NULL DEFAULT 1,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forummessages`
--

INSERT INTO `forummessages` (`id`, `forum_id`, `fr_id`, `to_id`, `stat`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 'Message from Raktim Banerjee', '2023-10-19 11:26:28', '2023-10-19 11:26:28'),
(2, 2, 4, 2, 1, 'Message from John', '2023-10-19 11:27:25', '2023-10-19 11:27:25'),
(3, 1, 2, 1, 0, 'Hoop', '2023-10-19 11:27:58', '2023-10-19 11:27:58'),
(4, 2, 2, 4, 0, 'Poop', '2023-10-19 11:28:05', '2023-10-19 11:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `course_id`, `chapter_id`, `lesson_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 3, 1, '2023-10-19 11:26:28', '2023-10-19 11:26:28'),
(2, 1, 3, 3, 4, '2023-10-19 11:27:25', '2023-10-19 11:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `instructorregistration`
--

CREATE TABLE `instructorregistration` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `desig` varchar(200) NOT NULL,
  `working` varchar(500) NOT NULL,
  `last_qualified` varchar(200) NOT NULL,
  `spec` varchar(500) NOT NULL,
  `exp` varchar(20) NOT NULL,
  `certificate` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructorregistration`
--

INSERT INTO `instructorregistration` (`id`, `user_id`, `desig`, `working`, `last_qualified`, `spec`, `exp`, `certificate`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'software developer', 'TSM', 'B.Tech', 'Python,JAVA', '5', 'LIGHT Updated Lesson plan.pdf', 1, '2023-11-17 06:10:20', '2023-11-17 06:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `chapter_id`, `title`, `content_type`, `content`, `created_at`, `updated_at`) VALUES
(3, 2, 'Introduction on course', 'video/mp4', 'videos/1697182742.mp4', '2023-10-12 23:51:59', '2023-10-13 02:09:02'),
(4, 2, 'Introduction on Tensorflow', 'video/mp4', 'videos/1697187304.mp4', '2023-10-12 23:52:05', '2023-10-13 03:25:05'),
(5, 3, 'Setup Tensorflow', 'video/mp4', 'videos/1697187311.mp4', '2023-10-12 23:55:11', '2023-10-13 03:25:12'),
(6, 4, 'Introduction on course', NULL, NULL, '2023-10-13 00:45:32', '2023-10-13 01:07:25'),
(7, 5, NULL, NULL, NULL, '2023-10-13 00:49:11', '2023-10-13 00:49:11'),
(8, 6, NULL, NULL, NULL, '2023-10-13 00:49:24', '2023-10-13 00:49:24'),
(9, 7, NULL, NULL, NULL, '2023-10-13 00:49:45', '2023-10-13 00:49:45'),
(10, 4, 'Introduction o the course.', NULL, NULL, '2023-10-13 00:50:44', '2023-10-13 00:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `purchase_by` int(11) NOT NULL,
  `order_id` text DEFAULT NULL,
  `payment_id` text DEFAULT NULL,
  `payment_status` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `purchase_by`, `order_id`, `payment_id`, `payment_status`, `amount`, `created_at`, `updated_at`) VALUES
(14, 1, '28T928334E0177519', '28T928334E0177519', 'PAID', 0, '2023-10-16 05:43:21', '2023-10-16 05:46:17'),
(15, 1, NULL, NULL, NULL, NULL, '2023-10-16 06:24:55', '2023-10-16 06:24:55'),
(16, 1, '5LD60677RU329012N', '5LD60677RU329012N', 'PAID', 170, '2023-10-16 06:25:53', '2023-10-16 06:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_metas`
--

CREATE TABLE `order_metas` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_metas`
--

INSERT INTO `order_metas` (`id`, `order_id`, `course_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 14, 3, 159, '2023-10-16 05:43:21', '2023-10-16 05:43:21'),
(2, 14, 1, 170, '2023-10-16 05:43:21', '2023-10-16 05:43:21'),
(3, 15, 1, 170, '2023-10-16 06:24:55', '2023-10-16 06:24:55'),
(4, 16, 1, 170, '2023-10-16 06:25:53', '2023-10-16 06:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `id` int(11) NOT NULL,
  `tran_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `stat` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suporttrackers`
--

CREATE TABLE `suporttrackers` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `issues` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_tag` varchar(50) NOT NULL,
  `tran_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suporttrackers`
--

INSERT INTO `suporttrackers` (`id`, `subject`, `issues`, `created_by`, `created_tag`, `tran_id`, `created_at`, `updated_at`) VALUES
(1, 'course related', 'dfdfdf', 1, 'INSTRUCTOR', NULL, '2023-10-17 07:54:09', '2023-10-17 07:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `supportmessagetrackers`
--

CREATE TABLE `supportmessagetrackers` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supportmessagetrackers`
--

INSERT INTO `supportmessagetrackers` (`id`, `ticket_id`, `f_id`, `t_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 'dfdfdf', '2023-10-17 13:24:09', '2023-10-17 13:24:09'),
(13, 1, 1, 0, 'hehe', '2023-10-19 09:04:30', '2023-10-19 09:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `ref_id`, `created_at`, `updated_at`) VALUES
(1, 'EARNING', 12, '2023-10-16 04:45:50', '2023-10-16 04:45:50'),
(2, 'EARNING', 14, '2023-10-16 05:46:17', '2023-10-16 05:46:17'),
(3, 'EARNING', 16, '2023-10-16 06:26:37', '2023-10-16 06:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 'Raktim Banerjee', 'raktimbanerjee9@gmail.com', NULL, '$2y$10$pWnm0.bnsnQN8.7rtTfMtOt4fhaGygVnPQg/d/Xp6pRU3kZCoT62W', NULL, NULL, '2023-10-12 23:16:59', '2023-10-12 23:16:59'),
(2, 'Tamoghna Gupta', 'tamoghnadeveloper@gmail.com', NULL, '$2y$10$pWnm0.bnsnQN8.7rtTfMtOt4fhaGygVnPQg/d/Xp6pRU3kZCoT62W', NULL, NULL, '2023-10-13 01:52:47', '2023-10-13 01:52:47'),
(3, 'Tamoghna Gupta', 'tamoghnadevelopes@gmail.com', NULL, '$2y$10$.KVgUxaJ4t4Z5TaAL3dF2OYdOMZ2UONSyLV1wuFuyoKJFHdgAbkNS', NULL, NULL, '2023-10-16 03:32:14', '2023-10-16 03:32:14'),
(4, 'Susmita Sahoo', 'admin@gmail.com', NULL, '$2y$10$u/NK/2W6HtcJXVSNSy363uZHm2dyaXLp7K2O4jY3klkSIwCVBbRp6', NULL, NULL, '2023-10-19 05:27:08', '2023-10-19 05:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `withdrawal_by` int(11) DEFAULT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `withdrawal_status` varchar(255) DEFAULT 'PENDING',
  `file` varchar(255) DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_metas`
--
ALTER TABLE `course_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forummessages`
--
ALTER TABLE `forummessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructorregistration`
--
ALTER TABLE `instructorregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_metas`
--
ALTER TABLE `order_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suporttrackers`
--
ALTER TABLE `suporttrackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supportmessagetrackers`
--
ALTER TABLE `supportmessagetrackers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nn` (`ticket_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_metas`
--
ALTER TABLE `course_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forummessages`
--
ALTER TABLE `forummessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instructorregistration`
--
ALTER TABLE `instructorregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_metas`
--
ALTER TABLE `order_metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suporttrackers`
--
ALTER TABLE `suporttrackers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supportmessagetrackers`
--
ALTER TABLE `supportmessagetrackers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `supportmessagetrackers`
--
ALTER TABLE `supportmessagetrackers`
  ADD CONSTRAINT `nn` FOREIGN KEY (`ticket_id`) REFERENCES `suporttrackers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
