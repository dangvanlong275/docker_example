-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: mysql
-- Thời gian đã tạo: Th5 23, 2022 lúc 08:44 AM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dulich_be`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `contents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `post_id`, `user_id`, `contents`, `created_at`, `updated_at`) VALUES
(15, NULL, 26, 1, 'Đây là một địa điểm tuyệt vời.\nTôi sẽ đến đó vào một ngày không xa.', '2022-05-14 15:52:15', '2022-05-14 15:52:15'),
(16, NULL, 26, 1, 'good', '2022-05-15 21:36:17', '2022-05-15 21:36:17'),
(19, NULL, 26, 3, 'Cảm ơn bạn đã review', '2022-05-16 01:00:13', '2022-05-16 01:00:13'),
(20, NULL, 26, 3, 'Tuyệt vời', '2022-05-17 11:23:28', '2022-05-17 11:23:28'),
(24, NULL, 27, 3, 'Tuyệt vời ông mặt trời', '2022-05-17 13:00:23', '2022-05-17 13:00:23'),
(29, NULL, 27, 12, 'gà', '2022-05-19 10:47:07', '2022-05-19 10:47:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `follows`
--

CREATE TABLE `follows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `follow_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `follows`
--

INSERT INTO `follows` (`id`, `user_id`, `follow_user_id`, `created_at`, `updated_at`, `status`) VALUES
(3, 1, 3, '2022-05-05 23:16:37', '2022-05-17 14:42:47', 'unfollow'),
(4, 3, 1, '2022-05-09 09:14:45', '2022-05-09 09:16:18', 'follow'),
(5, 1, 1, '2022-05-09 15:05:18', '2022-05-09 15:05:22', 'unfollow'),
(6, 13, 3, '2022-05-13 17:11:14', '2022-05-13 17:11:14', 'follow'),
(7, 1, 12, '2022-05-19 10:54:11', '2022-05-19 10:54:11', 'follow');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `post_id`, `path`, `created_at`, `updated_at`) VALUES
(33, 26, '1zmQNlO4sEXpD0hBu8B4ZPogZnQoYdhY7', '2022-05-13 16:49:26', '2022-05-13 16:49:26'),
(34, 26, '1EreYfAt_zNfRkVSZeDaBYL3BXpWG4ebF', '2022-05-13 16:49:29', '2022-05-13 16:49:29'),
(35, 26, '1HwrzBCOSSTJf-D5RpKsOgdJXLLJv6ryT', '2022-05-13 16:49:33', '2022-05-13 16:49:33'),
(36, 26, '1RG6aqOjZuqoqWkkpfyN9tvxnkQj0dq6K', '2022-05-13 16:49:36', '2022-05-13 16:49:36'),
(37, 27, '174PdBzHRJyoH5oS2i64308XncS8V0Auv', '2022-05-13 17:01:27', '2022-05-13 17:01:27'),
(38, 27, '1m1eP0f_TdJ-MUuHobx-2zXwajElAza45', '2022-05-13 17:01:38', '2022-05-13 17:01:38'),
(39, 27, '1_Ni7WjHTWlB2ffn559nb20HYJfk1GWJ9', '2022-05-13 17:01:43', '2022-05-13 17:01:43'),
(40, 27, '1MpFaQcQRG620JF3-00G4jx9IYgFjtkRA', '2022-05-13 17:01:56', '2022-05-13 17:01:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `like_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `like_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `like_id`, `user_id`, `like_type`, `created_at`, `updated_at`, `status`) VALUES
(2, 1, 1, 'App\\Post', '2022-04-21 23:48:31', '2022-04-21 23:48:31', 'like'),
(3, 7, 1, 'App\\Post', '2022-04-28 14:22:26', '2022-04-28 14:22:26', 'like'),
(5, 12, 1, 'App\\Post', '2022-04-29 10:15:44', '2022-05-06 19:50:56', 'like'),
(6, 6, 1, 'App\\Post', '2022-04-29 15:26:47', '2022-05-05 13:21:38', 'dislike'),
(7, 5, 1, 'App\\Post', '2022-04-29 15:29:15', '2022-04-29 15:29:15', 'like'),
(8, 12, 3, 'App\\Post', '2022-05-03 22:41:00', '2022-05-03 22:41:00', 'like'),
(9, 17, 4, 'App\\Post', '2022-05-05 23:14:43', '2022-05-05 23:17:55', 'like'),
(10, 24, 3, 'App\\Post', '2022-05-10 10:10:56', '2022-05-11 23:39:24', 'dislike'),
(11, 25, 12, 'App\\Post', '2022-05-12 16:59:58', '2022-05-12 16:59:58', 'like'),
(12, 26, 3, 'App\\Post', '2022-05-13 16:53:31', '2022-05-23 14:18:18', 'like'),
(13, 27, 13, 'App\\Post', '2022-05-13 17:09:13', '2022-05-13 17:09:13', 'like'),
(14, 26, 13, 'App\\Post', '2022-05-13 17:10:52', '2022-05-13 17:10:52', 'like'),
(15, 27, 3, 'App\\Post', '2022-05-15 23:53:28', '2022-05-23 14:44:09', 'like'),
(16, 27, 1, 'App\\Post', '2022-05-17 13:16:10', '2022-05-21 10:49:06', 'like'),
(17, 26, 1, 'App\\Post', '2022-05-17 13:21:13', '2022-05-21 10:23:59', 'dislike'),
(18, 27, 12, 'App\\Post', '2022-05-19 10:46:49', '2022-05-19 10:46:49', 'like'),
(19, 34, 1, 'App\\Post', '2022-05-19 10:51:09', '2022-05-21 11:53:03', 'like'),
(20, 34, 3, 'App\\Post', '2022-05-22 15:07:52', '2022-05-23 10:15:24', 'dislike'),
(21, 26, 17, 'App\\Post', '2022-05-22 16:45:17', '2022-05-22 16:45:17', 'like'),
(22, 27, 17, 'App\\Post', '2022-05-22 16:45:18', '2022-05-22 16:45:18', 'like');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(19, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(20, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(21, '2016_06_01_000004_create_oauth_clients_table', 1),
(22, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2022_03_04_174646_create_posts_table', 1),
(25, '2022_03_04_174737_create_follow_authors_table', 1),
(26, '2022_03_04_174755_create_images_table', 1),
(27, '2022_03_04_174819_create_comments_table', 1),
(28, '2022_03_04_175036_create_notifications_table', 1),
(29, '2022_03_04_175330_create_save_like_posts_table', 1),
(30, '2022_03_09_121022_update-type-table-password-reset', 1),
(33, '2022_04_17_150150_rename-table-save-like-post', 2),
(34, '2022_04_22_215254_add-user_id-table-notification', 3),
(35, '2022_04_23_233526_add-column-title-table-post', 3),
(36, '2022_04_24_004020_create_remember_posts_table', 4),
(37, '2022_04_24_014654_create_follows_table', 5),
(38, '2022_04_24_022145_drop-table-follow-author', 5),
(39, '2022_05_03_215123_add-status-like-and-save-post-table-like-and-remember-post', 6),
(40, '2022_05_05_154129_add-folder_id-table-users', 7),
(41, '2022_05_05_222719_add-status-follow-author-table-follows', 7),
(42, '2022_05_06_003554_add-relationship-table-follow-remember-post', 8),
(43, '2022_05_14_161630_relationship-table-notifications', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `is_seen`, `created_at`, `updated_at`, `user_id`, `post_id`) VALUES
(17, 'new_post', 1, '2022-05-13 16:49:36', '2022-05-19 10:57:51', 1, 26),
(18, 'new_post', 0, '2022-05-13 17:01:56', '2022-05-13 17:01:56', 3, 27),
(19, 'new_post', 1, '2022-05-13 17:01:56', '2022-05-17 13:40:38', 1, 27),
(23, 'comment', 1, '2022-05-15 21:36:17', '2022-05-15 22:01:34', 3, 26),
(26, 'comment', 1, '2022-05-17 12:57:35', '2022-05-17 14:43:10', 3, 27),
(27, 'like', 0, '2022-05-17 13:21:13', '2022-05-17 13:21:13', 1, 26),
(38, 'like', 0, '2022-05-19 10:46:49', '2022-05-19 10:46:49', 12, 27),
(39, 'comment', 1, '2022-05-19 10:47:07', '2022-05-19 10:50:49', 12, 27),
(44, 'like', 0, '2022-05-22 16:45:17', '2022-05-22 16:45:17', 17, 26),
(45, 'like', 0, '2022-05-22 16:45:18', '2022-05-22 16:45:18', 17, 27),
(50, 'like', 0, '2022-05-23 14:08:53', '2022-05-23 14:08:53', 3, 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('015b2716167ff2973b0dbca4a20a3d4c99275490caf6a1105f0ac031ece79f35b7b9e170a3e22496', 1, 3, 'dulich', '[]', 0, '2022-04-28 09:58:01', '2022-04-28 09:58:01', '2023-04-28 09:58:01'),
('0285e152995b9367608f3665a1babdb6cdab1e172da6994deb60a36dcea4746abb559d8ca60d7a75', 2, 3, 'dulich', '[]', 0, '2022-04-22 00:55:11', '2022-04-22 00:55:11', '2023-04-22 00:55:11'),
('02e9646b342a1d9a153c5f2c382c3cced6a4c5a5f37fecdf441a458559dae6041f5b5b2a80e4ff6d', 1, 3, 'dulich', '[]', 0, '2022-05-12 09:28:26', '2022-05-12 09:28:26', '2023-05-12 09:28:26'),
('035312a2ce575a424120672b84aa85675f9619ad270e32ac984a7df2f0926b88c4999c65eb9b7794', 1, 3, 'dulich', '[]', 0, '2022-04-29 09:52:17', '2022-04-29 09:52:17', '2023-04-29 09:52:17'),
('05c393b38e2b0eaa3e3932ed928456f09aedd39d2e9c29e6ca263890dfbcb176ad2cd1a149b6ca08', 1, 3, 'dulich', '[]', 0, '2022-04-29 15:16:04', '2022-04-29 15:16:04', '2023-04-29 15:16:04'),
('06033a0812ccf400791207539e2a85a4195992ba7bc204cec67b6538f9d82eca5bad2e14ef2fcece', 1, 3, 'dulich', '[]', 0, '2022-04-27 10:27:11', '2022-04-27 10:27:11', '2023-04-27 10:27:11'),
('0b457bc6fdae05fc467ad55ebc63a35f3cd02efb44542bbdc805936651b010ef06d3bc7064ed6118', 3, 3, 'dulich', '[]', 1, '2022-05-15 21:36:34', '2022-05-15 21:36:34', '2023-05-15 21:36:34'),
('0f480be30837ca0c727de45e990f9550ebc291eb5663935db5f44ea5e574f3c4205c1a572af71775', 1, 3, 'dulich', '[]', 0, '2022-05-02 17:33:51', '2022-05-02 17:33:51', '2023-05-02 17:33:51'),
('105993e27ba12a04c835dabd192b847e83c5a220b7aa721cfe37695270dd01b5d5a039cb00ebfda9', 1, 3, 'dulich', '[]', 0, '2022-04-29 09:46:44', '2022-04-29 09:46:44', '2023-04-29 09:46:44'),
('12971e8f4e8b7b49d3b2a8538c01536bfe85ca30122797a3c76724d0f8d9eb0f47923cfc9de19fd7', 3, 3, 'dulich', '[]', 0, '2022-05-02 17:05:38', '2022-05-02 17:05:38', '2023-05-02 17:05:38'),
('1444a5446b51012e5ddb136210d1601d5b0c77bf108ca65173e897739cd0b2c5961b95d633141234', 1, 3, 'dulich', '[]', 0, '2022-04-29 15:26:31', '2022-04-29 15:26:31', '2023-04-29 15:26:31'),
('1722d95f53178f4cd59318365f3dd10375426499fee1b556e2b5475b306d62e1a3eaf2cc4f257461', 1, 3, 'dulich', '[]', 0, '2022-04-25 15:59:28', '2022-04-25 15:59:28', '2023-04-25 15:59:28'),
('1858ace1e7733146fbf8600cbf3dcd425577ac41d4f66bcf69fa70422fdeae90e86aa06ccf860075', 1, 3, 'dulich', '[]', 0, '2022-04-29 10:03:39', '2022-04-29 10:03:39', '2023-04-29 10:03:39'),
('1978186e49a6a68afbb1e08d9cb02ce722c0b0083d28a41d45026cb441db8873919e4bfe4a2712ec', 1, 3, 'dulich', '[]', 1, '2022-05-14 14:12:03', '2022-05-14 14:12:03', '2023-05-14 14:12:03'),
('1b59e34a220340eb61b6c8bf8eb573c8be924b39671f7d63b2b4bc9025a9d000d35ff2efa1dc6de9', 1, 3, 'dulich', '[]', 0, '2022-04-29 15:20:19', '2022-04-29 15:20:19', '2023-04-29 15:20:19'),
('20fbbb7d690be761a4fc806b2083b95aa8d1c443e94c1c0e9b2a0eef1c8e43fbef57261d72ea1051', 1, 3, 'dulich', '[]', 0, '2022-04-27 09:24:36', '2022-04-27 09:24:36', '2023-04-27 09:24:36'),
('229d127dd3bed3a3a13b2bd8bb0ea96a03d1f2d0ea3227b5b145926adee24375deb235f04f12497d', 1, 3, 'dulich', '[]', 0, '2022-05-02 17:32:31', '2022-05-02 17:32:31', '2023-05-02 17:32:31'),
('2425373006d8821e97aadbb8b6eb46f15e4e846b6038ddcb7d419dc1658b32ae3ab10c76b1bdc3b5', 3, 3, 'dulich', '[]', 0, '2022-05-02 17:12:55', '2022-05-02 17:12:55', '2023-05-02 17:12:55'),
('250758d597de9f363fef0698255cb8af9f221e78960d2ab74401e8a01a8820143242c70e77d32e54', 1, 3, 'dulich', '[]', 0, '2022-05-02 17:58:33', '2022-05-02 17:58:33', '2023-05-02 17:58:33'),
('29b6bbea5b5d047dbda239709d17d8382b70cabb7c7e00c21c66a4e2ae7b330880f398784147e227', 1, 3, 'dulich', '[]', 0, '2022-05-02 17:40:06', '2022-05-02 17:40:06', '2023-05-02 17:40:06'),
('2ba155b1c470a8a3f1d15c54d377e7b13d493c7f7ab227affe3091826b99a191aaab5033cbc84908', 3, 3, 'dulich', '[]', 1, '2022-05-10 10:10:51', '2022-05-10 10:10:51', '2023-05-10 10:10:51'),
('304a79e4049a1b5c591cdefb25e849e2809c6519f558e2ec8dd672e56542a5df1494b9210c9a2faf', 3, 3, 'dulich', '[]', 0, '2022-05-02 16:30:25', '2022-05-02 16:30:25', '2023-05-02 16:30:25'),
('3405b926bdab0d2c516e0300fc9fe5d1c83771698377e2c99fdb7b19b1681c6df6945db3ffe6f91b', 1, 3, 'dulich', '[]', 0, '2022-04-27 11:31:24', '2022-04-27 11:31:24', '2023-04-27 11:31:24'),
('35c5d668f5ef7d0a350742595b6bbf24365539e84206095f9b3c9893c8cc31fb9659a395d422b2ba', 1, 3, 'dulich', '[]', 0, '2022-04-28 10:55:21', '2022-04-28 10:55:21', '2023-04-28 10:55:21'),
('367d00d15d880489068131637147853572caaa762250d9b6e3dd34f8b61f4cb3b06404087dbeaa63', 1, 3, 'dulich', '[]', 0, '2022-04-25 15:52:37', '2022-04-25 15:52:37', '2023-04-25 15:52:37'),
('371d863d842920f5e1065ef45e6a9e9fb5a176b0028156b0627c3943074a0baaec57a70966f7c2ba', 17, 3, 'dulich', '[]', 0, '2022-05-22 16:44:09', '2022-05-22 16:44:09', '2023-05-22 16:44:09'),
('3b5004114d26f84d0a4cda86157cc5a11f36a4bcf36bf3a48368de27749fb6e6d1e41198a53d6499', 3, 3, 'dulich', '[]', 1, '2022-05-22 15:07:38', '2022-05-22 15:07:38', '2023-05-22 15:07:38'),
('3f1bb5f73e3c9b618db54b387ca47c5a80ad3ae5a7af5f686899dc31765c1d39583aee833df39d71', 3, 3, 'dulich', '[]', 0, '2022-05-23 15:32:40', '2022-05-23 15:32:40', '2023-05-23 15:32:40'),
('3f6fb1acdc1060f9e52e642a2fe38b4f937d20538bafd4f33ffb4a1fb795ec27871a8150fadd89b9', 1, 3, 'dulich', '[]', 0, '2022-04-29 15:27:54', '2022-04-29 15:27:54', '2023-04-29 15:27:54'),
('43d2e33f17a6cbb7b626985970adf41ff8f3f939d4b5c1ad0397f1665b960bf7e03c0df1712f8bb6', 1, 3, 'dulich', '[]', 0, '2022-04-26 20:37:15', '2022-04-26 20:37:15', '2023-04-26 20:37:15'),
('44174895c200a68d000b393ff44b4bc2326296f9437698f6216e90ec831e4e843d015ba69916826c', 1, 3, 'dulich', '[]', 0, '2022-04-28 15:13:20', '2022-04-28 15:13:20', '2023-04-28 15:13:20'),
('46bcc5c5d3510c711f356d010981f0cef2f10447f3fad5ee45d42a9e654ccaee63bb0078554beaac', 1, 3, 'dulich', '[]', 0, '2022-04-25 16:41:53', '2022-04-25 16:41:53', '2023-04-25 16:41:53'),
('47a162079ff79889a2c36353cb7fb13068f4b6c1b40fd853af92c974b335f97e24f9ed8b7335623a', 1, 3, 'dulich', '[]', 0, '2022-04-27 14:59:59', '2022-04-27 14:59:59', '2023-04-27 14:59:59'),
('4b1bb8e6dfe4f5e373e8ad9f293f71ff0ffef4da47b4f335773bbed6fa6c30411ea5ff7bb70efaf8', 1, 3, 'dulich', '[]', 0, '2022-04-29 10:55:07', '2022-04-29 10:55:07', '2023-04-29 10:55:07'),
('4de56d976b064f83998d43e9abf3d263d773fe0ebb0f4ec2c044d10759dad91b02724fa7b529ec95', 1, 3, 'dulich', '[]', 0, '2022-04-28 11:00:16', '2022-04-28 11:00:16', '2023-04-28 11:00:16'),
('501aae4f5fda5eb7aff4369267b31b513aee3b21090522ffbf9991cf32293711ad5a0fffa166c8c7', 1, 3, 'dulich', '[]', 1, '2022-05-23 15:20:12', '2022-05-23 15:20:12', '2023-05-23 15:20:12'),
('51e76ad13110a6ae94a26e12fcd46788ca929ed2d2f24a1dec8856cdfb4bf4c4958ab1e1c3f90f0f', 1, 3, 'dulich', '[]', 0, '2022-04-27 09:36:25', '2022-04-27 09:36:25', '2023-04-27 09:36:25'),
('557c2895edcc8ab2f7ef5856cb60163b2641ab8e65c2379ea12aba575c8304a45581507d01d54e0a', 1, 3, 'dulich', '[]', 0, '2022-04-28 09:54:11', '2022-04-28 09:54:11', '2023-04-28 09:54:11'),
('56c5f6030d2e3c9e4ab31af8af4d18a52c77734bfbe9f6fd3c0e699dd2f13290a0fe67257337a958', 1, 3, 'dulich', '[]', 1, '2022-05-13 16:54:40', '2022-05-13 16:54:40', '2023-05-13 16:54:40'),
('5749d355d606c19fb6a7785638788f9a9cd23190e4a031064e61cafbf0d5b67f906deef67e73d338', 4, 3, 'dulich', '[]', 0, '2022-05-05 19:38:40', '2022-05-05 19:38:40', '2023-05-05 19:38:40'),
('57532e9ff1a73abf193b2fb4332cef8355b4e28a1c2fd6a86297a980830352cf9e689fbe0517efa3', 1, 3, 'dulich', '[]', 0, '2022-04-27 10:35:09', '2022-04-27 10:35:09', '2023-04-27 10:35:09'),
('5d9068d6f0df0ef765a52c4e15377a5f72475fadc3c428e8bbe9f3c0548a9122e18c5f00cc6056eb', 1, 3, 'dulich', '[]', 0, '2022-05-10 10:55:31', '2022-05-10 10:55:31', '2023-05-10 10:55:31'),
('60933836d73797a11fe22d056b3899f9ba675037ac721568cbea07d52a1d766d3b18e8ab1102770d', 3, 3, 'dulich', '[]', 0, '2022-04-29 18:10:05', '2022-04-29 18:10:05', '2023-04-29 18:10:05'),
('61b856ef91ed0b3f8ed595ce76fa92f491e80778a968afd2e3dfedbd7f0da79c7ad7775408b33418', 1, 3, 'dulich', '[]', 0, '2022-04-28 10:56:25', '2022-04-28 10:56:25', '2023-04-28 10:56:25'),
('633602efda9c2344f876f0bfc916b00be2c2f4d920ac3203469c0c503546b8ec3fe60699499b76b4', 1, 3, 'dulich', '[]', 0, '2022-04-27 09:21:35', '2022-04-27 09:21:35', '2023-04-27 09:21:35'),
('684c94839485b46b33c20ad15f7f7d31690cba654cc14982ceba5c310e91215687b272dbe4ae53be', 1, 3, 'dulich', '[]', 0, '2022-04-27 14:54:43', '2022-04-27 14:54:43', '2023-04-27 14:54:43'),
('69b9f21563079e4a1c6ce320384cd2cb6caa75b76c0d9e8b99ca62be5eaa5736b4ae6e32ed3f6430', 1, 3, 'dulich', '[]', 0, '2022-04-27 15:27:07', '2022-04-27 15:27:07', '2023-04-27 15:27:07'),
('6a171e8b73720cde4b5a9f04837b61b39eabbf109d56c50ee4e30a1170eb2c11e759be4e039f3209', 1, 3, 'dulich', '[]', 0, '2022-04-28 10:01:37', '2022-04-28 10:01:37', '2023-04-28 10:01:37'),
('6a1a79a7348bb5a4ffbbc62252c91cbc625671fc25e1370e6fec698b28b306ae50f599655355442a', 1, 3, 'dulich', '[]', 1, '2022-05-13 09:05:17', '2022-05-13 09:05:17', '2023-05-13 09:05:17'),
('6b7e21cd0fb33717b0f4a6d061a307fc3437c1c48aa9dcec022877bcd39e8c36f1dd0a2899d58216', 1, 3, 'dulich', '[]', 0, '2022-05-19 10:50:26', '2022-05-19 10:50:26', '2023-05-19 10:50:26'),
('6d3511637abe332464fe938b3ffb4928f7cba3e9bc233ef1ff4c979b05e4c07e1668b8183a99d335', 12, 3, 'dulich', '[]', 0, '2022-05-12 16:59:49', '2022-05-12 16:59:49', '2023-05-12 16:59:49'),
('6f2934c3e926167071571b017d5ecfef2ba29d395f232ef5c6a08a0e9087282fb0fc31aa53dbdd0b', 5, 3, 'dulich', '[]', 1, '2022-05-03 15:03:22', '2022-05-03 15:03:22', '2023-05-03 15:03:22'),
('7158f1d6ec0f5ac6987c54dcc1376891074af4636408e36a76bb4ec3fad530efb9eadb22440ce181', 3, 3, 'dulich', '[]', 0, '2022-04-29 18:07:31', '2022-04-29 18:07:31', '2023-04-29 18:07:31'),
('71d75427f9501496a550beccf394ce915a5f6db1dbc1faaf5d4456dd85504c4fcd11675480b89fef', 1, 3, 'dulich', '[]', 0, '2022-04-27 14:16:47', '2022-04-27 14:16:47', '2023-04-27 14:16:47'),
('76ce2c380c005562a87724946ab1af60760cf6126d88bd55c6d3dfe3deb22785f5b5125fd66575f7', 1, 3, 'dulich', '[]', 0, '2022-04-28 11:37:43', '2022-04-28 11:37:43', '2023-04-28 11:37:43'),
('77aa7a1b8f8767449444e74e34ddf0f73e8372c0be825446e37ce6d7e6aa1dc25121fbb22544c2ae', 3, 3, 'dulich', '[]', 0, '2022-05-02 17:12:18', '2022-05-02 17:12:18', '2023-05-02 17:12:18'),
('78afa9ca8ec6180f9630c21b8c2f34cb3d7f8147b0642cd3493e5822ebd06fb191019a135e7afa1b', 1, 3, 'dulich', '[]', 0, '2022-05-10 10:17:24', '2022-05-10 10:17:24', '2023-05-10 10:17:24'),
('794cee2db3a502003eb2f1b18914ee45c56187fcf1c5b738a736d64a45b9cd65df41c5a44f931ac6', 1, 3, 'dulich', '[]', 1, '2022-05-03 20:21:27', '2022-05-03 20:21:27', '2023-05-03 20:21:27'),
('79f1f5a7d294843c530afe5ff8500a65647c1372a291e1a28d609eea063a3e49cbc8ab2e09306602', 1, 3, 'dulich', '[]', 1, '2022-05-09 14:18:48', '2022-05-09 14:18:48', '2023-05-09 14:18:48'),
('7bb9a093e8c0ca0ac0b014164f555611e4fb70b5a0e110ee6fa44599e3b3137186b4f83f941c5983', 1, 3, 'dulich', '[]', 1, '2022-05-13 15:44:59', '2022-05-13 15:44:59', '2023-05-13 15:44:59'),
('7c007c6f38ff8341916ad4debb3e613d45c7f3723b8b9ff8aa9783638f0d1d095001d2f5fa270e34', 3, 3, 'dulich', '[]', 1, '2022-05-12 16:37:24', '2022-05-12 16:37:24', '2023-05-12 16:37:24'),
('7c14ef20febe5780a03cc268727472cc469c86a648c8a8799d6789f0a8a1a7ea4b2020f330a76e45', 1, 3, 'dulich', '[]', 0, '2022-04-29 15:29:07', '2022-04-29 15:29:07', '2023-04-29 15:29:07'),
('7d74a4e480e1ff0f63ba94f15ab8289288d5920b826e5687249f99848482c281fdcabf14375a8acb', 1, 3, 'dulich', '[]', 0, '2022-04-28 10:48:01', '2022-04-28 10:48:01', '2023-04-28 10:48:01'),
('8055c6956089480fb1680b53ff0b9369f9ea22eb68b0dd68be3ead3d77938c28c7fc2ce47f9da297', 1, 3, 'dulich', '[]', 0, '2022-04-29 09:52:42', '2022-04-29 09:52:42', '2023-04-29 09:52:42'),
('8132fd265317c8722c78a2c1d3ddd73abf4a911301a9e46f8fcc502aa6c89a30ef9652a7fe2b23ff', 1, 3, 'dulich', '[]', 0, '2022-04-27 14:53:04', '2022-04-27 14:53:04', '2023-04-27 14:53:04'),
('830df93a81f994f6870b3f92b8973dd2c3a46790ed15c0bf4721aa126b3393be09c6f835c86e4a4e', 1, 3, 'dulich', '[]', 0, '2022-04-27 11:39:57', '2022-04-27 11:39:57', '2023-04-27 11:39:57'),
('83ce6d8ee4bd559aa85a891dfe1b41d5a7a381886d75fb07504357ed48f269b57c5f35b6c9bee6d9', 17, 3, 'dulich', '[]', 0, '2022-05-23 15:16:11', '2022-05-23 15:16:11', '2023-05-23 15:16:11'),
('877a2ed094b182182bdee30ec35398a307741c72bd098c75efb79027dc8bbf5c2765e77315d36a41', 13, 3, 'dulich', '[]', 1, '2022-05-13 17:09:01', '2022-05-13 17:09:01', '2023-05-13 17:09:01'),
('8a02b86c214047575249965c2d83b6528089a1ee3cd843d61991c69d4a1a2edc125f888892e0a001', 3, 3, 'dulich', '[]', 0, '2022-05-02 17:18:20', '2022-05-02 17:18:20', '2023-05-02 17:18:20'),
('8e21ec7aca749cbe97ae91c99cd0b93ce51eaa92f237907f94c845c7f0e27fde25cd797f2a175dba', 1, 3, 'dulich', '[]', 0, '2022-04-29 11:38:39', '2022-04-29 11:38:39', '2023-04-29 11:38:39'),
('8ff4762a47f8c16b371ed5cccec8e89002547c7ab139e11afff39d37faf854fe7efd1c6b84db7f79', 1, 3, 'dulich', '[]', 0, '2022-04-29 17:18:29', '2022-04-29 17:18:29', '2023-04-29 17:18:29'),
('900f0d92d8e978457b6b318b33a1464c0d1cdee176000680c3742b65faaa6bc4f4681d4dd1a64123', 1, 3, 'dulich', '[]', 0, '2022-04-29 09:44:53', '2022-04-29 09:44:53', '2023-04-29 09:44:53'),
('914368ee3e3348b44770eaf3e1ad6269127e3a2013b94cf8efc1d897b0f4cd64ee1693a188573c88', 1, 3, 'dulich', '[]', 0, '2022-04-29 11:40:24', '2022-04-29 11:40:24', '2023-04-29 11:40:24'),
('9a652f6c428807f5ce57ef74f7ae22cd3d6c9086202b15c02441f9bf8dae3b5edad5e93986e77f98', 1, 3, 'dulich', '[]', 0, '2022-05-02 17:31:17', '2022-05-02 17:31:17', '2023-05-02 17:31:17'),
('9d6b03a69d389edfd08544eb6679f5cd180553e18af0bd74b51c90d441b53ee04bd4f654d9052d5a', 1, 3, 'dulich', '[]', 1, '2022-05-02 18:11:30', '2022-05-02 18:11:30', '2023-05-02 18:11:30'),
('a16253a6aa8db480a69dee23ea02e8637ad862de41ccfb1d4dfde2675d74ab1d329db6a1ceb3c1e6', 1, 3, 'dulich', '[]', 0, '2022-04-28 11:36:53', '2022-04-28 11:36:53', '2023-04-28 11:36:53'),
('a2c7f4e06b33a2ee6d1fd9c6cee613e747ea7c206ad3bc4680bf60eccedd7845eaaa60d59f51fbd3', 1, 3, 'dulich', '[]', 0, '2022-04-27 09:34:38', '2022-04-27 09:34:38', '2023-04-27 09:34:38'),
('a44bd134f10afde1625f76f955fe457715cd3dc376757cfb33f739f059e70ec63a661f1826743ae9', 1, 3, 'dulich', '[]', 0, '2022-05-04 22:31:34', '2022-05-04 22:31:34', '2023-05-04 22:31:34'),
('a459d37dd09261eb05c1f3375bed194717cfe3cc1cccdcbba81d66a52493df4deb0383b8aa6f791a', 1, 3, 'dulich', '[]', 0, '2022-04-25 16:00:03', '2022-04-25 16:00:03', '2023-04-25 16:00:03'),
('a59ea8c8ff6cab395efb2f62d650a20b5f27de0048149a9f228b2d4b20a699585bb557ccbb03f6ee', 1, 3, 'dulich', '[]', 0, '2022-04-29 15:22:46', '2022-04-29 15:22:46', '2023-04-29 15:22:46'),
('a677db6e60440794a194c05be8235b7e03421697c8076fa0a67081e773da9a5778a7fbe862af9cb9', 1, 3, 'dulich', '[]', 1, '2022-05-03 22:45:47', '2022-05-03 22:45:47', '2023-05-03 22:45:47'),
('a9e5963fc37a4cf7119bf414b2c589996f81facb81bcc01dcf5101da1ea9d9fdb705947c3cd97f20', 1, 3, 'dulich', '[]', 0, '2022-04-25 15:44:33', '2022-04-25 15:44:33', '2023-04-25 15:44:33'),
('acc24b88ce440b286c4ecb692c774e52e1f8828ddfc5a74117173b0e5d9256154ac3879798f50dee', 16, 3, 'dulich', '[]', 1, '2022-05-22 16:42:09', '2022-05-22 16:42:09', '2023-05-22 16:42:09'),
('ad284c2b918ee79b066dc666cd1ae092befce41273b4e88f962540c1b980a178419eb05a00b38ec7', 1, 3, 'dulich', '[]', 0, '2022-05-12 10:05:58', '2022-05-12 10:05:58', '2023-05-12 10:05:58'),
('af9d07c59e5ed8fedf0cc1cb2d99e4f92f958cbd52321d8fee4332d5201f50e8e4abfc457f08f2a0', 3, 3, 'dulich', '[]', 1, '2022-05-03 22:40:52', '2022-05-03 22:40:52', '2023-05-03 22:40:52'),
('b5396569ef536003f7707ea9aa8d1f6e394a3c02564929176860dacc30a173decaa2016105f463a1', 1, 3, 'dulich', '[]', 0, '2022-04-21 23:46:13', '2022-04-21 23:46:13', '2023-04-21 23:46:13'),
('b9efca6edf3a969a75830b87bc4676c24d5a52858792c849273d52be6bab0fd93b35202d77e40a4b', 1, 3, 'dulich', '[]', 0, '2022-04-26 21:16:10', '2022-04-26 21:16:10', '2023-04-26 21:16:10'),
('bbb6a2367786d96868bdcd763f2ff0e39102745922293be3e5b0f792521b4ecad8a7cb5c0475a2a3', 1, 3, 'dulich', '[]', 0, '2022-04-25 15:45:32', '2022-04-25 15:45:32', '2023-04-25 15:45:32'),
('be1b8afae80a9e9ff93fe02a13f480298f8d32ab089c21f9dffcd5c38c625ee32c2cbf39e67ed701', 3, 3, 'dulich', '[]', 1, '2022-05-12 16:56:30', '2022-05-12 16:56:30', '2023-05-12 16:56:30'),
('c0df3f77f2e3465a327dd3f8db20195ab830262a19996f3508497e1835443647b72aac7ec8ebb35d', 1, 3, 'dulich', '[]', 0, '2022-04-27 10:29:24', '2022-04-27 10:29:24', '2023-04-27 10:29:24'),
('c1a654b042e11f1053bd9a4d1fb39fe158ff9af63147e97dc17c7125a847caca482747b6c9f05002', 1, 3, 'dulich', '[]', 1, '2022-05-02 17:59:26', '2022-05-02 17:59:26', '2023-05-02 17:59:26'),
('c48a2cff80b88b441e217581ca2093a57aea01c3b6c72f660a0d6c09dd205c92a377804d9fc08a5d', 1, 3, 'dulich', '[]', 1, '2022-05-17 13:07:21', '2022-05-17 13:07:21', '2023-05-17 13:07:21'),
('cad0211b95e8d4662f8b7c70dc9691f57a786e50ecff568c5f286acdfa5d740a246850f5f022692b', 14, 3, 'dulich', '[]', 0, '2022-05-22 09:57:47', '2022-05-22 09:57:47', '2023-05-22 09:57:47'),
('d0539f7b6b313a76190bdb5c25425a4fbe1802ea52bb63457bf93ccd7a1762bd52aac91af634ca5b', 1, 3, 'dulich', '[]', 1, '2022-05-09 14:27:53', '2022-05-09 14:27:53', '2023-05-09 14:27:53'),
('d36bd8da474aa3fc8b6ec14b05d8bd40b8a553342d131a4bde38a7c602bf83bc4aa35da3458bf77b', 3, 3, 'dulich', '[]', 0, '2022-05-02 17:25:15', '2022-05-02 17:25:15', '2023-05-02 17:25:15'),
('d7a5e08affc6454d7854063c25ecff3b66f99bb92fcb0497dde00f999a0fca769d233b88871cc361', 3, 3, 'dulich', '[]', 1, '2022-05-09 09:14:39', '2022-05-09 09:14:39', '2023-05-09 09:14:39'),
('d7ab33fffdf1aa9cb33cf1304135492911aed4075abfe7783ee6a335a1719fdbd810e2383c2cfee5', 1, 3, 'dulich', '[]', 0, '2022-04-27 09:23:01', '2022-04-27 09:23:01', '2023-04-27 09:23:01'),
('dbc1ac7aa9767ae96d194ef1cdb7ab3c363b3cff40437897f74a24b9565e95a603691fc6d17634b0', 1, 3, 'dulich', '[]', 0, '2022-05-14 16:03:47', '2022-05-14 16:03:47', '2023-05-14 16:03:47'),
('dc529f4610abac9c00ca953d0da4c559e3001dde5e987266fc25bf7a9452d70504b2be6dee7b254e', 1, 3, 'dulich', '[]', 0, '2022-04-29 17:53:13', '2022-04-29 17:53:13', '2023-04-29 17:53:13'),
('df85f706458609b32a442d9eb890468c15f7b6a9446f86afaf03ef8e8287b9f1ee5577f358c631e0', 1, 3, 'dulich', '[]', 0, '2022-04-29 11:25:58', '2022-04-29 11:25:58', '2023-04-29 11:25:58'),
('e25a75bb8c24a40e5811823baf6e464aab741397d298a76e30ec377ed8d57851f91e6425adc3db16', 1, 3, 'dulich', '[]', 0, '2022-04-29 15:34:00', '2022-04-29 15:34:00', '2023-04-29 15:34:00'),
('e5cb121d053abd4c8b6a63fcff4a8b4feac5135ac4755fd60d7e2dff88206ef6c9d21066ff823a75', 1, 3, 'dulich', '[]', 0, '2022-04-27 01:12:46', '2022-04-27 01:12:46', '2023-04-27 01:12:46'),
('efb8f6d9ff6ce7232d7447f23492f1694d7c578d54e81d5b514fc13e0e653fd2d4922ac5d7c7be07', 1, 3, 'dulich', '[]', 0, '2022-05-02 17:31:36', '2022-05-02 17:31:36', '2023-05-02 17:31:36'),
('f0af8688ac84b27cccede551d6418224fbd804baf596c10cb45e8bd138b27f447c3d84d705a7f351', 1, 3, 'dulich', '[]', 0, '2022-04-28 14:59:48', '2022-04-28 14:59:48', '2023-04-28 14:59:48'),
('f3b7137718acebbdd6f6980e86657ec3510d33d6afa03e1b6dd97acafbd5fe87c0d77571200a2757', 3, 3, 'dulich', '[]', 1, '2022-05-13 16:48:46', '2022-05-13 16:48:46', '2023-05-13 16:48:46'),
('f443819ce5124570e82474f917fbe0495e33ea1207a40257e21e41057f185b77a861e20913a6318f', 1, 3, 'dulich', '[]', 0, '2022-04-28 10:46:01', '2022-04-28 10:46:01', '2023-04-28 10:46:01'),
('f5af72b9d7063797aa13226809cff8ca4646d612ad67bedbb9cd0c167279da2c53ceb52343e36568', 1, 3, 'dulich', '[]', 0, '2022-04-29 10:05:41', '2022-04-29 10:05:41', '2023-04-29 10:05:41'),
('f80791aee88cce1535efe35c96d2079f6517ceb96106c1a03f124b052a669eab0eea8b533dae6aa1', 3, 3, 'dulich', '[]', 0, '2022-04-29 18:07:59', '2022-04-29 18:07:59', '2023-04-29 18:07:59'),
('f8bd5b3333590f111ba99a99569c4c4c47230e35c8b8ca53bde36d65b4b7001ad73c96efbadeab1c', 3, 3, 'dulich', '[]', 1, '2022-05-02 17:27:34', '2022-05-02 17:27:34', '2023-05-02 17:27:34'),
('f936f0860b4e8aca32293ee08aab05967727b7581bbe38c6fc7162f692b6c5ac0c9a8d641c1d8a15', 1, 3, 'dulich', '[]', 1, '2022-05-02 18:17:52', '2022-05-02 18:17:52', '2023-05-02 18:17:52'),
('ff1adf0e95c911cdf3b425286cabd125a0da32df67e8852c71e9ed6798901f64c56ea355a781216d', 3, 3, 'dulich', '[]', 0, '2022-05-11 23:38:44', '2022-05-11 23:38:44', '2023-05-11 23:38:44'),
('ffe6111af180f8b000086abf7d74027f1fd036cb753a14b8c9ecd5a283346263a4c3292bec495886', 1, 3, 'dulich', '[]', 0, '2022-04-29 14:41:22', '2022-04-29 14:41:22', '2023-04-29 14:41:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'dulich Personal Access Client', '5UT2RqIBFw6nT0hD4c5P0ncEA85DGCOsMOo6T3OD', NULL, 'http://localhost', 1, 0, 0, '2022-04-21 23:43:12', '2022-04-21 23:43:12'),
(2, NULL, 'dulich Password Grant Client', 'Hjt7QM5i8ZefBrORJi2dKbz9OLLAYHEZGgQ1Vljd', 'users', 'http://localhost', 0, 1, 0, '2022-04-21 23:43:12', '2022-04-21 23:43:12'),
(3, NULL, 'dulich Personal Access Client', 'ABMUCGTNWtSMzCyADZlRTRTGdn8CMBXdS10JZGYf', NULL, 'http://localhost', 1, 0, 0, '2022-04-21 23:46:07', '2022-04-21 23:46:07'),
(4, NULL, 'dulich Password Grant Client', 'nyvTiCaZwHt2fEOoceEHWbGrMrK2ulaShNAqs0Fs', 'users', 'http://localhost', 0, 1, 0, '2022-04-21 23:46:07', '2022-04-21 23:46:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-04-21 23:43:12', '2022-04-21 23:43:12'),
(2, 3, '2022-04-21 23:46:07', '2022-04-21 23:46:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`, `type`) VALUES
('dangvanlong27@gmail.com', '$2y$10$d8X9HlTstg/TyayCcf6H3.j2p9GR6BlZExZkfAGtfsED6NO1CsoLG', '2022-04-21 23:41:02', 'verify'),
('bossrong275@gmail.com', '$2y$10$zt1s1HbdCsIgi7jlbNYlmu5WObImH1TbNam4jtDQEunbzRw.CtHWy', '2022-04-22 00:54:58', 'verify'),
('truongvietluy.it@gmail.com', '$2y$10$JxMXmmTNg43Yr5YksYKjEeX3XeoE.t3n7ZptWyfhgTFZ.wHbrJ0u.', '2022-04-29 18:07:05', 'verify'),
('bossrong275@gmail.com', '$2y$10$wqmb0mpQOUKzaecRaXvy.eWR1ru6OLBbGmhfO5sLE.ivRB4N3qhni', '2022-05-02 21:39:34', 'verify'),
('luytruong0811.ld@gmail.com', '$2y$10$v1VmA7JtX6lZNjQa.PRns.oxJ6RbJwsNneotiNjT1C6ucRZDqZTAe', '2022-05-03 15:02:39', 'verify'),
('luytruong1810.htl@gmail.com', '$2y$10$OqRzQEmVm6Yvn8CWl14y3OftNoj4eLKrlMmRgp.DAlug0YvvbXRVO', '2022-05-03 15:07:04', 'verify'),
('18T1021176@husc.edu.vn', '$2y$10$1kYi51K9jHzFg9g9ptnxTOaplgeQ3AgknReAeOI5Fh.LU.sFLG4nS', '2022-05-03 15:10:17', 'verify'),
('luytruong0811.ld@gmail.com', '$2y$10$utZZyMZAZtZc.kBXo91ph.S/OighMPxkMe.9mI2wy0URKJZmFDYcm', '2022-05-04 09:42:13', 'verify'),
('18T1021176@husc.edu.vn', '$2y$10$62OXj7iLdDh6zWRt2v/sH.BpkuvlGugzpBHUaDO8l0o5f2Cq0K0d2', '2022-05-04 09:46:01', 'verify'),
('luytruong0811.ld@gmail.com', '$2y$10$H5E4p2jxMsW0gFU4arfOvuzEh0uVXsHN80UMbswTPRTUPXA9emFKu', '2022-05-04 09:55:27', 'verify'),
('luytruong0811.ld@gmail.com', '$2y$10$ACiEBQcsdpJ8EFwoHpagr.1.HlrVP0vaz0WPXj5os90n/sxdc1RZa', '2022-05-04 09:59:42', 'verify'),
('thuychau10112000@gmail.com', '$2y$10$BeCwkfEMOYYur4c2momK5OpzgHVmRAY22MzCqC8ROhUyMkSRtgOiS', '2022-05-12 16:57:14', 'verify'),
('luytruong1810.htl@gmail.com', '$2y$10$aFnxcdCObYugog/NtzFKw.oujGdEBqgC.5/RIeEGp7YfaZn36687.', '2022-05-13 17:07:58', 'verify'),
('doanhtruong1604@gmail.com', '$2y$10$Q7deefUiOpTyiuPdNM6WLOo/7gS1sElcq6dwjq6C/zG7i0jD1lWKq', '2022-05-22 09:57:09', 'verify'),
('18T1021176@husc.edu.vn', '$2y$10$mMVtkJaUN1JSt1JoLtZ92OLZjcKqcOgd2nN86zP6e5i2DvOiA4Vre', '2022-05-22 14:53:15', 'verify'),
('nguyenlethanhtuyen.it@gmail.com', '$2y$10$CqN1mgnUigX/QEudzC8ZfeRzci.7/AxRRxlq7TtoS3/puL102z3Qi', '2022-05-22 16:41:47', 'verify'),
('lenguyenminhthu.0902@gmail.com', '$2y$10$ZMxstmIv2BW4j8XAg9tEsOrAc6M50aWvnTstpV7MlFu/GyPCnk3ki', '2022-05-22 16:43:41', 'verify');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `description`, `address`, `_long`, `_lat`, `is_seen`, `created_at`, `updated_at`, `title`) VALUES
(26, 3, 'Đây là một địa điểm đẹp. Thật vui vì đã đến đây.', 'Thừa Thiên Huế', '10202.12', '12132155', 0, '2022-05-13 16:49:23', '2022-05-13 16:49:23', 'du lich hue'),
(27, 1, 'Đây là một địa điểm đáng để đến một lần trong đời.', 'Hà Nội', '10202.12', '12132155', 0, '2022-05-13 17:01:17', '2022-05-13 17:01:17', 'du lich ha noi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `remember_posts`
--

CREATE TABLE `remember_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `remember_posts`
--

INSERT INTO `remember_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`, `status`) VALUES
(7, 13, 27, '2022-05-14 02:00:14', '2022-05-14 02:00:14', 'remember'),
(8, 1, 26, '2022-05-14 14:15:15', '2022-05-17 16:10:20', 'unremember'),
(9, 1, 27, '2022-05-17 15:26:30', '2022-05-19 10:55:06', 'remember');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `folder_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `social_id`, `social_type`, `remember_token`, `created_at`, `updated_at`, `folder_id`) VALUES
(1, 'Long Đặng', 'https://dulich-be.stdiohue.com/storage/upload/16_1652891011_Screenshot_2022-03-03-09-44-46-65_92b64b2a7aa6eb3771ed6e18d0029815.jpg', 'dangvanlong27@gmail.com', NULL, '$2y$10$h3KHaHdupXlhorB3ttGwLOXoMv3X.61x.EvyHTx02XJnY7uY/DEH2', NULL, NULL, NULL, '2022-04-21 23:41:02', '2022-05-18 23:23:31', '1Qg-eAKnDtV26h9MDn0yArG4t-oj3Ic6M'),
(3, 'Minz', 'https://dulich-be.stdiohue.com/storage/upload/90_1652628322_FB_IMG_1649088052710.jpg', 'truongvietluy.it@gmail.com', NULL, '$2y$10$L0QUXPgyTmgRDetRYfMvbeGsDONkH9mw8.RXeAHl4mkaaVhNLkpEu', NULL, NULL, NULL, '2022-04-29 18:07:05', '2022-05-15 22:25:22', '156QriepCBC91avrOh0cKut5cTbBOpe-r'),
(4, 'dang long', 'https://dulich-be.stdiohue.com/images/avatar_default.jpg', 'bossrong275@gmail.com', NULL, '$2y$10$ctHUluvoxyW7felL2OPZxuZKReQWXPfpuycYJa9BGOp5Pt/1VQsYO', NULL, NULL, NULL, '2022-05-02 21:39:34', '2022-05-05 23:08:14', '1culY9oNnQ3f7qWCyHWCM4T_gZJKx_Ztk'),
(11, 'Minz', 'https://dulich-be.stdiohue.com/images/avatar_default.jpg', 'luytruong0811.ld@gmail.com', NULL, '$2y$10$p3bGIIt3I2LjrZP.LNe7j.Osoua7NeMQrrk4uDn4EdJX2JtNcrFFS', NULL, NULL, NULL, '2022-05-04 09:59:42', '2022-05-05 23:08:15', '1ZsY37Tc4SgAtvZHtKSdkgwZ5ahbePBni'),
(12, 'Hy', 'https://dulich-be.stdiohue.com/storage/upload/29_1652349733_FB_IMG_1652187088752.jpg', 'thuychau10112000@gmail.com', NULL, '$2y$10$MaqZ5.RPKKkn2uaCuS2PGeR22Xaz6t5vk2tZNEmU5URhas.X39jbe', NULL, NULL, NULL, '2022-05-12 16:57:13', '2022-05-12 17:02:13', '1DG3IP_fxVH-BeiY6bwUUyX0U492Jdk7X'),
(13, 'Lũy Trương', 'https://dulich-be.stdiohue.com/storage/upload/75_1652436621_Screen Shot 2022-05-13 at 12.07.48.png', 'luytruong1810.htl@gmail.com', NULL, '$2y$10$pr98/j8ay7EfTJa5nMTT5OGkaDxkRVr06faCXmOVWGH7uZrIX/nvS', NULL, NULL, NULL, '2022-05-13 17:07:58', '2022-05-13 17:10:21', '1ju0uqBhzU6RxqZZL-3FPouoJXrJkoBRN'),
(14, 'Trương Nguyễn Yến Doanh', 'https://dulich-be.stdiohue.com/storage/upload/84_1653188328_IMG20211105192427.jpg', 'doanhtruong1604@gmail.com', NULL, '$2y$10$hN8tY7bTnnstiu2n2RPdjulkttskgo9KSEUk3GqpIpeWeSjU7yojC', NULL, NULL, NULL, '2022-05-22 09:57:09', '2022-05-22 09:58:48', '1MNup2e_wdk0KTOK9USFxUT2NOxk_iNxZ'),
(15, 'Minz Trương', 'https://dulich-be.stdiohue.com/images/avatar_default.jpg', '18T1021176@husc.edu.vn', NULL, '$2y$10$c/CfnhLwcdOnhahczCFtsOGIEcCovsmpVqrUJzoYmlAYJu5GjEbFm', NULL, NULL, NULL, '2022-05-22 14:53:15', '2022-05-22 14:53:20', '1KGH529jmhYJ2vbCrv_oNFROWyy8okWvE'),
(16, 'minz', 'https://dulich-be.stdiohue.com/images/avatar_default.jpg', 'nguyenlethanhtuyen.it@gmail.com', NULL, '$2y$10$qHcjBalMfRYpCZtwfGTlDO/2dojxgX2xUvqRXYCYLOnwwW.7PBBfW', NULL, NULL, NULL, '2022-05-22 16:41:47', '2022-05-22 16:41:54', '1CsHz_zhWrjJN2xnrGDWK42ivULgdTIve'),
(17, 'minthu', 'https://dulich-be.stdiohue.com/storage/upload/19_1653212685_FB_IMG_1653189799286.jpg', 'lenguyenminhthu.0902@gmail.com', NULL, '$2y$10$HaEy2ViKnB8gV/wFSlzLlOYL3sCtU33CYdJo2hzDsz7fzm5iyj3Wm', NULL, NULL, NULL, '2022-05-22 16:43:41', '2022-05-22 16:44:45', '1LY8nsJn8th2UPqXlXb1bwmJKbtJJjID0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follows_user_id_foreign` (`user_id`),
  ADD KEY `follows_follow_user_id_foreign` (`follow_user_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `save_like_posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `remember_posts`
--
ALTER TABLE `remember_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remember_posts_user_id_foreign` (`user_id`),
  ADD KEY `remember_posts_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `follows`
--
ALTER TABLE `follows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `remember_posts`
--
ALTER TABLE `remember_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_follow_user_id_foreign` FOREIGN KEY (`follow_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `save_like_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `remember_posts`
--
ALTER TABLE `remember_posts`
  ADD CONSTRAINT `remember_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `remember_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
