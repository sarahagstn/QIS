-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 Agu 2017 pada 13.46
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspek`
--

CREATE TABLE `aspek` (
  `id_aspek` int(11) NOT NULL,
  `aspek` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aspek`
--

INSERT INTO `aspek` (`id_aspek`, `aspek`) VALUES
(1, 'Komitmen Terhadap Penerapan Tata Kelola Perusahaan yang Baik Secara Berkelanjutan'),
(2, 'Pemegang Saham dan RUPS/Pemegang Modal'),
(3, 'Dewan komisaris/Dewan Pengawas'),
(4, 'Direksi'),
(5, 'Pengungkapan informasi dan Transparansi'),
(6, 'Aspek Pendukung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `assessment`
--

CREATE TABLE `assessment` (
  `id_assessment` int(11) NOT NULL,
  `id_indikator` int(11) NOT NULL,
  `nilai` decimal(11,11) NOT NULL,
  `id_parameter` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tanggal` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `assessment`
--

INSERT INTO `assessment` (`id_assessment`, `id_indikator`, `nilai`, `id_parameter`, `user_id`, `tanggal`) VALUES
(1, 1, '0.99999999999', NULL, 1, 2017),
(2, 5, '0.99999999999', NULL, 1, 0000),
(3, 1, '0.25000000000', NULL, 2, 0000),
(4, 5, '0.75000000000', NULL, 1, 0000),
(7, 2, '0.25000000000', NULL, 1, 0000),
(8, 3, '0.50000000000', NULL, 2, 0000),
(9, 15, '0.75000000000', NULL, 1, 0000),
(10, 11, '0.00000000000', NULL, 1, 0000),
(11, 4, '0.00000000000', 8, 3, 0000),
(12, 2, '0.00000000000', NULL, 1, 0000),
(13, 4, '0.25000000000', NULL, 2, 0000),
(14, 2, '0.75000000000', NULL, 2, 0000),
(15, 4, '0.25000000000', NULL, 1, 0000),
(16, 4, '0.00000000000', NULL, 1, 0000),
(17, 2, '0.25000000000', 2, 1, 0000),
(18, 6, '0.00000000000', 12, 1, 0000),
(19, 5, '0.00000000000', 9, 2, 0000),
(20, 3, '0.75000000000', NULL, 2, 0000),
(21, 10, '0.75000000000', NULL, 1, 0000),
(22, 1, '0.25000000000', 1, 1, 2016),
(23, 7, '0.50000000000', NULL, 1, 2017),
(25, 3, '0.25000000000', 7, 1, 2017),
(26, 1, '0.50000000000', NULL, 1, 2017),
(27, 1, '0.25000000000', 1, 1, 2017),
(28, 1, '0.50000000000', NULL, 1, 2017),
(31, 1, '0.75000000000', NULL, 1, 2017),
(32, 1, '0.50000000000', NULL, 1, 2017),
(35, 1, '0.25000000000', 1, 1, 2017),
(36, 1, '0.50000000000', NULL, 1, 2017),
(37, 1, '0.75000000000', NULL, 1, 2017),
(38, 1, '0.25000000000', 1, 1, 2017),
(39, 1, '0.25000000000', 1, 1, 2017),
(41, 1, '0.25000000000', 1, 1, 2017),
(42, 1, '0.25000000000', 1, 1, 2017),
(43, 1, '0.25000000000', 1, 1, 2017),
(44, 2, '0.25000000000', 2, 1, 2017),
(45, 3, '0.25000000000', 7, 1, 2017),
(47, 3, '0.25000000000', 7, 1, 2017),
(48, 1, '0.25000000000', 1, 1, 2017),
(49, 1, '0.25000000000', 1, 1, 2017),
(50, 1, '0.25000000000', 1, 1, 2017),
(51, 1, '0.25000000000', 1, 1, 2017),
(52, 2, '0.50000000000', NULL, 1, 2017),
(53, 1, '0.25000000000', 1, 1, 2017),
(54, 1, '0.25000000000', 1, 1, 2017),
(55, 43, '0.25000000000', 78, NULL, 0000),
(56, 1, '0.25000000000', 1, 1, 2017),
(57, 1, '0.25000000000', 1, 1, 2017),
(58, 1, '0.00000000000', 1, 1, 2017),
(59, 1, '0.00000000000', 1, 2, 2016),
(60, 2, '0.00000000000', 2, 2, 2017),
(61, 4, '0.25000000000', 8, 1, 2017),
(62, 3, '0.00000000000', 7, 2, 2017),
(63, 2, '0.25000000000', 2, 1, 2017),
(64, 3, '0.25000000000', 7, 2, 2017),
(65, 1, '0.25000000000', 1, 1, 2017),
(66, 2, '0.00000000000', 2, 1, 2017),
(67, 7, '0.00000000000', 14, 2, 2017),
(68, 7, '0.25000000000', 14, 2, 2017),
(69, 2, '0.00000000000', 2, 3, 2017),
(70, 4, '0.00000000000', 8, 3, 2017),
(71, 1, '0.00000000000', 1, 1, 2017),
(72, 2, '0.25000000000', 2, 1, 2017),
(73, 43, '0.00000000000', 78, 1, 2017),
(74, 43, '0.50000000000', NULL, 3, 2017),
(75, 1, '0.25000000000', 1, 1, 2017),
(76, 13, '0.25000000000', 31, 8, 2017),
(77, 14, '0.25000000000', 32, 8, 2017),
(78, 15, '0.25000000000', 33, 8, 2017),
(79, 16, '0.25000000000', 38, 8, 2017),
(80, 17, '0.25000000000', 42, 8, 2017),
(81, 18, '0.25000000000', 44, 8, 2017),
(82, 7, '0.25000000000', 14, 1, 2017),
(83, 8, '0.25000000000', 19, 1, 2017),
(84, 9, '0.50000000000', NULL, 1, 2017),
(85, 10, '0.00000000000', 22, 1, 2017),
(86, 11, '0.00000000000', 28, 1, 2017),
(87, 12, '0.00000000000', 30, 1, 2017);

--
-- Trigger `assessment`
--
DELIMITER $$
CREATE TRIGGER `trigger1` AFTER INSERT ON `assessment` FOR EACH ROW BEGIN
	UPDATE user SET s_assess=1 WHERE id = NEW.user_id;
         
          UPDATE laporan SET nilai = (SELECT avg(nilai) FROM assessment WHERE id_indikator = NEW.id_indikator group by id_indikator) where id_indikator = NEW.id_indikator and tahun=NEW.tanggal;
                       
          
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger2` BEFORE INSERT ON `assessment` FOR EACH ROW BEGIN
      IF (NEW.nilai <= 0.25) THEN
            SET NEW.id_parameter = (SELECT id_parameter FROM parameter WHERE id_indikator = NEW.id_indikator LIMIT 1);
     
      END IF;

    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '3', 1501034428),
('user', '4', 1501034419);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1501025981, 1501025981),
('/admin/*', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/default/*', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/default/index', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/menu/*', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/menu/create', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/menu/index', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/menu/update', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/menu/view', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/permission/*', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/permission/create', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/permission/index', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/permission/update', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/permission/view', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/role/*', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/role/assign', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/role/create', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/role/delete', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/role/index', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/admin/role/remove', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/role/update', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/role/view', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/route/*', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/route/assign', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/route/create', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/route/index', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/route/remove', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/rule/*', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/rule/create', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/rule/index', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/rule/update', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/rule/view', 2, NULL, NULL, NULL, 1501025979, 1501025979),
('/admin/user/*', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/activate', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/delete', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/index', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/login', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/logout', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/signup', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/admin/user/view', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/aspek/*', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/aspek/create', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/aspek/delete', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/aspek/index', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/aspek/update', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/aspek/view', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/assessment/*', 2, NULL, NULL, NULL, 1501095727, 1501095727),
('/assessment/create', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/assessment/delete', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/assessment/index', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/assessment/update', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/assessment/view', 2, NULL, NULL, NULL, 1501095726, 1501095726),
('/auth/*', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/auth/default/*', 2, NULL, NULL, NULL, 1501025978, 1501025978),
('/auth/default/index', 2, NULL, NULL, NULL, 1501025977, 1501025977),
('/debug/*', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/debug/default/*', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/debug/default/index', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/debug/default/view', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/gii/*', 2, NULL, NULL, NULL, 1501025981, 1501025981),
('/gii/default/*', 2, NULL, NULL, NULL, 1501025981, 1501025981),
('/gii/default/action', 2, NULL, NULL, NULL, 1501025981, 1501025981),
('/gii/default/diff', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/gii/default/index', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/gii/default/preview', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/gii/default/view', 2, NULL, NULL, NULL, 1501025980, 1501025980),
('/site/*', 2, NULL, NULL, NULL, 1501025981, 1501025981),
('/site/error', 2, NULL, NULL, NULL, 1501025981, 1501025981),
('/site/index', 2, NULL, NULL, NULL, 1501025981, 1501025981),
('/site/login', 2, NULL, NULL, NULL, 1501025981, 1501025981),
('/site/logout', 2, NULL, NULL, NULL, 1501025981, 1501025981),
('admin', 1, NULL, NULL, NULL, 1501024474, 1501024474),
('user', 1, NULL, NULL, NULL, 1501024498, 1501024498);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `indikator`
--

CREATE TABLE `indikator` (
  `id_indikator` int(11) NOT NULL,
  `nm_indikator` varchar(500) NOT NULL,
  `id_pic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `indikator`
--

INSERT INTO `indikator` (`id_indikator`, `nm_indikator`, `id_pic`) VALUES
(1, 'Perusahaan memiliki Pedoman Tata Kelola Perusahaan yang baik (GCG Code) dan Pedoman Perilaku (code of conduct)', 1),
(2, 'Perusahaan melaksanakan Pedoman Tata Kelola Perusahaan yang baik dan Pedoman Perilaku secara konsisten', 1),
(3, 'Perusahaan melakukan pengukuran terhadap penerapan Tata Kelola Perusahaan yang baik', 1),
(4, 'Perusahaan melakukan koordinasi pengelolaan dan administrasi Laporan Harta Kekayaan Penyelenggara Negara (LHKPN)', 1),
(5, 'Perusahaan melaksanakan Program Pengendalian Gratifikasi sesuai ketentuan yang berlaku', 1),
(6, 'Perusahaan melaksanakan kebijakan atas sistem pelaporan atas dugaan penyimpangan pada perusahaan yang bersangkutan (whistle blowing system)', 1),
(7, 'RUPS/Pemilik modal melakukan pengangkatan dan pemberhentian Direksi', 2),
(8, 'RUPS/ Pemilik Modal melakukan pengangkatan dan pemberhentian Dewan Komisaris/ Dewan Pengawas', 2),
(9, 'RUPS/Pemilik Modal memberikan keputusan yang diperlukan untuk menjaga kepentingan usaha perusahaan dalam jangka panjang dan jangka pendek sesuai dengan peraturan perundang-undangan dan/atau anggaran dasar', 2),
(10, 'RUPS/Pemilik Modal memberikan persetujuan laporan tahunan termasuk pengesahan laporan keuangan serta tugas pengawasan Dewan Komisaris/Dewan Pengawas  sesuai dengan peraturan perundang-undangan dan/atau anggaran dasar', 2),
(11, 'RUPS/Pemilik Modal mengambil keputusan melalui proses yang terbuka dan adil serta dapat dipertanggungjawabkan', 2),
(12, 'Pemegang Saham/Pemilik Modal melaksanakan Tata Kelola Perusahaan yang baik sesuai dengan wewenang dan tanggung jawabnya.', 2),
(13, 'Dewan Komisaris/Dewan Pengawas melaksanakan program pelatihan/ pembelajaran secara berkelanjutan', 3),
(14, 'Dewan Komisaris/Dewan Pengawas melakukan pembagian tugas, wewenang dan tanggung jawab secara jelas serta menetapkan faktor-faktor yang dibutuhkan untuk mendukung pelaksanaan tugas Dewan Komisaris/ Dewan Pengawas', 3),
(15, 'Dewan Komisaaris/Dewan Pengawas memberikan persetujuan atas rancangan RJPP dan RKAP  yang disampaikan Direksi', 3),
(16, 'Dewan Komisaris/ Dewan Pengawas memberikan arahan terhadap Direksi atas implementasi rencana dan kebijakan perusahaan', 3),
(17, 'Dewan Komisaris/Dewan Pengawas melaksanakan pengawasan terhadap Direksi atas implementasi rencana dan kebijakan perusahaan', 3),
(18, 'Dewan Komisaris/Dewan Pengawas melakukan pengawasan terhadap pelaksanaan kebijakan pengelolaan anak perusahaan/ perusahaan patungan.', 3),
(19, 'Dewan Komisaris/Dewan Pengawas berperan dalam pencalonan anggota Direksi, menilai kinerja Direksi (individu dan kolegial) dan mengusulkan tantiem/insentif kinerja sesuai ketentuan  yang berlaku dan mempertimbangkan kinerja Direksi', 4),
(20, 'Dewan Komisaris/ Dewan Pengawas melakukan tindakan terhadap potensi benturan kepentingan yang menyangkut dirinya.', 4),
(21, 'Dewan Komisaris/dewan Pengawas memantau dan memastikan bahwa praktik tata kelola perusahaan yang baik telah diterapkan secara efektif dan berkelanjutan', 4),
(22, 'Dewan Komisaris/Dewan Pengawas menyelenggarakan rapat Dewan Komisaris/Dewan Pengawas yang efektif dan menghadiri rapat Dewan Komisaaris/Dewan Pengawas sesuai dengan ketentuan perundang-undangan', 4),
(23, 'Dewan Komisaris/Dewan Pengawas memiliki Sekretaris Dewan Komisaris/Dewan Pengawas untuk mendukung tugas kesekretariatan Dewan Komisaris/Dewan Pengawas.', 4),
(24, 'Dewan Komisaris/Dewan Pengawas memiliki Komite Dewan Komisaris/Dewan Pengawas yang efektif.', 4),
(25, 'Direksi memiliki pengenalan dan pelatihan/pembelajaran serta melaksanakan program tersebut secara berkelanjutan.', 5),
(26, 'Direksi melakukan pembagian tugas/fungsi, wewenang dan tanggung jawab secara jelas.', 5),
(27, 'Direksi menyusun perencanaan perusahaan', 5),
(28, 'Direksi berperan dalam pemenuhan target kinerja perusahaan', 5),
(29, 'Direksi melaksanakan pengendalian operasional dan keuangan terhadap implementasi rencana dan kebijakan perusahaan.', 5),
(30, 'Direksi melaksanakan pengurusan perusahaan sesuai peraturan perundang-undangan yang berlaku dan anggaran dasar.', 5),
(31, 'Direksi melakukan hubungan yang bernilai tambah bagi peusahaan dan stakeholders.', 5),
(32, 'Direksi memonitor dan mengelola potensi benturan kepentingan anggota Direksi dan manajemen di bawah direksi.', 6),
(33, 'Direksi memastikan perusahaan melakukan keterbukaan informasi dan komunikasi sesuai peraturan perundang-undangan yang berlaku dan penyampaian informasi kepada Dewan Komisaris/Dewan Pengawas dan Pemegang Saham tepat waktu.', 6),
(34, 'Direksi menyelenggarakan rapat Direksi dan menghadiri rapat Dewan Komisaris sesuai dengan ketentuan Perundang-undangan.', 6),
(35, 'Direksi wajib menyelenggarakan pengawasan intern yang berkualitas dan efektif', 6),
(36, 'Direksi menyelenggarakan fungsi sekretaris perusahaan yang berkualitas dan efektif', 6),
(37, 'Direksi menyelenggarakan RUPS Tahunan dan RUPS lainnya sesuai peraturan perundang-undangan', 6),
(38, 'Perusahaan menyediakan informasi perusahaan kepada stakeholders.', 7),
(39, 'Perusahaan menyediakan bagi stakeholder akses atas informasi perusahaan yang relevan, memadai, dan dapat diandalkan secara tepat waktu dan berkala', 7),
(40, 'Perusahaan mengungkapkan informasi penting dalam laporan tahunan  dan laporan keuangan sesuai dengan peraturan perundang-undangan.', 7),
(41, 'Perusahaan memperoleh penghargaan atau award dalam bidang GCG dan bidang lainnya', 7),
(42, 'Praktik tata kelola Perusahaan menjadi contoh atau benmark bagi perusahaan-perusahaan lainnya di Indonesia', 8),
(43, 'Praktik Tata Kelola Perusahaan menyimpang dari prinsip-prinsip Tata Kelola Perusahaan yang baik sesuai Peraturan Menteri Negara BUMN No. PER-01/MBU/2011, Pedoman umum Good Corporate Governance Indonesia dan standar-standar praktik dan ketentuan lainnya.', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `nilai` decimal(3,2) DEFAULT NULL,
  `id_indikator` int(11) DEFAULT NULL,
  `id_parameter` int(11) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `nilai`, `id_indikator`, `id_parameter`, `tahun`) VALUES
(1, '0.32', 1, 1, 2017),
(3, '0.23', 2, 2, 2017),
(4, '0.32', 3, 7, 2017),
(5, '0.25', 43, 78, 2017),
(6, '0.34', 1, 1, 2016),
(7, '0.25', 2, 2, 2016),
(8, NULL, 6, 4, 2017),
(9, NULL, 5, NULL, 2017),
(10, '0.25', 7, 14, 2017),
(11, '0.38', 10, 22, 2017),
(12, '0.00', 11, 28, 2017),
(13, '0.50', 15, 33, 2017);

--
-- Trigger `laporan`
--
DELIMITER $$
CREATE TRIGGER `trigger3` BEFORE UPDATE ON `laporan` FOR EACH ROW IF (NEW.nilai <= 0.6) THEN
            SET NEW.id_parameter = (SELECT id_parameter FROM parameter WHERE id_indikator = NEW.id_indikator LIMIT 1);
     
      END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'Assessment', NULL, '/assessment/index', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1499525217),
('m140506_102106_rbac_init', 1499525560),
('m140602_111327_create_menu_table', 1499525225),
('m160312_050000_create_user', 1499525226);

-- --------------------------------------------------------

--
-- Struktur dari tabel `parameter`
--

CREATE TABLE `parameter` (
  `id_parameter` int(11) NOT NULL,
  `parameter` text NOT NULL,
  `id_indikator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `parameter`
--

INSERT INTO `parameter` (`id_parameter`, `parameter`, `id_indikator`) VALUES
(1, 'Pedoman  Good Corporate Governance  (GCG  Code)  ditinjau  dan dimutakhirkan secara berkala.', 1),
(2, 'Direksi   menunjuk   seorang   anggota   Direksi  sebagai   penanggung   jawab   dalam penerapan dan pemantauan GCG dan melaksanakan tugas sebagai berikut :\na. Menyusun rencana kerja yang diperlukan untuk memastikan perusahaan memenuhi Pedoman Penerapan GCG BUMN dan peraturan perundang-undangan lainnya.\nb. Memantau   dan   menjaga   agar   kegiatan   usaha   perusahaan   tidak menyimpang dari ketentuan yang berlaku;\nc. Memantau  dan  menjaga  kepatuhan  perusahaan   terhadap  perjanjian dan komitmen yang dibuat oleh perusahaan dengan pihak ketiga.', 2),
(4, 'Perusahaan menciptakan situasi kondusif  untuk melaksanakan Pedoman GCG (GCG Code) dan Pedoman Perilaku dengan cara :\r\na. Terdapat kebijakan dan panduan tambahan yang dapat memberikan panduan lebih jauh tentang berbagai praktik yang terdapat dalam Pedoman GCG (GCG Code). Panduan disosialisasikan kepada Dewan Komisaris, Direksi dan pejabat satu tingkat di bawah Direksi.\r\nb. Terdapat kebijakan dan panduan tambahan yang dapat memberikan panduan lebih jauh tentang berbagai perkara yang terdapat dalam Pedoman Perilaku. Panduan disosialisasikan kepada organ pendukung Dewan Komisaris dan karyawan perusahaan.\r\nc. Seluruh  anggota  Direksi  dan  anggota  Dewan  Komisaris menandatangani komitmen untuk mematuhi Pedoman Perilaku;\r\nd. Karyawan  menandatangani  secara  berkala  pernyataan  kepatuhan  terhadap Pedoman Perilaku;\r\ne. Tingkat pemahaman yang baik terhadap Pedoman GCG dan Pedoman Perilaku oleh Dewan Komisaris, Direksi dan karyawan perusahaan;\r\nf. Pedoman Perilaku termasuk menjadi materi dalam proses induction (pengenalan) bagi karyawan baru.', 2),
(7, 'Perusahaan wajib  melakukan pengukuran terhadap  pelaksanaan GCG.', 3),
(8, 'Perusahaan   memiliki   kebijakan   tentang   kepatuhan   pelaporan   harta   kekayaan penyelenggara negara bagi Dewan Komisaris/Dewan  Pengawas, Direksi dan pejabat satu tingkat di bawah Direksi berupa :\r\na. kebijakan/SOP tentang pengelolaan terhadap kepatuhan dan penyampaian LHKPN.\r\nb. keputusan Direksi tentang Jabatan dalam organisasi BUMN yang ditetapkan wajib menyampaikan LHKPN kepada KPK.\r\nc. keputusan Direksi tentang pejabat perusahaan yang ditugaskan melaksanakan koordinasi dengan KPK berkaitan LHKPN.\r\nd. kebijakan/peraturan mengenai pemberian sanksi terhadap Penyelenggara Negara yang belum menyampaikan LHKPN sesuai peraturan perundang-undangan yang berlaku.', 4),
(9, 'Perusahaan memiliki ketentuan/kebijakan  tentang Pengendalian Gratifikasi.\r\nKebijakan tentang Pengendalian Gratifikasi yang meliputi komitmen Dewan Komisaris dan Direksi, ketentuan-ketentuan tentang gratifikasi, penanggung jawab gratifikasi, mekanisme pelaporan gratifikasi, pemantauan pelaksanaan  dan  sanksi.', 5),
(10, 'Perusahaan melaksanakan   upaya   untuk   meningkatkan pemahaman   terhadap kebijakan/ketentuan Pengendalian Gratifikasi. dengan cara :\r\na.  pelaksanaan sosialisasi tentang Pengendalian Gratifikasi kepada Dewan Komisaris/Dewan Pengawas, Direksi dan karyawan perusahaan.\r\nb. kegiatan  pendistribusian  ketentuan  dan  perangkat  Pengendalian Gratifikasi di lingkungan perusahaan.\r\nc.  pemahaman Dewan Komisaris/Dewan Pengawas, Direksi dan karyawan yang memadai terhadap kebijakan Pengendalian Gratifikasi.\r\nd. kegiatan sosialisasi tentang Pengendalian Gratifikasi kepada stakeholder perusahaan.', 5),
(11, 'mengimplementasikan Pengendalian Gratifikasi.\r\na. kegiatan  pengelolaan  gratifikasi  yang  sesuai  dengan  perundang- undangan yang berlaku.\r\nb. pelaporan tentang pengendalian gratifikasi di lingkungan perusahaan.\r\nc.  peninjauan   dan   penyempurnaan berkala   terhadap perangkat pendukung.', 5),
(12, 'Perusahaan  melaksanakan  kegiatan untuk memberikan  pemahaman  atas kebijakan Whistle Blowing System (WBS)', 6),
(13, 'Perusahaan  melaksanakan  kebijakan WBS.\r\na. sarana/media perusahaan yang memadai untuk mendukung pelaksanaan kebijakan WBS.\r\nb. penanganan/tindak  lanjut sesuai  dengan  kebijakan  atas  pengaduan yang diterima perusahaan.\r\nc. pelaporan atas pelaksanaan kebijakan WBS.\r\nd.  pelaksanaan evaluasi dan pelaporan WBS secara berkala.', 6),
(14, 'Pemegang  Saham/RUPS/ Pemilik  Modal  menerapkan  pedoman  pengangkatan  dan pemberhentian Direksi, diantaranya :\r\na. Mekanisme penjaringan atau nominasi calon anggota Direksi;\r\nb. Penilaian/pengujian atas kepatutan dan kelayakan (fit and proper tes bagi anggota Direksi.', 7),
(15, 'Pemegang   Saham/RUPS/Pemilik   Modal   melaksanakan   penilaian  terhadap  calon anggota Direksi.\r\na.  Daftar Bakal Calon yang disetujui oleh Menteri Negara BUMN dan berisikan nama-nama yang diperoleh melalui proses penjaringan dalam rangka memperoleh calon anggota Direksi.\r\nb. Seluruh Bakal Calon yang disetujui oleh Menteri Negara BUMN diundang secara tertulis oleh Tim dan mengikuli uji kelayakan dan kepatutan sesuai ketentuan yang berlaku\r\nc. penetapan hasil akhir UKK dan Evaluasi oleh Tim dan disampaikan kepada Menteri Negara BUMN\r\n', 7),
(16, 'Pemegang  Saham/RUPS/Pemilik   Modal  menetapkan  pengangkatan   anggota  dan komposisi Direksi.\r\nRUPS/Pelantikan Direksi.\r\na. Jumlah Direksi sesuai dengan kebutuhan perusahaan.\r\nb. Terdapat  Direksi yang  memiliki latar belakang  pendidikan/pengetahuan dan/atau pengalaman yang sesuai dengan  jenis usaha BUMN.\r\nc. Seluruh  anggota  Direksi memiliki  pengalaman  yang  sesuai  dengan pembidangan tugas anggota Direksi.\r\n', 7),
(17, 'Pemegang  Saham/RUPS/Pemilik   Modal  memberhentikan  anggota  Direksi  sesuai dengan peraturan perundang-undangan.\r\na. Penetapan pemberhentian anggota Direksi Perum dilakukan dengan keputusan Menteri; Penetapan pemberhentian anggota Direksi  Persero dapat dilakukan dengan keputusan RUPS secara fisik, keputusan Menteri selaku RUPS, dan keputusan seluruh Pemegang Saham di luar RUPS.\r\nb. Keputusan RUPS/Pemilik Modal memuat atasan pemberhentian.', 7),
(18, 'Pemegang Saham/RUPS/Pemilik Modal memberikan respon terhadap lowongan jabatan dan/atau pemberhentian sementara Direksi oleh Dewan Komisaris/Dewan Pengawas.\r\n', 7),
(19, 'a. Penetapan anggota Dewan Komisaris/Dewan Pengawas oleh RUPS/Pemilik Modal selambat-lambatnya 30 (tiga puluh) hari sejak masa jabatan tersebut berakhir.\r\nb. Pengangkatan Dewan Komisaris/Dewan Pengawas dilakukan dengan Keputusan Menteri BUMN selaku RUPS/Pemilik Modal, sesuai dengan peraturan   perundang-undangan.\r\nc. Jumlah  Dewan  Komisaris/Dewan   Pengawas  maksimal  sama  dengan jumlah anggota Direksi.\r\nd. ', 8),
(20, 'Pemegang Saham/RUPS/Pemilik Modal memberhentikan anggota Dewan Komisaris/Dewan Pengawas sesuai dengan peraturan perundang-undangan', 8),
(21, 'a. Pemegang  Saham/RUPS/Pemilik   Modal  memberikan  pengesahan  Rencana  Jangka Penjang Perusahaan (RJPP) atau Revisi RJPP.\r\nb. Pemegang   Saham/RUPS/Pemilik Modal    memberikan    pengesahan Pengesahan Rencana Kerja dan Anggaran Perusahaan (RKAP).', 9),
(22, 'RUPS/Pemilik Modal memberikan penilaian terhadap kinerja Direksi dan kinerja Dewan Komisaris/Dewan Pengawas.\r\na. Terdapat sistem/pedoman penilaian kinerja Direksi (kolegial dan individu), yang memuat sekurang-kurangnya indikator kinerja utama dan kriteria keberhasilan.\r\nb. Terdapat Kontrak Manajemen yang memuat target kinerja kolegial dan individu, yang disahkan/disetujui Pemegang  Saham/RUPS/Pemilik Modal.\r\nc. RUPS/Pemilik  Modal memberikan Kinerja Direksi kolegial dan Kinerja anggota Direksi  (lndividu) berdasarkan laporan kinerja Direksi  dan mempertimbangkan tanggapan Dewan Komisaris/Dewan Pengawas atas kinerja Direksi.\r\nd. Penilaian kinerja dituangkan dalam Risalah RUPS/keputusan Menteri (untuk Perum).', 10),
(23, 'RUPS menetapkan gaji/honorarium, tunjangan, fasilitas dan tantiem/ insentif kinerja untuk Direksi & Dewan Komisaris/Dewan Pengawas.', 10),
(24, 'Pemegang Saham/RUPS/Pemilik Modal menetapkan auditor eksternal yang mengaudit Laporan Keuangan perusahaan.', 10),
(25, 'Pemegang  Saham/RUPS/Pemilik  Modal  memberikan  persetujuan  laporan  tahunan termasuk pengesahan laporan   keuangan serta   tugas   pengawasan Dewan Komisaris/Dewan Pengawas', 10),
(26, 'Pengesahan terhadap Laporan Tahunan dan persetujuan terhadap Laporan Keuangan dilaksanakan tepat waktu.', 10),
(27, 'Pemegang Saham/RUPS/Pemilik Modal menetapkan penggunaan laba bersih.', 10),
(28, 'RUPS mengambil keputusan sesuai dengan ketentuan perundang-undangan di bidang Perseroan Terbatas tentang Perseroan Terbatas dan/atau anggaran dasar perusahaan sehingga menghasilkan keputusan yang sah\r\n', 11),
(29, 'RUPS mengambil keputusan melalui proses yang terbuka dan adil.\r\na. Pemegang  Saham diberikan  kesempatan  untuk  mengajukan  usul mata acara RUPS sesuai dengan peraturan perundang-undangan.\r\nb. Dalam hal anggaran dasar dan atau peraturan perundang-undangan mengharuskan adanya keputusan RUPS tentang hal-hal yang berkaitan dengan usaha perusahaan,  keputusan yang diambil harus memperhatikan kepentingan wajar para pemangku kepentingan.\r\nc. RUPS dalam mata acara lain-lain tidak berhak mengambil keputusan kecuali semua Pemegang Saham hadir dan/atau diwakili dalam RUPS dan menyetujui tambahan mata acara RUPS. Keputusan atas mata acara tambahan   tersebut harus disetujui dengan suara bulat.', 11),
(30, 'Pemegang  Saham/Pemilik   Modal  memberikan   arahan/pembinaan   penerapan  Tata Kelola Perusahaan yang Baik kepada Direksi dan Dewan Komisaris/Dewan Pengawas.\r\n\r\nPemegang Saham/Pemilik Modal tidak mencampuri kegiatan operasional perusahaan yang menjadi tanggung jawab Direksi.\r\n\r\nPemegang Saham/Pemilik Modal merespon terhadap informasi yang diterima dari Direksi dan/atau Dewan Komisaris/Dewan Pengawas mengenai gejala penurunan kinerja & kerugian perusahaan yang signifikan.\r\n\r\n', 12),
(31, 'Dewan   Komisaris/Dewan Pengawas yang baru   diangkat mengikuti program pengenalan yang diselenggarakan oleh perusahaan.\r\n\r\nDewan Komisaris/Dewan Pengawas melaksanakan program pelatihan dalam rangka meningkatkan kompetensi anggota Dewan Komisaris/Dewan Pengawas sesuai kebutuhan.\r\n\r\n', 13),
(32, 'Dewan Komisaris/Dewan  Pengawas memiliki kebijakan dan melaksanakan  pembagian tugas  diantara anggota Dewan Komisaris/Dewan Pengawas.\r\n\r\nDewan Komisaris/Dewan  Pengawas  menetapkan mekanisme pengambilan keputusan Dewan Komisaris/Dewan Pengawas.\r\n\r\n\r\nDewan Komisaris/Dewan Pengawas menyusun rencana kerja setiap tahun yang memuat sasaran/ target yang ingin dicapai dan melaporkan secara tertulis kepada RUPS/Pemilik Modal.\r\n\r\nDewan Komisaris/Dewan Pengawas  mendapatkan akses informasi perusahaan sesuai kewenangannya.', 14),
(33, 'kebijakan mengenai mekanisme pemberian persetujuan/tanggapan/ pendapat Dewan Komisaris/Dewan Pengawas terhadap rancangan RJPP yang disampaikan oleh Direksi.', 15),
(34, 'rencana  kerja  Dewan  Komisaris/Dewan  Pengawas  yang  berkaitan dengan proses persetujuan RJPP yang disampaikan Direksi.', 15),
(35, 'Dewan Komisaris/Dewan  Pengawas melakukan  telaah  terhadap  rancangan RJPP yang disampaikan oleh Direksi.', 15),
(36, 'Dewan Komisaris/Dewan Pengawas memberikan pendapat dan saran terhadap rancangan RJPP dan disampaikan kepada RUPS/Pemilik Modal untuk bahan pertimbangan keputusan RUPS/Pemilik Modal.', 15),
(37, 'Kualitas yang  memadai atas tanggapan  Dewan Komisaris/Dewan  Pengawas terhadap rancangan RJPP.', 15),
(38, 'Dewan Komisaris/Dewan  Pengawas memberikan  arahan  tentang  hal-hal penting mengenai perubahan lingkungan bisnis yang diperkirakan akan berdampak besar pada usaha dan kinerja perusahaan secara tepat waktu dan relevan. ', 16),
(39, 'Dewan Komisaris/Dewan  Pengawas dalam batas kewenangannya,  merespon saran, harapan, permasalahan dan keluhan dari Stakeholders (pelanggan, pemasok, kreditur,dan   karyawan)   yang   disampaikan   langsung   kepada   Dewan   Komisaris/Dewan Pengawas ataupun penyampaian oleh Direksi.', 16),
(40, 'Dewan Komisaris/Dewan Pengawas melaksanakan pengawasan dan pemberian nasihat terhadap kebijakan/rancangan sistem pengendalian  intern dan pelaksanaannya.', 16),
(41, 'Dewan Komisaris/Dewan  Pengawas   memberikan  arahan tentang\r\na. manajemen risiko perusahaan,\r\nb. sistem  teknologi informasi yang digunakan perusahaan,kebijakan  dan pelaksanaan pengembangan karir\r\nc. kebijakan akuntansi dan penyusunan laporan keuangan sesuai dengan standar akuntansi yang berlaku umum di Indonesia (SAK).\r\nd. kebijakan pengadaan dan pelaksanaannya.\r\ne. kebijakan mutu dan pelayanan serta pelaksanaan kebijakan tersebut.\r\n', 16),
(42, 'Dewan Komisaris/Dewan  Pengawas   mengawasi dan memantau   kepatuhan  Direksi dalam menjalankan perusahaan sesuai RKAP dan/atau RJPP.\r\n\r\nDewan Komisaris/Dewan Pengawas memastikan audit eksternal dan audit internal dilaksanakan secara efektif serta melaksanakan telaah atas pengaduan yang berkaitan dengan BUMN yang diterima oleh Dewan Komisaris/Dewan Pengawas.', 17),
(43, 'Dewan Komisaris/Dewan Pengawas melaporkan  dengan  segera  kepada RUPS/Pemilik Modal apabila terjadi gejala menurunnya kinerja perusahaan serta saran-saran yang telah disampaikan kepada Direksi untuk memperbaiki permasalahan yanag dihadapi.', 17),
(44, 'Dewan Komisaris/Dewan Pengawas perusahaan melakukan penilaian terhadap proses pengangkatan Direksi dan Dewan Komisaris anak perusahaan/perusahaan patungan, serta memberikan penetapan tertulis (setuju atau tidak setuju) terhadap proses pengangkatan Direksi dan Dewan Komisaris anak perusahaan/perusahaan patungan.', 18),
(45, 'Dewan Komisaris/Dewan Pengawas melakukan telaah dan/atau penelitian/pemeriksaan terhadap calon-calon Direksi yang diusulkan Direksi, sebelum disampaikan kepada Pemegang Saham/Pemilik Modal.', 19),
(46, 'Dewan Komisaris/Dewan Pengawas wajib melaporkan benturan kepentingan yang dapat mengganggu pelaksanaan tugas Dewan Komisaris/Dewan Pengawas kepada perusahaan (Sekretaris Perusahaan) untuk dicatat dalam Daftar Khusus rnengenai kepernilikan sahamnya dan/atau keluarganya pada perusahaan tersebut dan perusahaan lain.', 20),
(47, 'lakukan telaah Terdapat telaah terhadap : (1) laporan hasil assessment /review atas Pelaksanaan Tata Kelola Perusahaan yang Baik, GCG Code dan kebijakan/ketentuan teknis lainnya, serta memantau tindak lanjut area of improvement hasil assessment GCG oleh Direksi;\r\n(2) laporan GCG yang diungkapkan dalam laporan tahunan.', 21),
(48, 'memiliki  pedoman/tata  tertib   Rapat  Dewan Komisaris/Dewan Pengawas yang mengatur :\r\na. Etika rapat:\r\nb. Tata penyusunan risalah rapat\r\nc. Pelaksanaan evaluasi tindak lanjut hasil rapat sebelumnya\r\nd. Pembahasan/telaah  atas usulan  Direksi dan arahan/keputusan  RUPS terkait dengan usulan Direksi.', 22),
(49, 'Rapat Dewan Komisaris/Dewan  Pengawas diadakan secara berkala sesuai ketentuan yang berlaku dan/atau anggaran dasar.\r\n\r\nJumlah rapat dan agenda yag dibahas  sesuai dengan yang direncanakan.', 22),
(50, 'Dewan   Komisaris/Dewan   Pengawas   melakukan   evaluasi   terhadap   pelaksanaan keputusan hasil rapat sebelumnya.', 22),
(51, 'Adanya uraian tugas bagi Sekretariat Komisaris yang ditetapkan oleh Komisaris Utama/Ketua Dewan Pengawas.\r\n\r\nMenyelenggarakan  kegiatan administrasi  kesekretariatan  di lingkungan Dewan Komisaris;\r\n\r\nMenyelenggarakan rapat Dewan Komisaris/Dewan Pengawas dan rapat/pertemuan antara Dewan Komisaris/Dewan Pengawas dengan Pemegang Saham/Pemilik Modal, Direksi maupun pihak-pihak terkait lainnya;\r\n\r\nMenyediakan data/infonnasi  yang diperlukan oleh Dewan Komisaris/Dewan  Pengawas  dan  komite-komite  di  lingkungan  Dewan Komisaris/Dewan  Pengawas yang  berkaitan  dengan  (a)  monitoring tindak lanjut   hasii   keputusan, rekomendasi dan   arahan Dewan Komisaris/Dewan Pengawas; (b) Bahan/materi yang bersifat administrasi\r\n\r\nMengumpulkan data-data teknis yang berasal dari Komite-Komite di lingkungan Dewan Komisaris/Dewan Pengawas dan tenaga ahli Dewan Komisaris/Dewan Pengawas untuk keperluan Dewan Komisaris/Dewan Pengawas.', 23),
(52, 'Sekretaris Dewan Komisaris/Dewan Pengawas  mengadministrasikan  surat keluar dan surat masuk ke Dewan Komisaris/Dewan Pengawas, dan dokumen lainnya dengan tertib.\r\n\r\n', 22),
(53, 'Bahan-bahan  rapat disediakan  dan disampaikan  kepada  peserta  rapat paling lambat 3 (tiga) hari sebelum diadakan rapat.\r\n\r\nRisalah  Rapat  Komisaris/Dewan  Pengawas  harus  dibuat  untuk  setiap Rapat Komisaris/Dewan Pengawas.', 23),
(54, 'Komite Dewan Komisaris/Dewan Pengawas memiliki piagam/charter dan program kerja tahunan.\r\n\r\nKomite Dewan Komisaris/Dewan Pengawas melaksanakan pertemuan rutin sesuai dengan program kerja tahunan serta melakukan kegiatan lain yang ditugaskan Dewan Komisaris/Dewan Pengawas.', 24),
(55, 'Direksi  melaksanakan  program  pelatihan  dalam  rangka  meningkatkan  kompetensi anggota Direksi sesuai kebutuhan.', 25),
(56, 'menetapkan  kebijakan-kebijakan  operasional  dan standard operasional  baku (SOP) untuk proses bisnis inti (core business).', 26),
(57, 'Diireksi memiliki\r\na. Rencana Jangka Panjang (RJPP) yang disahkan oleh RUPS/Pemilik Modal.\r\nb. Rencana Kerja dan Anggaran Perusahaan (RKAP) yang disahkan oleh RUPS/Menteri/Pemilik Modal.\r\n\r\n', 27),
(58, 'menempatkan karyawan pada semua tingkatan jabatan sesuai dengan spesifikasi jabatan dan memiliki rencana suksesinya untuk seluruh jabatan dalam perusahaan.', 27),
(59, 'melakukan  analisis dan evaluasi terhadap capaian  kinerja untuk jabatan/unit- unit di bawah Direksi dan tingkat perusahaan.', 28),
(60, 'melaksanakan sistem peningkatan mutu produk dan pelayanan.\r\na. kebijakan mengenai Standar Pelayanan Minimum (SPM)\r\nb. memiliki SOP Layanan Pelanggan dan SPM\r\nc. SOP dan SPM diinformasikan secara terbuka.\r\nd. Tingkat kualitas mengenai kemudahan layanan dan \r\nfairness.', 28),
(61, ' melaksanakan   pengadaan   barang   dan  jasa   yang   menguntungkan   bagi perusahaan, baik harga maupun kualitas barang dan jasa tersebut.\r\n\r\nmengembangkan SDM, menilai kinerja dan memberikan remunerasi yang layak, dan membangun lingkungan SDM yang efektif mendukung pencapaian perusahaan', 28),
(62, ' menerapkan  sistem  pengendalian  intern  untuk  melindungi mengamankan investasi dan aset perusahaan.\r\n\r\nmenindaklanjuti hasil pemeriksaan SPI dan auditor eksternal (KAP dan BPK).', 29),
(63, 'menetapkan mekanisme untuk menjaga kepatuhan terhadap peraturan perundang-undangan dan perjanjian dengan pihak ketiga.', 30),
(64, 'menampung   dan menindaklanjuti   keluhan-keluhan stakeholders.', 31),
(65, 'menetapkan kebijakan tentang mekanisme bagi Direksi dan pejabat struktural untuk mencegah pengambilan keuntungan pribadi dan pihak lainnya disebabkan benturan kepentingan.', 32),
(66, 'memberikan informasi (laporan manajemen triwulanan, tengah tahunan, dan tahunan) dengan muatan dan waktu yang  sama  kepada Pemegang Saham minoritas.', 33),
(67, 'menyelenggarakan Rapat Direksi sesuai kebutuhan, paling sedikit sekali dalam setiap bulan.', 34),
(68, 'SPI  melaksanakan  fungsi  pengawasan  intern  untuk  memberikan  nilai tambah  dan memperbaiki operasional perusahaan.', 35),
(69, 'Sekretaris   Perusahaan dilengkapi   dengan   faktor-faktor   pendukung   keberhasilan pelaksanaan tugasnya.\r\na. Sekretaris   perusahaan   telah   memenuhi   kualifikasi   pendidikan   yang ditentukan oleh perusahaan.\r\nb. Pengalaman professional dan kompetensi yang  dimiliki  mencakup hukum, pasar modal, manajemen keuangan, dan komunikasi perusahaan.', 36),
(70, 'Sekretaris perusahaan  memberikan informasi yang materil dan relevan kepada stakeholders.\r\na.  mengkoordinasikan penyusunan Laporan Manajemen Triwulanan dan Tahunan yang akurat dan dapat diandalkan.\r\nb. Laporan  Manajemen  Triwulanan  dan  Tahunan  disampaikan  kepada Dewan Komisaris/Dewan Pengawas tepat waktu', 36),
(71, 'Sekretaris perusahaan  menjalankan tugas sebagai pejabat penghubung.\r\na. Sekretaris Perusahaan mengorganisasikan  dan  mengkoordinasikan Rapat Direksi, Rapat Direksi dan Dewan Komisaris, RUPS dan Kegiatan lainnya dengan stakeholders a.I press conference, dengar pendapat dengan anggota Dewan, dsb.\r\nb. Sekretaris Perusahaan menyusun jadual dan tahapan kegiatan menjelang RUPS/RUPS LB dan Rapat Direksi.', 36),
(72, 'menyediakan akses serta penjelasan lengkap dan informasi akurat berkenaan dengan penyelenggaraan RUPS agar dapat melaksanakan hak-haknya berdasarkan anggaran dasar dan peraturan perundang-undangan.', 37),
(73, 'menetapkan  sistem  dan  prosedur  pengendalian  informasi  perusahaan dengan tujuan untuk mengamankan informasi perusahaan yang penting.', 38),
(74, 'media untuk penyediaan lnformasi Publik agar dapat diperoleh dengan cepat dan tepat, biaya ringan, dan cara sederhana.', 39),
(75, 'Laporan tahunan memuat :\r\na. lkhtisar Data Keuangan Penting.\r\nb. Laporan Dewan Komisaris/Dewan Pengawas  dan Laporan Direksi.\r\nc. profil perusahaan secara lengkap\r\nd. Analisa  dan  Pembahasan Manajamen atas Kinerja Perusahaan.\r\ne. pengungkapan praktik Tata Kelola Perusahaan yang Baik.\r\nf. Laporan Keuangan\r\n', 40),
(76, 'mengikuti Annual Report Award (ARA).', 41),
(77, 'Memberikan apresiasi', 42),
(78, 'Memberikan punishment', 43);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pic`
--

CREATE TABLE `pic` (
  `id_pic` int(11) NOT NULL,
  `pic` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pic`
--

INSERT INTO `pic` (`id_pic`, `pic`) VALUES
(1, 'ESQ'),
(2, 'ES'),
(3, 'SETKOM'),
(4, 'MI'),
(5, 'EMI'),
(6, 'EA'),
(7, 'EH'),
(8, 'ESS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `created_at`, `updated_at`, `full_name`, `timezone`) VALUES
(1, 1, '2017-06-06 11:43:55', NULL, 'the one', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_laporan`
--

CREATE TABLE `p_laporan` (
  `id_plaporan` int(11) NOT NULL,
  `total_perbaikan` int(11) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `can_admin` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`, `can_admin`) VALUES
(1, 'Admin', '2017-06-06 11:43:55', NULL, 1),
(2, 'User', '2017-06-06 11:43:55', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `s_assess` int(11) NOT NULL DEFAULT '0',
  `id_pic` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `s_assess`, `id_pic`) VALUES
(1, 'admiin', 'kHy0MFtEYtTxlZHUzZFUa0uIKOO14hbw', '$2y$13$VE6ce3FtKWh7gh5XQdjFCOwQwNVQcikJWDvtrODT6ceIZkXta4B2W', NULL, 'qwerty.admin@qwerty.com', 10, 1499533870, 1499533870, 0, 2),
(2, 'qwerty', '4Vz6t1R-AQDY5drf6egVmpsQuybrgJOy', '$2y$13$0EiR9UFUJr6kQEp8NSDXi.jBxcJrYUOPTjvw1NdrY2WiPY2KHjq2W', NULL, 'qwerty.admin123@qwerty.com', 10, 1500689692, 1500689692, 0, 1),
(3, 'zxcvb', 'Gp1H1Pfqk_Jt-jwHqfHyi1CcABvB2wZn', '$2y$13$RrJTbCfaI0FSCBjsrQJe5uuPi0z3QVposy4N/sycF7kEHKjh/Fzk6', NULL, 'zxcvb@gmail.com', 10, 1501144274, 1501144274, 0, 1),
(6, 'khb', 'Avff0JLDCgtJPN5eq2peLZ2Gp7FM1u4S', '$2y$13$5J98RStMKN9Ikq8apbFNr.crZAK8JVHwTfmGdgco3fiMVMAFVqUJa', NULL, 'khb@gmail.com', 10, 1501161951, 1501161951, 0, 1),
(7, 'kjw', 'LRu8zwZYLn0Ue0MV8QoJrwETMSw01H1h', '$2y$13$L.F9M5srLdYDb4zxCdhBv.px01cRgWyas9kJJeyP8hJXklxvxTK7a', NULL, 'kjw@gmail.com', 10, 1501162044, 1501162044, 0, 2),
(8, 'kjh', '8hsUF_iaLGTHPPqMj7ICcdZeSkmGGAdY', '$2y$13$vGWf6Yj2RE8Al7ZN.F8cLOTP3HKVWkpnHoyJ5plgGcRnlqSj7usxK', NULL, 'kjh@gmail.com', 10, 1501162076, 1501162076, 0, 3),
(9, 'kdh', 'lRLFfvIqNERFy4GQ7XI9fn8JdqEzCbaT', '$2y$13$S1dxVEOZOd9re7vuVXAvGOcKNHWGwePWwhThE9s14JG3vM4K./F2q', NULL, 'kdh@gmail.com', 10, 1501162122, 1501162122, 0, 4),
(10, 'syh', 'Y0B1RrMR2Lvi3y7yTNBJ4y1mgk5dSKki', '$2y$13$8eyAs0r8/35SSXCkL0fbde4M9/puCmvdK0prRAKD.Xix7JGpFeskq', NULL, 'syh@gmail.com', 10, 1501162153, 1501162153, 0, 5),
(11, 'jcw', 'IVpoOVZ6Tj0wsiZ9AwSq6hb49tm1IlC2', '$2y$13$CaAHdSox/B6x6ebbuhScX.DzhUTOB4mTeVumq0U1Yy81DhIl2ngni', NULL, 'jcw@gmail.com', 10, 1501162194, 1501162194, 0, 6),
(12, 'asSsa', 'flC0NcIxRu9Mr-kickJVah_Wfy9fQGkN', 'AsASasa', NULL, 'asasaA', 10, 15011912, 15011912, 0, 2),
(13, 'assdad', 'uZGR5YdOU1H34dEDFqwAF5qE9w3Irdry', 'ASa', NULL, 'asasASa', 10, 1501767007, 15011912, 0, 1),
(14, 'wewqeew', 'Q8yU9DItlnk3xGrqcWP4uPzZS1ivJqaD', 'sasASAS', NULL, 'ASASASAS', 10, 1501767043, 1501767043, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `authKey` varchar(50) NOT NULL,
  `accessToken` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `authKey`, `accessToken`, `role`, `status`) VALUES
(1, 'qwerty', '12345', 'qwerty-12345', 'qw312ty', 'Admin', 1),
(2, 'asdfg', '54321', 'asdfg-54321', 'as12gf43', 'user', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspek`
--
ALTER TABLE `aspek`
  ADD PRIMARY KEY (`id_aspek`);

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`id_assessment`),
  ADD KEY `id_indikator` (`id_indikator`),
  ADD KEY `perbaikan` (`id_parameter`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `indikator`
--
ALTER TABLE `indikator`
  ADD PRIMARY KEY (`id_indikator`),
  ADD KEY `user_id` (`id_pic`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_indikator` (`id_indikator`),
  ADD KEY `id_parameter` (`id_parameter`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id_parameter`),
  ADD KEY `id_indikator` (`id_indikator`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`id_pic`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_user_id` (`user_id`);

--
-- Indexes for table `p_laporan`
--
ALTER TABLE `p_laporan`
  ADD PRIMARY KEY (`id_plaporan`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pic` (`id_pic`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aspek`
--
ALTER TABLE `aspek`
  MODIFY `id_aspek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `id_assessment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `indikator`
--
ALTER TABLE `indikator`
  MODIFY `id_indikator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id_parameter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `pic`
--
ALTER TABLE `pic`
  MODIFY `id_pic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `p_laporan`
--
ALTER TABLE `p_laporan`
  MODIFY `id_plaporan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `assessment`
--
ALTER TABLE `assessment`
  ADD CONSTRAINT `assessment_ibfk_1` FOREIGN KEY (`id_indikator`) REFERENCES `indikator` (`id_indikator`),
  ADD CONSTRAINT `assessment_ibfk_2` FOREIGN KEY (`id_parameter`) REFERENCES `parameter` (`id_parameter`),
  ADD CONSTRAINT `assessment_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `indikator`
--
ALTER TABLE `indikator`
  ADD CONSTRAINT `indikator_ibfk_1` FOREIGN KEY (`id_pic`) REFERENCES `pic` (`id_pic`);

--
-- Ketidakleluasaan untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`id_indikator`) REFERENCES `assessment` (`id_indikator`),
  ADD CONSTRAINT `laporan_ibfk_2` FOREIGN KEY (`id_parameter`) REFERENCES `parameter` (`id_parameter`);

--
-- Ketidakleluasaan untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `parameter`
--
ALTER TABLE `parameter`
  ADD CONSTRAINT `parameter_ibfk_1` FOREIGN KEY (`id_indikator`) REFERENCES `indikator` (`id_indikator`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_pic`) REFERENCES `pic` (`id_pic`);

DELIMITER $$
--
-- Event
--
CREATE DEFINER=`root`@`localhost` EVENT `event1` ON SCHEDULE EVERY 15 MINUTE STARTS '2017-07-28 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE user SET s_assess=0$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
