-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 11:42 AM
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
(1, 'pbkdf2_sha256$390000$ZbD9Xcgef7sipRQk49mgA6$atlnTVT2rZS+y6z5nPQqLDcqGrfBZgPudhr+QU9PDcc=', '2023-06-06 07:09:31.076225', 1, 'superadmin', '', '', 'superadmin@admin.com', 1, 1, '2023-06-06 07:09:17.365210'),
(2, 'pbkdf2_sha256$390000$5m0TSoQLn3W6a5djJjldSg$1Ka4eSf7VfSPfVMdV2JdYW92oxv4QBIvNl6eqEfoCAA=', '2023-06-06 08:06:50.915090', 0, 'riakristi', 'Ria', 'Kristi', 'riakristibasri@gmail.com', 0, 1, '2023-06-06 08:06:32.630031');

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
(1, '2023-06-06 08:16:55.277069', '1', 'Fiksi', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-06-06 08:17:17.470360', '2', 'Dokumenter', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-06-06 08:17:23.952373', '3', 'Arsip', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-06-06 08:19:57.706824', '1', 'Amarta Gadis Dan Air', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-06-06 08:35:11.189482', '1', 'Jadwal object (1)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2023-06-06 08:37:17.940447', '2', 'Bali', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-06-06 08:38:03.911006', '2', 'Jadwal object (2)', 1, '[{\"added\": {}}]', 9, 1);

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
(9, 'film', 'jadwal'),
(11, 'film', 'order'),
(10, 'film', 'tiket'),
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
(1, 'contenttypes', '0001_initial', '2023-06-06 03:57:32.093973'),
(2, 'auth', '0001_initial', '2023-06-06 03:57:33.008974'),
(3, 'admin', '0001_initial', '2023-06-06 03:57:33.373974'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-06 03:57:33.402974'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-06 03:57:33.434973'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-06 03:57:33.604966'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-06 03:57:33.731972'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-06 03:57:33.791967'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-06 03:57:33.818985'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-06 03:57:33.964968'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-06 03:57:33.972972'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-06 03:57:34.001976'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-06 03:57:34.070983'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-06 03:57:34.136967'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-06 03:57:34.206968'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-06 03:57:34.243974'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-06 03:57:34.342976'),
(18, 'film', '0001_initial', '2023-06-06 03:57:35.300973'),
(19, 'sessions', '0001_initial', '2023-06-06 03:57:35.481974');

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
('bk5yscfh8097zl5vkka9v2d1xiiwtjpl', '.eJxVjEEOwiAQRe_C2hBaOlNw6d4zkKEzSNVAUtqV8e7apAvd_vfef6lA25rD1mQJM6uz6tXpd4s0PaTsgO9UblVPtazLHPWu6IM2fa0sz8vh_h1kavlbOwRIA5H3ImBGlyha5wdATIkJMLIHB-xGFOPZYucFgXtI1JlkI6r3B-OMN9M:1q6RiM:cJ3lc8Uw-97UodnunC9_HU2-s_UuXgLtrgMKd4HVZjY', '2023-06-20 08:06:50.919736'),
('hbz5luxi7rnezgqmya54scfqc0a52y5x', '.eJxVjDsOwjAQBe_iGln-ZWNT0ucM1u7aJgFkS3FSIe6OIqWA9s3Me4uI-zbHvec1LklchRaX342Qn7keID2w3pvkVrd1IXko8qRdTi3l1-10_w5m7PNRwwijdtkPQ3HOpVC4eKaRSbuAoNAU4syk0IMdACwEUAaS8cGVYq34fAHoKje7:1q6Qot:R0SuZT_Y0joMgUEm9iQ1jPnewIJfz-rLJY2DWoXFGXQ', '2023-06-20 07:09:31.081297');

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
(1, 'Amarta Gadis Dan Air', 'media/cover/AMARTA_GADIS_DAN_AIR.jpg', '24 Menit', 'Seorang gadis berusaha menyelamatkan sang Dewi Air agar bisa lepas dari krisis air yang terjadi akibat ulah manusia.', 1),
(2, 'Bali', 'media/cover/BALI.jpg', '18 Menit', 'Dokumenter profil Museum Sonobudoyo yang menceritakan tentang awal mula ber- dirinya museum tersebut.', 3);

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
(1, 'Fiksi'),
(2, 'Dokumenter'),
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
(1, '2023-06-06', '16:00:00.000000', 1),
(2, '2023-06-06', '16:00:00.000000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `film_order`
--

CREATE TABLE `film_order` (
  `id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tiket_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `film_tiket`
--

CREATE TABLE `film_tiket` (
  `id` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jadwal_id` bigint(20) NOT NULL
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
-- Indexes for table `film_order`
--
ALTER TABLE `film_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_order_tiket_id_7f030e2e_fk_film_tiket_id` (`tiket_id`),
  ADD KEY `film_order_user_id_b1ee618d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `film_tiket`
--
ALTER TABLE `film_tiket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_tiket_jadwal_id_94e622ce_fk_film_jadwal_id` (`jadwal_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `film_film`
--
ALTER TABLE `film_film`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `film_genre`
--
ALTER TABLE `film_genre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `film_jadwal`
--
ALTER TABLE `film_jadwal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `film_order`
--
ALTER TABLE `film_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `film_tiket`
--
ALTER TABLE `film_tiket`
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
-- Constraints for table `film_order`
--
ALTER TABLE `film_order`
  ADD CONSTRAINT `film_order_tiket_id_7f030e2e_fk_film_tiket_id` FOREIGN KEY (`tiket_id`) REFERENCES `film_tiket` (`id`),
  ADD CONSTRAINT `film_order_user_id_b1ee618d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `film_tiket`
--
ALTER TABLE `film_tiket`
  ADD CONSTRAINT `film_tiket_jadwal_id_94e622ce_fk_film_jadwal_id` FOREIGN KEY (`jadwal_id`) REFERENCES `film_jadwal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
