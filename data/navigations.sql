-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2023 at 12:41 AM
-- Server version: 5.7.42
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpan_websimpan`
--

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_menu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_menu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'tidak ada',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `parent_id`, `nama_menu`, `keterangan`, `slug`, `status_menu`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Profil', NULL, 'profil', 'Ada', '2023-07-10 05:35:14', '2023-07-10 05:35:14'),
(2, 1, 'Tentang', '<div class=\"su-spoiler su-spoiler-style-default su-spoiler-icon-plus su-spoiler-left\" style=\"box-sizing: border-box; margin-bottom: 0.5em;\">\n<div class=\"su-spoiler-content su-clearfix\" style=\"box-sizing: border-box; padding: 1em 0px 1em 27px; transition: padding-top 0.2s ease 0s;\">\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\">SPBE merupakan singkatan dari Sistem Pemerintahan Berbasis Elektronik, Sistem Pemerintahan Berbasis Elektronik (SPBE) adalah penyelenggaraan pemerintahan yang memanfaatkan teknologi informasi dan komunikasi untuk memberikan layanan kepada Pengguna SPBE. Hal ini seperti yang tertuang pada Peraturan Presiden No. 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik. SPBE ditujukan untuk untuk mewujudkan tata kelola pemerintahan yang bersih, efektif, transparan, dan akuntabel serta pelayanan publik yang berkualitas dan terpercaya. Tata kelola dan manajemen sistem pemerintahan berbasis elektronik secara nasional juga diperlukan untuk meningkatkan keterpaduan dan efisiensi sistem pemerintahan berbasis elektronik.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\">Revolusi teknologi informasi dan komunikasi (TIK) memberikan peluang bagi pemerintah untuk melakukan inovasi pembangunan aparatur negara melalui penerapan Sistem Pemerintahan Berbasis Elektronik (SPBE) atau E-Government, yaitu penyelenggaraan pemerintahan yang memanfaatkan TIK untuk memberikan layanan kepada instansi pemerintah, aparatur sipil negara, pelaku bisnis, masyarakat dan pihak-pihak lainnya. SPBE memberi peluang untuk mendorong dan mewujudkan penyelenggaraan pemerintahan yang terbuka, partisipatif, inovatif, dan akuntabel, meningkatkan kolaborasi antar instansi pemerintah dalam melaksanakan urusan dan tugas pemerintahan untuk mencapai tujuan bersama, meningkatkan kualitas dan jangkauan pelayanan publik kepada masyarakat luas, dan menekan tingkat penyalahgunaan kewenangan dalam bentuk kolusi, korupsi, dan nepotisme melalui penerapan sistem pengawasan dan pengaduan masyarakat berbasis elektronik.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: justify;\">Pemerintah menyadari pentingnya peran SPBE untuk mendukung semua sektor pembangunan. Upaya untuk mendorong penerapan SPBE telah dilakukan oleh pemerintah dengan menerbitkan peraturan perundang-undangan sektoral yang mengamanatkan perlunya penyelenggaraan sistem informasi atau SPBE. Sejauh ini kementerian, lembaga, dan pemerintah daerah telah melaksanakan SPBE secara sendiri-sendiri sesuai dengan kapasitasnya, dan mencapai tingkat kemajuan SPBE yang sangat bervariasi secara nasional. Untuk membangun sinergi penerapan SPBE yang berkekuatan hukum antara kementerian, lembaga, dan pemerintah daerah, diperlukan Rencana Induk SPBE Nasional yang digunakan sebagai pedoman bagi Instansi Pusat dan Pemerintah Daerah untuk mencapai SPBE yang terpadu. Rencana Induk SPBE Nasional disusun dengan memperhatikan arah kebijakan, strategi, dan inisiatif pada bidang tata kelola SPBE, layanan SPBE, TIK, dan SDM untuk mencapai tujuan strategis SPBE tahun 2018 - 2025 dan tujuan pembangunan aparatur negara sebagaimana ditetapkan dalam RPJP Nasional 2005 - 2025 dan Grand Design Reformasi Birokrasi 2010 - 2025</p>\n</div>\n</div>\n<div class=\"su-spoiler su-spoiler-style-default su-spoiler-icon-plus su-spoiler-left su-spoiler-closed\" style=\"box-sizing: border-box; margin-bottom: 0.5em;\">\n<div class=\"su-spoiler-content su-clearfix\" style=\"box-sizing: border-box; padding: 0px; transition: padding-top 0.2s ease 0s; height: 0px; margin: 0px; overflow: hidden; border: none; opacity: 0; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">&nbsp;</div>\n</div>', 'tentang', 'Ada', '2023-07-10 05:36:40', '2023-07-10 05:36:40'),
(3, 1, 'Visi SPBE', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff; text-align: justify;\"><em style=\"box-sizing: border-box;\">&ldquo;Terwujudnya sistem pemerintahan berbasis elektronik yang terpadu dan menyeluruh untuk mencapai birokrasi dan pelayanan publik yang berkinerja tinggi.&rdquo;</em></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Peraturan Presiden No. 95 Tahun 2018 Tentang SPBE</span><em style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\" /></em></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff; text-align: justify;\">Visi tersebut menjadi acuan dalam mewujudkan pelaksanaan SPBE yang terpadu di Instansi Pusat dan Pemerintah Daerah untuk menghasilkan birokrasi pemerintah yang integratif, dinamis, transparan, dan inovatif, serta peningkatan kualitas pelayanan publik yang terpadu, efektif, responsif, dan adaptif.</p>', 'visi-spbe', 'Ada', '2023-07-10 05:37:33', '2023-07-10 05:37:33'),
(4, 1, 'Misi', '<p><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">Untuk mencapai visi SPBE, misi SPBE adalah:</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">1. Melakukan penataan dan penguatan organisasi dan tata kelola sistem pemerintahan berbasis elektronik yang terpadu;</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">2. Mengembangkan pelayanan publik berbasis elektronik yang terpadu, menyeluruh, dan menjangkau masyarakat luas;</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">3. Membangun fondasi teknologi informasi dan komunikasi yang terintegrasi, aman, dan andal; dan</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">4. Membangun SDM yang kompeten dan inovatif berbasis teknologi informasi dan komunikasi.</span></p>', 'misi', 'Ada', '2023-07-10 05:37:51', '2023-07-10 05:37:51'),
(5, 1, 'Tujuan', '<p><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">Berdasarkan visi dan misi SPBE, tujuan SPBE adalah:</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">1. Mewujudkan tata kelola pemerintahan yang bersih, efektif, efisien, transparan, dan akuntabel.</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">2. Mewujudkan pelayanan publik yang berkualitas dan terpercaya; dan</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">3. Mewujudkan sistem pemerintahan berbasis elektronik yang terpadu.</span></p>', 'tujuan', 'Ada', '2023-07-10 05:38:14', '2023-07-10 05:38:14'),
(6, 1, 'Sasaran', '<p><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">Berdasarkan visi, misi, dan tujuan SPBE, sasaran SPBE adalah:</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">1. Terwujudnya tata kelola dan manajemen SPBE yang efektif dan efisien;</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">2. Terwujudnya layanan SPBE yang terpadu dan berorientasi kepada pengguna;</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">3. Terselenggaranya infrastruktur SPBE yang terintegrasi; dan</span><br style=\"box-sizing: border-box; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\" /><span style=\"color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">4. Meningkatnya kapasitas SDM SPBE.</span></p>', 'sasaran', 'Ada', '2023-07-10 05:38:43', '2023-07-10 05:38:43'),
(7, NULL, 'Agenda', NULL, 'agenda', 'Ada', '2023-07-10 05:39:36', '2023-07-10 05:42:14'),
(8, 7, 'Evaluasi Tahun 2021', '<p>&nbsp;</p>\n<table style=\"border-collapse: collapse; width: 79.5575%;\" border=\"10\">\n<tbody>\n<tr>\n<td style=\"width: 6.23608%;\"><strong>No</strong></td>\n<td style=\"width: 31.2814%;\"><strong>Kegiatan</strong></td>\n<td style=\"width: 62.4826%;\"><strong>Jadwal Pelaksanaan</strong></td>\n</tr>\n<tr>\n<td style=\"width: 6.23608%;\">1</td>\n<td style=\"width: 31.2814%;\">Sosialiasi Evaluasi SPBE</td>\n<td style=\"width: 62.4826%;\">28-29 April 2021</td>\n</tr>\n<tr>\n<td style=\"width: 6.23608%;\">2</td>\n<td style=\"width: 31.2814%;\">Penilaian Mandiri</td>\n<td style=\"width: 62.4826%;\">28 April - 18 Juni 2021</td>\n</tr>\n<tr>\n<td style=\"width: 6.23608%;\">3</td>\n<td style=\"width: 31.2814%;\">Penilaian Interviu</td>\n<td style=\"width: 62.4826%;\">20 Juli &ndash; 23 Agustus 2021</td>\n</tr>\n<tr>\n<td style=\"width: 6.23608%;\">4</td>\n<td style=\"width: 31.2814%;\">Penilaian Visitasi</td>\n<td style=\"width: 62.4826%;\">23 September &ndash; 1 Oktober 2021</td>\n</tr>\n</tbody>\n</table>', 'evaluasi-tahun-2021', 'Ada', '2023-07-10 05:41:08', '2023-07-10 08:39:04'),
(9, NULL, 'Hasil Evaluasi', NULL, 'hasil-evaluasi', 'Ada', '2023-07-10 07:16:13', '2023-07-10 07:16:13'),
(12, 9, 'Tahun 2019', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/BeBllcuHyGPpGCSN6EwtmSzIzKnvSPiknZVc5FWf.png\" alt=\"\" width=\"672\" height=\"895\" /></p>', 'tahun-2019', 'Ada', '2023-07-10 08:34:18', '2023-07-10 08:34:18'),
(13, 9, 'Tahun 2021', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/cj108TMOBvJdztkroy7KM5E9k9cfjMf7bX87S8GA.png\" alt=\"\" width=\"906\" height=\"671\" /></p>', 'tahun-2021', 'Ada', '2023-07-10 08:35:38', '2023-07-10 08:35:38'),
(14, 9, 'Tahun 2022', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/eXHalSWukvSoNuBx7d9PwJxwygkL7AClUdPuEyAE.png\" alt=\"\" width=\"795\" height=\"970\" /></p>', 'tahun-2022', 'Ada', '2023-07-10 08:37:28', '2023-07-10 08:37:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigations_parent_id_foreign` (`parent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `navigations`
--
ALTER TABLE `navigations`
  ADD CONSTRAINT `navigations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `navigations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
