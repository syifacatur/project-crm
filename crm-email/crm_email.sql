-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 12 Mar 2026 pada 04.45
-- Versi server: 8.0.45
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `crm_email`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `case_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_logs`
--

INSERT INTO `email_logs` (`id`, `customer_name`, `customer_email`, `customer_phone`, `case_id`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Completed - sudah selesai\r\n', '2026-02-12 21:10:30', '2026-02-12 21:10:30'),
(2, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Part Delay Notification - sudah selesai\r\n', '2026-02-12 21:17:30', '2026-02-12 21:17:30'),
(3, 'bayu', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Completed - asasa\r\n', '2026-02-12 21:35:57', '2026-02-12 21:35:57'),
(4, 'syifa catur Wicaksono', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Completed - okee\r\n', '2026-02-13 01:28:43', '2026-02-13 01:28:43'),
(5, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Completed - sudah selesai\r\n', '2026-02-13 02:23:30', '2026-02-13 02:23:30'),
(6, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Completed - ksalnfklasnfkl\r\n', '2026-02-13 02:31:13', '2026-02-13 02:31:13'),
(7, '-', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - {{workorder}}', '2026-02-19 20:26:52', '2026-02-19 20:26:52'),
(8, '-', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - {{workorder}}', '2026-02-19 20:34:22', '2026-02-19 20:34:22'),
(9, '-', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Onsite Service Scheduled - {{workorder}}\r\n', '2026-02-19 20:35:35', '2026-02-19 20:35:35'),
(10, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - {{workorder}}', '2026-02-19 20:41:54', '2026-02-19 20:41:54'),
(11, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - {{workorder}}', '2026-02-19 20:45:51', '2026-02-19 20:45:51'),
(12, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - qweqweq', '2026-02-19 20:46:50', '2026-02-19 20:46:50'),
(13, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 510008167', '2026-02-19 20:48:39', '2026-02-19 20:48:39'),
(14, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 510008167', '2026-02-19 21:11:38', '2026-02-19 21:11:38'),
(15, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 510008167', '2026-02-19 21:18:20', '2026-02-19 21:18:20'),
(16, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - asdasd', '2026-02-19 21:20:29', '2026-02-19 21:20:29'),
(17, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 510008167', '2026-02-19 21:23:36', '2026-02-19 21:23:36'),
(18, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 510008167', '2026-02-19 21:28:41', '2026-02-19 21:28:41'),
(19, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 510008167', '2026-02-19 21:29:26', '2026-02-19 21:29:26'),
(20, 'snack', 'starsnack2000@gmail.com', '0', NULL, 'Service Completed - {{workorder}}\r\n', '2026-02-19 22:51:40', '2026-02-19 22:51:40'),
(21, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Completed - 510008167\r\n', '2026-02-20 20:49:31', '2026-02-20 20:49:31'),
(22, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Appointment Confirmation - {{workorder}}\r\n', '2026-02-20 21:16:21', '2026-02-20 21:16:21'),
(23, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Appointment Confirmation - 510008167\r\n', '2026-02-20 21:19:32', '2026-02-20 21:19:32'),
(24, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Reschedule Service - Confirmed Part Delivery -{{workorder}}', '2026-02-20 21:31:17', '2026-02-20 21:31:17'),
(25, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Confirmation - No Parts Required-510008167', '2026-02-20 21:41:06', '2026-02-20 21:41:06'),
(26, 'snack', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Confirmation - No Parts Required-510008167', '2026-02-20 21:45:40', '2026-02-20 21:45:40'),
(27, 'snack', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Confirmation - No Parts Required-510008167', '2026-02-20 21:45:43', '2026-02-20 21:45:43'),
(28, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Confirmation - Parts Required - 510008167', '2026-02-20 21:56:53', '2026-02-20 21:56:53'),
(29, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Reminder - Upcoming Appointment-510008167', '2026-02-20 22:06:35', '2026-02-20 22:06:35'),
(30, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Completed - 412412412\r\n', '2026-02-20 23:30:41', '2026-02-20 23:30:41'),
(31, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Completed - 412412412\r\n', '2026-02-20 23:30:46', '2026-02-20 23:30:46'),
(32, 'catur', 'syifacaturwicaksono@gmail.com', '0', NULL, 'Service Completed - 510008167\r\n', '2026-02-22 21:15:33', '2026-02-22 21:15:33'),
(33, 'catur', 'syifatr03@gmail.com', '0', NULL, 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 51000716', '2026-02-23 19:02:53', '2026-02-23 19:02:53'),
(34, 'catur', 'syifacaturwicaksono@gmail.com', '0', '510008167', 'Service Completed - 510008167\r\n', '2026-02-24 20:47:29', '2026-02-24 20:47:29'),
(35, 'catur', 'syifacaturwicaksono@gmail.com', '0', '510008167', 'Service Completed - 510008167\r\n', '2026-02-25 22:24:41', '2026-02-25 22:24:41'),
(36, 'snack', 'syifacaturwicaksono@gmail.com', '0', '510008167', 'Service Completed - 510008167\r\n', '2026-02-25 22:26:17', '2026-02-25 22:26:17'),
(37, 'snack', 'syifacaturwicaksono@gmail.com', '0', '510008167', 'Service Completed - 510008167\r\n', '2026-02-25 22:31:32', '2026-02-25 22:31:32'),
(38, 'catur', 'syifacaturwicaksono@gmail.com', '0', 'qweqweq', 'Service Appointment Confirmation - qweqweq\r\n', '2026-02-25 22:32:23', '2026-02-25 22:32:23'),
(39, 'snack', 'syifacaturwicaksono@gmail.com', '0', '510008167', 'Service Completed - 510008167\r\n', '2026-02-25 22:34:09', '2026-02-25 22:34:09'),
(40, 'catur', 'syifacaturwicaksono@gmail.com', '0', '510008167', 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 510008167', '2026-02-25 22:35:31', '2026-02-25 22:35:31'),
(41, 'catur', 'syifacaturwicaksono@gmail.com', '0', '510008167', 'Service Completed - 510008167\r\n', '2026-02-25 22:40:53', '2026-02-25 22:40:53'),
(42, 'Syifa catur Wicaksono', 'syifacaturwicaksono@gmail.com', '08921937', '510008167', 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 510008167', '2026-03-02 23:50:33', '2026-03-02 23:50:33'),
(43, 'Syifa catur Wicaksono', 'syifacaturwicaksono@gmail.com', '08921937', '510008167', 'Service Completed - 510008167\r\n', '2026-03-03 01:25:17', '2026-03-03 01:25:17'),
(44, 'Syifa catur Wicaksono', 'syifacaturwicaksono@gmail.com', '08921937', 'qweqweq', 'Service Appointment Confirmation - qweqweq\r\n', '2026-03-03 01:26:02', '2026-03-03 01:26:02'),
(45, 'Syifa catur Wicaksono', 'syifacaturwicaksono@gmail.com', '081225253369', '510008167', 'Service Completed - 510008167\r\n', '2026-03-03 01:33:18', '2026-03-03 01:33:18'),
(46, 'Syifa catur Wicaksono', 'syifacaturwicaksono@gmail.com', '081225253369', '510008167', 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - 510008167', '2026-03-03 01:34:22', '2026-03-03 01:34:22'),
(47, 'Syifa catur Wicaksono', 'syifacaturwicaksono@gmail.com', '081225253369', '510008167', 'Service Completed - 510008167\r\n', '2026-03-03 01:50:20', '2026-03-03 01:50:20'),
(48, 'Syifa Catur Wicaksono', 'syifacaturwicaksono@gmail.com', '089676503531', '51000765', 'Service Appointment Confirmation - 51000765\r\n', '2026-03-11 03:18:39', '2026-03-11 03:18:39'),
(49, 'Syifa Catur Wicaksono', 'syifacaturwicaksono@gmail.com', '089676503531', '51000765', 'Service Completed - 51000765\r\n', '2026-03-11 03:19:47', '2026-03-11 03:19:47'),
(50, 'Syifa Catur Wicaksono', 'syifacaturwicaksono@gmail.com', '085803033251', '51000765', 'Service Completed - 51000765\r\n', '2026-03-11 03:44:08', '2026-03-11 03:44:08'),
(51, 'Syifa Catur Wicaksono', 'syifacaturwicaksono@gmail.com', '089676503531', '51000765', 'Service Completed - 51000765\r\n', '2026-03-11 03:44:23', '2026-03-11 03:44:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `wa_body` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `required_fields` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `body`, `wa_body`, `required_fields`, `created_at`, `updated_at`) VALUES
(1, 'Finish\r\n', 'Service Completed - {{workorder}}\r\n', '<div style=\"text-align:center;margin-bottom:20px;\">\r\n    <img src=\"{{company_logo}}\" width=\"150\">\r\n</div>\r\n\r\n<p>Kepada Yth. {{customer_name}},</p>\r\n\r\n<p>\r\nTerima kasih telah memberi kesempatan untuk melayani Anda atas nama HP Service Center Semarang.\r\nKami harap pengalaman layanan Anda baru-baru ini dengan kami telah memenuhi harapan Anda.\r\n</p>\r\n\r\n<p>\r\nJika ada hal lain yang dapat kami lakukan untuk membantu Anda dalam kasus ini,\r\njangan ragu untuk menghubungi kami.\r\nJika tidak, kami akan melanjutkan untuk menutup pekerjaan ini.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\nHormat kami,\r\n</p>\r\n\r\n<p>\r\n<strong>{{sender_name}}</strong><br>\r\n{{sender_position}}<br>\r\n{{company_name}}<br>\r\nTelp: {{sender_phone}}\r\n</p>', 'Halo {{customer_name}},\r\nService dengan nomor {{workorder}} sudah selesai.\r\n\r\nTerima kasih.', 'null', NULL, NULL),
(2, 'Part Delay\r\n', 'Pemberitahuan Keterlambatan Pengiriman Suku Cadang - {{workorder}}', '<div style=\"text-align:center; margin-bottom:20px;\">\r\n    <img src=\"{{company_logo}}\" style=\"max-width:150px;\">\r\n</div>\r\n\r\n<p>Kepada Yth. {{customer_name}},</p>\r\n\r\n<p>\r\nKami ingin memberitahukan bahwa pengiriman suku cadang\r\nuntuk pekerjaan dengan nomor Case ID {{workorder}} mengalami keterlambatan.\r\n</p>\r\n\r\n<p>\r\nKami mohon maaf atas ketidaknyamanan ini.\r\nTim kami sedang mengupayakan konfirmasi tanggal terbaru.\r\n</p>\r\n\r\n<p>\r\nTerima kasih atas kesabaran Anda.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\nHormat kami,<br>\r\n{{sender_name}}<br>\r\n{{sender_position}}<br>\r\n{{company_name}}<br>\r\nTelp: {{sender_phone}}\r\n</p>', 'Halo {{customer_name}},\r\nService dengan nomor {{workorder}} sudah selesai.\r\n\r\nTerima kasih.', '[\"customer_name\", \"workorder\"]', NULL, NULL),
(3, 'Onsite confirmation\r\n', 'Service Appointment Confirmation - {{workorder}}\r\n', '<div style=\"text-align:center;margin-bottom:20px;\">\r\n    <img src=\"{{company_logo}}\" width=\"150\">\r\n</div>\r\n\r\n<p>Kepada Yth. {{customer_name}},</p>\r\n\r\n<p>\r\nTerima kasih telah mengkonfirmasi janji temu layanan Anda melalui telepon.\r\n</p>\r\n\r\n<p>\r\nTeknisi kami <strong>{{engineer_name}}</strong> akan tiba di lokasi Anda pada \r\n<strong>{{appointment_date}}</strong> pukul \r\n<strong>{{appointment_time}}</strong> untuk melakukan layanan seperti yang telah dibahas.\r\n</p>\r\n\r\n<p>\r\nMohon berikan nama kontak yang akan menerima teknisi di lokasi, beserta petunjuk akses ke tempat Anda.\r\n</p>\r\n\r\n<p>\r\nPada hari tersebut, layanan mungkin akan menimbulkan ketidaknyamanan selama proses pengerjaan. \r\nMohon dipersiapkan.\r\n</p>\r\n\r\n<p>\r\nJika ada perubahan atau Anda perlu menghubungi kami sebelum janji temu, \r\njangan ragu untuk menghubungi saya di <strong>08123456789</strong>.\r\n</p>\r\n\r\n<p>\r\nKami menghargai waktu Anda dan berharap dapat memberikan pengalaman layanan terbaik kepada Anda.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>Hormat kami,</p>\r\n\r\n<p>\r\n<strong>{{sender_name}}</strong><br>\r\n{{sender_position}}<br>\r\n{{company_name}}<br>\r\nTelp: {{sender_phone}}\r\n</p>', 'Halo {{customer_name}},\r\nService dengan nomor {{workorder}} sudah selesai.\r\n\r\nTerima kasih.', 'null', NULL, NULL),
(4, 'Reschedule Service - Confirmed Part Delivery', 'Reschedule Service - Confirmed Part Delivery -{{workorder}}', '<div style=\"text-align:center;margin-bottom:20px;\">\r\n    <img src=\"{{company_logo}}\" width=\"150\">\r\n</div>\r\n\r\n<p>Kepada Yth. {{customer_name}},</p>\r\n\r\n<p>\r\nKami ingin memberitahukan bahwa tanggal pengiriman suku cadang yang diperlukan \r\nuntuk menyelesaikan servis Anda telah berubah menjadi \r\n<strong>{{new_delivery_date}}</strong>.\r\n</p>\r\n\r\n<p>\r\nAgar proses tetap berjalan lancar, kami ingin mengusulkan \r\n<strong>{{new_service_date}}</strong> \r\nuntuk penjadwalan ulang janji servis Anda.\r\n</p>\r\n\r\n<p>\r\nSilakan hubungi kami di <strong>08123456789</strong> \r\nuntuk mengkonfirmasi opsi mana yang paling sesuai untuk Anda.\r\n</p>\r\n\r\n<p>\r\nKami memahami bahwa perubahan ini mungkin tidak ideal dan dengan tulus \r\nmeminta maaf atas ketidaknyamanan ini. Terima kasih atas pengertian Anda.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>Hormat kami,</p>\r\n\r\n<p>\r\n<strong>{{sender_name}}</strong><br>\r\n{{sender_position}}<br>\r\n{{company_name}}<br>\r\nTelp: {{sender_phone}}\r\n</p>', 'Halo {{customer_name}},\r\nService dengan nomor {{workorder}} sudah selesai.\r\n\r\nTerima kasih.', 'null', NULL, NULL),
(5, 'Service Confirmation - No Parts Required', 'Service Confirmation - No Parts Required-{{workorder}}', '<div style=\"text-align:center;margin-bottom:20px;\">\r\n    <img src=\"{{company_logo}}\" width=\"150\">\r\n</div>\r\n\r\n<p>Kepada Yth. {{customer_name}},</p>\r\n\r\n<p>\r\nSaya {{sender_position2}} dari HP Service Center Semarang, \r\npenyedia layanan resmi HP. Kasus Anda telah ditugaskan kepada kami, \r\ndan saya akan menjadi kontak Anda.\r\n</p>\r\n\r\n<p>\r\nKami siap menjadwalkan janji temu layanan Anda pada \r\n<strong>{{service_date}}</strong>.\r\n</p>\r\n\r\n<p>\r\nSilakan hubungi kami di <strong>087234722347</strong> \r\nuntuk mengkonfirmasi tanggal yang paling sesuai untuk Anda.\r\n</p>\r\n\r\n<p>\r\nKami berharap dapat memberikan Anda pengalaman layanan terbaik.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>Hormat kami,</p>\r\n\r\n<p>\r\n<strong>{{sender_name}}</strong><br>\r\n{{sender_position}}<br>\r\n{{company_name}}<br>\r\nTelp: {{sender_phone}}\r\n</p>', 'Halo {{customer_name}},\r\nService dengan nomor {{workorder}} sudah selesai.\r\n\r\nTerima kasih.', 'null', NULL, NULL),
(6, 'Service Confirmation - Parts Required', 'Service Confirmation - Parts Required - {{workorder}}', '<div style=\"text-align:center;margin-bottom:20px;\">\r\n    <img src=\"{{company_logo}}\" width=\"150\">\r\n</div>\r\n\r\n<p>Kepada Yth. {{customer_name}},</p>\r\n\r\n<p>\r\nSaya {{sender_position3}} dari HP Service Center Semarang, \r\npenyedia layanan resmi HP. Kasus Anda telah ditugaskan kepada kami, \r\ndan saya akan menjadi kontak Anda.\r\n</p>\r\n\r\n<p>\r\nKami ingin menjadwalkan janji temu layanan Anda pada \r\n<strong>{{service_date}}</strong>.\r\n</p>\r\n\r\n<p>\r\nSilakan hubungi kami di <strong>081237129307</strong> \r\nuntuk mengkonfirmasi tanggal yang paling sesuai untuk Anda.\r\n</p>\r\n\r\n<p>\r\nKami berharap dapat memberikan Anda pengalaman layanan terbaik.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>Hormat kami,</p>\r\n\r\n<p>\r\n<strong>{{sender_name}}</strong><br>\r\n{{sender_position}}<br>\r\n{{company_name}}<br>\r\nTelp: {{sender_phone}}\r\n</p>', 'Halo {{customer_name}},\r\nService dengan nomor {{workorder}} sudah selesai.\r\n\r\nTerima kasih.', 'null', NULL, NULL),
(7, 'Service Reminder - Upcoming Appointment', 'Service Reminder - Upcoming Appointment-{{workorder}}', '<div style=\"text-align:center;margin-bottom:20px;\">\r\n    <img src=\"{{company_logo}}\" width=\"150\">\r\n</div>\r\n\r\n<p>Kepada Yth. {{customer_name}},</p>\r\n\r\n<p>\r\nIni adalah pengingat bahwa janji temu servis Anda dijadwalkan pada \r\n<strong>{{appointment_date}}</strong> pukul \r\n<strong>{{appointment_time}}</strong> \r\ndengan <strong>{{engineer_name}}</strong>, teknisi kami.\r\n</p>\r\n\r\n<p>\r\n<strong>{{engineer_name}}</strong> sudah siap dan akan menanyakan kontak pelanggan saat tiba.\r\nMohon diperhatikan bahwa selama proses layanan mungkin akan terdapat\r\ngangguan sementara terhadap operasional perangkat Anda.\r\n</p>\r\n\r\n<p>\r\nJika ada perubahan atau Anda perlu menjadwalkan ulang, \r\njangan ragu untuk menghubungi kami di <strong>08779791232</strong>.\r\n</p>\r\n\r\n<p>\r\nKami berharap dapat memberikan Anda pengalaman layanan terbaik.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>Hormat kami,</p>\r\n\r\n<p>\r\n<strong>{{sender_name}}</strong><br>\r\n{{sender_position}}<br>\r\n{{company_name}}<br>\r\nTelp: {{sender_phone}}\r\n</p>', 'Halo {{customer_name}},\r\nService dengan nomor {{workorder}} sudah selesai.\r\n\r\nTerima kasih.', 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_02_13_025028_create_email_templates_table', 2),
(6, '2026_02_13_034802_create_email_logs_table', 3),
(7, '2026_02_25_033508_add_case_id_to_email_logs_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `wa_logs`
--

CREATE TABLE `wa_logs` (
  `id` bigint NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `case_id` varchar(100) DEFAULT NULL,
  `message` text,
  `status` varchar(50) DEFAULT 'sent',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `wa_logs`
--

INSERT INTO `wa_logs` (`id`, `customer_name`, `customer_phone`, `case_id`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Syifa catur Wicaksono', '081225253369', '510008167', 'Halo Syifa catur Wicaksono,\r\nService dengan nomor 510008167 sudah selesai.\r\n\r\nTerima kasih.', 'sent', '2026-03-03 01:50:20', '2026-03-03 01:50:20'),
(2, 'Syifa Catur Wicaksono', '089676503531', '51000765', 'Halo Syifa Catur Wicaksono,\r\nService dengan nomor 51000765 sudah selesai.\r\n\r\nTerima kasih.', 'sent', '2026-03-11 03:18:39', '2026-03-11 03:18:39'),
(3, 'Syifa Catur Wicaksono', '089676503531', '51000765', 'Halo Syifa Catur Wicaksono,\r\nService dengan nomor 51000765 sudah selesai.\r\n\r\nTerima kasih.', 'sent', '2026-03-11 03:19:47', '2026-03-11 03:19:47'),
(4, 'Syifa Catur Wicaksono', '085803033251', '51000765', 'Halo Syifa Catur Wicaksono,\r\nService dengan nomor 51000765 sudah selesai.\r\n\r\nTerima kasih.', 'sent', '2026-03-11 03:44:08', '2026-03-11 03:44:08'),
(5, 'Syifa Catur Wicaksono', '089676503531', '51000765', 'Halo Syifa Catur Wicaksono,\r\nService dengan nomor 51000765 sudah selesai.\r\n\r\nTerima kasih.', 'sent', '2026-03-11 03:44:23', '2026-03-11 03:44:23');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
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
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wa_logs`
--
ALTER TABLE `wa_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wa_logs`
--
ALTER TABLE `wa_logs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
