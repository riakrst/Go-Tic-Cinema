-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 06:33 AM
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
(33, 'Can add tiket', 9, 'add_tiket'),
(34, 'Can change tiket', 9, 'change_tiket'),
(35, 'Can delete tiket', 9, 'delete_tiket'),
(36, 'Can view tiket', 9, 'view_tiket'),
(37, 'Can add jadwal', 10, 'add_jadwal'),
(38, 'Can change jadwal', 10, 'change_jadwal'),
(39, 'Can delete jadwal', 10, 'delete_jadwal'),
(40, 'Can view jadwal', 10, 'view_jadwal'),
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
(1, 'pbkdf2_sha256$390000$FTw4iRiu1IWfhYIpyy8CAo$iQrbDwZrVb8n4Ur7OyLFsJNWQa/+BXvjzZCbYsaHNUg=', '2023-05-31 04:30:03.607734', 0, 'riakrst', '', '', 'riakristiria@gmail.com', 0, 1, '2023-05-27 12:58:54.645561'),
(2, 'pbkdf2_sha256$390000$PGRZQJvKj10bZiet2rD4UB$qW473V04qWoxsuZ3rQjbTHF7THjduZ+F/xgiFcwwdtk=', '2023-05-29 06:38:38.267170', 1, 'superadmin', '', '', 'superadmin@admin.com', 1, 1, '2023-05-29 06:37:20.472919'),
(3, 'pbkdf2_sha256$390000$qrKu8HpQUuPs5DGsnBUzhI$4ZuCnh1ubB3smoWWlqUuPG3vjr/6Q+D2ok/e0B6dSUA=', '2023-05-30 08:39:28.515282', 0, 'astriwahyuningsiam', '', '', 'astriwahyu@gmail.com', 0, 1, '2023-05-30 08:33:40.008295');

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
(1, '2023-05-29 06:58:36.662720', '1', 'Dokumenter', 1, '[{\"added\": {}}]', 8, 2),
(2, '2023-05-29 06:58:52.060717', '2', 'Fiksi', 1, '[{\"added\": {}}]', 8, 2),
(3, '2023-05-29 06:59:33.838142', '3', 'Arsip', 1, '[{\"added\": {}}]', 8, 2),
(4, '2023-05-29 07:10:05.997338', '1', 'Amarta Gadis Dan Air', 1, '[{\"added\": {}}]', 7, 2),
(5, '2023-05-29 07:11:32.561465', '2', 'Bali', 1, '[{\"added\": {}}]', 7, 2),
(6, '2023-05-29 07:13:52.756092', '3', 'Di Kaliurang', 1, '[{\"added\": {}}]', 7, 2),
(7, '2023-05-29 07:15:22.894373', '4', 'Ibu Untuk Bumi', 1, '[{\"added\": {}}]', 7, 2),
(8, '2023-05-29 07:16:38.733644', '5', 'Kembalilah Dengan Tenang', 1, '[{\"added\": {}}]', 7, 2),
(9, '2023-05-29 07:20:32.879294', '6', 'Marganing Gesang', 1, '[{\"added\": {}}]', 7, 2),
(10, '2023-05-29 07:21:15.224603', '7', 'Portal Pandemi', 1, '[{\"added\": {}}]', 7, 2),
(11, '2023-05-29 07:22:15.935538', '8', 'Sanaboedaja 1935', 1, '[{\"added\": {}}]', 7, 2),
(12, '2023-05-29 07:24:30.594350', '1', 'Jadwal object (1)', 1, '[{\"added\": {}}]', 10, 2);

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
(7, 'film', 'film'),
(8, 'film', 'genre'),
(10, 'film', 'jadwal'),
(9, 'film', 'tiket'),
(11, 'order', 'order'),
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
(1, 'contenttypes', '0001_initial', '2023-05-27 12:42:41.681446'),
(2, 'auth', '0001_initial', '2023-05-27 12:42:42.773786'),
(3, 'admin', '0001_initial', '2023-05-27 12:42:43.053789'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-27 12:42:43.093792'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-27 12:42:43.156792'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-27 12:42:43.390800'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-27 12:42:43.550787'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-27 12:42:43.651801'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-27 12:42:43.682791'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-27 12:42:43.816798'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-27 12:42:43.824790'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-27 12:42:43.858794'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-27 12:42:43.952789'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-27 12:42:44.051785'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-27 12:42:44.121785'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-27 12:42:44.150790'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-27 12:42:44.225799'),
(18, 'film', '0001_initial', '2023-05-27 12:42:44.746830'),
(19, 'order', '0001_initial', '2023-05-27 12:42:45.018150'),
(20, 'sessions', '0001_initial', '2023-05-27 12:42:45.140157'),
(21, 'film', '0002_rename_stok_tiket_jumlah', '2023-05-27 12:44:10.888827'),
(22, 'order', '0002_remove_order_cover', '2023-05-28 03:30:57.885840'),
(23, 'order', '0003_alter_order_jumlah_alter_order_user', '2023-05-28 03:33:01.777714'),
(24, 'order', '0004_alter_order_tanggal', '2023-05-28 03:53:57.171740');

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
('1fgzkhpxpn3su3v9rtiofr3k6k7v3aox', 'e30:1q39ts:m54MsHlXT1b405ATlljxy2QT_QxBbYc8_3C-HZmEj-A', '2023-06-11 06:29:08.543779'),
('2h9cq66xn8l4hmyu8drw3vlweaef9mk0', 'e30:1q2tpS:_EamFEN2moBeu1TY3y5mraSI7q5c3gzh-OXiFlBOgZo', '2023-06-10 13:19:30.327079'),
('4zugr7kmu1s0738a0741cnpciw2ljs6f', 'e30:1q2tiZ:TQIJzD959EHOEU0DHX8wTZLOqS3brrcq4vl_EyQuvHs', '2023-06-10 13:12:23.786348'),
('695vin2lf42gwzxbebc7btxmjkwx01ar', 'e30:1q4DTH:lh-L8IK_kwHJJyORSyfbknFvI-HkJv4wkfv_RxS21vo', '2023-06-14 04:30:03.560735'),
('fba50v78qm23nqof67091oo82yfvezvq', 'e30:1q3ut6:6w6XETbW7z-BDgtLfqubTyGvSoG3Lo2mXM8WeK6qC5I', '2023-06-13 08:39:28.510717'),
('nso07etefnnn6p85290oqmh3oqqtsuse', 'e30:1q39rN:aLyRv8aRoCMqoB2v1IgpZzo64IrBZ7K23GdQoDdMYus', '2023-06-11 06:26:33.356441'),
('q8qpvx637cwyxswdouptfj8hti7k1c3q', 'e30:1q3viZ:VgQT-CmOlg7T91t_yetMyriEvs4ELSUtEW3eJKRsh6U', '2023-06-13 09:32:39.435407'),
('y29k5130i9xgkgcxhp8hbg0buv2afp7o', 'e30:1q3uph:fFek1rXrJWw1pU5UEeHInT_T68vzDOEVoI8WF1n5hEo', '2023-06-13 08:35:57.218496'),
('y2uo58cemsk3c515bsw8cvtshjt62vee', 'e30:1q4DSC:sCWqvzA6JisMzt15nYqdUnlDjBpAnn9DPhGBlFW9LEc', '2023-06-14 04:28:56.122858'),
('z8vvvyyj78rvr4lsm8uqfojpk0scl1ls', 'e30:1q2tjj:AbmBkqdcNSMucD-79POt_GLsidplQi7WG3grcMg-R9g', '2023-06-10 13:13:35.444704');

