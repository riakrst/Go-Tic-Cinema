-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 07:36 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goticcinema_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add film', 7, 'add_film'),
(26, 'Can change film', 7, 'change_film'),
(27, 'Can delete film', 7, 'delete_film'),
(28, 'Can view film', 7, 'view_film'),
(29, 'Can add genre', 8, 'add_genre'),
(30, 'Can change genre', 8, 'change_genre'),
(31, 'Can delete genre', 8, 'delete_genre'),
(32, 'Can view genre', 8, 'view_genre'),
(33, 'Can add jadwal', 9, 'add_jadwal'),
(34, 'Can change jadwal', 9, 'change_jadwal'),
(35, 'Can delete jadwal', 9, 'delete_jadwal'),
(36, 'Can view jadwal', 9, 'view_jadwal'),
(37, 'Can add tiket', 10, 'add_tiket'),
(38, 'Can change tiket', 10, 'change_tiket'),
(39, 'Can delete tiket', 10, 'delete_tiket'),
(40, 'Can view tiket', 10, 'view_tiket'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$NVzFLehLzPQUDYTZez0opz$zZyJ6SJzUYrkg0bUrxrhRCzQaOTuTUsZNwyftrltqm8=', '2023-06-07 04:37:13.076301', 1, 'superadmin', '', '', 'super@admin.com', 1, 1, '2023-06-06 12:32:17.891862'),
(2, 'pbkdf2_sha256$390000$878Fl6IJfgQkzHFMNInt1f$KKfI3DeB2+a60XncHDTm+eNzR63ngPETzT6AzHYmWTA=', '2023-06-07 04:37:57.033868', 0, 'riakristi', 'Ria', 'Kristi', 'riakristi@gmail.com', 0, 1, '2023-06-06 12:33:49.400949');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-06 12:59:06.464250', '1', 'Arsip', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-06-06 12:59:16.923039', '2', 'Dokumenter', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-06-06 12:59:29.933258', '3', 'Fiksi', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-06-06 13:01:41.398786', '1', 'AMARTA GADIS DAN AIR', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-06-06 13:02:45.307678', '2', 'Bali', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-06-06 13:04:41.087956', '3', 'Di Kaliurang', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-06-06 13:05:08.144694', '4', 'Ibu Untuk Bumi', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-06-06 13:05:36.120585', '4', 'Ibu Untuk Bumi', 2, '[{\"changed\": {\"fields\": [\"Durasi\", \"Deskripsi\"]}}]', 7, 1),
(9, '2023-06-06 13:06:32.287315', '5', 'Kembalilah Dengan Tenang', 1, '[{\"added\": {}}]', 7, 1),
(10, '2023-06-06 13:08:00.777283', '6', 'Marganing Gesang', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-06-06 13:09:06.352965', '7', 'Portal Pandemi', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-06-06 13:09:48.684968', '8', 'Sanaboedaja 1935', 1, '[{\"added\": {}}]', 7, 1),
(13, '2023-06-06 13:15:36.705212', '1', 'AMARTA GADIS DAN AIR', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(14, '2023-06-06 13:16:10.334396', '2', 'BALI', 2, '[{\"changed\": {\"fields\": [\"Judul\", \"Cover\"]}}]', 7, 1),
(15, '2023-06-06 13:19:12.454114', '3', 'Di Kaliurang', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(16, '2023-06-06 13:19:19.622974', '1', 'Amarta Gadis Dan Air', 2, '[{\"changed\": {\"fields\": [\"Judul\"]}}]', 7, 1),
(17, '2023-06-06 13:19:25.546007', '2', 'Bali', 2, '[{\"changed\": {\"fields\": [\"Judul\"]}}]', 7, 1),
(18, '2023-06-06 13:19:35.818036', '4', 'Ibu Untuk Bumi', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(19, '2023-06-06 13:19:54.379561', '5', 'Kembalilah Dengan Tenang', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(20, '2023-06-06 13:20:04.923019', '6', 'Marganing Gesang', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(21, '2023-06-06 13:20:16.405766', '7', 'Portal Pandemi', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(22, '2023-06-06 13:20:33.520238', '8', 'Sanaboedaja 1935', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(23, '2023-06-06 13:21:16.316678', '1', 'Jadwal object (1)', 1, '[{\"added\": {}}]', 9, 1),
(24, '2023-06-06 13:21:36.229617', '2', 'Jadwal object (2)', 1, '[{\"added\": {}}]', 9, 1),
(25, '2023-06-06 13:21:57.989109', '2', 'Jadwal object (2)', 2, '[{\"changed\": {\"fields\": [\"Jam tayang\"]}}]', 9, 1),
(26, '2023-06-06 13:22:28.896679', '3', 'Jadwal object (3)', 1, '[{\"added\": {}}]', 9, 1),
(27, '2023-06-06 13:24:06.879247', '4', 'Jadwal object (4)', 1, '[{\"added\": {}}]', 9, 1),
(28, '2023-06-06 13:24:34.092898', '5', 'Jadwal object (5)', 1, '[{\"added\": {}}]', 9, 1),
(29, '2023-06-06 13:25:01.363539', '6', 'Jadwal object (6)', 1, '[{\"added\": {}}]', 9, 1),
(30, '2023-06-06 13:25:36.603256', '7', 'Jadwal object (7)', 1, '[{\"added\": {}}]', 9, 1),
(31, '2023-06-06 13:25:59.204589', '8', 'Jadwal object (8)', 1, '[{\"added\": {}}]', 9, 1),
(32, '2023-06-06 13:33:33.638049', '1', 'Amarta Gadis Dan Air', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(33, '2023-06-06 13:35:27.176672', '2', 'Bali', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(34, '2023-06-06 13:35:39.117704', '3', 'Di Kaliurang', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(35, '2023-06-06 13:35:53.699862', '4', 'Ibu Untuk Bumi', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(36, '2023-06-06 13:36:07.536267', '5', 'Kembalilah Dengan Tenang', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(37, '2023-06-06 13:36:28.468415', '6', 'Marganing Gesang', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(38, '2023-06-06 13:36:43.625973', '7', 'Portal Pandemi', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(39, '2023-06-06 13:37:03.058138', '8', 'Sanaboedaja 1935', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(40, '2023-06-06 13:50:15.834477', '1', 'Amarta Gadis Dan Air', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(41, '2023-06-06 13:50:57.768934', '1', 'Amarta Gadis Dan Air', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(42, '2023-06-06 13:51:12.053051', '2', 'Bali', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(43, '2023-06-06 13:51:58.560129', '3', 'Di Kaliurang', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(44, '2023-06-06 13:52:10.039324', '4', 'Ibu Untuk Bumi', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(45, '2023-06-06 13:52:22.049844', '5', 'Kembalilah Dengan Tenang', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(46, '2023-06-06 13:52:35.539681', '6', 'Marganing Gesang', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(47, '2023-06-06 13:52:51.276991', '7', 'Portal Pandemi', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(48, '2023-06-06 13:53:19.306074', '8', 'Sanaboedaja 1935', 2, '[{\"changed\": {\"fields\": [\"Cover\"]}}]', 7, 1),
(49, '2023-06-06 15:04:14.862044', '9', 'Dunia Maya', 1, '[{\"added\": {}}]', 7, 1),
(50, '2023-06-07 03:34:13.257405', '1', 'Tiket object (1)', 1, '[{\"added\": {}}]', 10, 1),
(51, '2023-06-07 03:34:27.157751', '2', 'Tiket object (2)', 1, '[{\"added\": {}}]', 10, 1),
(52, '2023-06-07 04:34:56.124109', '3', 'Tiket object (3)', 1, '[{\"added\": {}}]', 10, 1),
(53, '2023-06-07 04:35:11.857688', '4', 'Tiket object (4)', 1, '[{\"added\": {}}]', 10, 1),
(54, '2023-06-07 04:35:27.155652', '5', 'Tiket object (5)', 1, '[{\"added\": {}}]', 10, 1),
(55, '2023-06-07 04:35:39.513704', '6', 'Tiket object (6)', 1, '[{\"added\": {}}]', 10, 1),
(56, '2023-06-07 04:35:57.308671', '7', 'Tiket object (7)', 1, '[{\"added\": {}}]', 10, 1),
(57, '2023-06-07 04:36:17.941671', '8', 'Tiket object (8)', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'goticapp', 'film'),
(8, 'goticapp', 'genre'),
(9, 'goticapp', 'jadwal'),
(11, 'goticapp', 'order'),
(10, 'goticapp', 'tiket'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-06 12:30:53.682476'),
(2, 'auth', '0001_initial', '2023-06-06 12:30:54.812473'),
(3, 'admin', '0001_initial', '2023-06-06 12:30:55.121473'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-06 12:30:55.154485'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-06 12:30:55.194480'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-06 12:30:55.382485'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-06 12:30:55.534479'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-06 12:30:55.606481'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-06 12:30:55.637477'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-06 12:30:55.805476'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-06 12:30:55.815479'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-06 12:30:55.854478'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-06 12:30:55.964472'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-06 12:30:56.141478'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-06 12:30:56.230476'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-06 12:30:56.271478'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-06 12:30:56.381479'),
(18, 'goticapp', '0001_initial', '2023-06-06 12:30:57.291119'),
(19, 'sessions', '0001_initial', '2023-06-06 12:30:57.411124');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gp0vwzgasfr7xqzz5xkn0xuo7v9zeb7y', '.eJxVjDsOAiEUAO9CbQiPP5b2ewby-MmqgWTZrYx3NyRbaDszmTfxeOzVHyNvfk3kSji5_LKA8ZnbFOmB7d5p7G3f1kBnQk876NJTft3O9m9QcdS5LahQMGOMAxARolUJUAqhrYSiQWtbWOE82OxyLEwIp4tkJgFnQYVIPl-8MjcK:1q6kvl:905pWEoJddspv1xbLaSDlLUWO-j6lN1lJDun57yXRaI', '2023-06-21 04:37:57.040868'),
('smzsti1l0gt3wfusec714v1z9ipsiurj', '.eJxVjEEOwiAQRe_C2hAIA-24dO8ZyDADUjU0Ke3KeHdt0oVu_3vvv1Skba1x63mJk6izsur0uyXiR247kDu126x5busyJb0r-qBdX2fJz8vh_h1U6vVbFxBm8QMCQvDCYyZyzpIrgJSM8QNAssEhCoEU8mMQBzmYgsAQknp_APFxOA4:1q6kv3:jaAB6W6nBOzJ25pWfO8icDPYaZFq0M13akZU8vIw-ro', '2023-06-21 04:37:13.082295'),
('w8fd6qqahbiiyjmvahcr5kjml4xm1zns', '.eJxVjEEOwiAQRe_C2hAIA-24dO8ZyDADUjU0Ke3KeHdt0oVu_3vvv1Skba1x63mJk6izsur0uyXiR247kDu126x5busyJb0r-qBdX2fJz8vh_h1U6vVbFxBm8QMCQvDCYyZyzpIrgJSM8QNAssEhCoEU8mMQBzmYgsAQknp_APFxOA4:1q6WH0:6iRrzL2IeVI902r7AhHoKhQHl_ccZO6jRqQyjJN181E', '2023-06-20 12:58:54.687161');

-- --------------------------------------------------------

--
-- Table structure for table `goticapp_film`
--

CREATE TABLE `goticapp_film` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `durasi` varchar(50) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `genre_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goticapp_film`
--

INSERT INTO `goticapp_film` (`id`, `judul`, `cover`, `durasi`, `deskripsi`, `genre_id`) VALUES
(1, 'Amarta Gadis Dan Air', 'cover/AMARTA_GADIS_DAN_AIR.jpg', '24 Menit', 'Seorang gadis berusaha menyelamatkan sang Dewi Air agar bisa lepas dari krisis air yang terjadi akibat ulah manusia.', 3),
(2, 'Bali', 'cover/BALI.jpg', '18 Menit', 'Arsip video dokumentasi hitam putih dan tidak bersuara, tentang lanskap budaya dan kegiatan sosial di Bali pada tahun 1937.', 1),
(3, 'Di Kaliurang', 'cover/DI_KALIURANG.jpg', '24 Menit', 'Dokumenter tentang tempat-tempat berse- jarah di Kaliurang yang mulai dilupakan.', 2),
(4, 'Ibu Untuk Bumi', 'cover/IBU_UNTUK_BUMI.jpg', '26 Menit', 'Dokumenter pendek yang berbicara ten- tang sampah dan bagaimana cara beragam kelas ekonomi dalam menghasilkan dan menanggulanginya.', 2),
(5, 'Kembalilah Dengan Tenang', 'cover/KEMBALILAH_DENGAN_TENANG.jpg', '26 Menit', 'Sulitnya mencari tanah makam, membuat Santoso dan Wati kebingungan saat hendak menguburkan anak semata wayangnya.', 3),
(6, 'Marganing Gesang', 'cover/MARGANING_GESANG.jpg', '29 Menit', 'Potongan kehidupan dalang muda di zaman modern. Dalang menjadi profesi yang lambat laun mulai ditinggalkan, menjadi semakin tertinggal dengan adanya pandemi Covid-19.', 2),
(7, 'Portal Pandemi', 'cover/PORTAL_PANDEMI.jpg', '17 Menit', 'Pandemi Covid-19 menggerakkan sekum- pulan bapak-bapak untuk membuat sebuah portal. Tanpa pikir panjang, mereka dengan ketat menjaga portal tersebut hingga lupa dengan apa yang sejatinya harus dijaga.', 3),
(8, 'Sanaboedaja 1935', 'cover/SANABOEDAJA_1935.jpg', '18 Menit', 'Dokumenter profil Museum Sonobudoyo yang menceritakan tentang awal mula ber- dirinya museum tersebut.', 1),
(9, 'Dunia Maya', 'cover/AMARTA_GADIS_DAN_AIR_uKbdVb8.jpg', '24 Menit', 'Diperlukan waktu bermiliar-miliar tahun untuk menciptakan seorang manusia.Dan diperlukan hanya beberapa detik untuk mati. Di Pulau Taveuni, Fiji, sejumlah orang tanpa sengaja berkumpul. Setiap dari mereka diam-diam menyimpan luka di hati.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `goticapp_genre`
--

CREATE TABLE `goticapp_genre` (
  `id` bigint(20) NOT NULL,
  `genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goticapp_genre`
--

INSERT INTO `goticapp_genre` (`id`, `genre`) VALUES
(1, 'Arsip'),
(2, 'Dokumenter'),
(3, 'Fiksi');

-- --------------------------------------------------------

--
-- Table structure for table `goticapp_jadwal`
--

CREATE TABLE `goticapp_jadwal` (
  `id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time(6) NOT NULL,
  `film_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goticapp_jadwal`
--

INSERT INTO `goticapp_jadwal` (`id`, `tanggal`, `jam`, `film_id`) VALUES
(1, '2023-06-06', '16:00:00.000000', 1),
(2, '2023-06-06', '19:00:00.000000', 3),
(3, '2023-06-07', '16:00:00.000000', 2),
(4, '2023-06-07', '19:00:00.000000', 4),
(5, '2023-06-08', '16:00:00.000000', 5),
(6, '2023-06-08', '19:00:00.000000', 6),
(7, '2023-06-09', '19:00:00.000000', 7),
(8, '2023-06-09', '16:00:00.000000', 8);

-- --------------------------------------------------------

--
-- Table structure for table `goticapp_order`
--

CREATE TABLE `goticapp_order` (
  `id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tiket_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `goticapp_tiket`
--

CREATE TABLE `goticapp_tiket` (
  `id` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jadwal_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goticapp_tiket`
--

INSERT INTO `goticapp_tiket` (`id`, `jumlah`, `jadwal_id`) VALUES
(1, 20, 1),
(2, 20, 2),
(3, 20, 3),
(4, 20, 4),
(5, 20, 5),
(6, 20, 6),
(7, 20, 8),
(8, 20, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `goticapp_film`
--
ALTER TABLE `goticapp_film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goticapp_film_genre_id_fb71fdc9_fk_goticapp_genre_id` (`genre_id`);

--
-- Indexes for table `goticapp_genre`
--
ALTER TABLE `goticapp_genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goticapp_jadwal`
--
ALTER TABLE `goticapp_jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goticapp_jadwal_film_id_052cac74_fk_goticapp_film_id` (`film_id`);

--
-- Indexes for table `goticapp_order`
--
ALTER TABLE `goticapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goticapp_order_tiket_id_8eecc62b_fk_goticapp_tiket_id` (`tiket_id`),
  ADD KEY `goticapp_order_user_id_e7af1f2a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `goticapp_tiket`
--
ALTER TABLE `goticapp_tiket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goticapp_tiket_jadwal_id_ddcb3e20_fk_goticapp_jadwal_id` (`jadwal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `goticapp_film`
--
ALTER TABLE `goticapp_film`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `goticapp_genre`
--
ALTER TABLE `goticapp_genre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `goticapp_jadwal`
--
ALTER TABLE `goticapp_jadwal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `goticapp_order`
--
ALTER TABLE `goticapp_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goticapp_tiket`
--
ALTER TABLE `goticapp_tiket`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `goticapp_film`
--
ALTER TABLE `goticapp_film`
  ADD CONSTRAINT `goticapp_film_genre_id_fb71fdc9_fk_goticapp_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `goticapp_genre` (`id`);

--
-- Constraints for table `goticapp_jadwal`
--
ALTER TABLE `goticapp_jadwal`
  ADD CONSTRAINT `goticapp_jadwal_film_id_052cac74_fk_goticapp_film_id` FOREIGN KEY (`film_id`) REFERENCES `goticapp_film` (`id`);

--
-- Constraints for table `goticapp_order`
--
ALTER TABLE `goticapp_order`
  ADD CONSTRAINT `goticapp_order_tiket_id_8eecc62b_fk_goticapp_tiket_id` FOREIGN KEY (`tiket_id`) REFERENCES `goticapp_tiket` (`id`),
  ADD CONSTRAINT `goticapp_order_user_id_e7af1f2a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `goticapp_tiket`
--
ALTER TABLE `goticapp_tiket`
  ADD CONSTRAINT `goticapp_tiket_jadwal_id_ddcb3e20_fk_goticapp_jadwal_id` FOREIGN KEY (`jadwal_id`) REFERENCES `goticapp_jadwal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
