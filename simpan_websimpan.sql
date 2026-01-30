-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2023 at 02:23 AM
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
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `judul`, `path`, `kategori_id`, `user_id`, `isi`, `tanggal`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Pemerintah Kabupaten Muara Enim Mengikuti Kegiatan Evaluasi Smart City Tahap I Tahun 2023', 'vw4InfVtddHpccm5QnIXbfIGVawkyz-metaSU1HLTAyOTAuanBn-.jpg', 1, 1, '<p>Pemerintah Kabupaten Muara Enim mengikuti Evaluasi Gerakan Menuju Kota Cerdas (Smart City) pada hari kedua kegiatan dan Paparan Pemerintah Kabupaten Muara Enim di sampaikan oleh Kepala Diskominfo dan didampingi langsung oleh Kepala Disperkim, Kepala Dinas LH dan beberapa perwakilan dari unit kerja terkait seperti Bappeda, Dinkes, Disdukcapil serta beberapa perwakilan unit kerja lainnya melalui zoom meeting. Paparan Pemerintah Kabupaten Muara Enim disampaikan pada 3 orang asessor Kemkominfo yaitu Andrari Grahitandaru, Kristo Dwi Hartomo dan Achmad Ilham.</p>\n<p>Selanjutnya disampaikan beberapa pertanyaan dan saran yang disampaikan oleh asessor dengan rincian sebagai berikut&nbsp;</p>\n<ol>\n<li>Asessor Andrari Grahitandaru menyampaikan saran seperti :\n<ol>\n<li>Kebijakan mengenai Masterplan Smart City perlu ditingkatkan menyesuaikan Peraturan Pemerintah Nomor 59 Tahun 2022 tentang Perkotaan dalam Mendukung Implementasi Kota Cerdas;</li>\n<li>Setelah 5 tahun Masterplan Smart City dapat direvisi menyesuaikan dengan perubahan pada Pemerintah Kabupaten/Kota;</li>\n<li>Disetiap program kegiatan Masterplan Smart City diharapkan mengutamakan inovasi, kolaborasi dengan stakeholder dan masyarakat, pendanaan kegiatan smart city tidak harus dari APBD tetapi bisa melalui CSR, relawan TIK, LSM Lingkungan dan masyarakat pengerak ekonomi;</li>\n<li>Semua penerapan Sistem Pemerintahan Berbasis Elektronik agar di masukkan kedalam Masterplan dan guna mendukung penerapan Smart City dibidang Smart Government khususnya perizinan dan investasi, diharapakan mulai menerapakan Mall Pelayanan Publik Digital;</li>\n</ol>\n</li>\n<li>Asessor Kristo Dwi Hartomo menyampaikan beberapa pertanyaan/konfirmasi seperti :\n<ol>\n<li>Upaya dalam menyelasaikan kendala SDM Teknis; Integrasi di Website/Portal Pemerintah;</li>\n<li>Kondisi perangkat keras pendukung.</li>\n</ol>\n</li>\n</ol>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/OcDVx0OSCqYJbGdpMPVT4WEzFpaz7ArzC5GVHmJv.jpg\" alt=\"\" width=\"489\" height=\"367\" /></p>\n<p>Selanjutnya Kepala Diskominfo menjelaskan hal-hal terkait progres smart city dan pertanyaan oleh asessor dengan rincian</p>\n<ol>\n<li>Untuk menyelesaikan kendala SDM Teknis telah dilakukan kerjasama dengan Pihak ke-3 untuk menyediakan Bundling Engginer on Site Programmer</li>\n<li>Selain itu juga didorong kepada ASN untuk mengikuti pelatihan teknis terkait baik secara offline maupun online seperti Digitalent Kominfo;</li>\n<li>Kemudian dijelaskan bahwa saat ini portal pemerintah kabupaten muara enim sedang dalam pengembangan baik dari sisi User Interface dan User Experience maupun peningkatan integrasi dengan berbagai layanan pemerintah lainnya;</li>\n<li>Kemudian untuk kondisi perangkat keras pendukung dijelaskan bahwa Pemerintah Kabupaten Muara Enim terus berupaya melakukan perbaikan perangkat keras guna memberikan pelayanan administrasi pemerintahan dan publik yang lebih baik, hal tersebut dilakukan melalui pemasangan V-SAT di 3 titik objek wisata, pergantian perangkat keras yang rusak, serta penambahan memori/RAM server aplikasi pelayanan administrasi pemerintahan dan publik.</li>\n<li>Terakhir dijelaskan bahwa saat ini Forum CSR telah dilaksanakan dan dikoordinasikan oleh Bappeda.</li>\n</ol>', '2023-06-14', 'pemerintah-kabupaten-muara-enim-mengikuti-kegiatan-evaluasi-smart-city-tahap-i-tahun-2023', '2023-07-10 05:13:19', '2023-07-10 08:24:42'),
(2, 'Diskominfo Muara Enim Gelar Bimtek Pengelolaan Aplikasi SISTER Tahun 2022', 'syw2qAWHbbU6adXqQSupJyNbdQhh31-metaQmltdGVrIFNJU1RFUi5wbmc=-.png', 2, 1, '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 14pt;\">Dalam rangka mendukung Pembangunan Sistem Data Statistik Sektoral yang baik dan terintergrasi untuk terwujudnya Satu Data Indonesia. Pemerintah Kabupaten Muara Enim melalui Dinas Komunikasi dan Informatika Kabupaten Muara Enim (Diskominfo) mengadakan kegiatan Bimbingan Teknis (Bimtek) Pengelolaan Aplikasi SISTER (Statistik Sektoral Terintegrasi) Tahun 2022 Kabupaten Muara Enim di Ruang Rapat Pangripta Nusantara Kantor Bappeda Muara Enim, Rabu&nbsp;(19/10) yang dibuka langsung oleh Asisten III Bidang Administrasi Umum Maryana.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 14pt;\">Dalam arahannya didepan 60 (enam puluh) orang Admin atau Operator SISTER dari Seluruh Perangkat Daerah Lingkup Pemkab Muara Enim. Asisten III mengatakan, Bimtek&nbsp; Pengelolaan Aplikasi SISTER ini dilaksanakan guna mendukung Pembangunan Sistem Data Statistik Sektoral yang baik dan terintergrasi untuk terwujudnya Satu Data Indonesia yang mana Pemerintah Daerah selaku penyelenggara Statistik Sektoral harus berperan serta dalam mewujudkan data Statistik Sektoral yang akurat, mutakhir, terpadu dan dapat dipertanggung jawabkan, serta mudah diakses dapat dipublikasian serta dimanfaatkan dengan mudah.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 14pt;\">Lebih lanjut dirinya menerangkan, sesuai dengan amanat UU Nomor 14 Tahun 2008 tentang Keterbukaan Informasi Publik. Dengan keberadaan Aplikasi SISTER sebagai sarana Satu Data Kabupaten Muara Enim tentunya masyarakat yang akan lebih mudah memperoleh informasi berupa data yang dibutuhkan serta menjadi pedoman pengelolaan dan pelayanan informasi dan dokumentasi.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 14pt;\">Untuk itu, mengingat pentingnya Aplikasi SISTER ini sebagai sarana keterbukaan informasi satu data dan sebagai wadah penyimpanan dokumentasi data dari masing-masing instansi diharapkan kerjasama yang baik antar Pejabat Pengelola Kabupaten Muara Enim yang dalam hal ini tanggungjawabnya berada di Dinas Komunikasi dan Informatika dan seluruh Pejabat Penghubung / Administrator / Operator Aplikasi SISTER yang ada di Perangkat Daerah dalam mengelola data statistik sektoral dari masing-masing instansi secara sederhana, cepat, tepat, tuntas dan terkoordinasi guna memberikan pelayanan yang lebih baik untuk masyarakat sesuai dengan visi Kabupaten Muara Enim #MERAKYAT Muara Enim untuk Rakyat yang Agamis, Berdaya Saing, Mandiri, Sehat dan Sejahtera.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 14pt;\">Dikesempatan yang sama, Kepala Dinas Kominfo Kabupaten Muara Enim Ardian Arifanardi&nbsp; yang hadir sekaligus menjadi narasumber dalam Bimtek tersebut menjelaskan bahwa tugas pokok dari pada Perangkat Daerah selaku produsen data yakni untuk mendokumentasikan dan memanfaatkan data tersebut salah satunya dengan mempublikasikannya.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 14pt;\">\"Kalau data hanya di dalam meja saja, maka hanya akan menjadi lembar-lembaran tidak berguna, dokumen-dokumen tersebut harusnya dipublikasikan dan digunakan oleh pihak-pihak yang membutuhkan, oleh karena itu Diskominfo membuat aplikasi yang bisa mendokumentasikan sekaligus mempublikasikan data-data statistik yang ada di tiap OPD agar dalam proses pendataan hingga pemanfataannya maksimal dan akurat,\" ujar Ardian</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 14pt;\">Nampak hadir juga dalam Bimtek tersebut, para Kepala Organisasi Perangkat Daerah lingkup Pemkab. Muara Enim ataupun yang mewakili.</span></p>', '2022-10-19', 'diskominfo-muara-enim-gelar-bimtek-pengelolaan-aplikasi-sister-tahun-2022', '2023-07-10 05:24:16', '2023-07-10 05:24:16'),
(3, 'Pemkab Muara Enim Ikuti Pelaksanaan Penilaian Interviu Evaluasi SPBE Tahun 2021', 'ZISMsksIn2Sba94vS85vYSYWxna72O-metaQ2FwdHVyZS5wbmc=-.png', 4, 1, '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Pemerintah Kabupaten (Pemkab) Muara Enim melalui Dinas Komunikasi dan Informatika (Diskominfo) Kab. Muara Enim serta Perangkat Daerah terkait mengikuti secara virtual dari Ruang Rapat Pangripta Sriwijaya, Kantor Bappeda Muara Enim, Pelaksanaan Penilaian Interviu Evaluasi Sistem Pemerintahan Berbasis Elektronik (SPBE)&nbsp; yang dilaksanakan oleh Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Republik Indonesia (Kemenpan RB), Rabu (01/09) pagi.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Dalam kesempatan tersebut dilakukan klarifikasi dan validasi lebih lanjut oleh Asesor Eksternal Kemenpan RB terhadap bukti dukung yang telah disampaikan oleh Diskominfo Muara Enim melalui Aplikasi Evaluasi SPBE sebagai hasil penilaian mandiri yang bertujuan untuk memantau kematangan penerapan SPBE di setiap Instansi Pemerintah serta mendapatkan gambarannya secara umum.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Mewakili Sekretaris Daerah Kab. Muara Enim, Kadiskominfo Kab. Muara Enim Ardian Arifanardi berkoordinasi dan berkolaborasi dengan Perangkat Daerah terkait dalam menanggapi hal-hal yang dipertanyakan oleh para asesor guna pemaksimalan SPBE Kab. Muara Enim kedepan.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">&ldquo;Kami ucapkan terima kasih sebesar-besarnya kepada tim evaluator yang mana dengan adanya interviu ini kami banyak mendapat pengetahuan, karena sejujurnya sejak terjadinya perubahan indikator memang agak membuat kami harus ekstra dalam melakukan evaluasi akan tetapi terhadap kekurangan yang ada sebisa mungkin akan kami perbaiki dan akan kami lengkapi karena kami sangat konsisten dalam penerapan SPBE ini,&rdquo; ucap Ardian diakhir evaluasi.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Tak lupa, Ardian juga mengucapkan terima kasih kepada Perangkat Daerah yang sudah hadir memberikan dukungan dalam memaksimalkan SPBE Kab. Muara Enim, dan dirinya berharap kembali dukungan kerjasama tersebut dalam memenuhi kekurangan dokumen tambahan yang di evaluasi tadi mengingat tanggal 8 September 2021 nanti batas akhir untuk mengupload dokumen tersebut.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">&ldquo;Semoga apa yang kita lakukan untuk kemaksimalan SPBE Kab. Muara Enim ini dapat memberikan dampak positif bagi meningkatnya indeks SPBE Kab. Muara Enim,&rdquo; harap Ardian.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Dalam proses evaluasi tahun ini, Kemenpan RB melibatkan 25 Perguruan Tinggi&nbsp; di Indonesia yang tujuannya untuk meningkatkan kualitas evaluasi dengan menjaga objektivitas, profesionalitas bidang, dan independensi penilaian dan untuk Kab. Muara Enim sendiri&nbsp; dievaluasi oleh dua orang asesor yakni Andeka Rocky Tanaamah dan Christ Rudianto dari Universitas Kristen Satya Wacana (UKSW) Kota Salatiga, Prov. Jawa Tengah.</p>', '2021-09-01', 'pemkab-muara-enim-ikuti-pelaksanaan-penilaian-interviu-evaluasi-spbe-tahun-2021', '2023-07-10 05:27:05', '2023-07-10 08:32:43'),
(4, 'Pemkab Muara Enim Gelar Rapat Evaluasi Smart City Dan Penunjukan PIC 6 Dimensi Smart City', 'W6IXho5Ar3iSWytaJDSODR6Y5R7QbT-metac2MgMS5wbmc=-.png', 1, 1, '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 12pt;\">Sejak tahun 2018 yang lalu, terhitung sudah 6 (enam) kali Kabupaten Muara Enim dievaluasi oleh Kementerian Komunikasi dan Informatika (Kemkominfo) terkait Program ataupun Penerapan Smart City di Kabupaten Muara Enim.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 12pt;\">Pagi tadi, Pemkab Muara Enim melalui Dinas Komunikasi dan Informatika (Diskominfo) menggelar Rapat Evaluasi Smart City dan Penunjukan Penanggung Jawab (PIC) 6 (enam) Dimensi Smart City (Smart economy,&nbsp; Smart mobility, Smart environment, Smart people, Smart living dan Smart governance) pada masing-masing&nbsp; Perangkat Daerah di Ruang Rapat Pangripta Nusantara, Kantor Bappeda Muara Enim, Jum&rsquo;at (30/04).</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 12pt;\">Rapat Evaluasi yang juga diisi pemaparan Evaluasi Smart City oleh Kabid e-Government Diskominfo Iwan Setiawan tadi dibuka langsung oleh Kadiskominfo Muara Enim Ardian Arifanardi didampingi Panca Surya Diharta Kadis Perpustakaan dan Kearsipan Muara Enim yang juga menghadirkan langsung sejumlah Pejabat dari Perangkat Daerah yang membidangi Smart City di Instansinya masing- masing.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 12pt;\">Dalam arahannya, Ardian mengatakan, selain membahas Evaluasi Smart City. Disini juga kita menunjuk penanggung jawab (PIC) setiap program dari masing-masing dimensi smart city untuk berada di lokasi program dan lakukan persiapan tinjauan lapangan guna untuk menyambut asesor dari Kemkominfo dalam rangka tinjauan lapangan secara daring dan harus menghadirkankan yang diminta untuk mengisi kuesioner.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 12pt;\">Untuk itu, Ardian meminta agar nanti setiap PIC yang di tinjau untuk siap dalam segala hal yang di butuhkan oleh asesor guna menunjang eksistensi Smart City Kabupaten Muara Enim.</span></p>', '2021-04-30', 'pemkab-muara-enim-gelar-rapat-evaluasi-smart-city-dan-penunjukan-pic-6-dimensi-smart-city', '2023-07-10 07:01:44', '2023-07-10 07:01:44'),
(5, 'Kabupaten Muara Enim Melakukan Konsultasi Bersama Pembimbing Smart City', '1VdSYjvT51foiCUhENUOkkYywf8KcW-metaSU1HXzIyMjIuanBn-.jpg', 1, 1, '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #888888; font-family: \'Signika Negative\', sans-serif; font-size: 14px; background-color: #ffffff; text-align: justify;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-family: Arial, \'sans-serif\';\">Dalam rangka persiapan evaluasi Gerakan Menuju Smart City yang akan dilaksanakan di bulan Desember 2021, Kabupaten Muara Enim dalam hal ini melalui Dinas Komunikasi dan Informatika melakukan kunjungan konsultasi bersama Pembimbing Smart City Kabupaten Muara Enim </span><span style=\"box-sizing: border-box; font-family: Arial, \'sans-serif\';\">di Bandung, 10 s/d 13 November 2021 </span><span style=\"box-sizing: border-box; font-family: Arial, \'sans-serif\';\">dengan topik utama yaitu penyampaian hasil t</span><span style=\"box-sizing: border-box; font-family: Arial, sans-serif;\">injauan lapangan yang dilaksanakan di bulan Mei 2021 serta Persiapan Monitoring Evaluasi Smart City 2021.</span></span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #888888; font-family: \'Signika Negative\', sans-serif; font-size: 14px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Hasil Tinjauan Lapangan dan Persiapan Monitoring Evaluasi Smart City 2021 telah disampaikan kepada pembimbing melalui Bapak Hary Febriansyah dengan rincian sebagai berikut :</span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #888888; font-family: \'Signika Negative\', sans-serif; font-size: 14px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">1. Focus Group Discussion (FGD) terkait perkembangan pengisian form evaluasi smart city online, yang terdiri dari 5 bagian yaitu</span></p>\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: #888888; font-family: \'Signika Negative\', sans-serif; font-size: 14px; background-color: #ffffff; list-style-type: lower-alpha;\">\n<li style=\"box-sizing: border-box; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Baseline : terkait perencanaan dan realisasi program smart city</span></li>\n<li style=\"box-sizing: border-box; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Output : terkait kebijakan, kelembagaan dan anggaran smart city</span></li>\n<li style=\"box-sizing: border-box; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Outcome : terkait program dan rencana aksi program smart city</span></li>\n<li style=\"box-sizing: border-box; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Impact : terkait kuisioner dampak program smart city yang dikumpulkan oleh PIC Program smart city dengan total 300 responden</span></li>\n<li style=\"box-sizing: border-box; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Quick Win : terkait perumusan inovasi, daya tarik inovasi, manfaat, keunikan peluang kemitraan, potensi pengembangan, keberlangsungan, sumber daya manajemen resiko, keberlanjutan.</span></li>\n<li style=\"box-sizing: border-box; text-align: justify;\"><span style=\"color: #000000; font-size: 12pt;\">Saran disampaikan langsung oleh Bapak Hary Febriansyah agar dapat meningkatkan koordinasi dan sinkronisasi antar OPD penanggung jawab program smart city agar pengisian form evaluasi online dan data pendukung dapat dilengkapi sesuai batas waktu dari Kementerian Komunikasi Dan Informatika.</span></li>\n</ol>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #888888; font-family: \'Signika Negative\', sans-serif; font-size: 14px; background-color: #ffffff;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif;\">2.&nbsp;</span><span style=\"box-sizing: border-box; font-family: Arial, sans-serif;\">Pembahasan Quick Win Kabupaten Muara Enim yang terdiri dari :</span></span></p>\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: #888888; font-family: \'Signika Negative\', sans-serif; font-size: 14px; background-color: #ffffff; list-style-type: lower-alpha;\">\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Pengenalan Program 1 Desa 1 Tenaga IT sebagai Quick Win baru tahun 2021 dari Kabupaten Muara Enim</span></li>\n<li style=\"box-sizing: border-box;\"><span style=\"color: #000000; font-size: 12pt;\">Pembahasan Kondisi terkini dari Quick Win Smart City yang telah ada seperti Colorful Muara Enim dan BUNGA DESA yang tidak berjalan akibat dampak dari pandemi covid-19</span></li>\n<li style=\"box-sizing: border-box;\"><span style=\"color: #000000; font-size: 12pt;\">Saran disampaikan langsung oleh Bapak Hary Febriansyah terkait Colorful Muara Enim agar dapat melakukan video virtual exhibition sehingga Quick Win dapat berjalan kembali.</span></li>\n</ol>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #888888; font-family: \'Signika Negative\', sans-serif; font-size: 14px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">3. Pembahasan Knowladge Management Program Smart City Kabupaten Muara Enim yang terdiri dari</span></p>\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: #888888; font-family: \'Signika Negative\', sans-serif; font-size: 14px; background-color: #ffffff; list-style-type: lower-alpha;\">\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Penjelasan kondisi terkini terkait penerapan Knowladge Management di Kabupaten Muara Enim oleh Kepala Dinas Komunikasi dan Informatika Kabupaten Muara Enim. Penerapan saat ini secara praktis sudah dilaksanakan namun saat ini sudah tidak berjalan</span></li>\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Saran disampaikan langsung oleh Bapak Hary Febriansyah agar Kabupaten Muara Enim dapat menerapkan kembali Knowladge Management di Kabupaten Muara Enim minimal dalam kegiatan Smart City</span></li>\n<li style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-size: 12pt; color: #000000;\">Bentuk penerapan Knowladge Management disampaikan langsung oleh Bapak Hary Febriansyah seperti berbagi pengalaman rutin (knowladge sharing) dengan menentukan tingkat priotitas, dokumentasi pembentukan tim khusus dan dokumentasi naskah dinas seperti Surat Keputusan, Notulen kegiatan, Standar Operasional Prosedur.</span></li>\n</ol>', '2021-11-13', 'kabupaten-muara-enim-melakukan-konsultasi-bersama-pembimbing-smart-city', '2023-07-10 07:09:48', '2023-07-10 07:11:15'),
(6, 'Pemerintah Kabupaten Muara Enim Launching Aplikasi Posting Cinta', 'rC50IZ580VZ0SJ4nwgeRcc9DdC4SHZ-metaQ2FwdHVyZS5wbmc=-.png', 2, 1, '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Berbagai macam upaya terus dilakukan Pemkab. Muara Enim untuk mempercepat penurunan angka stunting yang terdapat di beberapa kecamatan. Salah satunya dengan edukasi yang tepat dan berlanjut kepada orang tua sehingga dapat memonitor perkembangan gizi anak antara lain dengan penggunaan mobile apps (aplikasi smartphone) untuk tracking pola konsumsi dan pemenuhan kebutuhan gizi pada bayi seribu hari pertama kehidupan dalam hal ini Aplikasi Posting Cinta (Pengatur pola konsumsi pangan dengan gizi seimbang untuk mencegah stunting yang menggambarkan cinta ibu dan anak) besutan Dinas Ketahanan Pangan (Ketapang) Kabupaten Muara Enim.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Pengembangan aplikasi ini diharapkan dapat secara comprehensive, terstruktur, dan dapat menjawab semua kebutuhan pengembangan sistem termasuk didalamnya adalah membantu peranan sebagai channel posyandu untuk menginformasikan kandungan gizi yang penting untuk pecegahan stunting.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Mobile apps tersebut nantinya juga dapat memonitor profile dari tiap user yaitu Ibu dan Bayi, seperti jadwal bayi ditimbang berat, diukur tingginya, informasi vaksin dan perkembangan anak untuk mencegah stunting, terang Syamsiah Kadis Ketapang Muara Enim saat menyampaikan laporannya.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Dengan adanya mobile apps tersebut, lanjut Syamsiah, orang tua dapat memonitor perkembangan gizi agar masalah stunting dapat ditangani segera.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Sementara itu, Asisten II Bidang Perekonomian dan Pembangunan H Riswandar yang melaunching langsung Aplikasi Posting Cinta tersebut berharap dengan diluncurkannya Aplikasi Posting Cinta ini semoga dapat memberikan manfaat &nbsp;bahkan dapat mempercepat penanganan kasus stunting di Kabupaten Muara Enim, sekaligus mendukung terwujudnya #MERAKYAT Muara Enim untuk Rakyat yang Agamis, Berdaya Saing, Mandiri, Sehat, dan Sejahtera.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Karena, lanjut Asisten, mendengar penjelasan yang disampaikan oleh Kadis Ketapang tadi tentu aplikasi ini dapat &nbsp;menekan angka stunting di Kabupaten Muara Enim apabila benar-benar diterapkan dengan baik.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">&ldquo;Yang terpenting kepada bidan desa atau tenaga kesehatan yang bertugas menangani langsung masalah stunting ini agar dapat menerapkan dan mensosialisasikan aplikasi ini kepada ibu-ibu dalam setiap kesempatan,&rdquo; tegas Riswandar.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Hadir diantaranya Unsur Forkopimda Kabupaten Muara Enim, Staf Ahli Bidang Pemerintahan, Hukum, dan Politik, para Kepala Perangkat Daerah Lingkup Pemkab. Muara Enim, &nbsp;Ketua Organisasi Wanita dalam Kabupaten Muara Enim, Ketua Ikatan Bidan Indonesia Kabupaten Muara Enim, dan Bidan Desa Se-Kabupaten Muara Enim.</p>', '2023-04-04', 'pemerintah-kabupaten-muara-enim-launching-aplikasi-posting-cinta', '2023-07-10 08:28:36', '2023-07-10 08:28:36'),
(7, 'Pemkab Muara Enim Ikuti Penilaian Evaluasi Program Gerakan menuju Smart City tahun 2021', 'ZQIU1569hf5fjGFx4PNB9uGCkPe1Ux-metac2FkZmRzYWZkc2EucG5n-.png', 1, 1, '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Pemkab. Muara Enim melalui Dinas Komunikasi dan Informatika (Diskominfo) Kab. Muara Enim mengikuti secara virtual dari Ruang Rapat Pangripta Nusantara, Kantor Bappeda Muara Enim kegiatan Penilaian Evaluasi dalam rangka Program Gerakan menuju Smart City tahun 2021 oleh Tim Asesor dari Kementerian Komunikasi dan Informatika Republik Indonesia (Kemkominfo RI) yakni Windy Gambetta, Fitrah R Kautsar, Dudi Hermawan, Lukito Edi Nugroho, dan Sri Yulianto.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Dalam evaluasi tersebut, Rabu (08/12) pagi. Kadiskominfo Muara Enim Ardian Arifanardi memaparkan Gerakan menuju Smart City Kab. Muara Enim yang diantaranya menjelaskan Profil Daerah Kab. Muara Enim, Visi Muara Enim Smart Regency \'Wujudkan Muara Enim Smart Regency yang Nyaman, Berdaya Saing dan Lestari\', Rencana Aksi termasuk Quick Wins Muara Enim Smart Regency antara lain Aplikasi Mance (Muara Enim Center), SiCerdas (Sistem Informasi, Cepat, Efisien, Responsif dan Berintegritas), Rumah UMKM Gerbang Serasan Muara Enim, Colorful Muara Enim dan Bunga Desa (Bupati Ngantor di Desa) serta New Quick Wins yakni 1 Desa 1 Tenaga IT.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Selanjutnya, Kadiskominfo Muara Enim yang didampingi Kabid E-Government Iwan Setiawan memaparkan capaian 6 Dimensi Muara Enim Smart Regency diantaranya Smart Branding, program Smart Branding yang telah dilaksanakan sesuai masterplan tahun 2021 yaitu menggelar festival budaya dan atau temu investor, pembangunan citra melalui social media, memperbaiki kuantitas dan kualitas direktori dan review objek wisata, hotel, tempat belanja di aplikasi dan website direktori nasional dan global (Google My Business, Google Map, Qraved, TripAdvisor, dst), membuat slogan dan logo khusus pariwisata, sistem informasi panduan dan direktori pariwisata, serta pengembangan sumber daya dan pemasaran ekonomi kreatif.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">\"Inti dari Program Muara Enim Smart Regency ini adalah mewujudkan masyarakat Muara Enim yang Nyaman, Berdaya Saing dan Lestari, itulah goalnya,\" ungkap Ardian yang tak lupa mengucapkan terima kasih kepada Tim Asesor Kemkominfo RI.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Open Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14.4px; background-color: #ffffff; text-align: justify;\">Nampak hadir dalam evaluasi tersebut, PIC (Penanggung Jawab dari Perangkat Daerah yang membidangi Smart City di Instansinya masing- masing).</p>', '2021-12-08', 'pemkab-muara-enim-ikuti-penilaian-evaluasi-program-gerakan-menuju-smart-city-tahun-2021', '2023-07-10 08:32:04', '2023-07-10 08:32:04'),
(8, 'Pemkab Muara Enim Ikuti FGD Pendampingan Penyusunan Arsitektur SPBE Instansi Pusat dan Daerah', 'tWN9tsovKLefSS8q5YZppnzRlWe3MB-metaUEVOWVVTVU5BTiBBUlNJVEVLVFVSLnBuZw==-.png', 4, 1, '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 12pt; color: #000000;\"><span style=\"box-sizing: border-box;\">Pemerintah Kabupaten Muara Enim mengikuti&nbsp;</span>kegiatan Forum Grup Discussion (FGD) Pendampingan Penyusunan Arsitektur Sistem Pemerintahan Berbasis Elektronik (SPBE) pada Instansi Pusat dan Pemerintah Daerah di Jakarta, 15 Februari 2023 yang dilaksanakan oleh Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi (PANRB) melalui Kedeputian Kelembagaan dan Tata Laksana. Acara ini dibuka oleh Analis Kebijakan Madya Deputi Bidang Kelembagaan dan Tata Laksana Kementerian PANRB Perwita Sari.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 12pt; color: #000000;\">FGD ini diselenggarakan dalam rangka mendukung penerapan Sistem Pemerintahan Berbasis Elektronik Nasional sesuai dengan Peraturan Presiden No. 95/2018 tentang Sistem Pemerintahan Berbasis Elektronik dan Peraturan Presiden No. 132/2022 tentang Arsitektur SPBE Nasional. Selain itu, diadakannya FGD ini sekaligus untuk penyampaian akun Sistem Informasi Arsitektur (SIA) SPBE untuk mewujudkan keterpaduan layanan digital nasional.</span></p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #252525; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff; text-align: justify;\"><span style=\"font-size: 12pt; color: #000000;\"><span style=\"box-sizing: border-box;\">Acara ini menghadirkan narasumber Koordinator Tata Kelola Sistem Elektronik Pemerintahan, Direktorat Tata Kelola Aplikasi Informatika Kementerian Komunikasi dan Informatika Jusuf A. Simatupang; Analis Tata Kelola Keamanan Siber, Direktorat Keamanan Siber dan Sandi Pemerintah Daerah Badan Siber dan Sandi Negara Aris Munandar;&nbsp;</span><span style=\"box-sizing: border-box;\">dan Tim Ahli Kelompok Kerja Forum Satu Data Indonesia Bidang Tata Kelola Data Kementerian PPN/Bappenas Nuzulul Azizah.</span></span></p>', '2023-02-15', 'pemkab-muara-enim-ikuti-fgd-pendampingan-penyusunan-arsitektur-spbe-instansi-pusat-dan-daerah', '2023-07-10 08:46:30', '2023-07-10 08:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`id`, `nama`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Peraturan Bupati Muara Enim Nomor 52 Tahun 2022 tentang Penyelenggaraan Sistem Pemerintahan Berbasis Elektronik', 'MzESc93HYcHCH4y2ZxKFce2ApvznSD-metaQS5wZGY=-.pdf', '2023-07-10 05:50:38', '2023-07-10 05:56:25'),
(2, 'Peraturan Bupati Muara Enim Nomor 53 Tahun 2022 tentang Rencana Induk Sistem Pemerintahan Berbasis Elektronik', 'lWp018L4g1ovdANP01EB92i5wG2Euk-metaQi5wZGY=-.pdf', '2023-07-10 05:54:09', '2023-07-10 05:56:38'),
(3, 'Surat Keputusan Bupati Muara Enim Nomor 65 Tahun 2023 tentang Tim Koordinasi SPBE Pemerintah Kabupaten Muara Enim Tahun 2023', 'dmWEfO7xihtVFICSsUfaCh8Wrz29TT-metaU0sgVElNIEtPT1JESU5BU0kgU1BCRSAyMDIzLnBkZg==-.pdf', '2023-07-10 05:56:12', '2023-07-10 05:57:12'),
(4, 'Surat Keputusan Bupati Muara Enim Nomor 66 Tahun 2023 tentang Tim Asesor Internal SPBE Lingkup Kabupaten Muara Enim Tahun 2023', 'jYCSW6ckNjvZlJ6Lt335u9UJljXgWf-metaU0sgVElNIEFTRVNPUiBJTlRFUk5BTCBTUEJFIDIwMjMucGRm-.pdf', '2023-07-10 05:59:17', '2023-07-10 05:59:17'),
(5, 'SOP Akses Ruang Data Center Pemkab Muara Enim', 'pUqeF6UJ2B9U3ePOdVZJlCPz4oCkDl-metaU09QIEFrc2VzIHJ1YW5nIGRhdGEgY2VudGVyIHBlbWthYl8wMDEucGRm-.pdf', '2023-07-10 09:00:54', '2023-07-10 09:00:54'),
(6, 'SOP Monitoring dan evaluasi SPBE', 'THcFu0ogxacqaCavCIY5z1VGixDiNJ-metaU09QIE1vbml0b3JpbmcgZGFuIGV2YWx1YXNpIFNQQkVfMDAxLnBkZg==-.pdf', '2023-07-10 09:01:23', '2023-07-10 09:01:23'),
(7, 'SOP Pemeliharaan Komponen Jaringan', 'JOvmBywf4s5ZJS33ci83upiZJHra2X-metaU09QIFBlbWVsaWhhcmFhbiBrb21wb25lbiBqYXJpbmdhbl8wMDEucGRm-.pdf', '2023-07-10 09:01:45', '2023-07-10 09:01:45'),
(8, 'SOP Penyusunan Arsitektur SPBE', 'Ldr2SkaoGAPyDpBPMNRtwDmtawFrO8-metaU09QIFBlbnl1c3VuYW4gQXJzaXRla3R1ciBTUEJFXzAwMS5wZGY=-.pdf', '2023-07-10 09:02:14', '2023-07-10 09:02:14'),
(9, 'SOP Penyusunan Kebijakan Teknis SPBE', 'j96M2S3xuwLUq9huoMznUgR5m8JwKK-metaU09QIFBlbnl1c3VuYW4gS2ViaWpha2FuIFRla25pcyBTUEJFXzAwMS5wZGY=-.pdf', '2023-07-10 09:02:38', '2023-07-10 09:02:38'),
(10, 'SOP Tatalaksana Permohonan Penggunaan Subdomain dan Hosting', 'ZN3lYw4P1rKbwRKtV3d385fULxbuy7-metaU09QIFRhdGFsYWtzYW5hIHBlbmdndW5hYW4gc3ViIGRvbWFpbi5wZGY=-.pdf', '2023-07-10 09:05:06', '2023-07-10 09:05:06'),
(11, 'SOP Pengembangan Aplikasi E-Government', 'owW15R44X0Bh8ntbdREWgPdG8HVYj2-metaU09QIFBlbmdlbWJhbmdhbiBBcGxpa2FzaSBFLUdvdmVybm1lbnQucGRm-.pdf', '2023-07-10 09:56:29', '2023-07-10 09:56:29'),
(12, 'SOP Penambahan Infrastruktur Jaringan', 'bnriMgsUu1E2FUp7EaRAaAIZxQ5GaB-metaU09QIFBFTkFNQkFIQU4gSU5GUkFTVFJVS1RVUiBKQVJJTkdBTi5wZGY=-.pdf', '2023-07-10 09:57:37', '2023-07-10 09:57:37');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Smart City', 'smart-city', '2023-07-10 05:11:40', '2023-07-10 05:11:40'),
(2, 'Aplikasi', 'aplikasi', '2023-07-10 05:11:45', '2023-07-10 05:11:45'),
(3, 'Infra TIK', 'infra-tik', '2023-07-10 05:11:54', '2023-07-10 05:11:54'),
(4, 'SPBE', 'spbe', '2023-07-10 05:32:55', '2023-07-10 05:32:55');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_28_032550_create_navigations_table', 1),
(6, '2023_04_28_070246_create_kategoris_table', 1),
(7, '2023_04_28_071526_create_beritas_table', 1),
(8, '2023_04_28_085518_create_headers_table', 1),
(9, '2023_04_28_085720_create_pegawais_table', 1),
(10, '2023_06_12_020436_create_berkas_table', 1);

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
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'super@admin.com', NULL, '$2y$10$t0X6Ay7mN30eOrN.cEqT.u07mLeg5OG2Ryq.zs8Zh1AOIfZnR9Oq2', NULL, '2023-07-09 18:06:42', '2023-07-09 18:06:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beritas_user_id_foreign` (`user_id`),
  ADD KEY `beritas_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigations_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beritas`
--
ALTER TABLE `beritas`
  ADD CONSTRAINT `beritas_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `beritas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navigations`
--
ALTER TABLE `navigations`
  ADD CONSTRAINT `navigations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `navigations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