-- --------------------------------------------------------

--
-- Table structure for table `film_film`
--

CREATE TABLE `film_film` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `durasi` varchar(50) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `genre_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film_film`
--

INSERT INTO `film_film` (`id`, `judul`, `cover`, `durasi`, `deskripsi`, `genre_id`) VALUES
(1, 'Amarta Gadis Dan Air', 'media/cover/AMARTA_GADIS_DAN_AIR.jpg', '24 Menit', 'Seorang gadis berusaha menyelamatkan sang Dewi Air agar bisa lepas dari krisis air yang terjadi akibat ulah manusia.', 2),
(2, 'Bali', 'media/cover/BALI.jpg', '18 Menit', 'Arsip video dokumentasi hitam putih dan tidak bersuara, tentang lanskap budaya dan kegiatan sosial di Bali pada tahun 1937.', 3),
(3, 'Di Kaliurang', 'media/cover/DI_KALIURANG.jpg', '24 Menit', 'Dokumenter tentang tempat-tempat bersejarah di Kaliurang yang mulai dilupakan.', 1),
(4, 'Ibu Untuk Bumi', 'media/cover/IBU_UNTUK_BUMI.jpg', '26 Menit', 'Dokumenter pendek yang berbicara ten- tang sampah dan bagaimana cara beragam kelas ekonomi dalam menghasilkan dan menanggulanginya.', 1),
(5, 'Kembalilah Dengan Tenang', 'media/cover/KEMBALILAH_DENGAN_TENANG.jpg', '26 Menit', 'Sulitnya mencari tanah makam, membuat Santoso dan Wati kebingungan saat hendak menguburkan anak semata wayangnya.', 2),
(6, 'Marganing Gesang', 'media/cover/MARGANING_GESANG.jpg', '29 Menit', 'Potongan kehidupan dalang muda di zaman modern. Dalang menjadi profesi yang lambat laun mulai ditinggalkan, menjadi se- makin tertinggal dengan adanya pandemi Covid-19.', 1),
(7, 'Portal Pandemi', 'media/cover/PORTAL_PANDEMI.jpg', '17 Menit', 'Potongan kehidupan dalang muda di zaman modern. Dalang menjadi profesi yang lambat laun mulai ditinggalkan, menjadi se- makin tertinggal dengan adanya pandemi Covid-19.', 2),
(8, 'Sanaboedaja 1935', 'media/cover/SANABOEDAJA_1935.jpg', '18 Menit', 'Dokumenter profil Museum Sonobudoyo yang menceritakan tentang awal mula ber- dirinya museum tersebut.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `film_genre`
--

CREATE TABLE `film_genre` (
  `id` bigint(20) NOT NULL,
  `genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film_genre`
--

INSERT INTO `film_genre` (`id`, `genre`) VALUES
(1, 'Dokumenter'),
(2, 'Fiksi'),
(3, 'Arsip');

-- --------------------------------------------------------

--
-- Table structure for table `film_jadwal`
--

CREATE TABLE `film_jadwal` (
  `id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time(6) NOT NULL,
  `film_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film_jadwal`
--

INSERT INTO `film_jadwal` (`id`, `tanggal`, `jam`, `film_id`) VALUES
(1, '2023-05-29', '16:00:00.000000', 8);

-- --------------------------------------------------------

--
-- Table structure for table `film_tiket`
--

CREATE TABLE `film_tiket` (
  `id` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `film_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_order`
--

CREATE TABLE `order_order` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tiket_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `film_film`
--
ALTER TABLE `film_film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_film_genre_id_2d8a0b89_fk_film_genre_id` (`genre_id`);

--
-- Indexes for table `film_genre`
--
ALTER TABLE `film_genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_jadwal`
--
ALTER TABLE `film_jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_jadwal_film_id_e80ac937_fk_film_film_id` (`film_id`);

--
-- Indexes for table `film_tiket`
--
ALTER TABLE `film_tiket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_tiket_film_id_ef803e7d_fk_film_film_id` (`film_id`);

--
-- Indexes for table `order_order`
--
ALTER TABLE `order_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_order_tiket_id_9105c76e_fk_film_tiket_id` (`tiket_id`),
  ADD KEY `order_order_user_id_7cf9bc2b` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `film_film`
--
ALTER TABLE `film_film`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `film_genre`
--
ALTER TABLE `film_genre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `film_jadwal`
--
ALTER TABLE `film_jadwal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `film_tiket`
--
ALTER TABLE `film_tiket`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_order`
--
ALTER TABLE `order_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `film_film`
--
ALTER TABLE `film_film`
  ADD CONSTRAINT `film_film_genre_id_2d8a0b89_fk_film_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `film_genre` (`id`);

--
-- Constraints for table `film_jadwal`
--
ALTER TABLE `film_jadwal`
  ADD CONSTRAINT `film_jadwal_film_id_e80ac937_fk_film_film_id` FOREIGN KEY (`film_id`) REFERENCES `film_film` (`id`);

--
-- Constraints for table `film_tiket`
--
ALTER TABLE `film_tiket`
  ADD CONSTRAINT `film_tiket_film_id_ef803e7d_fk_film_film_id` FOREIGN KEY (`film_id`) REFERENCES `film_film` (`id`);

--
-- Constraints for table `order_order`
--
ALTER TABLE `order_order`
  ADD CONSTRAINT `order_order_tiket_id_9105c76e_fk_film_tiket_id` FOREIGN KEY (`tiket_id`) REFERENCES `film_tiket` (`id`),
  ADD CONSTRAINT `order_order_user_id_7cf9bc2b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
