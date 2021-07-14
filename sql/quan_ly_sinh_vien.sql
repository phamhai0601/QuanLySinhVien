-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 14, 2021 at 07:19 PM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quan_ly_sinh_vien`
--

-- --------------------------------------------------------

--
-- Table structure for table `bo_mon`
--

DROP TABLE IF EXISTS `bo_mon`;
CREATE TABLE IF NOT EXISTS `bo_mon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bo_mon`
--

INSERT INTO `bo_mon` (`id`, `ten`, `mo_ta`, `created_at`, `updated_at`) VALUES
(1, 'Cơ sở', '...', 1622910759, 1622910759),
(2, 'Công nghệ đa phương tiện', '...', 1622910759, 1622910759),
(3, 'Công nghệ phần mềm', '...', 1622910759, 1622910759),
(4, 'Hệ thống thôn tin', '...', 1622910759, 1622910759),
(5, 'Mạng và kỹ thuật máy tính', '...', 1622910759, 1622910759);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don`
--

DROP TABLE IF EXISTS `chi_tiet_hoa_don`;
CREATE TABLE IF NOT EXISTS `chi_tiet_hoa_don` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_hoa_don` int(11) NOT NULL,
  `ma_mon_hoc` int(11) NOT NULL,
  `tin_chi` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `thanh_tien` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`id`, `ma_hoa_don`, `ma_mon_hoc`, `tin_chi`, `don_gia`, `thanh_tien`, `created_at`) VALUES
(5, 50, 3, 3, 288000, 864000, 1626290114),
(6, 50, 2, 3, 288000, 864000, 1626290114),
(7, 50, 4, 3, 288000, 864000, 1626290114);

-- --------------------------------------------------------

--
-- Table structure for table `dang_ki_dich_vu`
--

DROP TABLE IF EXISTS `dang_ki_dich_vu`;
CREATE TABLE IF NOT EXISTS `dang_ki_dich_vu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_tai_khoan` int(11) NOT NULL,
  `han_su_dung` int(11) NOT NULL,
  `ma_dich_vu` int(11) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dang_ki_dich_vu`
--

INSERT INTO `dang_ki_dich_vu` (`id`, `ma_tai_khoan`, `han_su_dung`, `ma_dich_vu`, `trang_thai`, `created_at`) VALUES
(1, 17, 1626242935, 1, 1, 1625983735);

-- --------------------------------------------------------

--
-- Table structure for table `dang_ki_lop_tin_chi`
--

DROP TABLE IF EXISTS `dang_ki_lop_tin_chi`;
CREATE TABLE IF NOT EXISTS `dang_ki_lop_tin_chi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_lop_tin_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tg_bat_dau` int(11) NOT NULL,
  `tg_ket_thuc` int(11) NOT NULL,
  `tinh_trang` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dang_ki_lop_tin_chi`
--

INSERT INTO `dang_ki_lop_tin_chi` (`id`, `ma_lop_tin_chi`, `tg_bat_dau`, `tg_ket_thuc`, `tinh_trang`, `created_at`) VALUES
(11, '16248107803310P22', 1624640400, 1624899600, 1, 1624812922),
(12, '1624810780324P21', 1624899600, 1624986000, 1, 1624812968),
(13, '1624810780341P23', 1624640400, 1624899600, 1, 1624813794),
(14, '16248107803517P43', 1624899600, 1624986000, 0, 1624815707);

-- --------------------------------------------------------

--
-- Table structure for table `dich_vu`
--

DROP TABLE IF EXISTS `dich_vu`;
CREATE TABLE IF NOT EXISTS `dich_vu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `han_su_dung` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dich_vu`
--

INSERT INTO `dich_vu` (`id`, `ten`, `full_name`, `gia`, `han_su_dung`, `created_at`) VALUES
(1, 'duy_tri_ngan', 'Duy trì ngắn', 5968, 259200, 1625937543),
(3, 'couple_check_in', 'Couple Check-In', 13419, 604800, 1625937543),
(4, 'payask', 'Vấn đáp có trả phí (PayAsk)', 0, 2592000, 1625937543),
(5, 'xem_diem_khong_xac_nhan', 'Xem điểm không chờ xác nhận', 25600, 7776000, 1625937543);

-- --------------------------------------------------------

--
-- Table structure for table `giang_vien`
--

DROP TABLE IF EXISTS `giang_vien`;
CREATE TABLE IF NOT EXISTS `giang_vien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoc_van` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_bo_mon` tinyint(4) NOT NULL,
  `que_quan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giang_vien`
--

INSERT INTO `giang_vien` (`id`, `ten`, `hoc_van`, `ma_bo_mon`, `que_quan`, `created_at`) VALUES
(1, 'Lê Thị Thanh Thùy', 'Thạc sĩ', 1, 'TP Hà Nội', 1622912893),
(2, 'Trịnh Thị Xuân', 'Thạc sĩ', 1, 'TP Hà Nội', 1622912893),
(3, 'Nguyễn Ngọc Bích', 'Cử nhân', 1, 'TP Hà Nội', 1622912893),
(4, 'Nguyễn Thúy Lan', 'Cử nhân', 1, 'TP Hà Nội', 1622912893),
(5, 'Nguyễn Thùy Linh', 'Thạc sĩ', 1, 'TP Hà Nội', 1622912893),
(6, 'Đinh Thị Việt Nga', 'Thạc sĩ', 1, 'TP Hà Nội', 1622912893),
(7, 'Nguyễn Thị Thanh Thủy', 'Thạc sĩ', 1, 'TP Hà Nội', 1622912893),
(8, 'Trần Duy Hùng', 'Thạc sĩ', 2, 'TP Hà Nội', 1622912893),
(9, 'Nguyễn Thị Quỳnh Như', 'Thạc sĩ', 2, 'TP Hà Nội', 1622912893),
(10, 'Dương Chí Bằng', 'Thạc sĩ', 2, 'TP Hà Nội', 1622912893),
(11, 'Lê Hữu Dũng', 'Thạc sĩ', 3, 'TP Hà Nội', 1622912893),
(12, 'Nguyễn Thị Tâm', 'Thạc sĩ', 3, 'TP Hà Nội', 1622912893),
(13, 'Thái Thanh Tùng', 'Thạc sĩ', 3, 'TP Hà Nội', 1622912893),
(14, 'Trương Công Đoàn', 'Thạc sĩ', 4, 'TP Hà Nội', 1622912893),
(15, 'Mai Thúy Hà', 'Thạc sĩ', 4, 'TP Hà Nội', 1622912893),
(16, 'Nguyễn Đức Tuấn', 'Tiến sĩ', 4, 'TP Hà Nội', 1622912893),
(17, 'Nguyễn Thành Huy', 'Tiến sĩ', 5, 'TP Hà Nội', 1622912893),
(18, 'Trần Tiến Dũng', 'Tiến sĩ', 5, 'TP Hà Nội', 1622912893),
(19, 'Nguyễn Đức Hiểu', 'Tiến sĩ', 5, 'TP Hà Nội', 1622912893);

-- --------------------------------------------------------

--
-- Table structure for table `gio_hoc`
--

DROP TABLE IF EXISTS `gio_hoc`;
CREATE TABLE IF NOT EXISTS `gio_hoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gio_bat_dau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gio_ket_thuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gio_hoc`
--

INSERT INTO `gio_hoc` (`id`, `gio_bat_dau`, `gio_ket_thuc`, `created_at`) VALUES
(5, '6:45', '11:25', 1623259985),
(4, '12:45', '17:25', 1623259985);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
CREATE TABLE IF NOT EXISTS `hoa_don` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_the_nap` int(11) NOT NULL,
  `user_tao_hd` int(11) NOT NULL,
  `status` tinyint(11) NOT NULL,
  `ma_giao_dich` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_ma_the` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ma_the_nap`, `user_tao_hd`, `status`, `ma_giao_dich`, `ma_ma_the`, `created_at`) VALUES
(1, 1, 17, 2, '1626024741', '7', 1626024688);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don_hoc_phi`
--

DROP TABLE IF EXISTS `hoa_don_hoc_phi`;
CREATE TABLE IF NOT EXISTS `hoa_don_hoc_phi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trang_thai` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `thoi_han` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoa_don_hoc_phi`
--

INSERT INTO `hoa_don_hoc_phi` (`id`, `trang_thai`, `user_id`, `tong_tien`, `created_at`, `thoi_han`) VALUES
(50, 0, 3, 2592000, 1626290114, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ki_hoc`
--

DROP TABLE IF EXISTS `ki_hoc`;
CREATE TABLE IF NOT EXISTS `ki_hoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_ki_hoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tg_bat_dau` int(11) NOT NULL,
  `tg_ket_thuc` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ki_hoc`
--

INSERT INTO `ki_hoc` (`id`, `ma_ki_hoc`, `tg_bat_dau`, `tg_ket_thuc`, `created_at`) VALUES
(8, '3', 1622480400, 1630342800, 1624810780);

-- --------------------------------------------------------

--
-- Table structure for table `lich_hoc`
--

DROP TABLE IF EXISTS `lich_hoc`;
CREATE TABLE IF NOT EXISTS `lich_hoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_lop_tin_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_hoc` int(11) NOT NULL,
  `gio_hoc` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lich_hoc`
--

INSERT INTO `lich_hoc` (`id`, `ma_lop_tin_chi`, `ngay_hoc`, `gio_hoc`, `created_at`) VALUES
(20, '16248107803310P22', 1624837500, 5, 1624812908),
(21, '1624810780324P21', 1624945500, 4, 1624812954),
(22, '1624810780341P23', 1625010300, 5, 1624813686),
(23, '16248107803517P43', 1625096700, 5, 1624814153);

-- --------------------------------------------------------

--
-- Table structure for table `lich_thi`
--

DROP TABLE IF EXISTS `lich_thi`;
CREATE TABLE IF NOT EXISTS `lich_thi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_lop_tin_chi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tg_thi` int(11) NOT NULL,
  `ma_phong` int(11) NOT NULL,
  `ma_giang_vien` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lich_thi`
--

INSERT INTO `lich_thi` (`id`, `ma_lop_tin_chi`, `tg_thi`, `ma_phong`, `ma_giang_vien`, `created_at`) VALUES
(4, '1624810780324P21', 1625183100, 2, 1, 1624906250);

-- --------------------------------------------------------

--
-- Table structure for table `lop_hanh_chinh`
--

DROP TABLE IF EXISTS `lop_hanh_chinh`;
CREATE TABLE IF NOT EXISTS `lop_hanh_chinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_lop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_giang_vien` int(11) NOT NULL,
  `khoa_hoc` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'off',
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `giang_vien_hd` (`ma_giang_vien`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lop_hanh_chinh`
--

INSERT INTO `lop_hanh_chinh` (`id`, `ma_lop`, `ma_giang_vien`, `khoa_hoc`, `action`, `created_at`) VALUES
(2, '17A02', 2, 17, 'invoice', 1623164106),
(3, '17A03', 4, 17, 'off', 1623166593),
(4, '17A04', 18, 17, 'off', 1623166849),
(5, '17A01', 17, 17, 'off', 1623166867);

-- --------------------------------------------------------

--
-- Table structure for table `lop_tin_chi`
--

DROP TABLE IF EXISTS `lop_tin_chi`;
CREATE TABLE IF NOT EXISTS `lop_tin_chi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_lop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_mon_hoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_giang_vien` int(11) NOT NULL,
  `ma_ki_hoc` int(11) NOT NULL,
  `ma_phong_hoc` int(11) NOT NULL,
  `sv_toi_thieu` int(11) NOT NULL,
  `sv_toi_da` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ma_giang_vien` (`ma_giang_vien`),
  KEY `ma_mon_hoc` (`ma_mon_hoc`),
  KEY `ma_ki_hoc` (`ma_ki_hoc`,`ma_phong_hoc`),
  KEY `ma_phong_hoc` (`ma_phong_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lop_tin_chi`
--

INSERT INTO `lop_tin_chi` (`id`, `ten_lop`, `ma_mon_hoc`, `ma_giang_vien`, `ma_ki_hoc`, `ma_phong_hoc`, `sv_toi_thieu`, `sv_toi_da`, `created_at`) VALUES
(17, '16248107803310P22', '3', 10, 8, 2, 25, 40, 1624812889),
(18, '1624810780324P21', '2', 4, 8, 1, 25, 40, 1624812945),
(19, '1624810780341P23', '4', 1, 8, 3, 25, 40, 1624813612),
(20, '16248107803517P43', '5', 17, 8, 12, 25, 40, 1624814146);

-- --------------------------------------------------------

--
-- Table structure for table `ma_the`
--

DROP TABLE IF EXISTS `ma_the`;
CREATE TABLE IF NOT EXISTS `ma_the` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_the` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_the_nap` int(11) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `tg_nap` int(11) DEFAULT NULL,
  `user_su_dung` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ma_the`
--

INSERT INTO `ma_the` (`id`, `ma_the`, `ma_the_nap`, `trang_thai`, `tg_nap`, `user_su_dung`, `created_at`) VALUES
(7, 'IgmwvmGQIuCCvLG8eDKzi', 1, 0, NULL, NULL, 1626024763);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` text NOT NULL,
  `menu_name` char(255) DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `unique-index-menu-menu_name` (`menu_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1622739271),
('m140209_132017_init', 1622739277),
('m140403_174025_create_account_table', 1622739277),
('m140504_113157_update_tables', 1622739277),
('m140504_130429_create_token_table', 1622739277),
('m140830_171933_fix_ip_field', 1622739277),
('m140830_172703_change_account_table_name', 1622739277),
('m141222_110026_update_ip_field', 1622739277),
('m141222_135246_alter_username_length', 1622739277),
('m150614_103145_update_social_account_table', 1622739277),
('m150623_212711_fix_username_notnull', 1622739277),
('m151218_234654_add_timezone_to_profile', 1622739277),
('m160929_103127_add_last_login_at_to_user_table', 1622739277),
('m170101_000000_create_menu_table', 1622859709),
('m170101_000001_humanized_menu_name', 1622859709),
('m210613_055702_ngay_hoc', 1623580290),
('m210613_103327_gio_hoc', 1623580436),
('m210613_105038_add_ngay_hoc', 1623581552),
('m210613_105729_add_gio_hoc', 1623582368);

-- --------------------------------------------------------

--
-- Table structure for table `mon_hoc`
--

DROP TABLE IF EXISTS `mon_hoc`;
CREATE TABLE IF NOT EXISTS `mon_hoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_mon_hoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mieu_ta` text COLLATE utf8_unicode_ci NOT NULL,
  `ma_bo_mon` int(11) NOT NULL,
  `tin_chi` tinyint(4) NOT NULL,
  `dieu_kien` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mon_hoc`
--

INSERT INTO `mon_hoc` (`id`, `ten_mon_hoc`, `mieu_ta`, `ma_bo_mon`, `tin_chi`, `dieu_kien`, `created_at`) VALUES
(2, 'Tiếng Anh Cơ bản 1', 'Kết thúc học phần, sinh viên có thể: hiểu được những câu và cách diễn đạt phổ biến với các chủ đề gần gũi với cuộc sống hàng ngày; giao tiếp trong những tình huống đơn giản thông qua việc trao đổi thông tin trực tiếp; miêu tả một cách đơn giản về bản thân và về các hoạt động và những vấn đề gần gũi, liên quan trực tiếp đến cuộc sống của mình.', 1, 3, NULL, 1623170454),
(3, 'Tin học đại cương', 'Tiếng Anh: The course consists of 4 main sections of knowledge: basic knowledge of computer, word processor, slide program and operation manuals Internet and E-mail.\r\n\r\nThe knowledge of informatics providing basic knowledge about computer science, introduction to information and representation of information, computer models, hardware, computer software, operating system and guides perform basic operations with an operating system such as running programs, customizable interface, working with files, installing software, ...\r\n\r\nThe draft guidance documents using a word processor common. Also, help students with general knowledge about the drafting system and how to create documents in the correct standard.\r\n\r\nThe program screened as introduction to a program allowing to create Slide Projector or slide through the big screen. Very useful for students later if necessary report seminars, assignments, graduation thesis ...\r\n\r\nThe operation manuals Internet and Email gives students the foundation knowledge of the global Internet, registering and using the services on the Internet. Helping students to exchange electronic tools and self-learning ability later.\r\n\r\nTiếng Việt: Môn học bao gồm 4 phần kiến thức chính: những hiểu biết cơ bản về tin học, chương trình soạn thảo văn bản, chương trình trình chiếu và hướng dẫn khai thác internet và E-mail.\r\n\r\nNhững hiểu biết về tin học cung cấp các kiến thức cơ bản nhất về tin học, giới thiệu về thông tin và cách biểu diễn thông tin, mô hình máy tính, phần cứng, phần mềm máy tính, hệ điều hành và hướng dẫn thực hiện các thao tác cơ bản với một hệ điều hành như: chạy chương trình, tùy biến giao diện, làm việc với tệp tin, cài đặt phần mềm,…\r\n\r\nPhần Soạn thảo văn bản hướng dẫn cách sử dụng một chương trình soạn thảo văn bản thông dụng. Ngoài ra, giúp người học có kiến thức chung về các hệ soạn thảo văn bản cũng như cách tạo ra các văn bản theo đúng chuẩn.\r\n\r\nPhần Chương trình trình chiếu: giới thiệu cho người học một chương trình cho phép tạo ra các Slide để trình chiếu thông qua Projector hoặc màn hình lớn. Rất có ích cho sinh viên sau này khi cần báo cáo seminar, bài tập lớn, đồ án tốt nghiệp…\r\n\r\nPhần hướng dẫn khai thác Internet và Email cung cấp cho sinh viên các kiến thức nền tảng của mạng Internet toàn cầu, cách đăng ký  và sử dụng các dịch vụ trên Internet. Giúp sinh viên có công cụ trao đổi điện tử và khả năng tự học sau này.', 1, 3, NULL, 1623172681),
(4, 'Giải tích 1', '', 1, 3, NULL, 1623172714),
(5, 'Kỹ thuật Lập trình cơ sở', '', 1, 4, NULL, 1623172729),
(6, 'Kỹ thuật điện tử số', '', 1, 3, NULL, 1623174118),
(7, 'Thực hành Cơ sở lập trình', '', 1, 1, NULL, 1623174118),
(8, 'Sinh hoạt công dân, sinh viên đầu khóa', '', 1, 0, NULL, 1623174118),
(9, 'Kiến tập doanh nghiệp', '', 1, 0, NULL, 1623174118),
(10, 'Giáo dục quốc phòng', '', 1, 9, NULL, 1623174118),
(11, 'Giáo dục thể chất', '', 1, 2, NULL, 1623174118),
(12, 'Tiếng Anh cơ bản 2', '', 1, 3, NULL, 1623174118),
(13, 'Giải tích 2', '', 1, 3, NULL, 1623174118),
(14, 'Cơ sở dữ liệu', '', 1, 3, NULL, 1623174118),
(15, 'Kiến trúc máy tính', '', 1, 3, NULL, 1623174118),
(16, 'Chuyên đề thực tập cơ sở', '', 1, 3, NULL, 1623174118),
(17, 'Thiết kế Web', '', 1, 4, NULL, 1623174118),
(18, 'Kỹ thuật lập trình hướng đối tượng', '', 1, 4, NULL, 1623174118),
(19, 'Tiếng Anh cơ bản 3', '', 1, 3, NULL, 1623174118),
(20, 'Xác suất và thống kê toán học', '', 1, 3, NULL, 1623174118),
(21, 'Cấu trúc dữ liệu và giải thuật', '', 1, 3, NULL, 1623174118),
(22, 'Toán rời rạc', '', 1, 4, NULL, 1623174118),
(23, 'Nguyên lý hệ điều hành', '', 1, 3, NULL, 1623174118),
(24, 'Mạng và truyền thông', '', 1, 3, NULL, 1623174118),
(25, 'Hệ quản trị CSDL', '', 1, 4, NULL, 1623174118),
(26, 'Mã nguồn mở', '', 1, 3, NULL, 1623174118),
(27, 'Thực hành LT hướng đối tượng', '', 1, 1, NULL, 1623174118),
(28, 'Thực hành HQTCSDL', '', 1, 1, NULL, 1623174118),
(29, 'Kĩ năng mềm', '', 1, 3, NULL, 1623174118),
(30, 'Đại số và hình giải tích', '', 1, 3, NULL, 1623174118),
(31, 'Lập trình Hướng sự kiện', '', 1, 4, NULL, 1623174118),
(32, 'An ninh và bảo mật dữ liệu', '', 1, 3, NULL, 1623174118),
(33, 'Quản trị mạng', '', 1, 3, NULL, 1623174118),
(34, 'Tiếng Anh chuyên ngành', '', 1, 3, NULL, 1623174118),
(35, 'Nguyên lý', '', 1, 5, NULL, 1623174118),
(36, 'Chuyên đề thực tập ngành', '', 1, 4, NULL, 1623174118),
(37, 'Lập trình trên thiết bị di động', '', 1, 3, NULL, 1623174118),
(38, 'Lập trình hệ thống', '', 1, 3, NULL, 1623174118),
(39, 'Phân tích và thiết kế hệ thống TT', '', 1, 4, NULL, 1623174118),
(40, 'Thương mại điện tử', '', 1, 3, NULL, 1623174118),
(41, 'Sinh hoạt công dân, sinh viên giữa khóa', '', 1, 0, NULL, 1623174118),
(42, 'Pháp luật đại cương', '', 1, 2, NULL, 1623174118),
(43, 'Tư tưởng Hồ Chí Minh', '', 1, 2, NULL, 1623174118),
(44, 'Lập trình Web', '', 1, 4, NULL, 1623174118),
(45, 'Giáo dục thể chất', '', 1, 3, NULL, 1623174118),
(46, 'Đường lối cách mạng của Đảng CSVN', '', 1, 3, NULL, 1623174118),
(47, 'Thực hành LTr Web', '', 1, 1, NULL, 1623174118);

-- --------------------------------------------------------

--
-- Table structure for table `mon_tien_quyet`
--

DROP TABLE IF EXISTS `mon_tien_quyet`;
CREATE TABLE IF NOT EXISTS `mon_tien_quyet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_bo_mon` int(11) NOT NULL,
  `mon_tien_quyet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mon_tien_quyet`
--

INSERT INTO `mon_tien_quyet` (`id`, `ma_bo_mon`, `mon_tien_quyet`, `created_at`) VALUES
(1, 5, '[7]', 1623259985),
(2, 12, '[2]', 1623259985),
(3, 13, '[4]', 1623259985),
(4, 14, '[7,3]', 1623259985),
(5, 15, '[3,6]', 1623259985),
(6, 16, '[3]', 1623259985),
(7, 17, '[3]', 1623259985),
(8, 18, '[5]', 1623259985),
(9, 19, '[12]', 1623259985),
(10, 20, '[13]', 1623259985),
(11, 21, '[7,5]', 1623259985),
(12, 22, '[5,7]', 1623259985),
(13, 23, '[15]', 1623259985),
(14, 24, '[6]', 1623259985),
(15, 25, '[14]', 1623259985),
(16, 26, '[23]', 1623259985),
(17, 30, '[13]', 1623259985),
(18, 31, '[18,25]', 1623259985),
(19, 32, '[24]', 1623259985),
(20, 33, '[24]', 1623259985),
(21, 34, '[19]', 1623259985),
(22, 36, '[21,14,22,16,23]', 1623259985),
(23, 37, '[18]', 1623259985),
(24, 38, '[5,23]', 1623259985),
(25, 39, '[31]', 1623259985),
(26, 40, '[44]', 1623259985),
(27, 41, '[9]', 1623259985),
(28, 43, '[35]', 1623259985),
(29, 44, '[18,17]', 1623259985),
(30, 46, '[43]', 1623259985);

-- --------------------------------------------------------

--
-- Table structure for table `ngay_hoc`
--

DROP TABLE IF EXISTS `ngay_hoc`;
CREATE TABLE IF NOT EXISTS `ngay_hoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ngay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ngay_hoc`
--

INSERT INTO `ngay_hoc` (`id`, `ngay`, `created_at`) VALUES
(1, 'Monday', 1623259985),
(2, 'Tuesday', 1623259985),
(3, 'Wednesday', 1623259985),
(4, 'Thursday', 1623259985),
(5, 'Friday', 1623259985),
(6, 'Saturday', 1623259985),
(7, 'Sunday', 1623259985);

-- --------------------------------------------------------

--
-- Table structure for table `phong_hoc`
--

DROP TABLE IF EXISTS `phong_hoc`;
CREATE TABLE IF NOT EXISTS `phong_hoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phong_hoc`
--

INSERT INTO `phong_hoc` (`id`, `ten`, `created_at`) VALUES
(1, 'P21', 1623175565),
(2, 'P22', 1623175565),
(3, 'P23', 1623175565),
(4, 'P24', 1623175565),
(5, 'P31', 1623175565),
(6, 'P32', 1623175565),
(7, 'P33', 1623175565),
(8, 'P34', 1623175565),
(9, 'P41', 1623175565),
(10, 'P42', 1623175565),
(12, 'P43', 1623175565),
(13, 'P44', 1623175565),
(14, 'P51', 1623175565),
(15, 'P52', 1623175565);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sinh_vien`
--

DROP TABLE IF EXISTS `sinh_vien`;
CREATE TABLE IF NOT EXISTS `sinh_vien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lop_hanh_chinh` int(11) DEFAULT NULL,
  `que_quan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioi_tinh` tinyint(4) NOT NULL DEFAULT '0',
  `tg_nhap_hoc` int(11) NOT NULL,
  `cmnd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sinh_vien`
--

INSERT INTO `sinh_vien` (`id`, `ten`, `email`, `lop_hanh_chinh`, `que_quan`, `gioi_tinh`, `tg_nhap_hoc`, `cmnd`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thiên Nam', 'nguyenthiennam@gmail.com', 3, 'Bắc Thái', 0, 1622771151, '58297997238', 1622771151, 1622771151),
(2, 'Phan Trần Bảo Tuấn', 'phantranbaotuan@gmail.com', 3, 'Lâm Đồng', 0, 1622771151, '66799938178', 1622771151, 1622771151),
(3, 'Trần Duy Bảo', 'tranduybao@gmail.com', 2, 'Đắk Nông', 0, 1622771151, '98716891997', 1622771151, 1622771151),
(4, 'Nguyễn Minh Hội', 'nguyenminhhoi@gmail.com', 2, 'Quảng Ngãi', 0, 1622771151, '79322861994', 1622771151, 1622771151),
(5, 'Bùi Trần Thiên Hoan', 'buitranthienhoan@gmail.com', 2, 'Lâm Đồng', 0, 1622771151, '78866121769', 1622771151, 1622771151),
(6, 'Huỳnh Lê Khang', 'huynhlekhang@gmail.com', 2, 'Ninh Thuận', 0, 1622771151, '92170894510', 1622771151, 1622771151),
(7, 'Phan Minh Anh Khoa', 'phanminhanhkhoa@gmail.com', 2, 'Lâm Đồng', 0, 1622771151, '49308428171', 1622771151, 1622771151),
(8, 'Điệp Văn Lâm', 'diepvanlam@gmail.com', 2, 'Quảng Ninh', 0, 1622771151, '92317193161', 1622771151, 1622771151),
(9, 'Hồ Ngọc Linh', 'hongoclinh@gmail.com', 2, 'Đăk Lăk', 1, 1622771151, '07612431693', 1622771151, 1622771151),
(10, 'Đặng Hải Long', 'danghailong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '65222345277', 1622771151, 1622771151),
(11, 'Hoàng Cao Lộc', 'hoangcaoloc@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '74233804970', 1622771151, 1622771151),
(12, 'Phan Bảo Luân', 'phanbaoluan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '11883493994', 1622771151, 1622771151),
(13, 'Trần Văn Nam', 'tranvannam@gmail.com', NULL, 'Quảng Ngãi', 0, 1622771151, '03381268298', 1622771151, 1622771151),
(14, 'Nguyễn Thị Kim Nga', 'nguyenthikimnga@gmail.com', NULL, 'Đắk Lắk', 1, 1622771151, '47325028599', 1622771151, 1622771151),
(15, 'Bùi Phát', 'buiphat@gmail.com', NULL, 'Quảng Ngãi', 0, 1622771151, '23646793908', 1622771151, 1622771151),
(16, 'Tou Tiang Sam Pô', 'toutiangsampo@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '07708233792', 1622771151, 1622771151),
(17, 'Trương Việt Quang', 'truongvietquang@gmail.com', NULL, 'Quảng Bình', 0, 1622771151, '72105741507', 1622771151, 1622771151),
(18, 'Phạm Trường Sơn', 'phamtruongson@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '16066576870', 1622771151, 1622771151),
(19, 'Nguyễn Đình Trọng', 'nguyendinhtrong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '37183141836', 1622771151, 1622771151),
(20, 'Mai Văn Tiến', 'maivantien@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '99781104675', 1622771151, 1622771151),
(21, 'Phan Nguyễn Nhựt Trường', 'phannguyennhuttruong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '54353386193', 1622771151, 1622771151),
(22, 'Nguyễn Ngọc Thuận', 'nguyenngocthuan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '72571985816', 1622771151, 1622771151),
(23, 'Bùi Đình Thuận', 'buidinhthuan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '19250199662', 1622771151, 1622771151),
(24, 'Nguyễn Tiến Thiện', 'nguyentienthien@gmail.com', NULL, 'Khánh Hòa', 0, 1622771151, '04229021330', 1622771151, 1622771151),
(25, 'Phạm Trung Vĩ', 'phamtrungvi@gmail.com', NULL, 'Đắk Lắk', 0, 1622771151, '08767590807', 1622771151, 1622771151),
(26, 'Lê Trường Vinh', 'letruongvinh@gmail.com', NULL, 'Ninh Thuận', 0, 1622771151, '24253025063', 1622771151, 1622771151),
(27, 'La Triều Vỹ', 'latrieuvy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '56369895856', 1622771151, 1622771151),
(28, 'Phan Văn Cường', 'phanvancuong@gmail.com', NULL, 'Quảng Nam', 0, 1622771151, '77358519785', 1622771151, 1622771151),
(29, 'Lãnh Hoàng Duy', 'lanhhoangduy@gmail.com', NULL, 'Bình Định', 0, 1622771151, '73906254787', 1622771151, 1622771151),
(30, 'Nguyễn Văn Đời', 'nguyenvandoi@gmail.com', NULL, 'Quảng Nam', 0, 1622771151, '28365373792', 1622771151, 1622771151),
(31, 'Lê Trọng Khánh', 'letrongkhanh@gmail.com', NULL, 'Khánh Hòa', 0, 1622771151, '45106816323', 1622771151, 1622771151),
(32, 'Lý Anh Khoa', 'lyanhkhoa@gmail.com', NULL, 'Đắk Lắk', 0, 1622771151, '71713301351', 1622771151, 1622771151),
(33, 'Đỗ Phi Long', 'dophilong@gmail.com', NULL, 'Đắk Lắk', 0, 1622771151, '24813934805', 1622771151, 1622771151),
(34, 'Cao Hữu Quốc Nguyên', 'caohuuquocnguyen@gmail.com', NULL, 'Gia Lai', 0, 1622771151, '30293340854', 1622771151, 1622771151),
(35, 'Hồ Ngọc Phước', 'hongocphuoc@gmail.com', NULL, 'Đắk Lắk', 0, 1622771151, '84270882655', 1622771151, 1622771151),
(36, 'Hồ Trọng Tín', 'hotrongtin@gmail.com', NULL, 'Gia Lai', 0, 1622771151, '66635304320', 1622771151, 1622771151),
(37, 'Lê Thanh Tùng', 'lethanhtung@gmail.com', NULL, 'Đắk Lắk', 0, 1622771151, '19926027115', 1622771151, 1622771151),
(38, 'Đỗ Khánh Hưng', 'dokhanhhung@gmail.com', NULL, 'Quảng Trị', 0, 1622771151, '70069774465', 1622771151, 1622771151),
(39, 'Nguyễn Thị Minh Hiền', 'nguyenthiminhhien@gmail.com', NULL, 'Lâm Đồng', 1, 1622771151, '51365140129', 1622771151, 1622771151),
(40, 'Lê Văn Lập', 'levanlap@gmail.com', NULL, 'Ninh Bình', 0, 1622771151, '97297551254', 1622771151, 1622771151),
(41, 'Nguyễn Ngọc Tân', 'nguyenngoctan@gmail.com', NULL, 'Phú Yên', 0, 1622771151, '67766474519', 1622771151, 1622771151),
(42, 'Nguyễn Đức Huy', 'nguyenduchuy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '22500081962', 1622771152, 1622771152),
(43, 'Võ Nguyễn Hạnh Uyên', 'vonguyenhanhuyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '09468796380', 1622771152, 1622771152),
(44, 'Kon Sa Ha Nai', 'konsahanai@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '25351828371', 1622771152, 1622771152),
(45, 'Văn Công Tuấn Anh', 'vancongtuananh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '34274330030', 1622771152, 1622771152),
(46, 'K\' Brên', 'k\'bren@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '00658648982', 1622771152, 1622771152),
(47, 'Nguyễn Thành Công', 'nguyenthanhcong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '61294365510', 1622771152, 1622771152),
(48, 'Nguyễn Thị Mỹ Dung', 'nguyenthimydung@gmail.com', NULL, 'Bình Thuận', 1, 1622771152, '97705603078', 1622771152, 1622771152),
(49, 'Trần Đình Đạt', 'trandinhdat@gmail.com', NULL, 'Quảng Nam', 0, 1622771152, '13134734766', 1622771152, 1622771152),
(50, 'Trần Văn Đức', 'tranvanduc@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '50287119634', 1622771152, 1622771152),
(51, 'Huỳnh Thị Lâm Đa', 'huynhthilamda@gmail.com', NULL, 'Bình Định', 1, 1622771152, '79292572725', 1622771152, 1622771152),
(52, 'Nguyễn Văn Hùng', 'nguyenvanhung@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '93124041930', 1622771152, 1622771152),
(53, 'Trịnh ÁNh Hằng', 'trinhanhhang@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '03535432438', 1622771152, 1622771152),
(54, 'Đặng Thị Kim Hương', 'dangthikimhuong@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '33542905368', 1622771152, 1622771152),
(55, 'Phan Văn Hùng', 'phanvanhung@gmail.com', NULL, 'Bình Thuận', 0, 1622771152, '25994038571', 1622771152, 1622771152),
(56, 'Nguyễn Hoàng Khải', 'nguyenhoangkhai@gmail.com', NULL, 'Gia Lai', 0, 1622771152, '48917800928', 1622771152, 1622771152),
(57, 'Hoàng Quốc Khương', 'hoangquockhuong@gmail.com', NULL, 'Hà Tĩnh', 0, 1622771152, '54570583007', 1622771152, 1622771152),
(58, 'Trần Thanh Mai', 'tranthanhmai@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '72722252614', 1622771152, 1622771152),
(59, 'Trịnh Văn Mười', 'trinhvanmuoi@gmail.com', NULL, 'Gia Lai', 0, 1622771152, '28449951293', 1622771152, 1622771152),
(60, 'Nguyyễn Tuấn Minh', 'nguyyentuanminh@gmail.com', NULL, 'Hà Tĩnh', 0, 1622771152, '12756597638', 1622771152, 1622771152),
(61, 'Trần Tuấn Nghĩa', 'trantuannghia@gmail.com', NULL, 'Quảng Ngãi', 0, 1622771152, '30087544055', 1622771152, 1622771152),
(62, 'Lê Thị Hoài Ngân', 'lethihoaingan@gmail.com', NULL, 'Khánh Hòa', 1, 1622771152, '18149019027', 1622771152, 1622771152),
(63, 'Lê Như Quỳnh', 'lenhuquynh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '40037596905', 1622771152, 1622771152),
(64, 'Lương Quang Quý', 'luongquangquy@gmail.com', NULL, 'Thừa Thiên Huế', 0, 1622771152, '97130911302', 1622771152, 1622771152),
(65, 'Nguyễn Văn Thư', 'nguyenvanthu@gmail.com', NULL, 'Bình Định', 0, 1622771152, '30312868496', 1622771152, 1622771152),
(66, 'Ka Thanh', 'kathanh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '55887156779', 1622771152, 1622771152),
(67, 'Huỳnh Thị Dạ Thu', 'huynhthidathu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '52425877293', 1622771152, 1622771152),
(68, 'Nguyễn Tấn Tàu', 'nguyentantau@gmail.com', NULL, 'Gia Lai', 0, 1622771152, '95392043297', 1622771152, 1622771152),
(69, 'Hoàng Quốc Thạch', 'hoangquocthach@gmail.com', NULL, 'Bình Thuận', 0, 1622771152, '46621707372', 1622771152, 1622771152),
(70, 'Nguyễn Võ Cẩm Tú', 'nguyenvocamtu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '79710330296', 1622771152, 1622771152),
(71, 'Trần Minh Tâm', 'tranminhtam@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '94682172845', 1622771152, 1622771152),
(72, 'Trần Thị Cẩm Thư', 'tranthicamthu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '12018747311', 1622771152, 1622771152),
(73, 'Ma Trâm', 'matram@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '15866757945', 1622771152, 1622771152),
(74, 'Nguyễn Bảo Tiến', 'nguyenbaotien@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '64073706711', 1622771152, 1622771152),
(75, 'Ka Thu', 'kathu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '22876404928', 1622771152, 1622771152),
(76, 'Lê Hoàng Khánh Vũ', 'lehoangkhanhvu@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '49036574451', 1622771152, 1622771152),
(77, 'Vũ Đình Thắng', 'vudinhthang@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '32725407479', 1622771152, 1622771152),
(78, 'Hoàng Xuân Dũng', 'hoangxuandung@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '52249845162', 1622771152, 1622771152),
(79, 'Nguyễn Phước Huân', 'nguyenphuochuan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '98804327949', 1622771152, 1622771152),
(80, 'Nguyễn Đình Mạnh', 'nguyendinhmanh@gmail.com', NULL, 'Nghệ An', 0, 1622771152, '22606256707', 1622771152, 1622771152),
(81, 'Nguyễn Văn Quảng', 'nguyenvanquang@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '83551379617', 1622771152, 1622771152),
(82, 'Lê Hoàng Sinh', 'lehoangsinh@gmail.com', NULL, 'Thái Bình', 0, 1622771152, '95387421407', 1622771152, 1622771152),
(83, 'Nguyễn Thị Thu Hiếu', 'nguyenthithuhieu@gmail.com', NULL, 'Bình Định', 1, 1622771152, '47368194628', 1622771152, 1622771152),
(84, 'Lê Hữu Tường', 'lehuutuong@gmail.com', NULL, 'Bình Định', 0, 1622771152, '34469948918', 1622771152, 1622771152),
(85, 'Bùi Văn Chung', 'buivanchung@gmail.com', NULL, 'Hòa Bình', 0, 1622771152, '59545505961', 1622771152, 1622771152),
(86, 'Nguyễn Văn Cầm', 'nguyenvancam@gmail.com', NULL, 'Hà Nội', 0, 1622771152, '11152542404', 1622771152, 1622771152),
(87, 'Nguyễn Văn Công', 'nguyenvancong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '50643341267', 1622771152, 1622771152),
(88, 'Nguyễn Minh Hoàng', 'nguyenminhhoang@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '58932914606', 1622771152, 1622771152),
(89, 'Trương Đức Phi Hùng', 'truongducphihung@gmail.com', NULL, 'Bình Phước', 0, 1622771152, '49006567616', 1622771152, 1622771152),
(90, 'Mai Trung Hiếu', 'maitrunghieu@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '99995971104', 1622771152, 1622771152),
(91, 'Phạm Thế Mỹ', 'phamthemy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '30504991725', 1622771152, 1622771152),
(92, 'Nguyễn Văn Nam', 'nguyenvannam@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '70199832615', 1622771152, 1622771152),
(93, 'Cil Ha Ninh', 'cilhaninh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '59476695557', 1622771152, 1622771152),
(94, 'Nguyễn Công Anh Phú', 'nguyenconganhphu@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '52842727514', 1622771152, 1622771152),
(95, 'Trương Bá Minh Quân', 'truongbaminhquan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '36828342766', 1622771152, 1622771152),
(96, 'Nguyễn Hữu Sang', 'nguyenhuusang@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '15198577149', 1622771152, 1622771152),
(97, 'Touneh Ya Thiết', 'tounehyathiet@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '72422175758', 1622771152, 1622771152),
(98, 'Quàng Nhật Nam Thái', 'quangnhatnamthai@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '54595482514', 1622771152, 1622771152),
(99, 'Dương Thị Hà Trang', 'duongthihatrang@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '13575791088', 1622771152, 1622771152),
(100, 'Đặng Văn Tuấn', 'dangvantuan@gmail.com', NULL, 'Đồng Nai', 0, 1622771152, '41423435662', 1622771152, 1622771152),
(101, 'Trần Thị Bích Thu', 'tranthibichthu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '26361354617', 1622771152, 1622771152),
(102, 'Trần Tiến Thành', 'trantienthanh@gmail.com', NULL, 'Khánh Hòa', 0, 1622771152, '85579045080', 1622771152, 1622771152),
(103, 'Lê Tuấn Vũ', 'letuanvu@gmail.com', NULL, 'An Giang', 0, 1622771152, '22519759662', 1622771152, 1622771152),
(104, 'Lê Tuấn Anh', 'letuananh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '59722700557', 1622771152, 1622771152),
(105, 'Hoàng Văn Bông', 'hoangvanbong@gmail.com', NULL, 'Nghệ An', 0, 1622771152, '59882810289', 1622771152, 1622771152),
(106, 'Đồng Văn Đức', 'dongvanduc@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '99237502083', 1622771152, 1622771152),
(107, 'Nguyễn Văn Học', 'nguyenvanhoc@gmail.com', NULL, 'Quảng Trị', 0, 1622771152, '73611877090', 1622771152, 1622771152),
(108, 'Lê Thị Mỹ Lộc', 'lethimyloc@gmail.com', NULL, 'Thừa Thiên Huế', 1, 1622771152, '73587211869', 1622771152, 1622771152),
(109, 'Trịnh Văn Lên', 'trinhvanlen@gmail.com', NULL, 'Quảng Nam', 0, 1622771152, '06236346361', 1622771152, 1622771152),
(110, 'Võ Nhật Nam', 'vonhatnam@gmail.com', NULL, 'Quảng Trị', 0, 1622771152, '99231265135', 1622771152, 1622771152),
(111, 'Lê Văn Phượng', 'levanphuong@gmail.com', NULL, 'Đồng Nai', 0, 1622771152, '27424153244', 1622771152, 1622771152),
(112, 'Nguyễn Bá Quốc Anh Quân', 'nguyenbaquocanhquan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '66500112237', 1622771152, 1622771152),
(113, 'Nguyễn Thị Thùy Trâm', 'nguyenthithuytram@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '53385887139', 1622771152, 1622771152),
(114, 'Nguyễn Tiến', 'nguyentien@gmail.com', NULL, 'Bình Định', 0, 1622771152, '71858115849', 1622771152, 1622771152),
(115, 'Lê Thường', 'lethuong@gmail.com', NULL, 'Kon Tum', 0, 1622771152, '57625758107', 1622771152, 1622771152),
(116, 'K\' Jơ Nơng Sang Khánh Vinh', 'k\'jonongsangkhanhvinh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '97809730527', 1622771152, 1622771152),
(117, 'Lê Đồng Điền', 'ledongdien@gmail.com', NULL, 'Bình Định', 0, 1622771152, '81500359118', 1622771152, 1622771152),
(118, 'Kơ Să Ha Brỡn', 'kosahabron@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '60148958825', 1622771152, 1622771152),
(119, 'Đinh Văn Dung', 'dinhvandung@gmail.com', NULL, 'Gia Lai', 0, 1622771152, '57539301704', 1622771152, 1622771152),
(120, 'Hoàng Minh Đức', 'hoangminhduc@gmail.com', NULL, 'Hà Tĩnh', 0, 1622771152, '00995410486', 1622771152, 1622771152),
(121, 'Trần Anh Tuấn', 'trananhtuan@gmail.com', NULL, 'Hưng Yên', 0, 1622771152, '46509721184', 1622771152, 1622771152),
(122, 'H Thâm Byă', 'hthambya@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '53237090361', 1622771152, 1622771152),
(123, 'Lê Hoài Bảo', 'lehoaibao@gmail.com', NULL, 'Thành phố Hồ Chí Minh', 0, 1622771152, '31262308259', 1622771152, 1622771152),
(124, 'Mbon K\' Cam', 'mbonk\'cam@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '11139189721', 1622771152, 1622771152),
(125, 'Đinh Văn Hiệp', 'dinhvanhiep@gmail.com', NULL, 'Gia Lai', 0, 1622771152, '65753980217', 1622771152, 1622771152),
(126, 'Đàm Quốc Hội', 'damquochoi@gmail.com', NULL, 'Bình Phước', 0, 1622771152, '71215409471', 1622771152, 1622771152),
(127, 'Cil Jệ', 'cilje@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '37517393106', 1622771152, 1622771152),
(128, 'K\' Phiểu', 'k\'phieu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '77141001559', 1622771152, 1622771152),
(129, 'Võ Thị Song Thu', 'vothisongthu@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '25438249403', 1622771152, 1622771152),
(130, 'Lê Việt Duy', 'levietduy@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '56177147426', 1622771152, 1622771152),
(131, 'Nguyễn Thị Mỹ Linh', 'nguyenthimylinh@gmail.com', NULL, 'Bình Thuận', 1, 1622771152, '92050683045', 1622771152, 1622771152),
(132, 'Đặng Như Quỳnh', 'dangnhuquynh@gmail.com', NULL, 'Gia Lai', 1, 1622771152, '14106905998', 1622771152, 1622771152),
(133, 'Thóng Tài Quyền', 'thongtaiquyen@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '44948569317', 1622771152, 1622771152),
(134, 'Đinh Thị Hoài Thương', 'dinhthihoaithuong@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '97289138322', 1622771152, 1622771152),
(135, 'Trần Thanh Tú', 'tranthanhtu@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '55844920180', 1622771152, 1622771152),
(136, 'Trương Thị Thanh Hiếu', 'truongthithanhhieu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '50398816693', 1622771152, 1622771152),
(137, 'Trịnh Thị Thúy Hiền', 'trinhthithuyhien@gmail.com', NULL, 'Gia Lai', 1, 1622771152, '18327351359', 1622771152, 1622771152),
(138, 'Trịnh Thị Thúy Hòa', 'trinhthithuyhoa@gmail.com', NULL, 'Gia Lai', 1, 1622771152, '45675368004', 1622771152, 1622771152),
(139, 'Nguyễn Ngọc Trâm Anh', 'nguyenngoctramanh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '71109921004', 1622771152, 1622771152),
(140, 'Lương Thị Bình', 'luongthibinh@gmail.com', NULL, 'Hải Dương', 1, 1622771152, '63705986581', 1622771152, 1622771152),
(141, 'Khê Thị Ý Chi', 'khethiychi@gmail.com', NULL, 'Ninh Thuận', 1, 1622771152, '50214709285', 1622771152, 1622771152),
(142, 'Nguyễn Thị Dung', 'nguyenthidung@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '51955629321', 1622771152, 1622771152),
(143, 'Nguyễn Thị Hà', 'nguyenthiha@gmail.com', NULL, 'Hà Tĩnh', 1, 1622771152, '58694876992', 1622771152, 1622771152),
(144, 'Trần Thị Ngân Hà', 'tranthinganha@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '74730710612', 1622771152, 1622771152),
(145, 'Mai Thanh Hoàng', 'maithanhhoang@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '76145507383', 1622771152, 1622771152),
(146, 'Nguyễn Thị Liễu', 'nguyenthilieu@gmail.com', NULL, 'Quảng Bình', 1, 1622771152, '12041652677', 1622771152, 1622771152),
(147, 'Hoàng Thị Ngọc Lan', 'hoangthingoclan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '66895757724', 1622771152, 1622771152),
(148, 'Nguyễn Thị Thanh Phúc', 'nguyenthithanhphuc@gmail.com', NULL, 'Quảng Ngãi', 1, 1622771152, '38140010365', 1622771152, 1622771152),
(149, 'Bùi Thị Phương', 'buithiphuong@gmail.com', NULL, 'Hà Tĩnh', 1, 1622771152, '33031636126', 1622771152, 1622771152),
(150, 'Lăng Thị Huỳnh Thúy', 'langthihuynhthuy@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '05487633039', 1622771152, 1622771152),
(151, 'Phạm Thị Thêm', 'phamthithem@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '05189655078', 1622771152, 1622771152),
(152, 'Vũ Thị Ngọc Uyên', 'vuthingocuyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '09669509621', 1622771152, 1622771152),
(153, 'Nguyễn Văn Vương', 'nguyenvanvuong@gmail.com', NULL, 'Hà Tĩnh', 0, 1622771152, '62180841792', 1622771152, 1622771152),
(154, 'Nguyễn Hoàng Anh Vũ', 'nguyenhoanganhvu@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '49346096926', 1622771152, 1622771152),
(155, 'Lê Phạm Minh Vũ', 'lephamminhvu@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '70887245211', 1622771152, 1622771152),
(156, 'Trương Nguyễn Như Ý', 'truongnguyennhuy@gmail.com', NULL, 'Khánh Hòa', 1, 1622771152, '91880892827', 1622771152, 1622771152),
(157, 'Đoàn Thị Quỳnh Giao', 'doanthiquynhgiao@gmail.com', NULL, 'Ninh Thuận', 1, 1622771152, '69716710697', 1622771152, 1622771152),
(158, 'Đậu Thị Hạnh', 'dauthihanh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '83559620222', 1622771152, 1622771152),
(159, 'Nguyễn Thị Lệ Hằng', 'nguyenthilehang@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '58192358576', 1622771152, 1622771152),
(160, 'Phan Thị Nhi', 'phanthinhi@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '20387013983', 1622771152, 1622771152),
(161, 'Nguyễn Cảnh Sang', 'nguyencanhsang@gmail.com', NULL, 'Nghệ An', 0, 1622771152, '79045500646', 1622771152, 1622771152),
(162, 'Lê Thị Hà Trang', 'lethihatrang@gmail.com', NULL, 'Hà Nội', 1, 1622771152, '33938915826', 1622771152, 1622771152),
(163, 'Đỗ Thị Ngọc Bích', 'dothingocbich@gmail.com', NULL, 'Bà Rịa - Vũng Tàu', 1, 1622771152, '29287256638', 1622771152, 1622771152),
(164, 'Nguyễn Lê Ngọc Châu', 'nguyenlengocchau@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '95953780881', 1622771152, 1622771152),
(165, 'Trần Hoàng Khánh Duy', 'tranhoangkhanhduy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '35199974117', 1622771152, 1622771152),
(166, 'Nguyễn Thị Hoa', 'nguyenthihoa@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '70977011215', 1622771152, 1622771152),
(167, 'Nguyễn Thị Hồng Hà', 'nguyenthihongha@gmail.com', NULL, 'Đăk Lăk', 1, 1622771152, '08420649400', 1622771152, 1622771152),
(168, 'Phạm Thị Thu Hồng', 'phamthithuhong@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '37914131753', 1622771152, 1622771152),
(169, 'Lê Văn Khuê', 'levankhue@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '25560973110', 1622771152, 1622771152),
(170, 'Ngô Thị My', 'ngothimy@gmail.com', NULL, 'Phú Yên', 1, 1622771152, '97863249105', 1622771152, 1622771152),
(171, 'Tằng Khởi Minh', 'tangkhoiminh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '40703215834', 1622771152, 1622771152),
(172, 'Cao Hiền Ni', 'caohienni@gmail.com', NULL, 'Phú Yên', 1, 1622771152, '45258515544', 1622771152, 1622771152),
(173, 'Vũ Thị Kim Ngân', 'vuthikimngan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '44514175848', 1622771152, 1622771152),
(174, 'Bùi Thị Hoài Thương', 'buithihoaithuong@gmail.com', NULL, 'Phú Yên', 1, 1622771152, '11314715970', 1622771152, 1622771152),
(175, 'Trần Thị Kim Thạch', 'tranthikimthach@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '06777073754', 1622771152, 1622771152),
(176, 'Lê Văn Thanh', 'levanthanh@gmail.com', NULL, 'Ninh Thuận', 0, 1622771152, '84100643154', 1622771152, 1622771152),
(177, 'Bùi Nguyên Bảo Trâm', 'buinguyenbaotram@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '63683590724', 1622771152, 1622771152),
(178, 'Trần Đức Thủy Tiên', 'tranducthuytien@gmail.com', NULL, 'Bà Rịa - Vũng Tàu', 1, 1622771152, '48900151180', 1622771152, 1622771152),
(179, 'Nguyễn Nguyễn Khả Uyên', 'nguyennguyenkhauyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '34820793407', 1622771152, 1622771152),
(180, 'Đỗ Thị Vân', 'dothivan@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '78229110963', 1622771152, 1622771152),
(181, 'Ngô Hoàng Phương Anh', 'ngohoangphuonganh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '18159129281', 1622771152, 1622771152),
(182, 'Cao Thị Thu Hồng', 'caothithuhong@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '47434766664', 1622771152, 1622771152),
(183, 'Huỳnh Lê Thị Khánh Ly', 'huynhlethikhanhly@gmail.com', NULL, 'Quảng Ngãi', 1, 1622771152, '79911398301', 1622771152, 1622771152),
(184, 'Lê Thị Hồng Liên', 'lethihonglien@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '94968065223', 1622771152, 1622771152),
(185, 'Lê Thị Ngọc', 'lethingoc@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '87500398564', 1622771152, 1622771152),
(186, 'Nguyễn Văn Toản', 'nguyenvantoan@gmail.com', NULL, 'Thái Bình', 0, 1622771152, '38440847846', 1622771152, 1622771152),
(187, 'Trần Văn Tùng', 'tranvantung@gmail.com', NULL, 'Nam Định', 0, 1622771152, '83362813207', 1622771152, 1622771152),
(188, 'Trịnh Phi Dương', 'trinhphiduong@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '37790997491', 1622771152, 1622771152),
(189, 'Đàm Văn Hiếu', 'damvanhieu@gmail.com', NULL, 'Cao Bằng', 0, 1622771152, '65919883766', 1622771152, 1622771152),
(190, 'Nguyễn Võ Thanh An', 'nguyenvothanhan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '38879089573', 1622771152, 1622771152),
(191, 'Nguyễn Huỳnh Minh Phụng', 'nguyenhuynhminhphung@gmail.com', NULL, 'Bình Phước', 0, 1622771152, '46125615773', 1622771152, 1622771152),
(192, 'Hoàng Hữu Đạt', 'hoanghuudat@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '21566705362', 1622771152, 1622771152),
(193, 'Đào Ngọc Quý', 'daongocquy@gmail.com', NULL, 'Ninh Bình', 0, 1622771152, '55656223575', 1622771152, 1622771152),
(194, 'Nguyễn Hoài Nhân', 'nguyenhoainhan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '22327512067', 1622771152, 1622771152),
(195, 'Dương Hồng Nhật', 'duonghongnhat@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '84856231285', 1622771152, 1622771152),
(196, 'Phan Thị Hoàng Trinh', 'phanthihoangtrinh@gmail.com', NULL, 'Quảng Bình', 1, 1622771152, '30646688225', 1622771152, 1622771152),
(197, 'Trần Thị Như Quỳnh', 'tranthinhuquynh@gmail.com', NULL, 'Quảng Nam', 1, 1622771152, '79719603338', 1622771152, 1622771152),
(198, 'Phạm Đỗ Trình', 'phamdotrinh@gmail.com', NULL, 'Nam Định', 0, 1622771152, '04451621668', 1622771152, 1622771152),
(199, 'Lê Tâm Hoàng Ngân', 'letamhoangngan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '32135243573', 1622771152, 1622771152),
(200, 'Bùi Thị Ngọc ÁNh', 'buithingocanh@gmail.com', NULL, 'Hòa Bình', 1, 1622771152, '53079957242', 1622771152, 1622771152),
(201, 'Phạm Thành Công', 'phamthanhcong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '96151535455', 1622771152, 1622771152),
(202, 'Nguyễn Thị Ngọc Chi', 'nguyenthingocchi@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '15394824777', 1622771152, 1622771152),
(203, 'Phạm Thị Dịu', 'phamthidiu@gmail.com', NULL, 'Hải Dương', 1, 1622771152, '78737963769', 1622771152, 1622771152),
(204, 'Trần Minh Khánh', 'tranminhkhanh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '83714258651', 1622771152, 1622771152),
(205, 'Nguyễn Ngọc Quỳnh Như', 'nguyenngocquynhnhu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '43556339638', 1622771152, 1622771152),
(206, 'Chế Thụy Phương Thanh', 'chethuyphuongthanh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '62039563532', 1622771152, 1622771152),
(207, 'Nguyễn Thị Vân Anh', 'nguyenthivananh@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '33477378960', 1622771152, 1622771152),
(208, 'Lê Đại Hải Dương', 'ledaihaiduong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '20676509907', 1622771152, 1622771152),
(209, 'Đoàn Thị Ngọc Hoa', 'doanthingochoa@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '90372448756', 1622771152, 1622771152),
(210, 'La Minh Trí', 'laminhtri@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '28731496212', 1622771152, 1622771152),
(211, 'Nguyễn Thị Phương Trâm', 'nguyenthiphuongtram@gmail.com', NULL, 'Đồng Nai', 1, 1622771152, '49194553190', 1622771152, 1622771152),
(212, 'Phạm Thị Thảo', 'phamthithao@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '27314110917', 1622771152, 1622771152),
(213, 'Thân Thị Tươi', 'thanthituoi@gmail.com', NULL, 'Bắc Giang', 1, 1622771152, '74202435403', 1622771152, 1622771152),
(214, 'Nguyễn Thị Thúy Vi', 'nguyenthithuyvi@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '83535104072', 1622771152, 1622771152),
(215, 'Nguyễn Văn Linh', 'nguyenvanlinh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '70632063046', 1622771152, 1622771152),
(216, 'Lê Tuấn Anh', 'letuananh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '49519921640', 1622771152, 1622771152),
(217, 'Nguyễn Thanh Huân', 'nguyenthanhhuan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '17315711672', 1622771152, 1622771152),
(218, 'Cao Hoàng Trung Hiệp', 'caohoangtrunghiep@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '74630585349', 1622771152, 1622771152),
(219, 'Phùng Văn Lâm', 'phungvanlam@gmail.com', NULL, 'Hà Nội', 0, 1622771152, '52838590397', 1622771152, 1622771152),
(220, 'Phan Nguyễn Bảo Ngân', 'phannguyenbaongan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '98395045932', 1622771152, 1622771152),
(221, 'Vy Văn Quỳnh', 'vyvanquynh@gmail.com', NULL, 'Đăk Lăk', 0, 1622771152, '03758080469', 1622771152, 1622771152),
(222, 'Lý Đình Quyết', 'lydinhquyet@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '50232769401', 1622771152, 1622771152),
(223, 'Trương Văn Sáng', 'truongvansang@gmail.com', NULL, 'Gia Lai', 0, 1622771152, '73336923047', 1622771152, 1622771152),
(224, 'Võ Văn Thành', 'vovanthanh@gmail.com', NULL, 'Quảng Ngãi', 0, 1622771152, '25624319604', 1622771152, 1622771152),
(225, 'Lê Thị Lan Trinh', 'lethilantrinh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '91761935499', 1622771152, 1622771152),
(226, 'Nguyễn Chí Thanh', 'nguyenchithanh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '84865737512', 1622771152, 1622771152),
(227, 'Nguyễn Văn Thắng', 'nguyenvanthang@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '29615578524', 1622771152, 1622771152),
(228, 'Lê Quốc Ý', 'lequocy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '02279753083', 1622771152, 1622771152),
(229, 'Hoàng Đức Duy', 'hoangducduy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '39187212845', 1622771152, 1622771152),
(230, 'Đàm Thanh Đức', 'damthanhduc@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '47293766625', 1622771152, 1622771152),
(231, 'Lê Văn Đạt', 'levandat@gmail.com', NULL, 'Bắc Ninh', 0, 1622771152, '07810416707', 1622771152, 1622771152),
(232, 'Nguyễn Văn Đạt', 'nguyenvandat@gmail.com', NULL, 'Khánh Hòa', 0, 1622771152, '13613520527', 1622771152, 1622771152),
(233, 'Nguyễn Văn Hoàng', 'nguyenvanhoang@gmail.com', NULL, 'Bình Định', 0, 1622771152, '39772417918', 1622771152, 1622771152),
(234, 'Tô Quốc Hoài', 'toquochoai@gmail.com', NULL, 'Phú Yên', 0, 1622771152, '20769114577', 1622771152, 1622771152),
(235, 'Nguyễn Ngọc Minh', 'nguyenngocminh@gmail.com', NULL, 'Phú Yên', 0, 1622771152, '84417608094', 1622771152, 1622771152),
(236, 'Hà Phong', 'haphong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '28902912439', 1622771152, 1622771152),
(237, 'Ty Đình Bảo Anh', 'tydinhbaoanh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '93814682016', 1622771152, 1622771152),
(238, 'Nguyễn Minh Anh', 'nguyenminhanh@gmail.com', NULL, 'Kiên Giang', 0, 1622771152, '56234539846', 1622771152, 1622771152),
(239, 'Mai Văn Cường', 'maivancuong@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '90335432079', 1622771152, 1622771152),
(240, 'Lê Hoàng Thuận', 'lehoangthuan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '51374774808', 1622771152, 1622771152),
(241, 'Phạm Hải Độ', 'phamhaido@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '75210296824', 1622771152, 1622771152),
(242, 'Nguyễn Trung Nghĩa', 'nguyentrungnghia@gmail.com', NULL, 'Ninh Thuận', 0, 1622771152, '71494350387', 1622771152, 1622771152),
(243, 'Nguyễn Tấn Phướng', 'nguyentanphuong@gmail.com', NULL, 'Ninh Thuận', 0, 1622771152, '49612905625', 1622771152, 1622771152),
(244, 'Phạm Văn Quang', 'phamvanquang@gmail.com', NULL, 'Phú Yên', 0, 1622771152, '91274428402', 1622771152, 1622771152),
(245, 'Nguyễn Định Thành', 'nguyendinhthanh@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '23501519232', 1622771152, 1622771152),
(246, 'Lê Vinh', 'levinh@gmail.com', NULL, 'Ninh Thuận', 0, 1622771152, '77754437205', 1622771152, 1622771152),
(247, 'Nguyễn Đình Vân', 'nguyendinhvan@gmail.com', NULL, 'Ninh Thuận', 0, 1622771152, '62538783050', 1622771152, 1622771152),
(248, 'Phan Huỳnh Hoàng Vũ', 'phanhuynhhoangvu@gmail.com', NULL, 'Ninh Thuận', 0, 1622771152, '85887759909', 1622771152, 1622771152),
(249, 'Nguyễn Duy Giáp', 'nguyenduygiap@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '10399936917', 1622771152, 1622771152),
(250, 'Nguyễn Thiên Phúc', 'nguyenthienphuc@gmail.com', NULL, 'Khánh Hòa', 0, 1622771152, '25814029374', 1622771152, 1622771152),
(251, 'Lê Thị Thu Thủy', 'lethithuthuy@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '03322435310', 1622771152, 1622771152),
(252, 'Trần Văn Tuấn Hùng', 'tranvantuanhung@gmail.com', NULL, 'Bình Thuận', 0, 1622771152, '13548061851', 1622771152, 1622771152),
(253, 'Mai Hữu Lục', 'maihuuluc@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '38247342214', 1622771152, 1622771152),
(254, 'Lê Hồng Thảo Vy', 'lehongthaovy@gmail.com', NULL, 'Đồng Nai', 1, 1622771152, '43839500331', 1622771152, 1622771152),
(255, 'Thái Thị Vy', 'thaithivy@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '68004988994', 1622771152, 1622771152),
(256, 'Y Phước Niê', 'yphuocnie@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '64318240620', 1622771152, 1622771152),
(257, 'Nguyễn Văn Hùng', 'nguyenvanhung@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '81311402695', 1622771152, 1622771152),
(258, 'Trần Văn Khương', 'tranvankhuong@gmail.com', NULL, 'Quảng Nam', 0, 1622771152, '30023611517', 1622771152, 1622771152),
(259, 'Phương Hữu Phương Linh', 'phuonghuuphuonglinh@gmail.com', NULL, 'Phú Yên', 0, 1622771152, '13737003144', 1622771152, 1622771152),
(260, 'Nguyễn Đạt Lâm', 'nguyendatlam@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '81509836277', 1622771152, 1622771152),
(261, 'Ma Mai', 'mamai@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '24909990293', 1622771152, 1622771152),
(262, 'Hà Văn Thân', 'havanthan@gmail.com', NULL, 'Phú Yên', 0, 1622771152, '43932288081', 1622771152, 1622771152),
(263, 'Đỗ Xuân Trung', 'doxuantrung@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '19272918450', 1622771152, 1622771152),
(264, 'Đinh Văn Linh', 'dinhvanlinh@gmail.com', NULL, 'Bình Định', 0, 1622771152, '81766978482', 1622771152, 1622771152),
(265, 'Đinh Thị Tiết', 'dinhthitiet@gmail.com', NULL, 'Bình Định', 1, 1622771152, '40563138058', 1622771152, 1622771152),
(266, 'Bế Văn Dần', 'bevandan@gmail.com', NULL, 'Cao Bằng', 0, 1622771152, '46876109020', 1622771152, 1622771152),
(267, 'Nguyễn Thị Hà', 'nguyenthiha@gmail.com', NULL, 'Kon Tum', 1, 1622771152, '98147883862', 1622771152, 1622771152),
(268, 'Nông Văn Nghiêm', 'nongvannghiem@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '94019534840', 1622771152, 1622771152),
(269, 'Hồ Đạt Quý', 'hodatquy@gmail.com', NULL, 'Nghệ An', 0, 1622771152, '35031650529', 1622771152, 1622771152),
(270, 'Ma Văn Tiệp', 'mavantiep@gmail.com', NULL, 'Tuyên Quang', 0, 1622771152, '86948353422', 1622771152, 1622771152),
(271, 'Nguyễn Tự Thành', 'nguyentuthanh@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '84948721890', 1622771152, 1622771152),
(272, 'Trần Thị Thanh Thùy', 'tranthithanhthuy@gmail.com', NULL, 'Khánh Hòa', 1, 1622771152, '10015736080', 1622771152, 1622771152),
(273, 'Bơnah Ria Tora', 'bonahriatora@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '52270200001', 1622771152, 1622771152),
(274, 'Hoàng Thị Anh', 'hoangthianh@gmail.com', NULL, 'Phú Thọ', 1, 1622771152, '07739124238', 1622771152, 1622771152),
(275, 'Vũ Huy Cường', 'vuhuycuong@gmail.com', NULL, 'Gia Lai', 0, 1622771152, '05989564845', 1622771152, 1622771152),
(276, 'Lê Tự Chinh', 'letuchinh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '03745553205', 1622771152, 1622771152),
(277, 'Nguyễn Văn Dũng', 'nguyenvandung@gmail.com', NULL, 'Quảng Ngãi', 0, 1622771152, '53935073640', 1622771152, 1622771152),
(278, 'Nay H\' Djơm', 'nayh\'djom@gmail.com', NULL, 'Gia Lai', 1, 1622771152, '92915055398', 1622771152, 1622771152),
(279, 'Nông Văn Điền', 'nongvandien@gmail.com', NULL, 'Cao Bằng', 0, 1622771152, '00778631642', 1622771152, 1622771152),
(280, 'Nguyễn Phi Khanh', 'nguyenphikhanh@gmail.com', NULL, 'Nghệ An', 0, 1622771152, '44877158075', 1622771152, 1622771152),
(281, 'Nguyễn Hoàng Anh Khoa', 'nguyenhoanganhkhoa@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '23815893721', 1622771152, 1622771152),
(282, 'Nguyễn Ngọc Lân', 'nguyenngoclan@gmail.com', NULL, 'Ninh Thuận', 0, 1622771152, '83172020166', 1622771152, 1622771152),
(283, 'Cao Thị Ngân', 'caothingan@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '71992268528', 1622771152, 1622771152),
(284, 'Đinh Y Nhung', 'dinhynhung@gmail.com', NULL, 'Kon Tum', 1, 1622771152, '58405041086', 1622771152, 1622771152),
(285, 'Y Trọng Niê', 'ytrongnie@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '25466544073', 1622771152, 1622771152),
(286, 'Nguyễn Văn Phúc', 'nguyenvanphuc@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '04950000559', 1622771152, 1622771152),
(287, 'Nguyễn Văn Phước', 'nguyenvanphuoc@gmail.com', NULL, 'Bình Phước', 0, 1622771152, '30255170024', 1622771152, 1622771152),
(288, 'Phạm Thanh Sơn', 'phamthanhson@gmail.com', NULL, 'Đắk Nông', 0, 1622771152, '80205062360', 1622771152, 1622771152),
(289, 'Đào Duy Sang', 'daoduysang@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '99910376691', 1622771152, 1622771152),
(290, 'Vũ Thị Thảo', 'vuthithao@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '42548363596', 1622771152, 1622771152),
(291, 'Nguyễn Thị Hoài Thương', 'nguyenthihoaithuong@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '37954813416', 1622771152, 1622771152),
(292, 'Liêng Hót Ha Thanh', 'lienghothathanh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '88963172159', 1622771152, 1622771152),
(293, 'Nguyễn Huỳnh Phước Thuận', 'nguyenhuynhphuocthuan@gmail.com', NULL, 'Khánh Hòa', 1, 1622771152, '43475586824', 1622771152, 1622771152),
(294, 'Nguyễn Thị Mỹ Vui', 'nguyenthimyvui@gmail.com', NULL, 'Khánh Hòa', 1, 1622771152, '60966944611', 1622771152, 1622771152),
(295, 'K\' Ban', 'k\'ban@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '71789850113', 1622771152, 1622771152),
(296, 'Nguyễn Kiên Cường', 'nguyenkiencuong@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '98497378011', 1622771152, 1622771152),
(297, 'Phan Trọng Đại', 'phantrongdai@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '25517444345', 1622771152, 1622771152),
(298, 'Trương Thị Hiên', 'truongthihien@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '71786281053', 1622771152, 1622771152),
(299, 'Lê Như Bá Hải', 'lenhubahai@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '14504234526', 1622771152, 1622771152),
(300, 'Phạm Thị Hoa', 'phamthihoa@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '30853052174', 1622771152, 1622771152),
(301, 'Nguyễn Thị Thu Hường', 'nguyenthithuhuong@gmail.com', NULL, 'Thái Nguyên', 1, 1622771152, '30208000573', 1622771152, 1622771152),
(302, 'Phạm Thị Huyên', 'phamthihuyen@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '71052542897', 1622771152, 1622771152),
(303, 'Hoàng Văn Kiên', 'hoangvankien@gmail.com', NULL, 'Lạng Sơn', 0, 1622771152, '67048528651', 1622771152, 1622771152),
(304, 'Đổng Minh Lý', 'dongminhly@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '31689479882', 1622771152, 1622771152),
(305, 'Trần Khánh Linh', 'trankhanhlinh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '54593158891', 1622771152, 1622771152),
(306, 'Lãnh Văn Mạnh', 'lanhvanmanh@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '79706989284', 1622771152, 1622771152),
(307, 'Nguyễn Thị Nhung', 'nguyenthinhung@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '58992933621', 1622771152, 1622771152),
(308, 'Đặng Thị Cẩm Nhung', 'dangthicamnhung@gmail.com', NULL, 'Quảng Nam', 1, 1622771152, '32175234205', 1622771152, 1622771152),
(309, 'Ka Nhung', 'kanhung@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '70215712178', 1622771152, 1622771152),
(310, 'Hoàng Thu Nguyệt', 'hoangthunguyet@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '51515782394', 1622771152, 1622771152),
(311, 'Nguyễn Thị Kim Phượng', 'nguyenthikimphuong@gmail.com', NULL, 'Quảng Nam', 1, 1622771152, '97447508990', 1622771152, 1622771152),
(312, 'Dương Thị Mộng Sim', 'duongthimongsim@gmail.com', NULL, 'Phú Yên', 1, 1622771152, '81946516318', 1622771152, 1622771152),
(313, 'Hoàng Trang', 'hoangtrang@gmail.com', NULL, 'Ninh Thuận', 1, 1622771152, '43877328585', 1622771152, 1622771152),
(314, 'Nguyễn Thị Thùy Trâm', 'nguyenthithuytram@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '12824248437', 1622771152, 1622771152),
(315, 'Vũ Thị Huyền Trang', 'vuthihuyentrang@gmail.com', NULL, 'Gia Lai', 1, 1622771152, '55785106303', 1622771152, 1622771152),
(316, 'H\' Thủy', 'h\'thuy@gmail.com', NULL, 'Đăk Nông', 1, 1622771152, '97460123626', 1622771152, 1622771152),
(317, 'Đỗ Trung Thành', 'dotrungthanh@gmail.com', NULL, 'Hà Nam', 0, 1622771152, '30063902666', 1622771152, 1622771152),
(318, 'Vũ Trần Thái Thanh', 'vutranthaithanh@gmail.com', NULL, 'Quảng Ngãi', 1, 1622771152, '53332506477', 1622771152, 1622771152),
(319, 'Ngô Nữ Thanh Thanh', 'ngonuthanhthanh@gmail.com', NULL, 'An Giang', 1, 1622771152, '16477936096', 1622771152, 1622771152),
(320, 'Quang Nguyễn Bảo Vân', 'quangnguyenbaovan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '27426866266', 1622771152, 1622771152),
(321, 'Lưu Nguyễn Thành Tín', 'luunguyenthanhtin@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '38183179665', 1622771152, 1622771152),
(322, 'Nai Ánh', 'naianh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '54505308537', 1622771152, 1622771152),
(323, 'Trần Thị Nhung', 'tranthinhung@gmail.com', NULL, 'Nam Định', 1, 1622771152, '98575079198', 1622771152, 1622771152),
(324, 'Nguyễn Thị Quỳnh Như', 'nguyenthiquynhnhu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '69431116560', 1622771152, 1622771152),
(325, 'Đỗ Thúy Vi', 'dothuyvi@gmail.com', NULL, 'Bình Thuận', 1, 1622771152, '63922423651', 1622771152, 1622771152),
(326, 'Lâm Thị Thùy Vân', 'lamthithuyvan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '49691881310', 1622771152, 1622771152),
(327, 'Sử Thị Kim Dàn', 'suthikimdan@gmail.com', NULL, 'Ninh Thuận', 1, 1622771152, '04459293765', 1622771152, 1622771152),
(328, 'Trần Thị Mỹ Duyên', 'tranthimyduyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '65474358157', 1622771152, 1622771152),
(329, 'Trương Thị Minh Hiếu', 'truongthiminhhieu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '98486181122', 1622771152, 1622771152),
(330, 'Nguyễn Ngọc Minh', 'nguyenngocminh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '23026091053', 1622771152, 1622771152),
(331, 'Trần Lệ Quyên', 'tranlequyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '23557250026', 1622771152, 1622771152),
(332, 'Ngô Thị Thanh Thảo', 'ngothithanhthao@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '80300829799', 1622771152, 1622771152),
(333, 'Vương Tiểu Huyền', 'vuongtieuhuyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '40172898879', 1622771152, 1622771152),
(334, 'Nguyễn Thị Huyền', 'nguyenthihuyen@gmail.com', NULL, 'Hải Dương', 1, 1622771152, '47257991049', 1622771152, 1622771152),
(335, 'Lê Thị Quỳnh Như', 'lethiquynhnhu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '44308172488', 1622771152, 1622771152),
(336, 'Kon Sơ K\' Ry Phương', 'konsok\'ryphuong@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '25605360413', 1622771152, 1622771152),
(337, 'Nguyễn Công Tuấn', 'nguyencongtuan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '08030913544', 1622771152, 1622771152),
(338, 'Nhâm Ngọc Huyền Trân', 'nhamngochuyentran@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '28811984634', 1622771152, 1622771152),
(339, 'Nguyễn Thị Hoài Thương', 'nguyenthihoaithuong@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '54876245397', 1622771152, 1622771152),
(340, 'Trần Nguyên Vệ', 'trannguyenve@gmail.com', NULL, 'Thừa Thiên Huế', 0, 1622771152, '54579910441', 1622771152, 1622771152),
(341, 'Cao Thị Ngọc Bích', 'caothingocbich@gmail.com', NULL, 'Bình Định', 1, 1622771152, '74874182898', 1622771152, 1622771152),
(342, 'Phan Hồ Thanh Hằng', 'phanhothanhhang@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '17306855200', 1622771152, 1622771152),
(343, 'Đỗ Thị Thu Hương', 'dothithuhuong@gmail.com', NULL, 'Hà Nội', 1, 1622771152, '40999759794', 1622771152, 1622771152),
(344, 'Đặng Thị Ái Liên', 'dangthiailien@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '43022144903', 1622771152, 1622771152),
(345, 'Nguyễn Thùy Linh', 'nguyenthuylinh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '98520348041', 1622771152, 1622771152),
(346, 'Trần Nguyễn Yến Nhi', 'trannguyenyennhi@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '06118387328', 1622771152, 1622771152),
(347, 'Võ Thị Thanh Tuyền', 'vothithanhtuyen@gmail.com', NULL, 'Bình Định', 1, 1622771152, '37194114787', 1622771152, 1622771152),
(348, 'Nguyễn Đào Ngọc Trâm', 'nguyendaongoctram@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '68338504006', 1622771152, 1622771152),
(349, 'Lê Ngọc Lan Thanh', 'lengoclanthanh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '58549941270', 1622771152, 1622771152),
(350, 'Lê Dương Thanh Vân', 'leduongthanhvan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '74132849627', 1622771152, 1622771152),
(351, 'Trương Khánh Dung', 'truongkhanhdung@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '02786262599', 1622771152, 1622771152),
(352, 'Dương Thanh Hoàng Mai', 'duongthanhhoangmai@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '45305376859', 1622771152, 1622771152),
(353, 'Nguyễn Lê Thùy Thảo Nhiên', 'nguyenlethuythaonhien@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '33998562426', 1622771152, 1622771152),
(354, 'Nguyễn Lê Thụy Hồng Ngọc', 'nguyenlethuyhongngoc@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '98322988502', 1622771152, 1622771152),
(355, 'Hoàng Thị Mỹ Nương', 'hoangthimynuong@gmail.com', NULL, 'Bình Phước', 1, 1622771152, '72109359228', 1622771152, 1622771152),
(356, 'Huỳnh Tấn Phong', 'huynhtanphong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '87115049230', 1622771152, 1622771152),
(357, 'Nguyễn Thị Hồng Hà', 'nguyenthihongha@gmail.com', NULL, 'Bình Định', 1, 1622771152, '26121707663', 1622771152, 1622771152),
(358, 'Jơ Rlơng Nai Huyền', 'jorlongnaihuyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '86754523231', 1622771152, 1622771152),
(359, 'Khánh Thị Trúc Mai', 'khanhthitrucmai@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '31405624479', 1622771152, 1622771152),
(360, 'Trần Thị Nhung', 'tranthinhung@gmail.com', NULL, 'Hà Tĩnh', 1, 1622771152, '52032425398', 1622771152, 1622771152),
(361, 'Lê Phương Nhi', 'lephuongnhi@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '73262124327', 1622771152, 1622771152),
(362, 'Trần Thanh Thư', 'tranthanhthu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '82267715978', 1622771152, 1622771152),
(363, 'Lê Tấn Quốc Tân', 'letanquoctan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '33343966144', 1622771152, 1622771152),
(364, 'Phạm Ngọc Thảo Uyên', 'phamngocthaouyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '90632341175', 1622771152, 1622771152),
(365, 'Lê Huỳnh Thái Bảo', 'lehuynhthaibao@gmail.com', NULL, 'Bình Thuận', 0, 1622771152, '26886186787', 1622771152, 1622771152),
(366, 'Ma Quốc Bảo', 'maquocbao@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '00834901657', 1622771152, 1622771152),
(367, 'Trần Đức Hiệp', 'tranduchiep@gmail.com', NULL, 'Thừa Thiên Huế', 0, 1622771152, '28671771643', 1622771152, 1622771152),
(368, 'Trịnh Hùng Phong', 'trinhhungphong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '36242779077', 1622771152, 1622771152),
(369, 'Nguyễn Minh Quang', 'nguyenminhquang@gmail.com', NULL, 'Đồng Nai', 0, 1622771152, '33395330694', 1622771152, 1622771152),
(370, 'Võ Thị Thu Hằng', 'vothithuhang@gmail.com', NULL, 'Quảng Nam', 1, 1622771152, '99878973899', 1622771152, 1622771152),
(371, 'Lê Thị Bích Loan', 'lethibichloan@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '70808273033', 1622771152, 1622771152),
(372, 'Nguyễn Đức Tân', 'nguyenductan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '34026011835', 1622771152, 1622771152),
(373, 'Hà Mạnh Hảo', 'hamanhhao@gmail.com', NULL, 'Thanh Hoá', 0, 1622771152, '29338934435', 1622771152, 1622771152),
(374, 'Pang Ting Khuin', 'pangtingkhuin@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '50040346698', 1622771152, 1622771152),
(375, 'Võ Lý Hùng', 'volyhung@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '88495253390', 1622771152, 1622771152),
(376, 'Nguyễn Thị Hoài', 'nguyenthihoai@gmail.com', NULL, 'Gia Lai', 1, 1622771152, '44098019140', 1622771152, 1622771152),
(377, 'Nguyễn Thị Mai', 'nguyenthimai@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '65706705486', 1622771152, 1622771152),
(378, 'Nguyễn Thị Ánh Nguyệt', 'nguyenthianhnguyet@gmail.com', NULL, 'Quảng Ninh', 1, 1622771152, '32467384134', 1622771152, 1622771152),
(379, 'Đoàn Thị Soa', 'doanthisoa@gmail.com', NULL, 'Hà Tĩnh', 1, 1622771152, '73052540765', 1622771152, 1622771152),
(380, 'Vương Anh Thư', 'vuonganhthu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '01413995724', 1622771152, 1622771152),
(381, 'Phan Nguyễn Tâm Trang', 'phannguyentamtrang@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '75841398019', 1622771152, 1622771152),
(382, 'Nguyễn Thị Hồng Nhung', 'nguyenthihongnhung@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '26541884637', 1622771152, 1622771152),
(383, 'Hồ Tấn Toàn', 'hotantoan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '14496306348', 1622771152, 1622771152),
(384, 'Lê Nguyễn Trọng Nghĩa', 'lenguyentrongnghia@gmail.com', NULL, 'Bình Định', 0, 1622771152, '92278261713', 1622771152, 1622771152),
(385, 'Hồ Thị Lan Anh', 'hothilananh@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '31008623934', 1622771152, 1622771152),
(386, 'Cao Thị Anh', 'caothianh@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '83555958216', 1622771152, 1622771152),
(387, 'Nguyễn Lương Bằng', 'nguyenluongbang@gmail.com', NULL, 'Đồng Nai', 0, 1622771152, '01931379237', 1622771152, 1622771152),
(388, 'Trương Công Chính', 'truongcongchinh@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '57159407348', 1622771152, 1622771152),
(389, 'Nguyễn Bá Dương', 'nguyenbaduong@gmail.com', NULL, 'Nghệ An', 0, 1622771152, '88958194475', 1622771152, 1622771152),
(390, 'Phạm Nguyễn Thái Duy', 'phamnguyenthaiduy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '66220362126', 1622771152, 1622771152),
(391, 'Nguyễn Chí Đức', 'nguyenchiduc@gmail.com', NULL, 'Phú Yên', 0, 1622771152, '94206131249', 1622771152, 1622771152),
(392, 'K\' Đik', 'k\'dik@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '22982073845', 1622771152, 1622771152),
(393, 'Nguyễn Thị Hạnh', 'nguyenthihanh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '17074327117', 1622771152, 1622771152),
(394, 'Nguyễn Thành Khẩn', 'nguyenthanhkhan@gmail.com', NULL, 'Đắk Nông', 0, 1622771152, '13823101818', 1622771152, 1622771152),
(395, 'Nguyễn Thị Linh', 'nguyenthilinh@gmail.com', NULL, 'Quảng Trị', 1, 1622771152, '19294811852', 1622771152, 1622771152),
(396, 'Ngô Thị Phương', 'ngothiphuong@gmail.com', NULL, 'Thái Bình', 1, 1622771152, '01946409050', 1622771152, 1622771152),
(397, 'Trần Minh Phương', 'tranminhphuong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '61058941803', 1622771152, 1622771152),
(398, 'Vy Bích Phượng', 'vybichphuong@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '79340664259', 1622771152, 1622771152),
(399, 'Đinh Đinh Tuyết Sang', 'dinhdinhtuyetsang@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '38580814009', 1622771152, 1622771152),
(400, 'Võ Văn Thao', 'vovanthao@gmail.com', NULL, 'Nghệ An', 0, 1622771152, '88186342779', 1622771152, 1622771152),
(401, 'Nguyễn Thị Ngọc Tuyết', 'nguyenthingoctuyet@gmail.com', NULL, 'Bình Phước', 1, 1622771152, '61584779623', 1622771152, 1622771152),
(402, 'Từ Văn Việt', 'tuvanviet@gmail.com', NULL, 'Vĩnh Phúc', 0, 1622771152, '02813007478', 1622771152, 1622771152),
(403, 'Đỗ Thiện Văn', 'dothienvan@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '23215548874', 1622771152, 1622771152),
(404, 'Hà Thế Vỹ', 'hathevy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '80065407411', 1622771152, 1622771152),
(405, 'Hồ Thị Kim Yến', 'hothikimyen@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '17327237721', 1622771152, 1622771152),
(406, 'Lê Thị Kim Liên', 'lethikimlien@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '22457298988', 1622771152, 1622771152);
INSERT INTO `sinh_vien` (`id`, `ten`, `email`, `lop_hanh_chinh`, `que_quan`, `gioi_tinh`, `tg_nhap_hoc`, `cmnd`, `created_at`, `updated_at`) VALUES
(407, 'Ngô Hoàng Thiện Mỹ', 'ngohoangthienmy@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '92854276055', 1622771152, 1622771152),
(408, 'Nguyễn Hoàng Phương', 'nguyenhoangphuong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '38005729522', 1622771152, 1622771152),
(409, 'Nguyễn Thị Minh Thi', 'nguyenthiminhthi@gmail.com', NULL, 'Quảng Nam', 1, 1622771152, '68105297461', 1622771152, 1622771152),
(410, 'Nguyễn Đoàn Minh Huy', 'nguyendoanminhhuy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '74925354053', 1622771152, 1622771152),
(411, 'Vũ Tiến Hoàng', 'vutienhoang@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '33317921880', 1622771152, 1622771152),
(412, 'Đinh Hồng Quân', 'dinhhongquan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '36303418302', 1622771152, 1622771152),
(413, 'Nguyễn Thị Thanh Tâm', 'nguyenthithanhtam@gmail.com', NULL, 'Quảng Nam', 1, 1622771152, '01023446904', 1622771152, 1622771152),
(414, 'H\' Chang Niê', 'h\'changnie@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '20134361841', 1622771152, 1622771152),
(415, 'Bùi Thị Ngọc Bích', 'buithingocbich@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '99679368602', 1622771152, 1622771152),
(416, 'Vũ Thụy Quỳnh Hương', 'vuthuyquynhhuong@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '74935433315', 1622771152, 1622771152),
(417, 'Nguyễn Trúc Loan', 'nguyentrucloan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '42804292743', 1622771152, 1622771152),
(418, 'Nguyễn Mỹ Linh', 'nguyenmylinh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '35294626111', 1622771152, 1622771152),
(419, 'Hoàng Mai', 'hoangmai@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '41971070322', 1622771152, 1622771152),
(420, 'Hồ Phan Kim Ngân', 'hophankimngan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '95531407243', 1622771152, 1622771152),
(421, 'Hoàng Kim Ngọc', 'hoangkimngoc@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '90218337563', 1622771152, 1622771152),
(422, 'Nguyễn Thị Thanh Nhàn', 'nguyenthithanhnhan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '65456502098', 1622771152, 1622771152),
(423, 'Nguyễn Thị Truyện', 'nguyenthitruyen@gmail.com', NULL, 'Bình Định', 1, 1622771152, '17796767501', 1622771152, 1622771152),
(424, 'Nguyễn Hoài Bảo Trâm', 'nguyenhoaibaotram@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '71962739549', 1622771152, 1622771152),
(425, 'Bùi Ngọc Phương Trinh', 'buingocphuongtrinh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '71039166743', 1622771152, 1622771152),
(426, 'Phan Thị Thanh Trúc', 'phanthithanhtruc@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '25077757724', 1622771152, 1622771152),
(427, 'Nguyễn Ngọc Nguyên Thảo', 'nguyenngocnguyenthao@gmail.com', NULL, 'Thành phố Hồ Chí Minh', 1, 1622771152, '96371482425', 1622771152, 1622771152),
(428, 'Vũ Khải Vi', 'vukhaivi@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '82940530271', 1622771152, 1622771152),
(429, 'Nguyễn Tường Khánh Vy', 'nguyentuongkhanhvy@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '00280613693', 1622771152, 1622771152),
(430, 'Nguyễn Trương HoàNg Việt', 'nguyentruonghoangviet@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '75984791427', 1622771152, 1622771152),
(431, 'Vũ Quang Duy', 'vuquangduy@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '34405664761', 1622771152, 1622771152),
(432, 'Nguyễn Thị Ngọc Bích', 'nguyenthingocbich@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '17231722576', 1622771152, 1622771152),
(433, 'Lê Bùi Diễm Châu', 'lebuidiemchau@gmail.com', NULL, 'Quảng Nam', 1, 1622771152, '97597329012', 1622771152, 1622771152),
(434, 'Đặng Sơn Lâm', 'dangsonlam@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '60093593057', 1622771152, 1622771152),
(435, 'Lê Công Thế Long', 'lecongthelong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '98246789449', 1622771152, 1622771152),
(436, 'Lương Nguyễn Quốc Nhật', 'luongnguyenquocnhat@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '93481866088', 1622771152, 1622771152),
(437, 'Hồ Thị Hoàng Nhung', 'hothihoangnhung@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '26805117580', 1622771152, 1622771152),
(438, 'Vũ Xuân Thi', 'vuxuanthi@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '16927192970', 1622771152, 1622771152),
(439, 'Nguyễn Huỳnh Kim Út', 'nguyenhuynhkimut@gmail.com', NULL, 'Gia Lai', 1, 1622771152, '15602932109', 1622771152, 1622771152),
(440, 'Lê Xuân Minh', 'lexuanminh@gmail.com', NULL, 'Hà Tĩnh', 0, 1622771152, '79684460540', 1622771152, 1622771152),
(441, 'Nguyễn Thị Như Ngọc', 'nguyenthinhungoc@gmail.com', NULL, 'Phú Yên', 1, 1622771152, '53920962666', 1622771152, 1622771152),
(442, 'Lý Bửu Hoàng Nguyên', 'lybuuhoangnguyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '53441370800', 1622771152, 1622771152),
(443, 'Nguyễn Thanh Huyền', 'nguyenthanhhuyen@gmail.com', NULL, 'Đà Nẵng', 1, 1622771152, '80108493690', 1622771152, 1622771152),
(444, 'Lê Thị Khánh Ly', 'lethikhanhly@gmail.com', NULL, 'Quảng Trị', 1, 1622771152, '32750331511', 1622771152, 1622771152),
(445, 'Nguyễn Thị Kim Vạn', 'nguyenthikimvan@gmail.com', NULL, 'Phú Yên', 1, 1622771152, '29188680155', 1622771152, 1622771152),
(446, 'Mấu Xuân Liểng', 'mauxuanlieng@gmail.com', NULL, 'Khánh Hòa', 0, 1622771152, '99623367966', 1622771152, 1622771152),
(447, 'Thành Da Sin', 'thanhdasin@gmail.com', NULL, 'Ninh Thuận', 0, 1622771152, '62565987673', 1622771152, 1622771152),
(448, 'Phạm Tuấn Vũ', 'phamtuanvu@gmail.com', NULL, 'Quảng Bình', 0, 1622771152, '28498393318', 1622771152, 1622771152),
(449, 'Ka Thuận', 'kathuan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '69279545672', 1622771152, 1622771152),
(450, 'Trần Thị Thanh Hằng', 'tranthithanhhang@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '30080819884', 1622771152, 1622771152),
(451, 'Nguyễn Thị Tâm', 'nguyenthitam@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '17055264521', 1622771152, 1622771152),
(452, 'Y Hur Bkrông', 'yhurbkrong@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '46986874398', 1622771152, 1622771152),
(453, 'Cao Việt Hùng', 'caoviethung@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '60263985991', 1622771152, 1622771152),
(454, 'Ka Dunh', 'kadunh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '94178211139', 1622771152, 1622771152),
(455, 'Kờ Thị Huyền', 'kothihuyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '88251381588', 1622771152, 1622771152),
(456, 'Bàn Văn Hải', 'banvanhai@gmail.com', NULL, 'Bắc Kạn', 0, 1622771152, '99262435691', 1622771152, 1622771152),
(457, 'Y Bôn Niê', 'ybonnie@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '92450041698', 1622771152, 1622771152),
(458, 'Nguyễn Thị Ngọc Thạch', 'nguyenthingocthach@gmail.com', NULL, 'Khánh Hòa', 1, 1622771152, '59211951399', 1622771152, 1622771152),
(459, 'Nguyễn Thị Thu Hà', 'nguyenthithuha@gmail.com', NULL, 'Hà Tĩnh', 1, 1622771152, '28805639084', 1622771152, 1622771152),
(460, 'Trần Thế Hải', 'tranthehai@gmail.com', NULL, 'Hà Nội', 0, 1622771152, '82077184849', 1622771152, 1622771152),
(461, 'Hà Đào Kim Oanh', 'hadaokimoanh@gmail.com', NULL, 'Ninh Thuận', 1, 1622771152, '59519068609', 1622771152, 1622771152),
(462, 'Y Chương Êban', 'ychuongeban@gmail.com', NULL, 'Đắk Lắk', 0, 1622771152, '84809189979', 1622771152, 1622771152),
(463, 'Vũ Huy Hoàng', 'vuhuyhoang@gmail.com', NULL, 'Hải Dương', 0, 1622771152, '27504272968', 1622771152, 1622771152),
(464, 'Rơ Ông Ha Ngàn', 'roonghangan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '64138703486', 1622771152, 1622771152),
(465, 'Lê Văn Sơn', 'levanson@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '28755699641', 1622771152, 1622771152),
(466, 'Ka Sre Drong Song Tris', 'kasredrongsongtris@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '75076891056', 1622771152, 1622771152),
(467, 'Trương Hoàng Thái', 'truonghoangthai@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '99106098959', 1622771152, 1622771152),
(468, 'Cil Srinh', 'cilsrinh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '48682785528', 1622771152, 1622771152),
(469, 'Nguyễn Ngọc Khánh', 'nguyenngockhanh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '39060964963', 1622771152, 1622771152),
(470, 'Liêng Hót K\'Hạnh', 'lienghotk\'hanh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '33741532242', 1622771152, 1622771152),
(471, 'Lục Thiện Vương', 'lucthienvuong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '39525265592', 1622771152, 1622771152),
(472, 'Nguyễn Ngọc Thanh Liêm', 'nguyenngocthanhliem@gmail.com', NULL, 'Bình Định', 0, 1622771152, '44531303191', 1622771152, 1622771152),
(473, 'Lê Thị Hồng Long', 'lethihonglong@gmail.com', NULL, 'Quảng Nam', 1, 1622771152, '42540333661', 1622771152, 1622771152),
(474, 'Phạm Thị Hồng Nhân', 'phamthihongnhan@gmail.com', NULL, 'Bình Định', 1, 1622771152, '82989064671', 1622771152, 1622771152),
(475, 'Nguyễn Hoàng Phúc', 'nguyenhoangphuc@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '17321870021', 1622771152, 1622771152),
(476, 'Nguyễn Hoàng Thu Trang', 'nguyenhoangthutrang@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '73587283658', 1622771152, 1622771152),
(477, 'Hồ Thị Nga', 'hothinga@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '73524059259', 1622771152, 1622771152),
(478, 'Rơ Ông Sa Chri', 'roongsachri@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '49934218819', 1622771152, 1622771152),
(479, 'Đặng Thị Thu', 'dangthithu@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '15262727460', 1622771152, 1622771152),
(480, 'Doãn Văn Hiền', 'doanvanhien@gmail.com', NULL, 'Gia Lai', 0, 1622771152, '65183007228', 1622771152, 1622771152),
(481, 'Nguyễn Trung Kiên', 'nguyentrungkien@gmail.com', NULL, 'Nam Định', 0, 1622771152, '28513152194', 1622771152, 1622771152),
(482, 'Trương Thị Minh Vân', 'truongthiminhvan@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '41500621582', 1622771152, 1622771152),
(483, 'Ra Phin', 'raphin@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '09105866079', 1622771152, 1622771152),
(484, 'Cill Sanstia', 'cillsanstia@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '11433000609', 1622771152, 1622771152),
(485, 'Pinăng Thỏa', 'pinangthoa@gmail.com', NULL, 'Ninh Thuận', 0, 1622771152, '75428156393', 1622771152, 1622771152),
(486, 'Trần Thị Như Quỳnh', 'tranthinhuquynh@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '97020069026', 1622771152, 1622771152),
(487, 'Nguyễn Quang Trung', 'nguyenquangtrung@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '19128930725', 1622771152, 1622771152),
(488, 'Nguyễn Thị Thu', 'nguyenthithu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '13182490610', 1622771152, 1622771152),
(489, 'Phạm Quốc Anh', 'phamquocanh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '19849608815', 1622771152, 1622771152),
(490, 'Lê Quang Đạo', 'lequangdao@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '97140122357', 1622771152, 1622771152),
(491, 'Nguyễn Đình Tĩnh Hưng', 'nguyendinhtinhhung@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '65316100028', 1622771152, 1622771152),
(492, 'Phạm Nguyễn Tuấn Khoa', 'phamnguyentuankhoa@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '72057804393', 1622771152, 1622771152),
(493, 'Nguyễn Đình Quân', 'nguyendinhquan@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '93085885351', 1622771152, 1622771152),
(494, 'Lê Văn Thắng', 'levanthang@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '19138537893', 1622771152, 1622771152),
(495, 'Trần Đại Long Khánh', 'trandailongkhanh@gmail.com', NULL, 'Đồng Nai', 0, 1622771152, '62138138876', 1622771152, 1622771152),
(496, 'Phạm Thị Trang', 'phamthitrang@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '06605189434', 1622771152, 1622771152),
(497, 'Bế Thị Cúc', 'bethicuc@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '82589828856', 1622771152, 1622771152),
(498, 'Lê Văn Hùng', 'levanhung@gmail.com', NULL, 'Thanh Hóa', 0, 1622771152, '25959130431', 1622771152, 1622771152),
(499, 'Phạm Vũ Xuân Vy', 'phamvuxuanvy@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '20596155121', 1622771152, 1622771152),
(500, 'Lưu Hoàng Anh Vũ', 'luuhoanganhvu@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '08130060053', 1622771152, 1622771152),
(501, 'Srố Ha Bông', 'srohabong@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '25780894210', 1622771152, 1622771152),
(502, 'Nguyễn Thị Ngọc Huyền', 'nguyenthingochuyen@gmail.com', NULL, 'Bình Định', 1, 1622771152, '30133127087', 1622771152, 1622771152),
(503, 'Phạm Thị Hằng', 'phamthihang@gmail.com', NULL, 'Nghệ An', 1, 1622771152, '33215428802', 1622771152, 1622771152),
(504, 'Lê Thị Hương', 'lethihuong@gmail.com', NULL, 'Thanh Hóa', 1, 1622771152, '68400924961', 1622771152, 1622771152),
(505, 'Hà Đức Cảnh', 'haduccanh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771152, '63266214522', 1622771152, 1622771152),
(506, 'Nguyễn Thị Hiền', 'nguyenthihien@gmail.com', NULL, 'Đắk Lắk', 1, 1622771152, '41632279098', 1622771152, 1622771152),
(507, 'Liêng Hót K\' Juys', 'lienghotk\'juys@gmail.com', NULL, 'Lâm Đồng', 1, 1622771152, '58134695593', 1622771152, 1622771152),
(508, 'K\' Khoen', 'k\'khoen@gmail.com', NULL, 'Lâm Đồng', 0, 1622771153, '60605783204', 1622771153, 1622771153),
(509, 'Phạm Quốc Luân', 'phamquocluan@gmail.com', NULL, 'Ninh Thuận', 0, 1622771153, '96179854820', 1622771153, 1622771153),
(510, 'Lê Quí Mỹ', 'lequimy@gmail.com', NULL, 'Phú Yên', 0, 1622771153, '12611241200', 1622771153, 1622771153),
(511, 'Huỳnh Tưởng Quỳnh My', 'huynhtuongquynhmy@gmail.com', NULL, 'TP. Hồ Chí Minh', 1, 1622771153, '72246646243', 1622771153, 1622771153),
(512, 'Rơ Lan H\' Quét', 'rolanh\'quet@gmail.com', NULL, 'Gia Lai', 1, 1622771153, '36184694423', 1622771153, 1622771153),
(513, 'Rơ Ông K\' Rơs', 'roongk\'ros@gmail.com', NULL, 'Lâm Đồng', 1, 1622771153, '03846231132', 1622771153, 1622771153),
(514, 'Lục Thị Thiên Sơn', 'lucthithienson@gmail.com', NULL, 'Thanh Hóa', 1, 1622771153, '06060400380', 1622771153, 1622771153),
(515, 'Lê Thị Huyền Trang', 'lethihuyentrang@gmail.com', NULL, 'Đắk Lắk', 1, 1622771153, '80495719837', 1622771153, 1622771153),
(516, 'Trần Thị Thu Thảo', 'tranthithuthao@gmail.com', NULL, 'Gia Lai', 1, 1622771153, '33007118821', 1622771153, 1622771153),
(517, 'Ngô Thị Minh Thu', 'ngothiminhthu@gmail.com', NULL, 'Lâm Đồng', 1, 1622771153, '61788553124', 1622771153, 1622771153),
(518, 'Lê Nguyên Phương Trinh', 'lenguyenphuongtrinh@gmail.com', NULL, 'Khánh Hòa', 1, 1622771153, '95874033792', 1622771153, 1622771153),
(519, 'Nguyễn Công Tấn', 'nguyencongtan@gmail.com', NULL, 'Bình Định', 0, 1622771153, '85812860251', 1622771153, 1622771153),
(520, 'Vi Thị Minh Nguyệt', 'vithiminhnguyet@gmail.com', NULL, 'Đắk Lắk', 1, 1622771153, '61122537195', 1622771153, 1622771153),
(521, 'Châu Hồng Tứ Uy', 'chauhongtuuy@gmail.com', NULL, 'Ninh Thuận', 0, 1622771153, '04340676546', 1622771153, 1622771153),
(522, 'Nguyễn Duy Kha', 'nguyenduykha@gmail.com', NULL, 'Khánh Hòa', 0, 1622771153, '49084390589', 1622771153, 1622771153),
(523, 'Đào Khắc Nhật Toàn', 'daokhacnhattoan@gmail.com', NULL, 'Bình Thuận', 1, 1622771153, '62635994107', 1622771153, 1622771153),
(524, 'Trần Thị Mai Thương', 'tranthimaithuong@gmail.com', NULL, 'Lâm Đồng', 1, 1622771153, '92885854410', 1622771153, 1622771153),
(525, 'Hoàng Linh Bảo', 'hoanglinhbao@gmail.com', NULL, 'Lâm Đồng', 0, 1622771153, '06189610049', 1622771153, 1622771153),
(526, 'Nguyễn Minh Đức', 'nguyenminhduc@gmail.com', NULL, 'Lâm Đồng', 0, 1622771153, '04673766933', 1622771153, 1622771153),
(527, 'Bùi Minh Ngọc', 'buiminhngoc@gmail.com', NULL, 'Gia Lai', 0, 1622771153, '31218961717', 1622771153, 1622771153),
(528, 'Hồ Trung Nghĩa', 'hotrungnghia@gmail.com', NULL, 'Lâm Đồng', 0, 1622771153, '33370796220', 1622771153, 1622771153),
(529, 'Nguyễn Duy Phong', 'nguyenduyphong@gmail.com', NULL, 'Kon Tum', 0, 1622771153, '40576625887', 1622771153, 1622771153),
(530, 'Đặng Văn Quang', 'dangvanquang@gmail.com', NULL, 'Quảng Nam', 0, 1622771153, '74092302532', 1622771153, 1622771153),
(531, 'Trần Hoàng Thục Quyên', 'tranhoangthucquyen@gmail.com', NULL, 'Lâm Đồng', 1, 1622771153, '14554162347', 1622771153, 1622771153),
(532, 'Nguyễn Thị Yến Thanh', 'nguyenthiyenthanh@gmail.com', NULL, 'Ninh Thuận', 1, 1622771153, '61895519466', 1622771153, 1622771153),
(533, 'Nguyễn Thương Tín', 'nguyenthuongtin@gmail.com', NULL, 'Lâm Đồng', 0, 1622771153, '56458440029', 1622771153, 1622771153),
(534, 'Nguyễn Tất Anh Tuấn', 'nguyentatanhtuan@gmail.com', NULL, 'Bình Phước', 0, 1622771153, '75363708906', 1622771153, 1622771153),
(535, 'Lê Thị Chinh', 'lethichinh@gmail.com', NULL, 'Thanh Hóa', 1, 1622771153, '70308707517', 1622771153, 1622771153),
(536, 'Võ Thế Hanh', 'vothehanh@gmail.com', NULL, 'Quảng Ngãi', 0, 1622771153, '19382431588', 1622771153, 1622771153),
(537, 'Nguyễn Bảo Hiếu', 'nguyenbaohieu@gmail.com', NULL, 'Lâm Đồng', 0, 1622771153, '49798274481', 1622771153, 1622771153),
(538, 'Trương Thị Diệp Ly', 'truongthidieply@gmail.com', NULL, 'Bình Định', 1, 1622771153, '15356810041', 1622771153, 1622771153),
(539, 'Nguyễn Hoàng Anh Linh', 'nguyenhoanganhlinh@gmail.com', NULL, 'Lâm Đồng', 0, 1622771153, '52488182602', 1622771153, 1622771153),
(540, 'Lê Hà Kiều My', 'lehakieumy@gmail.com', NULL, 'Quảng Ngãi', 1, 1622771153, '15763123585', 1622771153, 1622771153),
(541, 'Nguyễn Văn Nam', 'nguyenvannam@gmail.com', NULL, 'Lâm Đồng', 0, 1622771153, '49198356612', 1622771153, 1622771153),
(542, 'Nguyễn Thị Ngọc', 'nguyenthingoc@gmail.com', NULL, 'Nghệ An', 1, 1622771153, '57524765708', 1622771153, 1622771153),
(543, 'Da Gout Blin', 'dagoutblin@gmail.com', NULL, 'Lâm Đồng', 0, 1622771153, '95310658157', 1622771153, 1622771153),
(544, 'Nguyễn Thị Thùy Dung', 'nguyenthithuydung@gmail.com', NULL, 'Khánh Hòa', 1, 1622771153, '91024944758', 1622771153, 1622771153),
(545, 'Đặng Thị Lệ Giang', 'dangthilegiang@gmail.com', NULL, 'Gia Lai', 1, 1622771153, '49590436331', 1622771153, 1622771153),
(546, 'Vương Thị Thu Hằng', 'vuongthithuhang@gmail.com', NULL, 'Cao Bằng', 1, 1622771153, '75452011229', 1622771153, 1622771153),
(547, 'Vũ Chính Nghị', 'vuchinhnghi@gmail.com', NULL, 'Hà Bắc', 0, 1622771153, '13997295953', 1622771153, 1622771153),
(548, 'Đinh Tài', 'dinhtai@gmail.com', NULL, 'Bình Định', 0, 1622771153, '39730882145', 1622771153, 1622771153),
(549, 'Lê Thị Kim Thoa', 'lethikimthoa@gmail.com', NULL, 'Đắk Lắk', 1, 1622771153, '64758905848', 1622771153, 1622771153);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

DROP TABLE IF EXISTS `social_account`;
CREATE TABLE IF NOT EXISTS `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sv_dki_tin_chi`
--

DROP TABLE IF EXISTS `sv_dki_tin_chi`;
CREATE TABLE IF NOT EXISTS `sv_dki_tin_chi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sinh_vien` int(11) NOT NULL,
  `ma_lop_tin_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sv_dki_tin_chi`
--

INSERT INTO `sv_dki_tin_chi` (`id`, `id_sinh_vien`, `ma_lop_tin_chi`, `created_at`) VALUES
(7, 3, '16248107803310P22', 1624817209),
(6, 3, '1624810780341P23', 1624817204),
(8, 3, '1624810780324P21', 1624908260);

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
CREATE TABLE IF NOT EXISTS `tai_khoan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ma_thong_tin` int(11) NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `occ` int(11) NOT NULL DEFAULT '0',
  `dich_vu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tg_nop_hoc_phi`
--

DROP TABLE IF EXISTS `tg_nop_hoc_phi`;
CREATE TABLE IF NOT EXISTS `tg_nop_hoc_phi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tg_bat_dau` int(11) NOT NULL,
  `tg_ket_thuc` int(11) NOT NULL,
  `ki_hoc` int(11) NOT NULL,
  `id_lop_hoc` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tg_nop_hoc_phi`
--

INSERT INTO `tg_nop_hoc_phi` (`id`, `tg_bat_dau`, `tg_ket_thuc`, `ki_hoc`, `id_lop_hoc`, `created_at`, `status`) VALUES
(7, 1625504400, 1627578000, 8, 2, 1626281944, 0);

-- --------------------------------------------------------

--
-- Table structure for table `the_nap`
--

DROP TABLE IF EXISTS `the_nap`;
CREATE TABLE IF NOT EXISTS `the_nap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia_tien` int(11) NOT NULL,
  `occ` int(255) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `the_nap`
--

INSERT INTO `the_nap` (`id`, `name`, `gia_tien`, `occ`, `img`, `created_at`) VALUES
(1, 'CARD 10', 10000, 10000, 'card_10.jpg', 1623259985),
(2, 'CARD 30', 30000, 35000, 'card_20.jpg', 1623259985),
(3, 'CARD 50', 50000, 60000, 'card_50.jpg', 1623259985),
(4, 'CARD 100', 100000, 140000, 'card_100.jpg', 1623259985),
(5, 'CARD 200', 200000, 280000, 'card_200.jpg', 1623259985),
(6, 'CARD 500', 500000, 660000, 'card_500.jpg', 1623259985);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_id` int(11) DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`),
  KEY `info_id` (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=541 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `info_id`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'admin', 'mitto.hai.7356@gmail.com6', 0, '$2y$10$L0xLefcDfQHiS4d3wg/CE.dPmq6IQq5lYgCY4SJv0IDdcYRe/GDkO', 'cazH3uZa4-qu3--HMNwJk92DB024IJ0k', 1622739891, NULL, NULL, '::1', 1622739891, 1622739891, 0, 1626275826),
(15, 'phantranbaotuan', 'phantranbaotuan@gmail.com', 2, '$2y$10$puczsqcNubiq0jk6U9DBn.j26WRCZCO5oJfZRTsPAxjcsLizkkKcy', '2zAR6eHhUOmfDs6MtUScOBTVun7xT4iL', 1623613690, NULL, NULL, '::1', 1623613690, 1623613690, 1, 1624473707),
(16, 'nguyenthiennam', 'nguyenthiennam@gmail.com', 1, '$2y$10$gTTEjicwX8tAFFEKFhAYhOvmoFfI/.3aFwmZw4WXKOq699C53w7b2', 'LGnvC_h1aMQlatLrCIv4hdD6Qr2AIw4M', 1623613703, NULL, NULL, '::1', 1623613704, 1623613704, 1, 1624473267),
(17, 'tranduybao', 'tranduybao@gmail.com', 3, '$2y$10$MY.a2H9tY9HyM72R5tUx3uiSYEmxI9BCk7mu0kmVTvfKrES4SxgTK', 'gyHYeklNBXQGE0ZYomttINrfDexgMgNk', 1623696009, NULL, NULL, '::1', 1623696009, 1623696009, 1, 1625980304),
(20, 'nguyenminhhoi', 'nguyenminhhoi@gmail.com', 4, '$2y$10$fNcVIZEmuEXDXDpODFw.p.tJow4dzbTXbFUiK17d5rmjCB3HPkfku', 'cTs5E-2EyrF5BQZzSHYDMyzqF3o2LHzX', 1626107377, NULL, NULL, '::1', 1626107377, 1626107377, 1, NULL),
(21, 'buitranthienhoan', 'buitranthienhoan@gmail.com', 5, '$2y$10$CTa23ee3TKJ7LypSseGDL.qTDsD.hpawtq/7cysCASUadeb6kUxga', 'cnN8TG9SfVHHAm3cTzDCryJNQRlvpbpp', 1626107377, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(22, 'huynhlekhang', 'huynhlekhang@gmail.com', 6, '$2y$10$cEiSeqXpZOD6qpKkqTrF/Oy8anzmOZGErkefpe5J13LfyZFLQz/xS', 'klTNmyGYpwth55_T1NSMt1z1Cg4pKh3b', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(23, 'phanminhanhkhoa', 'phanminhanhkhoa@gmail.com', 7, '$2y$10$/YGIz3rTBdtS0d8YRSecFeGBDjCZZacUwbUoJAEDpNz4Zkq6g/y0C', 'F1t98FujX_MnUicANDVruWbAkG-QmfbE', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(24, 'diepvanlam', 'diepvanlam@gmail.com', 8, '$2y$10$ZZoI3UO7uHTOZZMBL.Sk1OtWrzHVX.ZKnrNZ44ROtshXsz/D2qaKG', '2P4vtvnmuoV3yw0vMQW0B6r0Oh41kLf9', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(25, 'hongoclinh', 'hongoclinh@gmail.com', 9, '$2y$10$3h3l6JLdDS.sC8igDTQSuuXXTPNBT2Ku9Nts4iaaTnL/JRf93ExFW', '2dcO9Zyhtqt-TIc50dx5rHSR_KKkXMAy', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(26, 'danghailong', 'danghailong@gmail.com', 10, '$2y$10$3N5U/GDhk/ZIf89hhKFtMeOdDsq/bdxzY6IZt/uvPPvNSPJYAMVr.', '8PnZcXGRivEki7quxt3_K-xlFEcAhzLC', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(27, 'hoangcaoloc', 'hoangcaoloc@gmail.com', 11, '$2y$10$60kwqgYoKPc7wQ5vIiCYF.fZx4BXPy9yaX4SW4S.mORzItsSOmlre', '2_OGqZ7UK7p2iFCRXikVIqvdfLtidiW4', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(28, 'phanbaoluan', 'phanbaoluan@gmail.com', 12, '$2y$10$9aotgTOR6eHR79mrO6LM2ekDYT4vM67rrYRI2qDnK0k1nl9CJnOua', '9aNfuy_zzE_lgPhLH9m8uhp-vbdixSfL', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(29, 'tranvannam', 'tranvannam@gmail.com', 13, '$2y$10$9C4rxSe7qaZ64guI0dlCfuVGFV8jr/K0W5dpoNHO9ZBJZ5iHwq7KO', 'qeAbYkJjAEKatspcdNkui5Blg2DzzDl2', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(30, 'nguyenthikimnga', 'nguyenthikimnga@gmail.com', 14, '$2y$10$Uy/5oWRenPu5mZK8flXZrOj/nD83c3/X7hCqKOeMj4PDq8npCQguC', 'y5vaH2RHxj3g6pBFLuqpfsmfOltCzD9u', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(31, 'buiphat', 'buiphat@gmail.com', 15, '$2y$10$feUpGuKmIGAwCnh3jgeOT.RNoHhaLtF3f2yjwQ9/jeZJqtTWjsF6O', 'nZmln2DHx6jRIzk-niNkD6yJ_NlqQlIc', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(32, 'toutiangsampo', 'toutiangsampo@gmail.com', 16, '$2y$10$Rdis8oqAtBGTOA1ixAgQnOE.gg21iw2HLku6sCGoegOB9THzxiFpy', 'fV-YX0VI-jRX7UJFsairPCur8lJY1MD-', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(33, 'truongvietquang', 'truongvietquang@gmail.com', 17, '$2y$10$nS9lJX3iGUu8ZF5uzVVaKe8OiItrnWHRbv3kTkOG5mVGDlAGAJbUy', 'EZyu-t5_EdrdqrzEouIjWZGcFEXY21a2', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(34, 'phamtruongson', 'phamtruongson@gmail.com', 18, '$2y$10$QyyJ.EbfBadR8jCxg/viTOZpCIV0yfZoFO0tSUp49M3zXMam1RXY2', 'NKHXFjML0I0z88hfUEa0vG8KWDWXwF6f', 1626107378, NULL, NULL, '::1', 1626107378, 1626107378, 1, NULL),
(35, 'nguyendinhtrong', 'nguyendinhtrong@gmail.com', 19, '$2y$10$ncQs3mvm65/cinXFjCJYee5ykJ/WGYXJyp9X0.e4z/C6N.dZA/g4C', '_Bv9eoTKGjDKqcEqtH5H0ID66XYBoL5b', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(36, 'maivantien', 'maivantien@gmail.com', 20, '$2y$10$jBUvFPhKjd5zylsrsxYaiujrgm89Jhl/KJ4iWrVpTBo25AzHeoZaK', 'dQf5XhHEm32FHBRKHlYrttQuye9L7-m0', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(37, 'phannguyennhuttruong', 'phannguyennhuttruong@gmail.com', 21, '$2y$10$OD2/l0Z8cWnCi1VyDtiWa.y3iMeB3IhZla4WLhS2NX.vtxWLm28Vu', 'haeR2QnJztZJZGxi9DQ5fH9qMTqVT1-E', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(38, 'nguyenngocthuan', 'nguyenngocthuan@gmail.com', 22, '$2y$10$NojvKos79iD3MsZDrCaNJuteyVZlvapq8dD48JElCrXiXufoA9.ri', 'w5geyV0tXfnwuLvdePxM-BSRSRCrekpP', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(39, 'buidinhthuan', 'buidinhthuan@gmail.com', 23, '$2y$10$vKJgaMxk/kPk2bL2O8e5besBVPYx4Mp.w0e/eg4VphhW0/eQLQTWu', 'ZzOuct9J3edpQG8YQyacvK7FoiYlczzm', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(40, 'nguyentienthien', 'nguyentienthien@gmail.com', 24, '$2y$10$/cV0oXvTcZqhnMTWVFyS5eIFRsqe/Vr8y7AYzyR/q2cgdVIgOtTMq', 'Tc4r1d1NYy_IQOOKan5NeGVx-cD63Gan', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(41, 'phamtrungvi', 'phamtrungvi@gmail.com', 25, '$2y$10$HcAQX7soPSnOhJbfxnpcNeFyrMHCqVgK04FpH5jHKZOA0bY19U6h6', '0zxpePD81KEDg2f0klWIwIFIOBZgBYu3', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(42, 'letruongvinh', 'letruongvinh@gmail.com', 26, '$2y$10$lgDZ4zAQl0zYkaoeEf55FuBq58JgeI0Dpo5Nv/NC2HKg6DvI1eSo2', 'GqE2HXFWqEtZrZHsLYpDMEO3BSxOAGUW', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(43, 'latrieuvy', 'latrieuvy@gmail.com', 27, '$2y$10$rhFKFCB8Jy.ZP8AtVAiUl.KPdpeJzjZjQrfxqFfQ.LpDX/vkkkgAi', 'kBpbPLBNtFjauxqlNoaPARatviPTZadF', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(44, 'phanvancuong', 'phanvancuong@gmail.com', 28, '$2y$10$H1kKB2TxbZ7iMhqlh8uf9OXWvkftKLh8Re1oqg0JW/m6.JqGWhHra', 'XzPKGT5it5gH77kzf2GQ-qBACNzKiYUn', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(45, 'lanhhoangduy', 'lanhhoangduy@gmail.com', 29, '$2y$10$q6yaodjAGj7SleS6h5Vk5.eXWOscdYwlERTw/EKpJ0hBNZxxWDxBa', 'Airxc4T7x86XM1tag7eG40SJ_V4uIv9e', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(46, 'nguyenvandoi', 'nguyenvandoi@gmail.com', 30, '$2y$10$rsZzhmK3E7QsdwH4cSA9f.aTrl/BjY8sRXxCBcJI/vCAtS6cMC2n6', 'I-cwlKVKtlHpLB1iX-8e8J1VxHdAm6yj', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(47, 'letrongkhanh', 'letrongkhanh@gmail.com', 31, '$2y$10$dD9doGi7hL2iLAXJ/EW8kOWx32/yuhxtTVRcmhdaCSZm5dQdf3xHG', 'AhNFLWxhwHpHTGzl8JMiIWeEe7cy5Oba', 1626107379, NULL, NULL, '::1', 1626107379, 1626107379, 1, NULL),
(48, 'lyanhkhoa', 'lyanhkhoa@gmail.com', 32, '$2y$10$V0D65A9h87h1OX29TLlJG.QtvFu5.YnKnKeevHvkTT5NXkH4.HuV2', '8YRNbwGPZg3rhs7YVscm-RB9pCjF_XLm', 1626107379, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(49, 'dophilong', 'dophilong@gmail.com', 33, '$2y$10$syLSyHHr98zIjDM.E0OH3OXU.dzrxezfInipzMQEnBR18MpZD9QLm', 'qIHlVR8ISrRDHZAnWWGJTjsc6X2fMugd', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(50, 'caohuuquocnguyen', 'caohuuquocnguyen@gmail.com', 34, '$2y$10$GK/C6nu54L2UaNMc2IOHm.PM1ewhAiaTocJC9RDIZnoDVT3KVo3lm', '5XneGCwx5lGylslHPrZ7NP6l4k1UTkMv', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(51, 'hongocphuoc', 'hongocphuoc@gmail.com', 35, '$2y$10$i0b2j8RHxUDtNlj9AmOrR.h8l256kqRVnNiRUzaZc8y5yMZYrqOva', 'qU0hN4EvsNVnFlgGATsxW2dw5c8XQz6z', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(52, 'hotrongtin', 'hotrongtin@gmail.com', 36, '$2y$10$my9P2OdjJ4CYdOuv71ap1ebiC7zZuLy0sIqXaZapEX7UI2UTemk9S', 'OdqgLbsi-qmT28-8C7ZrrcQVSWrSuv7b', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(53, 'lethanhtung', 'lethanhtung@gmail.com', 37, '$2y$10$VjdQNT51ZreMJnf2/48utescfmevvLcxfIhpmlu9vs8wLE2iGZ5oi', 'nim124Ipz4Ly_I5ioB3v6PMtzL0Epjab', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(54, 'dokhanhhung', 'dokhanhhung@gmail.com', 38, '$2y$10$LeE5cbB07efa1vTteLlBX.liFTvFXZ3vOtk/qIGqrAxnEKLe9bui2', 'UN0x1A1zIf4FjLFymFatt5TxSlunkv_7', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(55, 'nguyenthiminhhien', 'nguyenthiminhhien@gmail.com', 39, '$2y$10$8zRrRD/cO65jcsc93WyEWuPqh/9kL0G9YXN.fOkflJvX2u1Ipq7Xa', 'nZCxqWXBPT8_KhR9JzYwSPyVrzM4ymxs', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(56, 'levanlap', 'levanlap@gmail.com', 40, '$2y$10$DLHoimeqD1.yElRC9hMlEOS3L03PtAJCviuZZDiBEMBku0.4qmoNm', 'DRl5RmihO6Rpet5poMbVIS-cIXhhK70i', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(57, 'nguyenngoctan', 'nguyenngoctan@gmail.com', 41, '$2y$10$khGQo9D07KBwIBcaoqFfj.biLJ8Lz1P8F2b76zKwnxaXnRJ1x82ee', 'LZePK9Y_-FeSJFm_2iYPgtGfcnaXmp1V', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(58, 'nguyenduchuy', 'nguyenduchuy@gmail.com', 42, '$2y$10$yu3w5UFayyJjD7Wa1dJbGu95VFrm7hwNgAdAWO2y3FeX/rX7OTXX2', 'U5lTsuAtdlVcgsOIlaqdJrMwvTrccF9-', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(59, 'vonguyenhanhuyen', 'vonguyenhanhuyen@gmail.com', 43, '$2y$10$nSBrWYixdDW.00hUCTQKyOq7E5Lzr2c1xrnR0qJFMMDZJUjb0i5C.', 'eHJ8cwYvk4qyzIA-LGCbRsd-eC2EIhGN', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(60, 'konsahanai', 'konsahanai@gmail.com', 44, '$2y$10$JHUCYb9z02VomFZvoNVt0uRydrpRrYf5Hx5IM4FkoyfO4qGtOu03u', 'R9hR8bD3ymB4oSznhtp1P0AF3Fepj5xx', 1626107380, NULL, NULL, '::1', 1626107380, 1626107380, 1, NULL),
(61, 'vancongtuananh', 'vancongtuananh@gmail.com', 45, '$2y$10$L3iuPSlX6FwE7.zpWThFP.vEwuFf68Ovn2EiMWa0u.dtZ9knMu436', 'BI-zHOQGjWUk0NKHcYJTxog4hPofUFRK', 1626107380, NULL, NULL, '::1', 1626107381, 1626107381, 1, NULL),
(62, 'nguyenthanhcong', 'nguyenthanhcong@gmail.com', 47, '$2y$10$m/xGi1.QYRmgQLcN982WCeMgCg.ryE63Dow63V0820xuKvfzxuem2', 'usJbhTGCf-SQijXpXMuP7xQ_eROgkkbB', 1626107430, NULL, NULL, '::1', 1626107430, 1626107430, 1, NULL),
(63, 'nguyenthimydung', 'nguyenthimydung@gmail.com', 48, '$2y$10$7LeWqfnXnFtC.fc2IgNkWOOmtRxdl.vehCuclSr9UhzyINUApQHbi', 'xNTdeGV04NIzStL-UcA9lHtKQ99pmMeZ', 1626107430, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(64, 'trandinhdat', 'trandinhdat@gmail.com', 49, '$2y$10$vdb2iy6Dk.W0DoCYek5o7edG099M.w8gvDJv05TSitZEzhGtAsq7.', '5gsQIU7_wwiapz-VIyCAQ4yytmT8oQJa', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(65, 'tranvanduc', 'tranvanduc@gmail.com', 50, '$2y$10$IWTRWy7QvdNieRpdHNMtqeJ.u5cPDHRwQhIOsa6f.7LZad/i2hWCG', '7WmrPflGnQWfmF_kCPdIgMqbIFYO14Dk', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(66, 'huynhthilamda', 'huynhthilamda@gmail.com', 51, '$2y$10$6uiyy0NG4RiZYQtkrqgOAOqERO/N/IiHecyJ8JospmfhxT1PS/Ooe', 'iv9HLJFhfwTLShDITvXQTYm-BQJaGXvQ', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(67, 'nguyenvanhung', 'nguyenvanhung@gmail.com', 52, '$2y$10$W9tdTviPNQi0mCSI2p5nZOmzR5JBcQHUt8PCnjx9TIkiC9xGCZWAm', 'UjVWsexaU8_PXKzBrPNuBT_FBMDRmy5e', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(68, 'trinhanhhang', 'trinhanhhang@gmail.com', 53, '$2y$10$b4M4jGmRH3G/bUlPYtTI4eGci/aQTcWIyC2kDAt71iBHZ/mBgiRaK', 'TKi65Z5NHX3xC7RcP2ngaR2YbxYOcFVI', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(69, 'dangthikimhuong', 'dangthikimhuong@gmail.com', 54, '$2y$10$9GzFpc/dGkHxD8oH5C3Kgu.QfvG..47tWpKIkJzAsO/r/oLXDu2ni', 'HTquAeVsu0thqKMEDtPyY8_uEWwcDVpO', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(70, 'phanvanhung', 'phanvanhung@gmail.com', 55, '$2y$10$Z62OUpUqlZJcio0MqdT6iOQQPz3W5LS2J7cdTFnTgvwkYNo/RZ1GO', 'PYNjKdTAdxSRRXDTseiIVOs5KRbpTJTT', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(71, 'nguyenhoangkhai', 'nguyenhoangkhai@gmail.com', 56, '$2y$10$A4m0oW7HVNLoNaIK3bYTPubHX/ht8vbfuC7VzeDcjNzz0TLxphZXu', '7oGh2S5bS7PTfgmB2kXOM1HBt27eztMB', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(72, 'hoangquockhuong', 'hoangquockhuong@gmail.com', 57, '$2y$10$l/QhKMP9ayCXlc0K1YzYUubz4DitnZI5cvZhNTSe3xmZLLT8kGotS', 'KV27yBAdZlt8yyDpj0QI_yz4LjD4Wlao', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(73, 'tranthanhmai', 'tranthanhmai@gmail.com', 58, '$2y$10$8MIcSZSkUM770p9f4C03eOBEWLG9V050jGerkoUgoyAgAzALKAz72', '3sVCyaLbXf4O2lGJq__ITNTqC5-SWq0a', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(74, 'trinhvanmuoi', 'trinhvanmuoi@gmail.com', 59, '$2y$10$My1AQbfwDwlaFXqFAw41Qu1WziVgJd7rdh6XAdLueCavSOebFc63e', 'tpCrxLiE5z7h02GZ5dmrAsJCHSRIQ7Hc', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(75, 'nguyyentuanminh', 'nguyyentuanminh@gmail.com', 60, '$2y$10$DuThqaIMazDy.2BgpKa8AOUuTIgyOdbMDkmePO5hhmUMEQPXB6/mC', 'J6dxk08GI2Dc2Ha4RwBGpKLgeYIvQmwt', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(76, 'trantuannghia', 'trantuannghia@gmail.com', 61, '$2y$10$O6Fa0jVBv8CdR/tCaSvRMejiggPYWFwtETZLzQXCbs.vG2vW7RuZK', 'pdsbAW3L_yr9zX2_NhIJkAmBE59EOH7J', 1626107431, NULL, NULL, '::1', 1626107431, 1626107431, 1, NULL),
(77, 'lethihoaingan', 'lethihoaingan@gmail.com', 62, '$2y$10$hr/Zf1g6yyMNw1AMVo0sdeUgZNIrONBgqJ495v.oxunBYnJBoj7Gy', 'g1CbEu7faCT3GCkb0Sdlg0Fz6N3LYrs2', 1626107431, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(78, 'lenhuquynh', 'lenhuquynh@gmail.com', 63, '$2y$10$GCqm58IZygU3EXrIPq24VuCrplXfBH3DR3xLQzsdad1jleaTf/B6W', 'eCIhJP4em1vB9ETgb8b-0WXAHOk1DY-n', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(79, 'luongquangquy', 'luongquangquy@gmail.com', 64, '$2y$10$IJHcf6R5YOGyrN33sb2fnOnHMazTGQB.VQ1l5UzE509jqOZDNWufi', 'cmfC0-s97j6gZj4TET8fCZhM4GmXwTnO', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(80, 'nguyenvanthu', 'nguyenvanthu@gmail.com', 65, '$2y$10$55J6vl79Nx32fiobis372ORZNc6diZ4Eof0B92vYNdzAt4XCRefCG', 'q_tXTTkogGYk0_JKJDMHiPaILM0N_BF_', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(81, 'kathanh', 'kathanh@gmail.com', 66, '$2y$10$UOTAcsqH1jKja3.XpdzGA.MRaxnrWEdFcwFUjmkguRucy6ya/5f92', 'ypK-u93jgNJo8tuOWXSYQmkJdF8ANdGV', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(82, 'huynhthidathu', 'huynhthidathu@gmail.com', 67, '$2y$10$uJd5AeoX1fK197SjYQsoj.t3rNYvr01cVZUVqv2GQzONbrh1N3bv.', 'f0dmLHDSAMlwCpmqakUESEy23xXK2xXV', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(83, 'nguyentantau', 'nguyentantau@gmail.com', 68, '$2y$10$ulDK1J6TbIz6kPgsqR1rT.ZoA80n9ApTqAuAP/JtTq9Me7S.n11WW', 'T4DuXu-5kq_D2SCRXU5t6rp5YBX3tUeB', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(84, 'hoangquocthach', 'hoangquocthach@gmail.com', 69, '$2y$10$wUe.6TxZSDXKXAJu8.p/HOPENOWUzBiDXynOgOMKOjdmGdnQ051LK', '3OTITiQL8xnb68YZ1-DND4KnhHH4rUJ8', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(85, 'nguyenvocamtu', 'nguyenvocamtu@gmail.com', 70, '$2y$10$pWHuPp86p/T9F3MNqDtuIeCHFYSQs4ld9Hg55yCg7zk54ptCvpibW', 'J2UmutwZ61xmVzEZ-JSkABTXe4E423nE', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(86, 'tranminhtam', 'tranminhtam@gmail.com', 71, '$2y$10$La3IagFlYvGHB22sPMke8Oqs0wV4mBXwWADYZj45ylH9K/GUoUg3m', 'lhqmGnZDBFFsAh9klznw2JZ78NDCW-aD', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(87, 'tranthicamthu', 'tranthicamthu@gmail.com', 72, '$2y$10$AwmAeDwwAkBV3CxSxRzvteOlxv60PoEeUksq1aW7BWYKDa88uODG.', 'LPMALWj0xWn0TjR__uXW3C3mfHt9Y_Oj', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(88, 'matram', 'matram@gmail.com', 73, '$2y$10$KLzmVlKiLqXDn9jBXyy.xejAlHR6hCVDeRjDWykyoO7Dko3P49w3e', 'xZirq5Ky2pBocmby16kvcrBdxgV1vNzE', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(89, 'nguyenbaotien', 'nguyenbaotien@gmail.com', 74, '$2y$10$WmRivGU.wJ0WyPiLO5UOSOdkrA6f/dMCI.5rUEjWEtZYku8y96jbq', 'WYM9LSgn4qwdiaYKUZk6kwcXwJV7CSXd', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(90, 'kathu', 'kathu@gmail.com', 75, '$2y$10$fDyAVsHsTAlu4pzSu7cZRez2L0MJVWf90zXofh2o2W4yScBEKkV0u', 'CRctsRmZN8Sr2BMw5F1djsYG29rstqnr', 1626107432, NULL, NULL, '::1', 1626107432, 1626107432, 1, NULL),
(91, 'lehoangkhanhvu', 'lehoangkhanhvu@gmail.com', 76, '$2y$10$VEyMex4CfPfvqFqz5WNNfO8W6BPHPj4NV0290WDasikxc1JQtmu6O', '7yLVYWnozGtGF5MR28z1aMJ5CLzvDBH-', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(92, 'vudinhthang', 'vudinhthang@gmail.com', 77, '$2y$10$.K0c4ng/SqtnvfEh7SPqgutObB3Kk/N6igK8FkUTRRnh5OSFAh1tG', 'empl9f9aAldP_PjMjNv1KiPqVgSa1pGx', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(93, 'hoangxuandung', 'hoangxuandung@gmail.com', 78, '$2y$10$gpjc91ILLsOszCvg0TnBzONAu6QasIK4CkZrmvhFL.DEIkZeCs2ii', 'Sgwoq3HcZm3i6XGSpeEFwMmMBazqrTd6', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(94, 'nguyenphuochuan', 'nguyenphuochuan@gmail.com', 79, '$2y$10$yE5/vdoOmCIABO5P7YNrQOD84FuAeumOStX2gMy5Ba8uspVfCmpOe', 'iqlnmwg-nVDnnq9nb5k8v-Sa9iomXx4o', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(95, 'nguyendinhmanh', 'nguyendinhmanh@gmail.com', 80, '$2y$10$qrbOGmcD.1dTGztnXlNUt.Qehma4K6adzSrB1NrDwWGNZw.jSQeEu', 'qjYn052z9h5MOgqcT4wqYwGw6f60_27m', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(96, 'nguyenvanquang', 'nguyenvanquang@gmail.com', 81, '$2y$10$7kJsAElE.SI4LXHFtwynCeHi8idpThWlTJrEu5HNmNh6z4zqashW.', '2LmpmLpCMqS5bCMR2wh5ozT3CyY4_Ea8', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(97, 'lehoangsinh', 'lehoangsinh@gmail.com', 82, '$2y$10$9JdLtokzJamp/RxhAzvd6eDeFiJmKqF0SB32vOeEXXljcl3X9mvZy', '-jcBWU2yOwpAHdmTvG-a2TiHiSWaTjTZ', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(98, 'nguyenthithuhieu', 'nguyenthithuhieu@gmail.com', 83, '$2y$10$TYR0mP.thFwpuVZBJ5IwgeSvqCsv5BsDXAolHB0ozg6mrACHl0cBi', '2LhtjWMnHsZADuTDfM6jEJhoUPCPMJ13', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(99, 'lehuutuong', 'lehuutuong@gmail.com', 84, '$2y$10$H21iuQ8mGegvodxs5TpURueCs68JgcZnklxKLgiqV/7tRVjNPpEG.', 'tw4xowGcpV6z3Iof8ZsauqjRccfAvMYH', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(100, 'buivanchung', 'buivanchung@gmail.com', 85, '$2y$10$YZeSTcXgV3VPSWXQ3mIw7edE9BH3LfRoekWmtM0I1TegPSjPZHBHK', 'CKdJmeKGiZD0xdYE8bra4J4Dbl55nTQD', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(101, 'nguyenvancam', 'nguyenvancam@gmail.com', 86, '$2y$10$Fk1pY.encyWXSGTChtuI2.rj1cMx05t0lu9D.IkNP7yyi1VxQOq7G', 'Ig4TZs89lAQ5f42ZbOxwS01qgGSnMJHK', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(102, 'nguyenvancong', 'nguyenvancong@gmail.com', 87, '$2y$10$sgyYNkYdTocBC3E2XAzgrewklEQAgANzWjWGqjq.00qSPIgsztNzy', 'D8szchdFqwuWdAxIHjRoBCd3ofHcy1vh', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(103, 'nguyenminhhoang', 'nguyenminhhoang@gmail.com', 88, '$2y$10$UE7cXCD.vZgkgUn7uryvtOg10tdhx0tWl2yl.zJ.qY./QbsK2E4SK', 'ciWz1zlvRvWvweNomHMV9rebb7xhGWGI', 1626107433, NULL, NULL, '::1', 1626107433, 1626107433, 1, NULL),
(104, 'truongducphihung', 'truongducphihung@gmail.com', 89, '$2y$10$JPhcjjfMEvcp7wSRR3WWyOfJSjhW9ClPPSnzZex0E593M5t7S94iy', 'utuaH0l70SrBcqh9TeBKz6-aLOo-b6hQ', 1626107433, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(105, 'maitrunghieu', 'maitrunghieu@gmail.com', 90, '$2y$10$NpGx2J8wIldPchf8qkob2e0NM9X8TyNBkmFC9ntlWIFqCNUR0zpUy', 'hRnfgzjCIdYbbF9dEziw0BxRhNcYgpSb', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(106, 'phamthemy', 'phamthemy@gmail.com', 91, '$2y$10$F3K.QJH.lPXFjYJfKT1r/uTqK8Uj.VfQZrDmGFqqBr9BNwutwAv9q', 'i2pd6I7SuRakvXL33ADArHZpApz9LWMj', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(107, 'nguyenvannam', 'nguyenvannam@gmail.com', 92, '$2y$10$jojyu1gslAifcWYWsPn1wOb4QmZs.O/76qwwnMZsNp/wsqPRaW.hW', 'LfqlRZZAaOhkrznvol-6vo62JNECFsgI', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(108, 'cilhaninh', 'cilhaninh@gmail.com', 93, '$2y$10$7ucPYudyX9A5lnDKche1oem3B/DngJAlYRXz1mtipOPoMepddcZ2G', 'RLIZEQqUmkvMJZZ8TNJjf89z1bTeFO4k', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(109, 'nguyenconganhphu', 'nguyenconganhphu@gmail.com', 94, '$2y$10$5RaC8qATwNKgB9UOEfhRPOsD.p4ZcZKOgvMoy3U.o.EzYOVNH.pKG', 'lHOemByQoBOHPAys-BPD_cF2L7GEWZAC', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(110, 'truongbaminhquan', 'truongbaminhquan@gmail.com', 95, '$2y$10$A2KSKG4hycoLslO2HzftZO1o9dCdPChZl3ih/J.8RqL00Yphwr1zK', 'wgEW43GUthJePNHJbXSH3IH4NlgYvUG8', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(111, 'nguyenhuusang', 'nguyenhuusang@gmail.com', 96, '$2y$10$w5WqBl5mFKwwEkDcM5zxpu42540zQNznYMtFB/QVRDpJYjQnoYwtS', 'i3CyyAUZN0H8S49mJ08cBy2BpkDMtNp9', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(112, 'tounehyathiet', 'tounehyathiet@gmail.com', 97, '$2y$10$qlWUSgP.JfiwKH6uKdwM2OWbDG8.ijOul.d1GDMpCWRMEtyJyS4sK', 'Yvw-hZDby7Wu1lPT-wXmOzbOTktQqL7O', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(113, 'quangnhatnamthai', 'quangnhatnamthai@gmail.com', 98, '$2y$10$PdHCasC1GXP2O/wZTtmzFeS39oqo.LdsaK6XGiQA.Tpc/kBU0UCdS', 'vEszIoetMilBY9tTM0EnHyG8jK7zK21A', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(114, 'duongthihatrang', 'duongthihatrang@gmail.com', 99, '$2y$10$shckxP24ykSNxW8uuUKipeX0ldnHqBfUV520S3V3gS2viIjnH05GK', 'j0sYl_g3yt2CEjAPNo2CnjvE0CsDQ4eD', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(115, 'dangvantuan', 'dangvantuan@gmail.com', 100, '$2y$10$gBNAL/SIqxB2OpalA7Im4eGADc94K1Dnq1AVP4E38Cn/GY3/8YOu.', 'TosCZ7LALMu4bvuTq_7gn-Mq4R62PHhd', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(116, 'tranthibichthu', 'tranthibichthu@gmail.com', 101, '$2y$10$CydnlFvLXP6Q1wCx2aENX.8LgJsoZRYFCRHrsSBrtyLhV3sEtT2Dy', 'xoE1Wl17sZFXq_rFX5U4CEPNGWCCHDQX', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(117, 'trantienthanh', 'trantienthanh@gmail.com', 102, '$2y$10$2Kce1BnRAVoccM4/B3j4U.hi7ZmHzbDsYgjHR0fV7x9AwG3qXx.ay', 'NKWmyg2Xa9RbQIumPxsH2o7V74UzqVKy', 1626107434, NULL, NULL, '::1', 1626107434, 1626107434, 1, NULL),
(118, 'letuanvu', 'letuanvu@gmail.com', 103, '$2y$10$XkVxpEqP/D7e36tGbZrl0eUt55eD16vRxjdVaM04/2u3k2Fg6yqNK', 'l93Q2254II4EAkyIQDZqEIn5C25XFnRt', 1626107434, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(119, 'letuananh', 'letuananh@gmail.com', 104, '$2y$10$i0beq5QZXqAyzPp7QOtwhuUx3PW2j6BfVqjG3/TzYBkm4CDsnCaV6', 'Kutty-E4QUkQjDMIBiLZyKbXicpPyqhk', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(120, 'hoangvanbong', 'hoangvanbong@gmail.com', 105, '$2y$10$mDtabbwlaHyVyDs80d7/H.31TWLP7E43rs9LY5mshZfXFuynR4uZ2', 'Jg-5zCbSc0ZbOV2UGTmN676WDGEl0BYQ', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(121, 'dongvanduc', 'dongvanduc@gmail.com', 106, '$2y$10$OzTGFqjXqxoNg5LJLPggc.4OfX1oq9XJZWIdWDbPlPx9N54YdUrZy', 'Mw-dqoIV16CvrGT8UAJORuSzRUJZ1wB_', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(122, 'nguyenvanhoc', 'nguyenvanhoc@gmail.com', 107, '$2y$10$KXYwX/aV0Xdtl1PqQ.f5l.SV87kpFS0A7zi3RzMcCSqWyxmHL/K0S', 'N8NEQF_PMKvVURDBaTPo4Wi0uJCuaMui', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(123, 'lethimyloc', 'lethimyloc@gmail.com', 108, '$2y$10$xSF9xDvgcYu.pbwtdNh91OlOpdjZhHmloaiphYFmYCNONsHkWhScu', 'PD2S8pJ35VHAucl1i9O-XcZVNWogK3ql', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(124, 'trinhvanlen', 'trinhvanlen@gmail.com', 109, '$2y$10$U7DnW4zIRgF.xBM.NTQ3N.rykckD3r9EEfI4WQSFPhNFThnSW/ybK', 'kPf3J_zdSR_dStJ4Kd8IFCtD1tWcW47x', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(125, 'vonhatnam', 'vonhatnam@gmail.com', 110, '$2y$10$h857iWntvZCsCIvHGLQSaea.ArArbM2XWx39kFuyqbkIbznBvwS9i', '3N8l9TdnJUJRv98nNjVkwtf0XRJtSjWm', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(126, 'levanphuong', 'levanphuong@gmail.com', 111, '$2y$10$fU1EaaKY63HCL531zbRsTuEF4weebwMCKeoQ/h4oLggGPXhU7C78q', 'YuMXPZnTMbTFqs2khQQ0sx-iNbso6n6k', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(127, 'nguyenbaquocanhquan', 'nguyenbaquocanhquan@gmail.com', 112, '$2y$10$h1F0A/6LQqizMOiTZKvdtei.KtrBK3XjWoyzgvvLqIT/gmHcMtpaG', 'fD_XF3iOqjlLLv9L69X960AbDd-0uVMa', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(128, 'nguyenthithuytram', 'nguyenthithuytram@gmail.com', 113, '$2y$10$gY1AlaKjsPns1sFZas1Bm.nWAwjrzzRyB369gyGEUSYN0A9Pd7eti', 'WVs5nJeJMECbyjlAeKhgezs6xU9zRNzD', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(129, 'nguyentien', 'nguyentien@gmail.com', 114, '$2y$10$qjACtSGGhEeGt6I0ah/QBehrqqOglZshrMpb/VMRjq.QugSMQDAKa', 'HtpPGNji09keE8MYR7N8WES7mQynNrAq', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(130, 'lethuong', 'lethuong@gmail.com', 115, '$2y$10$VLMTtPjon9Yn0/9GsxLOEub/gGVnT12L4aw3hGJzLPbJRUKStlRqa', 'HZotUBsavl-ViHGz5rIYwEViu9EyUnge', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(131, 'ledongdien', 'ledongdien@gmail.com', 117, '$2y$10$ZrSqGRpHmOjUMFtxOzBEJev55ot8jcd9zEl8kIGPpefhQOD1xwCUq', 'I39Kj2xGvYEwB7HIG8JBZ3tTBOJzV3IL', 1626107435, NULL, NULL, '::1', 1626107435, 1626107435, 1, NULL),
(132, 'kosahabron', 'kosahabron@gmail.com', 118, '$2y$10$iTgqLf/MqsXFz8j37o1vN.FJYy7Kf6m2iTxnWyxKkQx8XTPYwEJta', 'Isl_sfvafllGvS7eCsk_LvNOEr5f9ukO', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(133, 'dinhvandung', 'dinhvandung@gmail.com', 119, '$2y$10$G3BDyqMAEPU9GIZBhziHnezydOxfB356veQPo2cU0znLnuxdr/J8e', 'KvcGMyn3mHkwIAuN7mLLI6Vf9Lz0y1Pp', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(134, 'hoangminhduc', 'hoangminhduc@gmail.com', 120, '$2y$10$gZSd9nAR5r/d5LQTqjjoTuJUI81UArIU1ZRNmk5RXnIJA8wQuHD0y', 'lW_Qv1tiuN5zZ8fb8836DNX1dvksFtmz', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(135, 'trananhtuan', 'trananhtuan@gmail.com', 121, '$2y$10$8CDV2pee7eD5741lYXYhtO3QjnxxIm5h/35i7pIg.a.NQf9IdUSv.', 'foNq4Wc7nRki61TjkEDPIlw09dn8_vV6', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(136, 'hthambya', 'hthambya@gmail.com', 122, '$2y$10$KQEsW1L51TcTS42/PE/Z0uBJqUesdrqOpG3VqIowGX9Xr/KOB8lCy', 'aPfgvuAhtevMeYDk-VH8UOhfGxlfm6gW', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(137, 'lehoaibao', 'lehoaibao@gmail.com', 123, '$2y$10$ca6gJhdOAgvJAZHxju0CNOwx0ROMqZU8BoDbWEV9SjTFDhwjtY6Tq', 'pbCs0N6y2_W9J4dhISkxJKMoJazBtpT4', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(138, 'dinhvanhiep', 'dinhvanhiep@gmail.com', 125, '$2y$10$IvPJnQVdGiglKvlUJklAgusuNsSIJkQSJuncyRMBowFo5dyYWT74m', 'QG1r5mILfbznBezp8m7LdBb9Pj9DjDlO', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(139, 'damquochoi', 'damquochoi@gmail.com', 126, '$2y$10$Xe.lcIq/P.Vx4G70kbX5d.16MvvRRMx9.7evEKglV62ceixlzPK02', 'I3o5hQ5a0KRDr_4--H1pgQKG-n6bpSj3', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(140, 'cilje', 'cilje@gmail.com', 127, '$2y$10$QTK.TMmzdby7yuZxf.5Uf.5aaDODoVrHIRxfzGmJ264BTjM5rPOR6', 'qM8C8n7Rkf5bxVOb9FZqm85uMhNjTOlC', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(141, 'vothisongthu', 'vothisongthu@gmail.com', 129, '$2y$10$l92i/9AN8kIASxgjt5.EgeF9/YmpDO2uyax02XrO2Iyz.eTPaKpoG', '3m32zhtQ6Wost2I0CxqKrOAOlh5J9cOH', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(142, 'levietduy', 'levietduy@gmail.com', 130, '$2y$10$4dJyU3kBpfJV5DV78i8F3emKfpXghG3GWKLWJkkR9HWfYn3aAS5M6', 'ENgMHKlMmlcsy5m_t2mkTd-l3yYNtBwH', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(143, 'nguyenthimylinh', 'nguyenthimylinh@gmail.com', 131, '$2y$10$cVSJKMdwC78qay/xb5c9i.1o5Z9bdXDLHxHGpO7rvTMx0uiRGE2Fy', 'FXvUcm69B0HcJryultH1WHB0wvxYZBY0', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(144, 'dangnhuquynh', 'dangnhuquynh@gmail.com', 132, '$2y$10$j4QIiAp1QSGGp16l8/xS3eI3Tbxh1KcKXOvtCcj3.WnKN5Bb9JRDy', '6IITtjvvOhS0xb1RCJr5lYPiGnKCxlVs', 1626107436, NULL, NULL, '::1', 1626107436, 1626107436, 1, NULL),
(145, 'thongtaiquyen', 'thongtaiquyen@gmail.com', 133, '$2y$10$vpVD.w9FU3oC3Yrwn5a9.eFPIsBztlTqh83sQR3N9dVSj2AMpxnKe', 'nDbgveKqRudBKefoStotD0ayw6mWh0mv', 1626107436, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(146, 'dinhthihoaithuong', 'dinhthihoaithuong@gmail.com', 134, '$2y$10$m/3B2i/TT2OIGelS0QMb4O5DcLU7SnBZDVUefO.Xf.JFeyBHv221.', 'Ho-Kos6x2R-eMPmf7ATuRMSgGoYzwU2k', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(147, 'tranthanhtu', 'tranthanhtu@gmail.com', 135, '$2y$10$I/7OzW4h71y96asLjIEkIOh91F5u67Xjjc4Je4wLk4EfVWfcGZvHm', 'GBPDcXScDMKs-rc5kecnK8w7AIDe9Utt', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(148, 'truongthithanhhieu', 'truongthithanhhieu@gmail.com', 136, '$2y$10$.75G2eA4sgutq8D.SuV6mO4iX4ISAOqNED5UPBd6.FhfYTlG64boy', 'VqkxhiOFmqrIaqtw2ElC8UI563FAXrEK', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(149, 'trinhthithuyhien', 'trinhthithuyhien@gmail.com', 137, '$2y$10$lQSMHmclVKcrUYM3AFOHcu.JBIcNYeuSc8kTfWCm44pzZrhQ2wAAK', 'PGk3kmXCwcEZMHY_ANQNb8kM4LhnbRL8', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(150, 'trinhthithuyhoa', 'trinhthithuyhoa@gmail.com', 138, '$2y$10$ikng0uCv8wnLeEvW7lsGmeOFYJKbdwsFFfQ75s7XAKzOmUsTB/wua', 'z-JmT3IPktKW_Jkq8-iPIY70B66bZeMX', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(151, 'nguyenngoctramanh', 'nguyenngoctramanh@gmail.com', 139, '$2y$10$zhpMyPAIS0bnj.vQPM0Niee27w29eLQXDOj.VphWBIPuF4rr1/6Y6', 'NdBG-3WuYL-6wqVeSeOyiuX-GjMZJQsO', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(152, 'luongthibinh', 'luongthibinh@gmail.com', 140, '$2y$10$yhiehqDokHbkWp97rNyrruLl8c8bnHWDcTIFsALJ1eoEPAyeC6Ocu', 'STWsSy-ZFZjy55I7Ei7LH_iiT4K7HmeD', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(153, 'khethiychi', 'khethiychi@gmail.com', 141, '$2y$10$VznbC0mQoYsBbxCy7uVP3.rH/iszJSmlbNtpI4BZF4CbSRXBxy5b.', '9Ks-ZH-70PIpE9x_GSVUd5qZfqnMn9SD', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(154, 'nguyenthidung', 'nguyenthidung@gmail.com', 142, '$2y$10$Kq1didjHW4OMhhzXlKJsf.QdPPO17ixKWeJxty/MJklTQ.ZzlTsnC', 'QpgXkP2x-NJ3h1cOF2H-om4P_Lq6fHx2', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(155, 'nguyenthiha', 'nguyenthiha@gmail.com', 143, '$2y$10$9Gj/NDTO8LHt1u6BQasxge2Susc0a.XzigNYtL0uYUt68hyIQ7Pxi', 'e64j4zIRVhLzzC8evbntQGiru3M0dQMK', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(156, 'tranthinganha', 'tranthinganha@gmail.com', 144, '$2y$10$EOk3ux1wJmytAH3H8.7fzOGazzrrkWicecc.cFh5Vgt4SALui9eoS', 'SwLndGOxWOGJnWq6qzfUbavmUEpCEUIz', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(157, 'maithanhhoang', 'maithanhhoang@gmail.com', 145, '$2y$10$bYPV7W1CLCUphiq.gzCcp.hUReyd/iCWv8vxCJQrkGT9OyHcCcDum', 'H9-pSR12NmJcYbcHIl5ev2RMBpO9Mp9w', 1626107437, NULL, NULL, '::1', 1626107437, 1626107437, 1, NULL),
(158, 'nguyenthilieu', 'nguyenthilieu@gmail.com', 146, '$2y$10$k.0E.1o06X1HBtIetcYtAugxY0z6knE3aHpgOwYWemkh4vskwnYVS', 't-Y4-LIX-J_CqgRvEswjB7FMQ_9Sm-s6', 1626107437, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(159, 'hoangthingoclan', 'hoangthingoclan@gmail.com', 147, '$2y$10$DO1/BznFBbDgdj9hD4c2r.lnialSkKYnSVDwowAPySZjGaVZ3SBvy', 'shiguBaNS0sS6pcTyoS5UGhlIO8A31yn', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(160, 'nguyenthithanhphuc', 'nguyenthithanhphuc@gmail.com', 148, '$2y$10$lBDk7lsEEdSlV9HcqyQKp.2VikrZ2CMYUg90xtdmu5bas8ZALkar.', '4_RDxuM7dRku4W7tFvSSENnlk3ARf-CF', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(161, 'buithiphuong', 'buithiphuong@gmail.com', 149, '$2y$10$cUBwrddGg4E7tDAbVwh/N.pXRdg1onQEIu771VknZbmS.vRkJLeM6', 'Mk3M69vk2NJH5Aygn9uioe1a6tERdOqo', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(162, 'langthihuynhthuy', 'langthihuynhthuy@gmail.com', 150, '$2y$10$TcFE21Vdw.aZ58idPX7.9uSlsknHN/gznOMqaiPOTvH1txx8ZHdGa', 'NrYxlB_siDmxX3HlcoPKqTlmst7y3Sy1', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(163, 'phamthithem', 'phamthithem@gmail.com', 151, '$2y$10$f2Xo5ZxZC6hS52p.1MAfE.cXGOOY0AGQTH5JvCSCADSbibS1GC3QC', 'UnL5uor4Q7ahQfQiBRZ5kHUFjjlivTdR', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(164, 'vuthingocuyen', 'vuthingocuyen@gmail.com', 152, '$2y$10$8NSZwDRcxvtQpPkwNvg.vuMJDX6xCIVKJ/obxzDRPcBA5xIm6NXNq', 'r7IEDU1NPfMUKZwnnqz9aXMZj-j97PcX', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(165, 'nguyenvanvuong', 'nguyenvanvuong@gmail.com', 153, '$2y$10$ZfMpBJ0mLi6GBTJTljqPE.af8GvLw3aujN02seHx7EREBDJjeaKkO', '1tbIWW6sE56YTyjqSJjTVVbTaaqACljR', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(166, 'nguyenhoanganhvu', 'nguyenhoanganhvu@gmail.com', 154, '$2y$10$A1mb7zD8JVkOsW76p8jxJezmgHbZSVztEoellWuCnpJmIlC098USG', 'Q1rO_KjomttE9IWynMBZq5NjlVnVcH-6', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(167, 'lephamminhvu', 'lephamminhvu@gmail.com', 155, '$2y$10$dj2VhiSHHl28DiqC37VKgeQV9sxHfBL7T2t1IfB00e7KiMSJ53jXy', 'ti9CV9U_eGtYTPGLX91LU-25WRCQGUG_', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(168, 'truongnguyennhuy', 'truongnguyennhuy@gmail.com', 156, '$2y$10$j./jj5muWS4BE6ln3C0Cl.CZaLOnwNwDCjPjGk3m4oVWcCCp4epfO', '7O49xvK8y4idqCs_iI4Xkzzf5uY8LKwH', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(169, 'doanthiquynhgiao', 'doanthiquynhgiao@gmail.com', 157, '$2y$10$yZ3L7I60pIBVJ/m8mMQKSOQwVmUT3AjommLvOSm2JKGaFi5TZZ1HW', 'hRUOiHnYN8rWH2jFx74GOXlarqugo1qe', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(170, 'dauthihanh', 'dauthihanh@gmail.com', 158, '$2y$10$2ubs88E254qHAXDqTz3enOgz...AipC583ujgwiSj1klQJyhKsdra', '7HfprjNx73MU49Ew3ATUYOraGwlmc7hW', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(171, 'nguyenthilehang', 'nguyenthilehang@gmail.com', 159, '$2y$10$zkrR1paXjEoQY/8elDatxudHTqx6niVM9EDYCPW7T7zkUd2/086Vm', '0tkuvyuhi-IspRE5nKAYcDxNX0VLawHl', 1626107438, NULL, NULL, '::1', 1626107438, 1626107438, 1, NULL),
(172, 'phanthinhi', 'phanthinhi@gmail.com', 160, '$2y$10$zOVvKUIZnj9g6obgb/CX8.DqHzCaRimnRnWsjwee62gsEECy95WWi', 'ehIAqMSU0TyVEBZWCodb2okmz-UUPIh4', 1626107438, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(173, 'nguyencanhsang', 'nguyencanhsang@gmail.com', 161, '$2y$10$M9C.2Rp7i4nVJhRQSlP6ju2nj9/NG9cyVB5JHMaS5DpQrfarDBNhK', 'aXypna4WOn_euqq5vaBn8N4M4RxRDjvf', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(174, 'lethihatrang', 'lethihatrang@gmail.com', 162, '$2y$10$X/eA4XpYJkaqxNea0SCPdeIOh1mXpBb0CHpuaVg3oLJ/JgfAlxWnu', 'v5ch3OoKAqPZPRVCesa5vqriSE15Q1Pd', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(175, 'dothingocbich', 'dothingocbich@gmail.com', 163, '$2y$10$popvD47wVfXRXAVdyshfEucVVmBzxa2WIyeig.y9454zgouplkqle', '5aFchSw8zSl30N-6xv-kVvLrBD3IhYh2', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(176, 'nguyenlengocchau', 'nguyenlengocchau@gmail.com', 164, '$2y$10$QKmK5Yx9Yl.QHurXkCH/oeVDLwEDxL8DQAVrOw7AUgbL2omEiIkkO', 'xhxbALmXNyOkIT6L9QcSfF_4PjQor9il', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(177, 'tranhoangkhanhduy', 'tranhoangkhanhduy@gmail.com', 165, '$2y$10$7R1A0I6Ui.5dad8M9tUiVeQnN64KH51FZCwdL4eGBiCKwtFt.0Btm', 'wuM690CuC2QhQph-i0fDwSYgFanwX38H', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(178, 'nguyenthihoa', 'nguyenthihoa@gmail.com', 166, '$2y$10$LMV5WwoUzuAlRqIcCdG4DOhiDCAufZ29CxXoJFPSM9khFr8Vq6tJe', 'dviaXmJVWSUbIxyU5sOhP-YCqJZMUJE-', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(179, 'nguyenthihongha', 'nguyenthihongha@gmail.com', 167, '$2y$10$.3We5uDaZdVjzPmGci4NrOjsvMl62EoQOF4bkqqZDq/9sAfigFyzi', 'vNJFMnu1BsMwGG4DA0hdjv3SmteBY4ic', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(180, 'phamthithuhong', 'phamthithuhong@gmail.com', 168, '$2y$10$uahlj6da1gY1cmDkuq1TPOTLQ8YwwcSJ8/0bmT/4Vb.K6Qnh6j8D2', 'GuSRO3uQwlDLAVfB9UM6QeRwGqaExHmJ', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(181, 'levankhue', 'levankhue@gmail.com', 169, '$2y$10$e/jlMfCBdDPjNpeAb6uOk.Da9CteN5MeT8GnSGPp1me0c1.KJ1NuW', 'SOp_Xmg-IV7MOKs8lzJTkz7-8OQ0EkYX', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(182, 'ngothimy', 'ngothimy@gmail.com', 170, '$2y$10$qWK/FsNod7ov8UNKLZX7RuUWGLWi4D03qN26UZGja83KZBSKWGM0a', 'lmOSSXTuVEzHRWLUzwRFhv6iu6fmzF7b', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(183, 'tangkhoiminh', 'tangkhoiminh@gmail.com', 171, '$2y$10$rOVz8XQHUKhjayqcsF6yyOqX4PdEf12EetqxPpSVAYS5UkKi.Syz.', 'o4ZBS_7A5aU4kKjhYhDJDR5JPUeXhMlc', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(184, 'caohienni', 'caohienni@gmail.com', 172, '$2y$10$kBfei42vgm7qe.cLfU1mduRSWIzuxpBBsQEDgROiLyMQOGgzUbw1m', 'BUWqG05emwGgq8PjtMxKx6MuywYDwcOB', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(185, 'vuthikimngan', 'vuthikimngan@gmail.com', 173, '$2y$10$a4qHAUTJ/6P5bK83GgGumuHp6OUCI5oxA4tRFusu7we.YkgveCfIe', 'dANrk1r4VGh5tF7jt55sQ8SXZaeFWX-P', 1626107439, NULL, NULL, '::1', 1626107439, 1626107439, 1, NULL),
(186, 'buithihoaithuong', 'buithihoaithuong@gmail.com', 174, '$2y$10$AnkYzkCtZNXAEGgwn6PqreJC1jy/uncM7P.t5vAzpJ6VYAjiuh1N2', 'lbBPk9uYZG8Tgb3EuxzfPlphxRqZUMHO', 1626107439, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(187, 'tranthikimthach', 'tranthikimthach@gmail.com', 175, '$2y$10$aqLFExFTy8lFM.Hd4ZMqIu1M32dEVFNBRe4H6v671RGlK26qfeaBi', 'dPmClluev8OJom5DFP-B4WeruXlMb-s6', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(188, 'levanthanh', 'levanthanh@gmail.com', 176, '$2y$10$GhyYMLeS7GGpUSarFwGa/O/DP5f4NKaA00wlQJn1Bz4/OxZx8eeOm', 'B-yIUZ7ABtIeUV6jEmeG1w8p9BwSBYWq', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(189, 'buinguyenbaotram', 'buinguyenbaotram@gmail.com', 177, '$2y$10$U8CiQhcr1AjfUFNnsqdCtu071DMZcLU6wiY3ygbbBnjAtiZ1GuCoO', 'ebRVNbVWlm92g_feigqz1Po7vYtNvOln', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(190, 'tranducthuytien', 'tranducthuytien@gmail.com', 178, '$2y$10$SGzQT51kSmVoyoxiLmKWbe9ZpBHbIyQv6E/fNGDc1a5f.S.8/XK6W', 'R9w62nIlnxBc65BjX3XSpNg_zQeUT9z2', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(191, 'nguyennguyenkhauyen', 'nguyennguyenkhauyen@gmail.com', 179, '$2y$10$5ET1.oL1okGYNyfSQ7sLlujMYTllw9DpwBmVwPg6pWWFLqXri.pMi', 'orpB4T6iuX3AUCU2uLUacK8swK_GZPO9', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(192, 'dothivan', 'dothivan@gmail.com', 180, '$2y$10$lS0hQuM/uQXvtVDSwuae1uJ14RSzRHwxmpsNW5ic3x.aZqDajyIzS', 'AM1LGxmAPvYPNOu3yW1PMmJOTgCaZhow', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(193, 'ngohoangphuonganh', 'ngohoangphuonganh@gmail.com', 181, '$2y$10$XZZnXoxqWmM14rte/H2GiOpx2izGUSX53MOcZK9nY5uV8eTEfUfhG', 'HRe96Fgmiyg712tFQvFcHC6m_9rmOiCB', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(194, 'caothithuhong', 'caothithuhong@gmail.com', 182, '$2y$10$IH.PFasOLRzpyz.IawMEHOEaiAfo6WOYKKgRLOl6gtmx4Ghs4LZPK', 'Amcdnj7QasSZKP_ZJUp1F_FDMogCYjfC', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(195, 'huynhlethikhanhly', 'huynhlethikhanhly@gmail.com', 183, '$2y$10$Jr.o4ebwNzF3QrOax/1XrOERf.0gHeO1WUhMfYHaQLEWjbnYwJkYi', 'acPjNSzU2JqFAYV5VsTMOPsw71cqEsTT', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(196, 'lethihonglien', 'lethihonglien@gmail.com', 184, '$2y$10$sEm9OdG5T9dp7TtOfGzVpuk8ok1BM9i62l3NQ81MJjrJETGcyxRB6', 'eY1PF3YX4Mi3Nt7ID20MbpwyMR5TC7Yt', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(197, 'lethingoc', 'lethingoc@gmail.com', 185, '$2y$10$n8pG8Jql4zDnd52t5/uwPuV87MzFCd/XtSrHpV3K0/1XXNxiLxLvK', 'R2xeP65SYbcskfsBmTH5TJVjowngWEE-', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(198, 'nguyenvantoan', 'nguyenvantoan@gmail.com', 186, '$2y$10$JXyP.uYaxitIVWkUPwpj9.YxtJGIBkWC24l7Ao79n4ptu3G69mfqS', '4luGxt1o8bxH31XQNOtFv1GqG5SfYujq', 1626107440, NULL, NULL, '::1', 1626107440, 1626107440, 1, NULL),
(199, 'tranvantung', 'tranvantung@gmail.com', 187, '$2y$10$bna11JGzXkK84YMBJzE7n.TmOCgc7iuDB9hQCEBJYPEaJc8xmI5.y', '7r5MwCXP2ELz3aHwNskUlpR9V1rtdIOf', 1626107440, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(200, 'trinhphiduong', 'trinhphiduong@gmail.com', 188, '$2y$10$xdurT0u/iSOAYacvsUKhse2O7z6tqUaU5dlAb1BRIdewGbn/IKqzm', 'BJweT7mkqzmKP7oGpRLyxiM2LlyRfj8q', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(201, 'damvanhieu', 'damvanhieu@gmail.com', 189, '$2y$10$L/Ir38XLb8N06QnKloZlG.RsC9b7TTcHoHXgBSzuhM5WeRf3aQVf6', 'kzON0J7tl0YHrmFBi1xd6oKiAOzTKC6D', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(202, 'nguyenvothanhan', 'nguyenvothanhan@gmail.com', 190, '$2y$10$1XMfOohxiErNfKpIX.4f/Og8BsLoImc5DGRIkPI9taDLdrV/9tlGC', 'TFuT-_e0E8N7T3R3O9XDaDCg9c83jU4W', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(203, 'nguyenhuynhminhphung', 'nguyenhuynhminhphung@gmail.com', 191, '$2y$10$OhSDp/9deOv/Z08LMDwlRuzmLawDStp7yolQ4Xx1PoB8qET90crJG', 'JgggAmirQQoFgjb-EKcWPhoYe4F6m3Fm', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(204, 'hoanghuudat', 'hoanghuudat@gmail.com', 192, '$2y$10$zt81NW/JL01TRPvV3gZYZ.HNpTxh8JobPmu9plhGVYoBkAyUMCGIO', 'nwkh1KYOXKQVJaePrZvx9IGHjMv--iXY', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(205, 'daongocquy', 'daongocquy@gmail.com', 193, '$2y$10$5gqPYFLO4I6WGzWQJMclpeK4YxUS0Io2ktyViGryfyK2F/v6QA9qG', 'NkcS5cn-GxjSAdJlrJi5JYTiH1NtapkQ', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(206, 'nguyenhoainhan', 'nguyenhoainhan@gmail.com', 194, '$2y$10$0YiihqxhZXqye/xmjZ6swOR9cVa3OwDoS5uAy1R3YqKrtgDoJwmSq', 'Sd5v8xBDoLOYtzVoxsb_545moH93TqeD', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(207, 'duonghongnhat', 'duonghongnhat@gmail.com', 195, '$2y$10$G9Hm9r6jarqpIUlEATA8wujRwzmRRVa8PGacA5wGq5iUZtn3L8hEa', 'bxWuB0NMfDHj131G9l-2wXduXCNkSabP', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(208, 'phanthihoangtrinh', 'phanthihoangtrinh@gmail.com', 196, '$2y$10$l1dF5erlBxM7DBYsbAXsT.B33FIokmWMPTeYHS2gMzhG10F8yn71K', 'k6RCuicv4iR2lwsr96ZdqinvlNvHm1eE', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(209, 'tranthinhuquynh', 'tranthinhuquynh@gmail.com', 197, '$2y$10$ha3HRPvrOsFfACKBmRNRJe5r4.OwePqMN1uWSXPoYSx0SDcQheEeS', 'KcLe_eXNZkpYzlmQ0Mmq-iIg54EoNJt-', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(210, 'phamdotrinh', 'phamdotrinh@gmail.com', 198, '$2y$10$9l.f6sBEmAi9ma.eUm0AK.cMHt3YmYzv7TWV.3Y.BmfF8J.rcAEy2', 'fa99VqiY0Q_9uSeTO04HdoO6iOCcGhdB', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(211, 'letamhoangngan', 'letamhoangngan@gmail.com', 199, '$2y$10$d2Ze2.Qa5BG3L53uRxYtQe0goTPe/ih86BBU.59NfxH275Fhigx.q', 'wNryiArMtF5pGCJWlpJ2m_rsbs6FdVPK', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(212, 'buithingocanh', 'buithingocanh@gmail.com', 200, '$2y$10$Ifd230HT5AKqQZA81spd/eU4oWZqe8Y/O.7LnX1U0vKY3BTOMnDvi', 'GJwmSkIAQEotr-C8J2M6_nTbrTGLgA7x', 1626107441, NULL, NULL, '::1', 1626107441, 1626107441, 1, NULL),
(213, 'phamthanhcong', 'phamthanhcong@gmail.com', 201, '$2y$10$CXGGPyJ9h07FrfY4hmTo8eBPPQVOpCxgIt0zPGEBUqDFvYqSgdimy', '9fRG-kXACxGCp4MhboTf__AciUWjV8om', 1626107441, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(214, 'nguyenthingocchi', 'nguyenthingocchi@gmail.com', 202, '$2y$10$rGSPA7D8qlbeEmzeiuXfoOaFRz/meCPPqbctNhgyNaNKKPn8TRXqi', 'oLjdx6ZNgskVwzGqE6BxJR97ciYIB7MH', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(215, 'phamthidiu', 'phamthidiu@gmail.com', 203, '$2y$10$DWCi12eCqeIwBjq9By8AaeGVOSms1lUCgMO5FqsMlz/bCMi/U.IC2', 'PhDQEYIOmrY5ZoDedr2C5hUEvzSFbbSW', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(216, 'tranminhkhanh', 'tranminhkhanh@gmail.com', 204, '$2y$10$rLIk/I.LNqLiIGZvqQ0rNOI7FNCUiFbRpEjhgPQM2ExQy6StmVjjq', 'kYbsGu32kRLSC7BY38HVBNAyW-Tsp5mZ', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(217, 'nguyenngocquynhnhu', 'nguyenngocquynhnhu@gmail.com', 205, '$2y$10$vJyWQ4KP.GqGfdtAfM/75ehB5cgJy.n8bmVSPgrpf8HELdOQxMbe6', 'idIycEAGraFChiiAFC75ayEMsg77eUJu', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(218, 'chethuyphuongthanh', 'chethuyphuongthanh@gmail.com', 206, '$2y$10$Bf/mT1kiHmyzSnpf2E8VievsGxAhGQiKv8JIW3KG//8TUw5VWJW5i', '8hry6QJ-kjpxXNN0ftDvlFSyddz-DbTe', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(219, 'nguyenthivananh', 'nguyenthivananh@gmail.com', 207, '$2y$10$Di1fpCFoZndLJ0OR94VUIOU/D3Eb9Eh5CzdpMjgp0rJSLFPk8OcrC', 'xlqKIv8HSeBRJN_Jm8i5dT76m4Ptezzo', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(220, 'ledaihaiduong', 'ledaihaiduong@gmail.com', 208, '$2y$10$24ZcubZZB2n86L3j0E5hne7tuVpaRuKXBmrhhhUAXBT7onx8Kqxgm', '7vQ6DaW18lvN-HIbPmArvqAgT-5IWGWn', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(221, 'doanthingochoa', 'doanthingochoa@gmail.com', 209, '$2y$10$eLCTL/RFZ7LHzA8Z.PU/FO6.FXDIGSbJE3OsU2gqKpS7/yOja4pWi', 'A01rwUAwE_RmZb8plkB_jbAslsLfbOEq', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(222, 'laminhtri', 'laminhtri@gmail.com', 210, '$2y$10$PGGTP2VK2xU2rayxsXDA0Ohn0rq/V3w6erZpn9.Q9PPJ/0YbeLQKa', 'b8UAsVppv-tHA-EnNIw3VIEjeSuIIYGR', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(223, 'nguyenthiphuongtram', 'nguyenthiphuongtram@gmail.com', 211, '$2y$10$1EtJ5qihwiwE8AUen7kLX.fj9cvcHFps2R.l5OwXLhAxN.Zrf/CKC', 'RdxAL9hL_zc8exnR_ZfTsw43MzUpzVdo', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(224, 'phamthithao', 'phamthithao@gmail.com', 212, '$2y$10$uOjnLgJfeDcQffZFdyfYquWzknPB3Uztj9xNJMB183SRkPQJ5Dt.O', 'nr81lMW9vvU2clv5b-g1k1Pqx3y6zXA5', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(225, 'thanthituoi', 'thanthituoi@gmail.com', 213, '$2y$10$x7HLlk9uWh8rWo/rvL1eDubWgS3opIGKvUwSrTQvREyxLKFJs7qFa', 'LBNs6W1xGMFJC5JRTbkT6CeQqyy2WRZP', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(226, 'nguyenthithuyvi', 'nguyenthithuyvi@gmail.com', 214, '$2y$10$0DqhphE0XdX2Pzb3SPLXcu4Tz55NzqvToqmT4YlSMAClXlF4eNRwi', 'oWgADcpMRWiNNStpTAWwb3GL6NycW88u', 1626107442, NULL, NULL, '::1', 1626107442, 1626107442, 1, NULL),
(227, 'nguyenvanlinh', 'nguyenvanlinh@gmail.com', 215, '$2y$10$lv.KO3p9iLEc7W8UMouHFuNvKbvu6HQBZsKrHXPN5I/.XUToRuZca', 'VXmYx20BzbyKsosqvIcjSdSiFN7w_4PP', 1626107442, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(228, 'nguyenthanhhuan', 'nguyenthanhhuan@gmail.com', 217, '$2y$10$3K8v/WH1Myi0Wkqt9M/FhObSzElUlRTY0VvBrf1NZihSFB8.kYjQq', '_ho76gGIgD9r9lMbdxxXn7_D3AsVcMek', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(229, 'caohoangtrunghiep', 'caohoangtrunghiep@gmail.com', 218, '$2y$10$mKw6KkilU7WxrMp68cmD8.5yr/zbwOabDYD6iTTjbhRqioZKyrhd.', 'zibVYkwYPYVhajoaZW3H5WMCbTn2mydG', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(230, 'phungvanlam', 'phungvanlam@gmail.com', 219, '$2y$10$DvLjzNKq/NcOQ5Qlsn46deX4kq5dARccMUHirdQaThc.zxHuZckKi', 'srtCadl97oe4x_HTVZ0RnE-mPc3o07Q_', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(231, 'phannguyenbaongan', 'phannguyenbaongan@gmail.com', 220, '$2y$10$.UNLDHMZNmXIrkGZj6Ze8uaws5Q/iLDtvKzosEfXT2lOgaN19G7uS', 'nbpp9voWGNWmEFgo9CC9pcZbbPMMjrkL', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(232, 'vyvanquynh', 'vyvanquynh@gmail.com', 221, '$2y$10$CY9YG4gtefRbHk4gSjRFu.4KUwGplR/aCTZ4rv1HkjGzg.dleXIKO', 'at_PkIdx5aNDpujqkYZXCXKi3x2OQtYr', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(233, 'lydinhquyet', 'lydinhquyet@gmail.com', 222, '$2y$10$LImsq/MJiCjsXGCj57MIcOPn9Ast8k8byDmB4K7D9FNduLwnQEHcW', 'XUbrQLXxZvi5QPpZCgkSXXNJnhMUR1Lb', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(234, 'truongvansang', 'truongvansang@gmail.com', 223, '$2y$10$bV9ywpo9vUr2qLSMhW2vl.zFVO65eaQ89KXGvDZs3vSfHegu.AteG', 'LPnh_0Oscu8SrNN0im02dfdRNdzv7yRK', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(235, 'vovanthanh', 'vovanthanh@gmail.com', 224, '$2y$10$8NbbLjtZDewTWfq6mb0.AeM7G5XlbwrdgGEXEgI69.XTuv6fdmqDu', 'P0apTVm-kK0kb5kI2VorcutYRFrK6ccr', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(236, 'lethilantrinh', 'lethilantrinh@gmail.com', 225, '$2y$10$PogvhPIDM8NxZ3qnIsT9JeuKGf.3qvh0d3rIZoJFP2keUuJCAN8j6', 'SDxx-xDJ5nGL4O73nJ9QGhrVnjXvb6dk', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(237, 'nguyenchithanh', 'nguyenchithanh@gmail.com', 226, '$2y$10$CeTvpgrajDg1G4Vdq.2xr.1Q1KEdOf74VvAcMcJ9KYFjTovaLH40u', 'AUkl8gJmFIFmArHioG7z6rPhmWk4Nspl', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(238, 'nguyenvanthang', 'nguyenvanthang@gmail.com', 227, '$2y$10$62rNjdjFJ3QWr1OBUIoVdOJbjGCXXgXNPWSGvEJ5QGIE4CBi7Sz9i', 'RP5PVtIlR16ExkoLJRB0wFSaLA-cu0wO', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(239, 'lequocy', 'lequocy@gmail.com', 228, '$2y$10$1eAsYjyTkD5w62rxuqxVwOPcJ3dTnB469CtmdJtisC/gDeYWOayy2', 'slubnqDrAtkrws6fdbpv32YagRbhBjSE', 1626107443, NULL, NULL, '::1', 1626107443, 1626107443, 1, NULL),
(240, 'hoangducduy', 'hoangducduy@gmail.com', 229, '$2y$10$S3ztEpp7VvS4Lu31dIdHfO9g9j85jtjLQ/kT0PorMCVObzNRjVBAS', '4R9bRwNJWWMQPZK3R1aPbi_1c9sb72Ap', 1626107443, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(241, 'damthanhduc', 'damthanhduc@gmail.com', 230, '$2y$10$1cZpkPL0QfDO60MvNyggfOF/NKdeVrP4FOF9A8KUk1.3JvgJgg15q', '3xxomNsa4APxDO9_ySuE_s5Ilzn4G3D4', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(242, 'levandat', 'levandat@gmail.com', 231, '$2y$10$xCqg/GP8OL7ig4dyhzztXetaYTR/kzCZiF0PJY8VTtdir2Xfdq7QW', 'd3VyEVvy3l4LwNdJxuu6LILpOnYC16xy', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(243, 'nguyenvandat', 'nguyenvandat@gmail.com', 232, '$2y$10$2JkdHtxzAtbxdBjPLx6/Xewz/zLxQeslNajD9vI0rP2/xMeWPYl0.', 'zw3xLXCrCKO4H-LIln9i7mWCVp3kkIy8', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(244, 'nguyenvanhoang', 'nguyenvanhoang@gmail.com', 233, '$2y$10$/gMs7FlaYFZJKZIjKzELY.rITYSsXwUzJrjr6O.ZYAu.GP5O6Fd52', 'vLvqgFmV3lm-nR3Cw8yknVMxtjbrH22F', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL);
INSERT INTO `user` (`id`, `username`, `email`, `info_id`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(245, 'toquochoai', 'toquochoai@gmail.com', 234, '$2y$10$DzpQ4WFT3bMfEmWHpH5Asumm7wteVex2pVkenCOT6YnXY.Wv9KazK', 'A07Tm0C_2UNZ6_3AJOrcO51_yy8msLfR', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(246, 'nguyenngocminh', 'nguyenngocminh@gmail.com', 235, '$2y$10$YTVZ7IjOGNrgVnmD2JUE6.gGsJmQ/eP/8/dTtH9drML9SEa07bENS', '3ShesWJ_VCRqr3JT839B5SvLG2B0I7HW', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(247, 'haphong', 'haphong@gmail.com', 236, '$2y$10$RyGtf5bPtdBaBnZP3bYEh.XrVTrTxKjAcvYpDS5wd6ds/5XjgNiDK', 'hC5_mxYR1g1zFjSTSP0TpwHwCISRHUtw', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(248, 'tydinhbaoanh', 'tydinhbaoanh@gmail.com', 237, '$2y$10$hSznk0zdw7SGDzBqedf0QuovErNKQElbxYXoNmMIZxymmH8ftR/RS', 'rSl7gpuePn8h37h5MxF0SrXxVRqWNqgs', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(249, 'nguyenminhanh', 'nguyenminhanh@gmail.com', 238, '$2y$10$2BqRoQEF/Fjt81rj0iQ1IefU0hBoCApEHjY8SY79RqwchIivFIxjm', 'u3DY0i-ZFlAru94448YjalAyT7malB1N', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(250, 'maivancuong', 'maivancuong@gmail.com', 239, '$2y$10$qwXMGaeY2dP5yPTRDynE6O6IORmSfdQWsXTPRQuSO3quUIm6kFp9G', 'Ql1_n9SYfSvsy_MtGDI9_dxcP7mjASqu', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(251, 'lehoangthuan', 'lehoangthuan@gmail.com', 240, '$2y$10$.E1gZH0s2gcNk.icRKcSaue.jhKqeAPDYVRB.3JJD0vLIR2LCtJpu', 'mrQw17Bl8aJ_ZtSA8NunNkUBBniwtM5e', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(252, 'phamhaido', 'phamhaido@gmail.com', 241, '$2y$10$.099Mbl1RbaFi8otLiD.Fuu1Cnjjrshvc9Op53FLxRMKKxr0Fhyey', 'hBg6YCYE5Bjs5goyvMlhyOQfUixnQW_k', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(253, 'nguyentrungnghia', 'nguyentrungnghia@gmail.com', 242, '$2y$10$7aUTm0FXlnFxVfJea3YRIemyijxWXgF0lIgatOlfDWCNO28cfafA.', 'PRxkWnVv3IHRVcYUu81k9yfD-WdfBz-H', 1626107444, NULL, NULL, '::1', 1626107444, 1626107444, 1, NULL),
(254, 'nguyentanphuong', 'nguyentanphuong@gmail.com', 243, '$2y$10$0Qe.cOQYS1GCwQ3aQLp9Je9gOAdVF2kfDlacr8CKCHpS6w.d7LK0G', 'QnURllhxt7I3y9Gc9EBXFcrX-qStd9Rb', 1626107444, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(255, 'phamvanquang', 'phamvanquang@gmail.com', 244, '$2y$10$.JMHSOHIrajPMneGgJx4i.UetGJMpmiqbEci1Mmfpdjj7s1uKNdki', 'MFxCFKx7dgqnQ0tB2aIakRg7X5aGqJDH', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(256, 'nguyendinhthanh', 'nguyendinhthanh@gmail.com', 245, '$2y$10$IieTr/sBz0h4fqn6ZSpWZ.pKTqeAx3/IcYu1leebhmHpHUV92hKkC', 'BylrEUD7v5yC4qIeMMeCU_cMvyr-dA2B', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(257, 'levinh', 'levinh@gmail.com', 246, '$2y$10$D7bNYcaOWZKIorbT6UNNmeOcOPxczsSYeCQhPdXayyt18SpOJf3pG', 'szwr6K52l-gilkYrbUgrT_PzdPUo_jze', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(258, 'nguyendinhvan', 'nguyendinhvan@gmail.com', 247, '$2y$10$iwAMEkqIdTOQx.LxERphc.Wf7Q.Jm6x4luz/Ojyic4eW2FOT8YjH6', '39ai49v4gfBtOPkcpe3JmmZ876LIXfNl', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(259, 'phanhuynhhoangvu', 'phanhuynhhoangvu@gmail.com', 248, '$2y$10$g5Vq67ThY4IhxTXkPncIKek4rRAbxFB2aB4khaMGFCSnhTNiwT9Je', 'L1__Pt9W-m7utS3kkw--I67imbTiA0Lm', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(260, 'nguyenduygiap', 'nguyenduygiap@gmail.com', 249, '$2y$10$.4Ox7NbEoc/So2i3oRZNvOxMI7l13xm705UePYZAut0vm7nj6qVQK', 'WDIzfBviFjDOz2QveiO4-5_K1dag78j5', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(261, 'nguyenthienphuc', 'nguyenthienphuc@gmail.com', 250, '$2y$10$xjiWMnvSdwAffsHf/QsauukFh90txLuP8bp5m/udZrLki5MRCPkce', 'eoehfjEGCZar8oA2fvmsBSJYFZZTdK6a', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(262, 'lethithuthuy', 'lethithuthuy@gmail.com', 251, '$2y$10$unm1G0oXQRjDq.MCLrweN.KmGK.32dbYBEHqzleAgSgCNQFzOc0vu', 'jLa-WlB0vMdZmJnXrFobmlCYbU6mF66x', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(263, 'tranvantuanhung', 'tranvantuanhung@gmail.com', 252, '$2y$10$5Uyj6zdLxCVvzCbolRbJi.8VXyeC9FArQZN6GnKW9FXLpfHPPDdbO', '-RVfUIAqvO2QE3_p_Y6Za5fpJ97Bvkk0', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(264, 'maihuuluc', 'maihuuluc@gmail.com', 253, '$2y$10$kGOf97zfs/LFuMA1yeYsVOKPMfYARdxQflPz.fAc1t4nOy6hvyLDC', 'Y-vB94Heelql0NlC1qJ9Fkd141UEo7uT', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(265, 'lehongthaovy', 'lehongthaovy@gmail.com', 254, '$2y$10$uhur.d36noEzfVVjRxaFqO6KPhyvd65MNdTVFnMcbHwCQrUE9xBT2', '9QnThLmLndjbW4NquWr7kekny_mbq7Nf', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(266, 'thaithivy', 'thaithivy@gmail.com', 255, '$2y$10$vS2bZlQ0WIN7.yWiIb8ZSuPCQu3ySsdtpu3Ry0yzggsFl3hALh5vy', 'ypX1-LN-vourhgdBBNC8twAvptcQMUhK', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(267, 'yphuocnie', 'yphuocnie@gmail.com', 256, '$2y$10$jzodRgE8.dI4fw2Wt4I8peS8ghgz0JU1WQpQV8kF6QRxN7DHA.qIy', 'Qp6QbrSzmmpazqdLQ4Rtl-81m2IvWyKZ', 1626107445, NULL, NULL, '::1', 1626107445, 1626107445, 1, NULL),
(268, 'tranvankhuong', 'tranvankhuong@gmail.com', 258, '$2y$10$6PJW4cM5KxZC1E.aQOlZN.rnO8UBUQybZnt6QxSbdUa0V8jOlKnzG', 'uB_Dg0-Ix3O3NKdtQsGBZw2K1V2ptN4R', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(269, 'phuonghuuphuonglinh', 'phuonghuuphuonglinh@gmail.com', 259, '$2y$10$5/c857JJpNseTZfn6bBty.b59IdbsHiWu7juaCXe2pXT63jXhqf8q', '8qFE5VJ07pOKDEMpCnCBOr3QGgX-B9eM', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(270, 'nguyendatlam', 'nguyendatlam@gmail.com', 260, '$2y$10$IZ6HGxzEityiXphru7842ueG6wV/yZhlSGmhJi5REN3fTKFcK/tVW', 'FN-WHc3FPF6U-tf4YJoN_Q0ruSC6Chqs', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(271, 'mamai', 'mamai@gmail.com', 261, '$2y$10$0VtKQ9W7LINd7eCWHKkqcuyp/V7u0Ainnir7fmIPXGjQCZI/g/voy', 'l8qabh02CPPINfljRzAh9oDF3cCavSPf', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(272, 'havanthan', 'havanthan@gmail.com', 262, '$2y$10$SoeNyeF7rUycjObyEqkq5uTcu8qzj6IM4Jmc6bmI0iN2U0TVk0f4i', '_HWeaAfGcMbQeHTuLndUQeRFEpC3xhXZ', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(273, 'doxuantrung', 'doxuantrung@gmail.com', 263, '$2y$10$JKegyeh.1b1W4RwAiHtkieQtvBVW0b666rNBTDili8XlQjRMXCLHq', 'lKYaC8L19MW5pWDEDrSIBKJrJRCLdRJr', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(274, 'dinhvanlinh', 'dinhvanlinh@gmail.com', 264, '$2y$10$w2d9bRyHE8v8zhTWjKb8gO3CYwBl5AEEviuPpH0CQtVJAKbmcHE9S', '0w9rsjvpXT3cSulQcvUdRzSmOk99Sfi4', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(275, 'dinhthitiet', 'dinhthitiet@gmail.com', 265, '$2y$10$LW8Nd/NlQ8JlMTLFJn3i.uQNzjyX5lzI30h9Ek7umd7s.RC9Gkfa6', 'HJlvLnIAhCV8IngaC33_F6WjdAGDVyd-', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(276, 'bevandan', 'bevandan@gmail.com', 266, '$2y$10$yTIaMZ5Vjlo296v3qnv7J.ENuTZwNHsksnj4F7Tcl0.3dJuzw5WXe', 'kOg3490RqMJ6hwPXV7zpmk3zfo4YNter', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(277, 'nongvannghiem', 'nongvannghiem@gmail.com', 268, '$2y$10$YCnDHifOYPg9af5bNQhTIe92oBKVyOyuWmNob0FfyJ9hcAK1T6YmG', 'jKbzjKodoWACca8Ijk1nKga31mTR7_AC', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(278, 'hodatquy', 'hodatquy@gmail.com', 269, '$2y$10$HGLFLIxGSaS0uT6YGeI6XuNQhT00o9IHSNjmzedh6QXh6EGD7nD42', 'hX3vsch04dEPxnWFIfF2QKuJ9frlGHHr', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(279, 'mavantiep', 'mavantiep@gmail.com', 270, '$2y$10$n/GVADFebHl50jneF6UKo.zZOg1cpDjlzBbbEORNTe1YMwEV/0.se', 'FOM_YanfVw46Nb-qN_swwy0-Rcs4JZbb', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(280, 'nguyentuthanh', 'nguyentuthanh@gmail.com', 271, '$2y$10$4sVziWRr4EailhPXv65utOO.PEu4Eg2TXbbEnIDFKP7EL/kwKfYMS', 'c6yJpCycUAQfhXq5IpUgGKVnvmWDloUN', 1626107446, NULL, NULL, '::1', 1626107446, 1626107446, 1, NULL),
(281, 'tranthithanhthuy', 'tranthithanhthuy@gmail.com', 272, '$2y$10$ONiSyds89nGh5IX.Th3ZteE8iou5/VWH3dBg4hli4zFk3FR7kWlkW', 'E86vHP7y5rJVLoZWlEmS9v_vygjyrj1V', 1626107446, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(282, 'bonahriatora', 'bonahriatora@gmail.com', 273, '$2y$10$4SifW2jX92TOL4GwIbMvX.8S7yk7T9rEYtwDhoOtoAhcQj1.3WCHW', 'vdgZutNW_RsuFzNAghFIjAbs7aEgk9ej', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(283, 'hoangthianh', 'hoangthianh@gmail.com', 274, '$2y$10$btkO0vQ1AmdTFotpIHwoUechmkCrnaXizXmh.9wG1tvuEIbFMdQ8.', 'xGlaK3YGrp5Bt4AU_BUTvwOoZTKbio8m', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(284, 'vuhuycuong', 'vuhuycuong@gmail.com', 275, '$2y$10$ODw/nsFtS8tA3UreY4gAOuZl6yCPqmBd.kfDLlKIlXkE54WUEYSGm', '9j8XYEFq5hHPbAW99Yk20yrqb_rSYjzJ', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(285, 'letuchinh', 'letuchinh@gmail.com', 276, '$2y$10$EWXDBgIbEf8Tls9VVRRlzOFRK7F4YsqSUWgGhYvkWcjr0NvKXWFVK', 'COV_wSQYN44xm_mTSb9pgBx3Lcq3fKmH', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(286, 'nguyenvandung', 'nguyenvandung@gmail.com', 277, '$2y$10$M9IQ1Sbf3rnK5KrgmZSM2eN1ro9zzXwZGG.EJ7ROEibdOUcKuaYDC', 'VvGxECV7NjkjCoemcMOHvG34QNGdBoG4', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(287, 'nongvandien', 'nongvandien@gmail.com', 279, '$2y$10$CpNSQk2qCr/AC8DS5yO75urGcGjeEz4Q0Vokz1goDKZAZ9Ak33FbO', '4v79h0A_4VkSTG2_c2J2p_2-I5CtXTRC', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(288, 'nguyenphikhanh', 'nguyenphikhanh@gmail.com', 280, '$2y$10$7S4QTP3B4ANk8kwybM0SJe6RWUb2hm/Ra7yV4c8bQ9ORFGckyzvaW', 'o0_4dHad7FVr0N41hqHNyRqd6vr4Qoyq', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(289, 'nguyenhoanganhkhoa', 'nguyenhoanganhkhoa@gmail.com', 281, '$2y$10$LAZPti1WL8quT2TQKdjLV.40OSpW8xugUQtDX10s9tG.IYzF2XDvi', 'bvfWbZ7v0NTLoUCTAXv4XAFdZGAopY1o', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(290, 'nguyenngoclan', 'nguyenngoclan@gmail.com', 282, '$2y$10$nsQvCtjQLuqPIbJ6eAuxtuzkzZLiAlHXWJSlJlrKz21GnqpVhNDTy', '6o6QvTX56HIYHnHr6C7i1gil0LWos640', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(291, 'caothingan', 'caothingan@gmail.com', 283, '$2y$10$NoNpP7S4.dskLkQfvUARc.kxT096iwaAOO5Ptu80boTIdJMmqK662', 'EG-giGu-HpOkE_40oDMfA_WYV0QKf4gy', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(292, 'dinhynhung', 'dinhynhung@gmail.com', 284, '$2y$10$dBQC0iiXdQTCwHCNn5NM2O93tQIBfU5sm73Op6aH4GwZ9PSwLEgfS', '4_c8OPfia_OOi7UpJMKf0x2LmZDOZqT6', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(293, 'ytrongnie', 'ytrongnie@gmail.com', 285, '$2y$10$gK5l9P4A/L/0iIU/XxAgiO4Mo2CfLAP.laoASls4YJycVjfLoQXe6', '9r8RRQpSfT4ybIrS8YQDEyNW-g94a4io', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(294, 'nguyenvanphuc', 'nguyenvanphuc@gmail.com', 286, '$2y$10$gmSqm4ZFQLMM99sbHyJneuBi4ePmVTzvWjwX7WWztREkF1PUqmHxy', '4WTDdEll7z-udcyLQbcp1cuB5ZIQyCoU', 1626107447, NULL, NULL, '::1', 1626107447, 1626107447, 1, NULL),
(295, 'nguyenvanphuoc', 'nguyenvanphuoc@gmail.com', 287, '$2y$10$o7S.Aj0SZKSOm4aX5/QXMuDtf/OU39tOQns2syGDZgbJzuAV4fbae', '0bOGxZeCwtm6Jdb_zEyhJiG_Ix00tNeR', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(296, 'phamthanhson', 'phamthanhson@gmail.com', 288, '$2y$10$ZlaFMynUHSohW/CocsOQ3eWUeREPaBv3BQ0rJk8vappGm.woPeDLW', 'Xp3z9-UyZmpBEjSHOAVCPcOP6ygfa9cQ', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(297, 'daoduysang', 'daoduysang@gmail.com', 289, '$2y$10$.itoQFdeBLWufamjicGQ1O4FU5TR91uegknAwg3GtQUqwCSHYGAaS', 'raFErJgV2Surz2FXZ5k0btr_Gefr7TQq', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(298, 'vuthithao', 'vuthithao@gmail.com', 290, '$2y$10$bK5zwt.WP8gPb1.Wkk1h4OeP/PJZzdKfIijM6YLuJo83K8M37cVU.', 'vBiewK3O0qFsB8auz6qcSX4O8SGp8-r1', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(299, 'nguyenthihoaithuong', 'nguyenthihoaithuong@gmail.com', 291, '$2y$10$cymLtgYBIISbxM5r9gRlgOuVa70a1tXnOtzXHc6d75/BNMpHZQK9S', '_wfT9vprWP0D9gultdrh8hkPKMe-X2bU', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(300, 'lienghothathanh', 'lienghothathanh@gmail.com', 292, '$2y$10$Y1d9IR7.1b8AphQ2YJfBcuX012qbyBc5Rb4jcPefBAklffuZU7MEe', 'VwJvjN2LLgkauW3mAePyGS7_RczJA_8h', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(301, 'nguyenhuynhphuocthuan', 'nguyenhuynhphuocthuan@gmail.com', 293, '$2y$10$b8HdyIsrTT5xWxdNcAWsxuqSO3oT3tbv0hl.wCJIYh2e9tXkjKgH2', 'Z22vxc3p_My2VHDNvp1wcTVPkW0qjLgE', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(302, 'nguyenthimyvui', 'nguyenthimyvui@gmail.com', 294, '$2y$10$nZwBDIRxmGjNDiwqS8BQ/.Jg/bygAe79oTPDUUe0mx24QxhRw3ILG', 'qA750UEO8dDAl8cB9FPinWeekb3bzgz5', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(303, 'nguyenkiencuong', 'nguyenkiencuong@gmail.com', 296, '$2y$10$UHPbmzSPz2acLsZJ7RdD6uO0Nt454Jx41WWmWW1OlHB2yox9ej4SW', 's985paWGjVrHOEdN1FHxhJDmaaSxZYWJ', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(304, 'phantrongdai', 'phantrongdai@gmail.com', 297, '$2y$10$cUpMC1w9ujUuDkuZbHlRAeNj4U6JVa.D9nLa6iOsnJCkkGDCmMEm6', 'XBFuelbzVoofRbnivhb0mkodyXkmVdJt', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(305, 'truongthihien', 'truongthihien@gmail.com', 298, '$2y$10$KJm.v.DZ8J6pJSHl5KoQI.Z/40ieIuWC.jv/.kGMRylHMxyrhLY2C', 'OK22aUOyTVB6vOVaijpt9JGq2Ina-BL-', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(306, 'lenhubahai', 'lenhubahai@gmail.com', 299, '$2y$10$S5PCxQlHuPGO.EiEQkvmxOm.d5Kq0UoIA92NiTQf3WODmaFsHYpwK', '97dlcNRBOdkOtAB1Xjog0S5MFaJiZBKi', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(307, 'phamthihoa', 'phamthihoa@gmail.com', 300, '$2y$10$kvv1jaBXtisJfxJE6TkhmODLYYtZ.LTTXm3qwDW3MG5PIzENuUuvy', 'Zud7AydsqEHZbcYikM2K668WUG8r5RkR', 1626107448, NULL, NULL, '::1', 1626107448, 1626107448, 1, NULL),
(308, 'nguyenthithuhuong', 'nguyenthithuhuong@gmail.com', 301, '$2y$10$oFoZZ6a7d2Mop0eoKX51EOWy74lRs/7UqT1sIrFvHUGqOqugHXBdu', 'JIJnyCPWb-NIsTgsL5REcw77I1FYv-6O', 1626107448, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(309, 'phamthihuyen', 'phamthihuyen@gmail.com', 302, '$2y$10$1Flypnb5ajOS6uF38xdB2.zS7olAFLRjvbi97xugljEiKL.XoYgnW', 'zA2Ip9BAH96_GIItlWJAYyaF9gzckugy', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(310, 'hoangvankien', 'hoangvankien@gmail.com', 303, '$2y$10$SkTGQL.taBRb5lAQGbrYauELqaUoh.k3HLX1QaBQM0k3FPRwsszu6', '069igVYpwsjgWuGstovOtlm6kzbpRKvU', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(311, 'dongminhly', 'dongminhly@gmail.com', 304, '$2y$10$51XyYwsyyFj/hDaPJBrf0OETntHgG1pMJt5vX8lYsrqMwaAtitkbO', 'N07_076wyOxbRS2ztRnyRNyjdo5MIYYD', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(312, 'trankhanhlinh', 'trankhanhlinh@gmail.com', 305, '$2y$10$M6Z4832J5DuQkfBN8gkYI.4pxxjC9aRmQIktHzPA8EKhz7v7nta4a', 'jSvdK_H5GUvlWEUjK1LlIJ-Kb9ZTPESK', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(313, 'lanhvanmanh', 'lanhvanmanh@gmail.com', 306, '$2y$10$ZgvXpLYtpwyt9AKOGSW0juwSZrE5aeuenyqap55.I7xTzgpae6N4q', 'fX1YLNS86EVruiWqfPClbTMW_gMvc1Gv', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(314, 'nguyenthinhung', 'nguyenthinhung@gmail.com', 307, '$2y$10$1HDE9e1ewGJ1I4biqrkVA.tXHWj7GhcZ2AEffGLTcMLn9sMZMCqPu', 'Y8WZdDLxkb0d6pqYs8-47_CUuhcEqd01', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(315, 'dangthicamnhung', 'dangthicamnhung@gmail.com', 308, '$2y$10$U7.Y92QqQi8fPCfENMtH1uN34DTnj4lydJDp0Vg5FaEyNItW/oKJa', 'UfiKmkoJx7hpl9UylwoG3CZELoUXKd3f', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(316, 'kanhung', 'kanhung@gmail.com', 309, '$2y$10$rginJDkJephor2MMYviCc.AjPvuRawAOyZ8FcdfmlXJ88FEtfIVe.', 'liZsQSW8spt_ApiAmlo8-M_rTNW5tbw_', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(317, 'hoangthunguyet', 'hoangthunguyet@gmail.com', 310, '$2y$10$fdp1LbgoCEoTg5cUbiYrd.O1VD9LiDKkB8AJcKyM0Oik9Sao2Sg/y', '6gvb0EEuXoFC0D7h2nVuTSVSLY6W73tF', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(318, 'nguyenthikimphuong', 'nguyenthikimphuong@gmail.com', 311, '$2y$10$/6xUn1DnPPfeBEJ3/lFqC.MnzLkuEM6QQlbSm9RpO9lyhxD4zuGRi', 'yugyN0XEvrz-V7FIMlxnmsm6XmVKmKRU', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(319, 'duongthimongsim', 'duongthimongsim@gmail.com', 312, '$2y$10$WiB5gAEesaeHkYFKyBEGfOrgzMauygm78bYZMY6V9vEU9b/Xo/tXS', '8CROvm7KpKqgMtLOqmAS0J3O8fLXjRvX', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(320, 'hoangtrang', 'hoangtrang@gmail.com', 313, '$2y$10$rAXlwg1skwOUQoFl2CJwOO1v2k4vhx052LqTsnkIRdiPR.q63LdK2', 'x1WePATaXjaryUwK9FW4ICUYK1pCCj3h', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(321, 'vuthihuyentrang', 'vuthihuyentrang@gmail.com', 315, '$2y$10$Ta5Q0OCOxPWbqD94bbP8XuVeAA8Wf3Dq60k1TysWEFeUtwDDCpWtu', '7z5o1x9y_d6pyU2dte6F-PzjA30agg4v', 1626107449, NULL, NULL, '::1', 1626107449, 1626107449, 1, NULL),
(322, 'dotrungthanh', 'dotrungthanh@gmail.com', 317, '$2y$10$iXjbx1HNt45CVbFkQUaMYeTCuurj9gzJeRhc0F9s2QQrY5sjjvBli', 'tAEsI9Md5UtLhq00OQsds5TPmIFCWm5H', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(323, 'vutranthaithanh', 'vutranthaithanh@gmail.com', 318, '$2y$10$0buIgFnHt/DLtq8M0FkPgO/I.ToKCmO8ap94DcdQAGGc2rUPKZ7.e', 'VNwl2R8Z0ohThCYiDB5SQsDqQ25q3oFD', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(324, 'ngonuthanhthanh', 'ngonuthanhthanh@gmail.com', 319, '$2y$10$/fCgGE2bVeMrDdoqwYlkReOTFt15AJQB6n.LXauto.fDhf9InzRze', 'vtTWrBsqc36VbvtKGGp-1rC_7optB3u2', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(325, 'quangnguyenbaovan', 'quangnguyenbaovan@gmail.com', 320, '$2y$10$5N4Y88bA8evADG8skKrmAexEs.YkjxHkX2GYHHOB1RBA8/wWmbFSG', 'PqVVNwtksCdX43qzyRhBorNegdJRB0Lk', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(326, 'luunguyenthanhtin', 'luunguyenthanhtin@gmail.com', 321, '$2y$10$g8SRjoyUUIfFP5zdnDpjzO7WZKntIoIpZHLO4be94kNy3taT70RUq', '7LUE89iPZJiyQnQg-ARiin0Fd_VuSpKG', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(327, 'naianh', 'naianh@gmail.com', 322, '$2y$10$7Gf8fIcrmXy7LrvObuQDW.IjXYN2jatiCgQ6QH9YBE0hdg8NLnvv2', 'XtMu7kz2TmpmTOQnfq1UtXaqpCHK-oNT', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(328, 'tranthinhung', 'tranthinhung@gmail.com', 323, '$2y$10$YE3/lyE/Rpd/NdwwDNyKGujdII.o71Ht917IN/akNVWk2LKrX8TXO', '12dDbgKFXpHzGyN8dMj6YdhfXnmlxdVJ', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(329, 'nguyenthiquynhnhu', 'nguyenthiquynhnhu@gmail.com', 324, '$2y$10$km/49Tz7QgWwsdpBO0BJvOL1zrIu44/8ueunrNcGbaPuwjniTWnJW', 'umBlwC9H9aJiJAVipjJcpQCPzOyT0PQO', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(330, 'dothuyvi', 'dothuyvi@gmail.com', 325, '$2y$10$iGtsPjLDr777r23c6eMECe9.a0nKykX5e4AvWuTAITy6kzrqK1U4a', '7Jko7lkPHlIq8M9ByWUJyE3BT2o7d4SW', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(331, 'lamthithuyvan', 'lamthithuyvan@gmail.com', 326, '$2y$10$ra1VjywypT09Ba3d9/3m1egb9gvERLsHpAR9bHflnpYqKtrJhEEEq', 'Bot4uMQjFdwhx2Nkes3u8fhgMeJQLPLW', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(332, 'suthikimdan', 'suthikimdan@gmail.com', 327, '$2y$10$rNXGXNm8cSDDMIn4ymJ1q.W4yBMgOgpygbsTdORHb2lA/Ya3JKK2K', 'o-yIEuc7jHgVEf9S1bOpPwuiDl7x0zzd', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(333, 'tranthimyduyen', 'tranthimyduyen@gmail.com', 328, '$2y$10$iGJsPyhDNspr94YTdSXY2uYTuT1St47nyPHrOMny5iyCQJQ5L1Jiq', 's_mqF3CVmgE0ICkgBIIW87PTLGALZ4nz', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(334, 'truongthiminhhieu', 'truongthiminhhieu@gmail.com', 329, '$2y$10$6XObOlLBNAZPKfCildJN3.32StI0LJBY53UKRFcv.9xIeaxfB1aTq', 'lCe-JCz-CyYGd2YOGGn3tt-3-PbbCsED', 1626107450, NULL, NULL, '::1', 1626107450, 1626107450, 1, NULL),
(335, 'tranlequyen', 'tranlequyen@gmail.com', 331, '$2y$10$mshsuinFwAYsN1GsY0JDM.QQKjPVl3ogX1qVTSi8sr0x8iXu8JN8K', 'iLaeqhY-VdICi1AYkBVM9PzYV7l9t40V', 1626107450, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(336, 'ngothithanhthao', 'ngothithanhthao@gmail.com', 332, '$2y$10$hPoepoVyWLY6JXY1dik1cOYsBpiOczqGFN1Ah6W.1BarJgX7zFPJy', 'niAnwpcZ98ePP0Amfv7vYrKudcJIQVSx', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(337, 'vuongtieuhuyen', 'vuongtieuhuyen@gmail.com', 333, '$2y$10$siRaY14FLp7vAjjdt4PqGOiXld1R91zyx.SC4IygQeXDkKj44BG1S', 'qQwcwYRIuCjxKDSI_uT0HQAA40AUOiG9', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(338, 'nguyenthihuyen', 'nguyenthihuyen@gmail.com', 334, '$2y$10$mHgajjLEG3lVpl1J.CqbiOF2CnCuWQWmNIoyFK1djs9cNKW49FGyu', 'HQdnyddmX_8FZTPmz5mnFAuYucW8y9m7', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(339, 'lethiquynhnhu', 'lethiquynhnhu@gmail.com', 335, '$2y$10$kRRGOI1r7gHf6Zt/P0wPjeDgzn.eaqYkXbLP9/Qp2ysY9.H1NhdJe', 'PDYaqVdK3cEtOVRFFz8wR3RuF3aDchzZ', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(340, 'nguyencongtuan', 'nguyencongtuan@gmail.com', 337, '$2y$10$sgNwUQXBKA94ySRmD7LUB.Z08DFpsz9q8cn4/.6Q1OetMiEOTR/i.', 'cxi2OfyE6k-DSkCeR9oWCdURsIKzJqym', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(341, 'nhamngochuyentran', 'nhamngochuyentran@gmail.com', 338, '$2y$10$A23CVw0XmCtynlrwYkVSoOVOICItCnb2nVYsg6tl1mXvUBFcZ3nuu', '1HrccVEyy-1WoHbWbM0Mg4YZ1JsFlOOC', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(342, 'trannguyenve', 'trannguyenve@gmail.com', 340, '$2y$10$C2mAu2On9CTI.1sh/xB3Ue6f1mI4LwKvD7U7of7qq93OB.Vx3LwrC', '9IWrpZE3cFw_k60zjCOmzUSR4q0XSSnw', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(343, 'caothingocbich', 'caothingocbich@gmail.com', 341, '$2y$10$C8qJywXKAKIpuPpgb92St..eAlS1fJAlCOnZmSJFVrWtSrMIYTrWu', '3AC59GzBB-L7Bfe9WLy2Yk0zTxCZcjPG', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(344, 'phanhothanhhang', 'phanhothanhhang@gmail.com', 342, '$2y$10$m7F7FC6vT8zAqeS8zPe03uXbjPnVGsVnc86mQ2vVg2fbdlnWQdcnK', 'ywSpec8GU3ZpvhgYBZ71kVm1TTW1eE9y', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(345, 'dothithuhuong', 'dothithuhuong@gmail.com', 343, '$2y$10$m00ov9gorJklXn6o2tkNW.4Na9V9AdB.vHwpMMB.XG.AyQaX..p2i', 'vS58H1cMDvm65wD3trcUF67nQo__NAY9', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(346, 'dangthiailien', 'dangthiailien@gmail.com', 344, '$2y$10$veadZ7c.igy1ciP8MOiF3Otz6X7Fv386RfYHUinHqb.3PqPPGCZS6', 'qNFQv346io9cc222V2p_yFNoTBvpMdXc', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(347, 'nguyenthuylinh', 'nguyenthuylinh@gmail.com', 345, '$2y$10$KgUiCwQV9Q7gRk8p45ZEH.DUas0s8P8EYtsewGtuqT7T0i0wPHjvO', '-ChESlMELlvrSYBiVSqc8AxQpjDDTGzZ', 1626107451, NULL, NULL, '::1', 1626107451, 1626107451, 1, NULL),
(348, 'trannguyenyennhi', 'trannguyenyennhi@gmail.com', 346, '$2y$10$0C7SUUwey0et5msRV568IOkMzCrOFB4d/yk0iHWOT.pAEKxFBZ386', 'T70_F5ME4qeOc-wbxIEYrqpvsHwOyNgj', 1626107451, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(349, 'vothithanhtuyen', 'vothithanhtuyen@gmail.com', 347, '$2y$10$rjj3/cZRD0P4ihq7YzHB4OV3SJPaNmg7j0xUvEJMRhbOmFN2E6xoK', '702dKcPbQ1WLNtQCl93mbqkQDN9S-HTX', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(350, 'nguyendaongoctram', 'nguyendaongoctram@gmail.com', 348, '$2y$10$a3Jlc2seI1TXXEN3L/UbAOiLqc6.l3BN/m5R/m4DHUDeqMBvcGy.2', 'D6L6dCzPVaFm0sW_KntH6jZpqd9HjcnF', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(351, 'lengoclanthanh', 'lengoclanthanh@gmail.com', 349, '$2y$10$KzzrL7K2rv.UPHY1hyGW0.ozqdJVRcJMxnCoQx5Ig/u0kBucf4WHe', 'OTNlyJh0Raan8pYTTAvKK55oAjxZBITn', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(352, 'leduongthanhvan', 'leduongthanhvan@gmail.com', 350, '$2y$10$xoVvoqH8AGFnpkM1B6yU6.EAqN4imNSAe.jx3Ae8DypraP15SW60G', 'WfHJe9V-l12eZba-GjdrGcnxWRR4GPSq', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(353, 'truongkhanhdung', 'truongkhanhdung@gmail.com', 351, '$2y$10$6BzmOjewnln1jGLC7.ljRe7clK6zeRZceR1C1R2f0qex1g7tteDw.', 'ARvfQ6i0uAEBroHq0XZUBUg4kZPGadEa', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(354, 'duongthanhhoangmai', 'duongthanhhoangmai@gmail.com', 352, '$2y$10$NVU3NK.a5zUhMRdA4PbWlO8h17VJfq5oWX2eioQ4C3ECyl72kyQie', 'iqFC1h4C9zBnSP_IuI7ui8L1BLzG3Q5P', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(355, 'nguyenlethuythaonhien', 'nguyenlethuythaonhien@gmail.com', 353, '$2y$10$E6daLuRysxVuXBF82SVv7OqhVnAKl2xDAFZBO9Wg15TcJ3wqdTru.', 'PF50jeewAo3BkgTNgfgg93-ofPG_15qO', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(356, 'nguyenlethuyhongngoc', 'nguyenlethuyhongngoc@gmail.com', 354, '$2y$10$GWoyyC2sdiEq4kfRQwz53eAhSn3B4MVpfFEuuIfCdQuZxlxwpU6r2', 'vECDzRvtGra3DFWFkl0QH0Lf0aDcj00H', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(357, 'hoangthimynuong', 'hoangthimynuong@gmail.com', 355, '$2y$10$aaYE84c0UQ8m3XzPddWb3Og13Djpq7bSrrQMI1dnBHBTk02BENQG6', 'tpsMTmKk54WyYNS3xkCntWovUuHiLt9w', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(358, 'huynhtanphong', 'huynhtanphong@gmail.com', 356, '$2y$10$DxIWQoEvg1PGL4N/LPMdUu/dx/ehFjQ7yABRNsFIeoe1mSip1Q6ma', '9Fdi09jdZwGOj5W_F6iUlV3x523lRZfC', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(359, 'jorlongnaihuyen', 'jorlongnaihuyen@gmail.com', 358, '$2y$10$M5nO4UEppXr47GvteyGIkue7ibLW6.CwMOUqsPR1Mq59DLMWTBY3q', 'UYxixYqb4KAiHE-OShfcn6NCtiTehMBP', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(360, 'khanhthitrucmai', 'khanhthitrucmai@gmail.com', 359, '$2y$10$8jb1/yodMea//B9N.E0QVuWM7kD4V1L/X0boigLkCHyLxOQU1jsRK', 'UaPIwnF9rlsZi-bWRMiUKYz3ey8RldjD', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(361, 'lephuongnhi', 'lephuongnhi@gmail.com', 361, '$2y$10$4xDur7xyvOnwePk8HiEF8eEcHM7hA/ekZgyO3sRtBtR/am0grSKPO', 'EiM8uZrPIkI-6pgiw3t-o3BsntRabL2y', 1626107452, NULL, NULL, '::1', 1626107452, 1626107452, 1, NULL),
(362, 'tranthanhthu', 'tranthanhthu@gmail.com', 362, '$2y$10$Jo4Mi7EA1p0XsVDSDO5QIu0cmNXHSZsUFnaUlUiTmIhjE8TSUZ97a', 'MKoAYbKnmLXEy2ENW2NuNtopDeC7dvYF', 1626107452, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(363, 'letanquoctan', 'letanquoctan@gmail.com', 363, '$2y$10$rz0MPvdf2giELTOQnIU.lu2vsx92ph/mUPJOOj13cNYVEZIZB56Ua', 'LTIcUi0fZs93orqaMCKInp1cOtpwAowA', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(364, 'phamngocthaouyen', 'phamngocthaouyen@gmail.com', 364, '$2y$10$nyo48/xpuBgbRRjp6rce1OnYlg3btb.8VIIXcioE8r9IQffKXk76i', 'dwqVcACVoVPRuwQNx9cWCenP5sqdzUKa', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(365, 'lehuynhthaibao', 'lehuynhthaibao@gmail.com', 365, '$2y$10$KBTsRfjzDbnxAb8m/48wkupSaqEaRPqsq8uvzy9IbnVX3TOMXsJHy', '1FzDB4vjTcJQzRMWPFrwwZuxwnVp2tyf', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(366, 'maquocbao', 'maquocbao@gmail.com', 366, '$2y$10$rGrVyR5TwuQv8Z4slRzT4eiANCfkvLmzVwjM1CIdNFprhVwT1HbSm', '75QQwlLkV9qZbmMdoR698uw4MovPPor2', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(367, 'tranduchiep', 'tranduchiep@gmail.com', 367, '$2y$10$pJruNrMqs6GSIpyOQQHG4e7oOIRvkRFsVt2H6J9zO5pL1evKFPYyq', 'D1spKxejT32hbp_Q5uTtPC7wyidftU1e', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(368, 'trinhhungphong', 'trinhhungphong@gmail.com', 368, '$2y$10$RjLQ5VoKEW.N4RY7mWCEMOr1V1wuHq8Pian1u0R4Ca8TK59NkE3kG', 'L9RKmsHMJldn6vpvQ6-QMXnzPV4N3k4C', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(369, 'nguyenminhquang', 'nguyenminhquang@gmail.com', 369, '$2y$10$D5YA2YALXyuaY1.GTwAsUuKPv4xOTI6mQPLtUISvTR5YuQdmJqTT2', 'T08dMFOrlL9ofWFPxcQDAJBSEL0GADCD', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(370, 'vothithuhang', 'vothithuhang@gmail.com', 370, '$2y$10$A6tZjF.3U6HOd03KdbEj.upoTrLlty/E3LxBoz907ilengUwwb1Pq', 'Ds9VuzXwojx4JYB_4jAnTkeenPcxGRZB', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(371, 'lethibichloan', 'lethibichloan@gmail.com', 371, '$2y$10$vdPqNHFRL2uyDd9QwLZLW.vVCosRWU.dSvOApxR9nquo65SD2DMR2', 'dnMbBXwo2j01Jf1rZXAxwZWWo-YLHZJY', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(372, 'nguyenductan', 'nguyenductan@gmail.com', 372, '$2y$10$u5YLakWizZrvj7de0P5UnOFOHBZiGnOR16ugKxM2wEJ7rOnnmwgG6', 'VsiQtGIVYmvh6fWrYJFpTkR6aIR6QYw6', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(373, 'hamanhhao', 'hamanhhao@gmail.com', 373, '$2y$10$tDChSQONM7FfL0nmdIdhieKsL5/r/STO0.2CiRP2llyLWIacIrf5q', '0c438A0ht4fR8NEY1x24Ln2opSZK2u2_', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(374, 'pangtingkhuin', 'pangtingkhuin@gmail.com', 374, '$2y$10$N74dz/LCxt5V1XxppKqK3.2PQKcLCfPcTJkVhNKX20Jl5.SkoDpqy', 'qpfs3-pwSU5_dj_LykmRtkoLRiB1gySL', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(375, 'volyhung', 'volyhung@gmail.com', 375, '$2y$10$x2kGcV4UJZoQl4gvabo1/u6s2RP4bErZiJd9sr70Sgy7XPptM7ZF6', 'Vafv0nBP2Wdljm_APSujTn5Fk6h3T9Ew', 1626107453, NULL, NULL, '::1', 1626107453, 1626107453, 1, NULL),
(376, 'nguyenthihoai', 'nguyenthihoai@gmail.com', 376, '$2y$10$5BFprrYpqRmx0Pu/hfw1ROo1QWhfkVjEs6f94ffdJHUkNqCqHngbG', '-vmOMU04o0r5_Gao3MLb8WY6XnwRnlK3', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(377, 'nguyenthimai', 'nguyenthimai@gmail.com', 377, '$2y$10$JoAfdP0ZkjmMy7.4mmShJ.m4fpagRbqbmjPQa7.Dw0.FDozAD21nC', 'QmROFj_ZsrYbtRnnlnu-_nN-A0XhJgOH', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(378, 'nguyenthianhnguyet', 'nguyenthianhnguyet@gmail.com', 378, '$2y$10$UlVUakTJZbyQEUguHJ2aYOKYY5TF00suMOfG6UfgF9XChd6YSoXW.', 'cLxRFOpuE6_fBoLJHTMkaYphIRsHoq75', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(379, 'doanthisoa', 'doanthisoa@gmail.com', 379, '$2y$10$BSTJrPNBUs7eYEat680.Oe5Hhcnq/AkWOYILO3QL.K7sWuPm/3MEa', 'Qkhmbd_SNRk3QoZO81c85UNTwzoU7HFC', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(380, 'vuonganhthu', 'vuonganhthu@gmail.com', 380, '$2y$10$VKuJulhVIrwypUIk5qOa8eEkoWEr7frYGWWHQMAyADziGvPAB/ADu', 'ygHC_dZAJHTW9MhDyoIQcaJYQK5oBJSK', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(381, 'phannguyentamtrang', 'phannguyentamtrang@gmail.com', 381, '$2y$10$ZVR0SsVVNmPU/vLDP28bs.qoWwCPr731Y9cyTlX//QaIKpy/NEdyG', '7bVGQrogRWfzigGoItO9nEuQ4ZHz9EjO', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(382, 'nguyenthihongnhung', 'nguyenthihongnhung@gmail.com', 382, '$2y$10$e.6niSxADOaYfVZuU/y3HOrxV0IjoRp5M52ilC3mfGdjFN81H91mq', '2kqV6DAVFwmetagVyye7gEsBVW4Krdvs', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(383, 'hotantoan', 'hotantoan@gmail.com', 383, '$2y$10$IqJfJm/QJsHxlK33ZequousNPJloWQ2SQh2GLJ8x41BZKWi7DTFzK', 'QF67MvWQ8UhlL9_0deAZVA-2lSOhrjBB', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(384, 'lenguyentrongnghia', 'lenguyentrongnghia@gmail.com', 384, '$2y$10$2jKpmLYWNDwbuAkcFaFSYeSovywBPt.Br2VGxY6/DmHzfc8EJnNGi', '_V0AxTjfYKzWp19Vw-u3JIPK0N8YkQJ9', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(385, 'hothilananh', 'hothilananh@gmail.com', 385, '$2y$10$.gngY9zOX/qAUHLS3pGDqOvz.sWkOuVUpgL2qcfoTdFdZIa/3zJLa', 'W2Q8eucpVXRUaqUtxurtMN0qe31_hOK_', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(386, 'caothianh', 'caothianh@gmail.com', 386, '$2y$10$fVP5Vb9nxsDkfIcgfaAbQOHifdkgCQyv6Mi1hN.Q8CBT8a6/mYxRq', 'ZN9SuKCi9Rr66MaOa0GkgS5VpZHEuVv7', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(387, 'nguyenluongbang', 'nguyenluongbang@gmail.com', 387, '$2y$10$dz/aVdgvirh1HdNUsF6FieCElKVOcZIjgdQ4zFazOTIbYqB0hQBva', 'w4ZOlT93khHBEg5KguuEzVkrZH70GiDL', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(388, 'truongcongchinh', 'truongcongchinh@gmail.com', 388, '$2y$10$zgZQ2WMMNuqWDbjiA1DIKOu2l/kMrAuhYUSjRHt4Da6ttCC8W/1AS', 'kPaJfoAeUZnQSW0prG8gWFkmuXFM9Sk-', 1626107454, NULL, NULL, '::1', 1626107454, 1626107454, 1, NULL),
(389, 'nguyenbaduong', 'nguyenbaduong@gmail.com', 389, '$2y$10$i0NYp9D0Pby0SAkjP1IhG.D1l592M0TvYI5QtDTwPYfnjP51iiXgG', '0gqbZL-elJ2UhIz0mXpWGSIRExIQtycj', 1626107454, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(390, 'phamnguyenthaiduy', 'phamnguyenthaiduy@gmail.com', 390, '$2y$10$A6OzkL.wHX4KZ3Cxnr3W6uNIHDl5Pob8m1vYvzWbNEPXTqw0oIf7K', 'aQR7nD7fJ4TLzNdP0B9vKARYEYbhZd94', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(391, 'nguyenchiduc', 'nguyenchiduc@gmail.com', 391, '$2y$10$nWLonQeZKM41UCMSqMy32OoD2NnMrYyQQwlGWVCZEVSJXaERpL3gS', '02_HQ5ey44fGClk0eYhLPS0fpD-mvrVJ', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(392, 'nguyenthihanh', 'nguyenthihanh@gmail.com', 393, '$2y$10$iAw6kXmsK7GAzDBb6QnZNu0SuyZ3Oac1uT70ZZgiZc3PdlAhpwyj2', 'bxRpvKDKn_6DL6jsLa8-SUd--CGaB7bf', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(393, 'nguyenthanhkhan', 'nguyenthanhkhan@gmail.com', 394, '$2y$10$I.hYomHw..GlhpRKYoeYOOm0gcXSrseKXHsnB9CxlMODCFzwNpqcO', 'hdlsBRidTd-cwwnK-6cYAOJijF3Jd2h_', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(394, 'nguyenthilinh', 'nguyenthilinh@gmail.com', 395, '$2y$10$MMlKC4DAlSpJtxR2rLw/hOob4pF9UW3HHLF9h.5sMVnm5cirQWAj.', 'hDOu-vanK39AuQlpmnqwVDhQga36ZG8g', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(395, 'ngothiphuong', 'ngothiphuong@gmail.com', 396, '$2y$10$TPJOB.IvllpZf9VcGJ/reuatXBjKtxZrYvouhh6tRrMzW29tgGcem', 'SpZNY2WrgJsb6mOmkRS1tjt12TOCE3xt', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(396, 'tranminhphuong', 'tranminhphuong@gmail.com', 397, '$2y$10$WX6BI82kL0551W9bBWGtz.e9eoMtqv5dFUThCVHtT/USSS/ZZ0sX6', 'vUmBvnnJ-ecDWSO0bQRg8tWHsaSx3KsE', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(397, 'vybichphuong', 'vybichphuong@gmail.com', 398, '$2y$10$vpJFKKLRzQvFBaUYICb3XONm46na0n05luuAYbpFQZzUOKSpaRkYy', 'cjXVhbsBQ_w-BzpBzlIMloKTct2oM8sc', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(398, 'dinhdinhtuyetsang', 'dinhdinhtuyetsang@gmail.com', 399, '$2y$10$qXxBWcnqG4xCOWcqBDBGyuDTC.weaooVRXFgFuzSkGiuh3mfQ4aPW', 'bpGEmJsi-lrsxm_dbD8iuabkvsuD3CP5', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(399, 'vovanthao', 'vovanthao@gmail.com', 400, '$2y$10$GhkQypQDWCDE.UrRkQdU.uriCJvtrJkaPwcsaZZ6PnKwUiId5niNK', 'VES6r-cE71WpR7cpUMtyelNfF81eN6kN', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(400, 'nguyenthingoctuyet', 'nguyenthingoctuyet@gmail.com', 401, '$2y$10$btHfrFxH96z21i0/5EYiu.evYjJJ8.1iN4NEP.UR3Rj/scHoark56', 'L33cEypqDdgEdF6zsAhJj4hlRDIhlKF8', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(401, 'tuvanviet', 'tuvanviet@gmail.com', 402, '$2y$10$qrPuggGL1v2ig89iEfNYre9XiDqNuWwtw3HFyU5dJfX8Mpui7zMEW', '1m7eK-nqZCLs2Bk4KXz4PcO5Ag3MaeUp', 1626107455, NULL, NULL, '::1', 1626107455, 1626107455, 1, NULL),
(402, 'dothienvan', 'dothienvan@gmail.com', 403, '$2y$10$x4FPDuvZxTbgekEh07SGpOwGuKDtbfAT8nxBGpndkakYgsgDZ/PCS', 'gxw2uTrC6f3CQusS1VrpCKwzLbE2rCgc', 1626107455, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(403, 'hathevy', 'hathevy@gmail.com', 404, '$2y$10$Wf.LkwN.uhZIEUp7ilx.m..NnULYGJ6b2vcsfGdxQkY7bzwTvFfgS', 'dNm72LWAeOk10iTxeZ7cIfHf7xQQTLen', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(404, 'hothikimyen', 'hothikimyen@gmail.com', 405, '$2y$10$2D/kQ..3xsETdxoQFPKBUeXECQgM4wybVeN1U916tnrtiiZaaqbde', 'l5FRnWmDkA4s1oOhe-iYLpFfWOUxRZf4', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(405, 'lethikimlien', 'lethikimlien@gmail.com', 406, '$2y$10$A4eYRoNltarDPTLMsUlb5unaZiOva/6z/Ztj3yH0HjPkN2wH1.vHm', 'zjXYR-Iisn7_EXCZy71RSvePiUgqOYky', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(406, 'ngohoangthienmy', 'ngohoangthienmy@gmail.com', 407, '$2y$10$LcqnDppvTDfdpjcOgqo2w.anh52hQ7rdbN4dGIamxbVdgXqenwKQu', 'bissbQ2WDgIc--HtM-8fSUAhFwbvdvvs', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(407, 'nguyenhoangphuong', 'nguyenhoangphuong@gmail.com', 408, '$2y$10$LwuYorxjAoZKqXsiTKsRNOHzQBp8AAzS0CLzlS4f4tv3f29wBCSpW', 'QfTmHTcus1zl1YeJC5fIhwLNuJqfZAe9', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(408, 'nguyenthiminhthi', 'nguyenthiminhthi@gmail.com', 409, '$2y$10$juq6Cas4NJZAIHRTp5vfke9Gm/UrYZbgYl/hB00b8Zgf/58OdKRlK', 'yvOiqvPInz1v0S68tAexlhMp_B5h1bQF', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(409, 'nguyendoanminhhuy', 'nguyendoanminhhuy@gmail.com', 410, '$2y$10$L3tHrZ6qMI8LoprriwQ0SOWtrbHMylUyGHWeU2XprR268WzZ.kx8S', '2ZKV_tgNfHbF725XrYvzGwfI5kE3avGZ', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(410, 'vutienhoang', 'vutienhoang@gmail.com', 411, '$2y$10$UPxlVTW898AheNF4NUlyCO3n6R0W.mY1tLUcOgvKWqDxiuz4AEggG', 'iVG_s3N-qvSVmKc851jzXSgQKRuqdFbt', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(411, 'dinhhongquan', 'dinhhongquan@gmail.com', 412, '$2y$10$KNmgpDhU/Es2Y4a6DV3Wx.i82qmC8FTgbcZzlMRkFABsN.2tQz2T6', 'A9VVa9mJQwoNg753H0EtvjVAwljsiD3d', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(412, 'nguyenthithanhtam', 'nguyenthithanhtam@gmail.com', 413, '$2y$10$GP3UwZEy4q6qRcfOZTsBI.Zu7KNUMVKFdNhz1fAQt.t057cf8J1j6', 'SikBTxAE65V2oiRhkTAabpsb4VM-5vuB', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(413, 'buithingocbich', 'buithingocbich@gmail.com', 415, '$2y$10$4TZ4xjIJLlFeezVMBzRxgunDYQNtnoO0qeNON8g6rTBewcb.uVg5u', 'lkclUvwPE5v8CmN3zwVepkr__xyK_Jju', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(414, 'vuthuyquynhhuong', 'vuthuyquynhhuong@gmail.com', 416, '$2y$10$5ihPMRDWN.4vm5OH5VT49eikvx6iz/K6NbOtm0QEQllgb1IPdbUC.', 'LZDgAFhR5mPIoBWT1wppPND_ikJZlEwm', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(415, 'nguyentrucloan', 'nguyentrucloan@gmail.com', 417, '$2y$10$tDn8kGr/jNNpceHQ4vuHTemn0ouJWD2Xhmoz8Q58WqwYRhghMXUba', 'i6h_DdCpBp-K01D_gWsC66lSOoEwECOS', 1626107456, NULL, NULL, '::1', 1626107456, 1626107456, 1, NULL),
(416, 'nguyenmylinh', 'nguyenmylinh@gmail.com', 418, '$2y$10$qKGm6w6SorPOmyaobcCHLuZm68YLOX1HVciw9.01hashA6kCdd15.', 'FUGLexRe8AQuwiGsAIEiVMI694iJ2hug', 1626107456, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(417, 'hoangmai', 'hoangmai@gmail.com', 419, '$2y$10$y/d0cYzAc28vluTdvd/lyu.eR978gHNd27T9TEP6xPGHyt8sU/roW', 'Q1rlWYGuXyIQt4UcLcD2hYzoQmAiZRjd', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(418, 'hophankimngan', 'hophankimngan@gmail.com', 420, '$2y$10$wfPeDEdTHFASrA87qcifluQ8.42mobhia.K.j8.ZpXtgFZRMESGke', '4tVQdQnUhlB4qsjnWjY-cMbdPSCa8JPA', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(419, 'hoangkimngoc', 'hoangkimngoc@gmail.com', 421, '$2y$10$tonZGQrSWWOjR/k7j6/HB.mTQet9zMJ5v43FtB4iSN10a2VNoQXve', 'W-55K7CpNl-oOBBxpdx2dufN4VaGwE6r', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(420, 'nguyenthithanhnhan', 'nguyenthithanhnhan@gmail.com', 422, '$2y$10$fB22p4DAM6D7P/6UA5v8tuyXnfrdQRGJrfMCxlSE5s7FAMXeKTCjC', 'STmxeG_a9oWwpanyChAPUndHpkRBjyF0', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(421, 'nguyenthitruyen', 'nguyenthitruyen@gmail.com', 423, '$2y$10$KLenuihl2p89k6g0tjDOuetxtE8iT1o1oHvnk8UmKQj0w1mjjih.e', '77Xovu86RqD0vC0Yeb9P1Ggo7sEMkDZT', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(422, 'nguyenhoaibaotram', 'nguyenhoaibaotram@gmail.com', 424, '$2y$10$hWHNkPafPjYd47zB8aRvruh9qpU85aSy07JmpbAa.g9Fo./nbjcXC', 'lzFm8IvUU4d6lmeHIfwZK_W_-zysSJ91', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(423, 'buingocphuongtrinh', 'buingocphuongtrinh@gmail.com', 425, '$2y$10$3dWS6BX022IqGz6qfzYfWepCrPH8IMQQ4eGSlXto5bUj.ZVXFjD4e', '_zeUTpJBaxax77V3UfQHPf177bxpdq22', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(424, 'phanthithanhtruc', 'phanthithanhtruc@gmail.com', 426, '$2y$10$seoLS3BkO5WB1YZdTn8mUeftk2ZtVBgkQtB5J4dX0U1syHnDNTgRK', '3u87E_FPbRVu19d4piZZZG2LANchjz6-', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(425, 'nguyenngocnguyenthao', 'nguyenngocnguyenthao@gmail.com', 427, '$2y$10$eCiTZFu6n3qL38UNikYNsubUpgrVxNUrlZ2hQD4PqgP0vXDd7smEG', 'Z8TgLrkttNw4R5H7Nis4YnzGXMQ5OEqH', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(426, 'vukhaivi', 'vukhaivi@gmail.com', 428, '$2y$10$lb.Nm8biH8cFs9Q.2yvE2eNHEY7Ra9ZnupjhZYhgqNKWyPHjV8TH2', '8ejYHuxNazIeaAAOTCyI4_i3VAuBSD3x', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(427, 'nguyentuongkhanhvy', 'nguyentuongkhanhvy@gmail.com', 429, '$2y$10$cXM0AdezUn./vtmkZaM7DeFBak1VvX5K4o3iBCnYCa6Zk/PFDWhJq', 'bUAoQs_HM9eNy-YLa3uagDl-KCI5bs35', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(428, 'nguyentruonghoangviet', 'nguyentruonghoangviet@gmail.com', 430, '$2y$10$zteZc11ta/5s63f2DnFdL.3UpcG7l17jbBRVn.SdYUi1jxPiJv/Ai', '7CtoLp1lPm7BMEyleo4yGzxoF8jVM3_R', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(429, 'vuquangduy', 'vuquangduy@gmail.com', 431, '$2y$10$z8bzTHrrrGDcBK1VBfnHgeb/7f0t6fKoJ/D6DmmYjpwIqWShNe1Vi', 'E616pMCGehIe8ejSos03Dxlar22EB1XF', 1626107457, NULL, NULL, '::1', 1626107457, 1626107457, 1, NULL),
(430, 'nguyenthingocbich', 'nguyenthingocbich@gmail.com', 432, '$2y$10$ZITNA5XTf7vprgY/4PySSe1p5tpLhKRUd0VFDDY4o/nT7KulKPj.G', 'I_f1mCvnFTSa2ThmBSH995ZJWOTnm-MI', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(431, 'lebuidiemchau', 'lebuidiemchau@gmail.com', 433, '$2y$10$/2jAkqVrrmywqQJ5ZPQ8Fu29Tl6O/kMUywrrUJcyqACVpa/9HeQKu', 'sDjR2fj7CC2__g2gr228OMNDPv7zy0fH', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(432, 'dangsonlam', 'dangsonlam@gmail.com', 434, '$2y$10$elR7TpXJjLw0xPEPCQC1F.B9rJXg3KE05Ad0tLDR5W8fYFZJ/of.a', 'mhb4VwV66vJEno1Pgi3_rZkv4NBYhh1Z', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(433, 'lecongthelong', 'lecongthelong@gmail.com', 435, '$2y$10$ClGIfU35Vj7BKHTN2LGo1uK.QNKC6LARfqO0/E47XOCg7uDxIigy.', '0-r_jUi_rjsB49F9srZPH8XjuSR8uAhI', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(434, 'luongnguyenquocnhat', 'luongnguyenquocnhat@gmail.com', 436, '$2y$10$l.8KQRiZjlkj.wwQPRA8XO8F75vWb1NFvPG.7zBQLMTFBkgfuQWSK', 'CmdoS0NrlldoCVKALx7876ELWq6swhG3', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(435, 'hothihoangnhung', 'hothihoangnhung@gmail.com', 437, '$2y$10$mAahW5BLsANH8QpH9Vg59upSlBHtPcPy88T8rEjaqg2A4smlgls56', 'i5Wnmb2-fpXjgig1zoNDlqnps4DZrp4H', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(436, 'vuxuanthi', 'vuxuanthi@gmail.com', 438, '$2y$10$BKHvlNos7r6VLKFq4Mc3JuQpIv4auKHl913oE0zYd3Gbj56ndYzBe', 'b-8bG9zNEW05carKK3WmL5vzSg_wvB0U', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(437, 'nguyenhuynhkimut', 'nguyenhuynhkimut@gmail.com', 439, '$2y$10$9495vYEroz8MKyTMt5lyn.Mwnx1VhcFnjp5dY1VphECj18ICLjany', '0y1NcDhtpy_Yh9hAkqmMbpv3uKtXVL2o', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(438, 'lexuanminh', 'lexuanminh@gmail.com', 440, '$2y$10$K.DIkaBbJPKz5vHfVCFLLuyKXb78Gwj621w7LgKytu55DscFuPdZK', 'W3MGmp-nySVPaTT5n-dfFzckZcN1mzVw', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(439, 'nguyenthinhungoc', 'nguyenthinhungoc@gmail.com', 441, '$2y$10$PGfg7IpRCMqVZRTkb9jJuuPwD3CyPUhqYgw8eE9NyVbz.4qzZyz7C', '3g25tSftWldQ1cdNRWpBjVIuxaNuh8rp', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(440, 'lybuuhoangnguyen', 'lybuuhoangnguyen@gmail.com', 442, '$2y$10$Ai48L4grOxR05gE6OulMX.uSoqhEpZkPtW9///1c5c/OvOViwCT0K', 'gccZrgQ8QVcj5AU45WPAUxDSeYoMQbY0', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(441, 'nguyenthanhhuyen', 'nguyenthanhhuyen@gmail.com', 443, '$2y$10$erWwTwyf85sE0xtrbvtDPOay0YZhb8Chaw.2v/23uEEvN6c0Gv1wO', '6OLpmdmWyxvjv8mJosg0xjPPSe14Grzr', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(442, 'lethikhanhly', 'lethikhanhly@gmail.com', 444, '$2y$10$pUlOAcoG/MXvteVOHTe.8Or04UpDBmgMZtXyaZzRlC0l2B6a.HFLe', '0nkQ8M4BTrYgySyzkAgPpbfogPlGfNtI', 1626107458, NULL, NULL, '::1', 1626107458, 1626107458, 1, NULL),
(443, 'nguyenthikimvan', 'nguyenthikimvan@gmail.com', 445, '$2y$10$7e8UpxNATQrbj0BZca7KWODJie8JmDczOw04DUDjsLO9Bj.8o2zrO', 'hB-Ii5_2Ng3J0lnzLuuBp8CJsD_2ToZn', 1626107458, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(444, 'mauxuanlieng', 'mauxuanlieng@gmail.com', 446, '$2y$10$9PQxynAAzbAvC6zDpMK42uuNKQ7NRNht8VZ7vxGqT6m/5O3Mo5nji', 'iO41VVDCP8d5GTAuEv1XgIGmB5fr7FfS', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(445, 'thanhdasin', 'thanhdasin@gmail.com', 447, '$2y$10$cDacgL85.sSu2iTSCGbW5uXuO0SZevXzySQU7ccm9gGPhe97W6s0K', 'VZFfTUNZeHhjZMycwl3hJBRLn3JcIGw3', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(446, 'phamtuanvu', 'phamtuanvu@gmail.com', 448, '$2y$10$G/cCOaxggMHyYxBHu/5OsOcUTWXwH4vz1OzkFFx6HPONKDi46ELby', 'bhc0fdOXPRnqmUrHxbeuHoufEpJuHoU7', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(447, 'kathuan', 'kathuan@gmail.com', 449, '$2y$10$gRqvXcvom9rLLD4gQRUhPuB3VF4mXs9jSH/oM.hmyDAqXTZ3Ga26.', 'iNPEPbJfCN-6AXm29Emwe3B0ukN4Y_KY', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(448, 'tranthithanhhang', 'tranthithanhhang@gmail.com', 450, '$2y$10$E.43dz6XWiprXrRUJJSoseIy2zBGaB6diUlJpU/PaA29OF4IMThp6', 'T0eWVyOVGcBOKWXfwwpjgcb4sQDRZMmE', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(449, 'nguyenthitam', 'nguyenthitam@gmail.com', 451, '$2y$10$/GoeDFIE/w84UO.y0DL/Eesr59I.lWB6ilMEYC6P2hy6x8e/h1WPK', 'gDiaB6lOkJbPgJJwQ6fzWzzmsXljM2Jx', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(450, 'yhurbkrong', 'yhurbkrong@gmail.com', 452, '$2y$10$w32b3l4wZPxb/XmCKfP0K.ji3wfiNkmtvPjRiG6Upc2ZVb3ccv9ZW', 'fHczQCC3ddzisSVjAHCXULPrL9bBxtWd', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(451, 'caoviethung', 'caoviethung@gmail.com', 453, '$2y$10$SB7/LaMk7wNg3zyDamUbq.NoG9jgLYMlGXKaNnmM8qa6oFBMzqKCK', '-v5rKFbMG48ahpZcoTnWX-YamNA8gB72', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(452, 'kadunh', 'kadunh@gmail.com', 454, '$2y$10$1hLiRCzTrsZnuucOO6Gh5eUjFQCvQdZ2MDOtLgtS1eG.HJpA9ssK2', 'fmHgntQy0WY2z-viYDfLS3AjSAKuqLlp', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(453, 'kothihuyen', 'kothihuyen@gmail.com', 455, '$2y$10$7M1uu.tks25U/N14CFRw2OCvdickbaqwx2TfZMQCXHdOaSdODxCFO', 'rSg5z8JpsNnl5StUvl5SKnaVd9CR1CyB', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(454, 'banvanhai', 'banvanhai@gmail.com', 456, '$2y$10$b7YukP34RELsItDCvv0t4.rBHTQuIMO/fMgzOZA43y5IG.FAxQPFi', 'J83qpzy9XSEVpHc7MwIEXqjg6YmSwgLi', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(455, 'ybonnie', 'ybonnie@gmail.com', 457, '$2y$10$2EPsMAu2BA2KNAzkahzuQOOVlVLvOEeXZEdueHA1n0zp4viU2wd5i', 'zbwn7I9CVIrLlYStGxEY2O8WI8lLe0cb', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(456, 'nguyenthingocthach', 'nguyenthingocthach@gmail.com', 458, '$2y$10$mh7kzAaxV/I/MJIdoHJQx.sFyUGeYv2ypK3DvY22kgjG1PX.whqPK', 'Y6nY67MC2vwFCnMVB6cz2LN422tW_Odd', 1626107459, NULL, NULL, '::1', 1626107459, 1626107459, 1, NULL),
(457, 'nguyenthithuha', 'nguyenthithuha@gmail.com', 459, '$2y$10$8hiiVeh.1mWsE1.E/Qtq/Oj0JjJejPlKJYMPGoWA0xWCtpxJWbVyC', 'UdzCfxLKWk9LLj-D4Pm1eJ3rKt_ZvoGr', 1626107459, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(458, 'tranthehai', 'tranthehai@gmail.com', 460, '$2y$10$r14JVAj8Mx7ht36ch2j6G.ejylfQ9Rdc3432YGdrBnQLaqXHKVpOC', 'QmI8htQE0GIwbk6qq5qX38iqmkHux1CG', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(459, 'hadaokimoanh', 'hadaokimoanh@gmail.com', 461, '$2y$10$uls3.UCQoSg5ppRQ.QScpOS6pM9y3pHgHaA1XcsktKlqs4Rx8FnJe', '2pBW2ADSLLrEu9a6Dy0N9p_JpKqz1dVD', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(460, 'ychuongeban', 'ychuongeban@gmail.com', 462, '$2y$10$akMKP.irIuAi6xV49jjCvuL39jCBKNI8pobrvxN1NQhk.i3d1jZmO', 'jRYXIEqyoJpwL9Oq_qIiP1wCRtHAhrJW', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(461, 'vuhuyhoang', 'vuhuyhoang@gmail.com', 463, '$2y$10$nmWcMNB5LwjZLeuVtnd2/OgNwJa1ibt8dwSwc9MCVE6iTFrtbLVGS', 'surN7oXxJVnz5LZO0EpZulva9O3bVl2O', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(462, 'roonghangan', 'roonghangan@gmail.com', 464, '$2y$10$ITtjdl6MGWk82p/wc77Dg.UehgXtK3CzCC0zw95zSAXPUl4.gSX9i', '0PeuiHIuNgNU7jM7U-ybP_ckUaWeL-go', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(463, 'levanson', 'levanson@gmail.com', 465, '$2y$10$M//rTgBLEod7.7amHQuF0.m/Ya42EAJ5dfoR2/qu8Kagiwgnb8l36', 'yXcoJk8mgahEEH_7HxIvTqYQnjevwN-k', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(464, 'kasredrongsongtris', 'kasredrongsongtris@gmail.com', 466, '$2y$10$1Cf/ELRo2NdG19kTHvxd3enpZ1FD969Vm0ByO1sVPZRQlCjvv5ed2', '78cR7acH_feLYmDzz-H91zLcGXLO86AJ', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(465, 'truonghoangthai', 'truonghoangthai@gmail.com', 467, '$2y$10$5OSontKLi1DlerN44c58leWJ4hNWVpVE6KDKh99BYr32A82L7v0uy', 'Dt3dWx8IhE49PoB6jPuW5W66k0XO6HeX', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(466, 'cilsrinh', 'cilsrinh@gmail.com', 468, '$2y$10$J0SGglIwX1/6ZUx1rpedQe3FKosPT7RAjk2FG0pa/gMaMMIfc08TW', 's2SUjHRPBncIsVB5pCLC5VUdcyEQsuMY', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(467, 'nguyenngockhanh', 'nguyenngockhanh@gmail.com', 469, '$2y$10$sD8SYHH2qYCP084qGiHNtOXtyfYDfxxYq2seDKybO2gl9/IilaYlq', 'xMlYDmqy7i373z4nraZ8KD3VvxHHPeYz', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(468, 'lucthienvuong', 'lucthienvuong@gmail.com', 471, '$2y$10$MIKxCy18L0fwi6CVU6gEZO7JmG5OD/L9ZxbT0ZTGudQITlhbp76Pm', 'Ycfws4DJoVma2o1a3O2lECnI-ERsLJQ1', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(469, 'nguyenngocthanhliem', 'nguyenngocthanhliem@gmail.com', 472, '$2y$10$zmU81gKMQPBj4TCeCGtdbO0wjlw8I1l0AdtamONOYwBbud7Quaiyq', 'c8HoWU8sd0gaDtcJJF0cWuYpXpPUWasP', 1626107460, NULL, NULL, '::1', 1626107460, 1626107460, 1, NULL),
(470, 'lethihonglong', 'lethihonglong@gmail.com', 473, '$2y$10$P3yFNXamLxRiN4NR36Hsvu0vVtm42CRwdTMOgD0pt4VpPYoOAuKc.', 'FgBaSkOyiYdt1ogd4kSdmZxCCTu3120D', 1626107460, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(471, 'phamthihongnhan', 'phamthihongnhan@gmail.com', 474, '$2y$10$HvaLvFkj1JnGZAW9qeOD..mrVEl/RbzOwOVhPUzg2Pw8fRj6ozS0y', 'Amdn5115S3D2wF525l0wm1Zr7cIAehuL', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(472, 'nguyenhoangphuc', 'nguyenhoangphuc@gmail.com', 475, '$2y$10$jigb4jwFiGNBQ86XtIVO8.yyNNmxyRuZ3idY0gBJIH74Eegu2MH2S', 'Vu3LZ_Xm3P_XP-ZSwxp5PqOwt0HCr2_H', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL);
INSERT INTO `user` (`id`, `username`, `email`, `info_id`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(473, 'nguyenhoangthutrang', 'nguyenhoangthutrang@gmail.com', 476, '$2y$10$HdoA0LzKVcp/T4CfcLI6lewUKaJS8JRUvB.qXEw2gBz36h0vwJUOe', 'pdae92pUjWVVHgQ4N2GytbGUkL5co2eS', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(474, 'hothinga', 'hothinga@gmail.com', 477, '$2y$10$MBGg./KPa/OqCZ.TEacNeuPvxaMuV2hjFimxUSaHiVhE2oQjdJviq', 'T2wQXortjGYUHhruH-Nn3tTR27SfHqjJ', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(475, 'roongsachri', 'roongsachri@gmail.com', 478, '$2y$10$ZXQJvzxX336sokRHLra1c.tVba6eyYPSqUkw2ZqaMuTOtP6SKDate', 'wfsdSXRLRJZmZOIyrJtZ5nmeqdp2qpfB', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(476, 'dangthithu', 'dangthithu@gmail.com', 479, '$2y$10$QvPFt9Bh/PcQrv74dsLCc.bn27ZBuoylKcDecgF88B98nCnDfTrWa', 'WAwnY6sh2N0i9sUYmN8rhctQKQrJo5TM', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(477, 'doanvanhien', 'doanvanhien@gmail.com', 480, '$2y$10$Rm0XEQDNr4gmjVgPhiJgluLFgFCsTtypfucRozCSTC/S/UbmQ7r2.', 'epb4EXX5a6rKx2LQOY5rFf8nN9hM3Opt', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(478, 'nguyentrungkien', 'nguyentrungkien@gmail.com', 481, '$2y$10$0rnAFHoQl1mpILvVHKjY6uaGV.nc9TjA0zausb.z/dTW78.YAwTKO', 'zHr97UuntaLqSPbPwt9_s9GBDhDfQJFj', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(479, 'truongthiminhvan', 'truongthiminhvan@gmail.com', 482, '$2y$10$XITtSGJwSFsSXI3axH.Y0eTWb0NUT9lA3IqiIyFPPbytl5.WQpMKS', '5jn1oUBXBozqsha6YokgKzgPfgXtdKxF', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(480, 'raphin', 'raphin@gmail.com', 483, '$2y$10$4PruRvmtN.Cqd6BsRrGuguKcJ54v8xxYkSIpJvpmTHD7De3Zs9WYG', 'ouAUUUeXSLCzzPqOiXGqjFj4BSinx_8R', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(481, 'cillsanstia', 'cillsanstia@gmail.com', 484, '$2y$10$3AjRK6D3PIQyBH6o4VCK0O2dSKPyoPnkmH8uAKn5ZWi/IuFsHtzDC', 'XWPNSabGAYhGyuMgGd9E5SPeA6pz6Dp1', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(482, 'pinangthoa', 'pinangthoa@gmail.com', 485, '$2y$10$KHeWiC9oYwHUZMvnnSYH9uS6SjSv.6qbrRYpQGf1gk362PobGTcIC', '9uITqpVfQvcnrXBFQFyUaojWctzFMoiG', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(483, 'nguyenquangtrung', 'nguyenquangtrung@gmail.com', 487, '$2y$10$.nh1z5C5ueCUycjno8Ffp.N36rkLrI9oIE222i46jK9EILhBDfNwa', 'c1LkzEqAj_Mk7OPfQ8W032lmCN5ATSLF', 1626107461, NULL, NULL, '::1', 1626107461, 1626107461, 1, NULL),
(484, 'nguyenthithu', 'nguyenthithu@gmail.com', 488, '$2y$10$yzbrn9iI32WQTnIbYlLWW.U30G6a2wX7M5Y9JUqzHm.ATcS7Vle2W', 'GqSOYvPXv7vK5TiQ14-J0r4YFvsAEJo9', 1626107461, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(485, 'phamquocanh', 'phamquocanh@gmail.com', 489, '$2y$10$VdiMLc7IrGDJs3F4LFIFp.8Ih.lAlLNVZ0HDYNrEHjbnH/0i0ea/y', 'VpaO-5y1xBWiFBaESIMyF7WI7acy3_LS', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(486, 'lequangdao', 'lequangdao@gmail.com', 490, '$2y$10$ZzgPXIpgUBMH8Hib3ho0Q./2gIwPa0OQMN55jzd1g0wg2ZvHIrHay', 'xKIdylz9JJP1OkXAcE4KDRdtfp-fOVoZ', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(487, 'nguyendinhtinhhung', 'nguyendinhtinhhung@gmail.com', 491, '$2y$10$FJYNFTFBD2NBFBX68nPlCOF932guFr8TUt/jrrHnxm2GsO5LZGroi', 'tS9zWzOP6oR5--7U657sT7DwqzyQnq2W', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(488, 'phamnguyentuankhoa', 'phamnguyentuankhoa@gmail.com', 492, '$2y$10$ZWFfvot1aci4qknXZzVzH.y93EwW79ACJ2n5Zfn.rFdF9JMkfvdeK', 'CNl_dZOwQY5yBLu5LX8k2ob1gjJ4nQx0', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(489, 'nguyendinhquan', 'nguyendinhquan@gmail.com', 493, '$2y$10$aMdO2XN2b1KaGSP2320NQezsejx/yzIw6p6ueMIpPnBfk2bWuWCWq', '1r44PFQUcdGkSTKNE4BVP0s0lSj1gaUN', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(490, 'levanthang', 'levanthang@gmail.com', 494, '$2y$10$4YdRw6HiycAWiDT1wy1nounVsUjiPTquAoesBYrqs/AJKdP/KEChG', 'ZnX5BJ7EKVSzt9yk3LtZZJ3e1oDJkSWp', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(491, 'trandailongkhanh', 'trandailongkhanh@gmail.com', 495, '$2y$10$ckJ.XsEVevknSiNWMpY0HuCTNKVIby1BLkhcDt1DKjsoUCBjyGZDG', '6UMfMgJ9ntdbwCEee21EpTFDqKm8aVSy', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(492, 'phamthitrang', 'phamthitrang@gmail.com', 496, '$2y$10$o9c75hkjgG9O8/EtI/mZV.ZPbEHCcV95UPgl8pDCLXre6czQJ0N8y', 'khKhtb0Q2mGFLKXwOuYrS-uLORFfT79s', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(493, 'bethicuc', 'bethicuc@gmail.com', 497, '$2y$10$WxIkDj7b6XnO1../f/ryhOgjUQytBIOWuGCYurA8PG.GJr4gAuMnq', 'ZCLXTw_DIxgRl1m80QLDInnehMyNRnEq', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(494, 'levanhung', 'levanhung@gmail.com', 498, '$2y$10$dFu8UQTBblazrdiwOBdqyeH/b0RctEGyIPHJvE4J6bFi9zorQrxfG', 'CiRBUNu9uxXwbiFK4_cnQSGLdz_9rEzh', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(495, 'phamvuxuanvy', 'phamvuxuanvy@gmail.com', 499, '$2y$10$1bvEZ6QRmxrxN.tAyNZ40exYo4wtR7UTYve5AWpVzdKDGeRydlaxq', 'KENQEbmeLWiW4nKmuJEQJYLANd7Z5pD7', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(496, 'luuhoanganhvu', 'luuhoanganhvu@gmail.com', 500, '$2y$10$auBbxskpL4lYGFmWsoN5EOqKUJvcoNj5iSp8uUVobXJAspJ3WPa7a', 'AJluNfb21uUcvEXNzDtBOXdgHSu0rtca', 1626107462, NULL, NULL, '::1', 1626107462, 1626107462, 1, NULL),
(497, 'srohabong', 'srohabong@gmail.com', 501, '$2y$10$sSatoC/oHhjJEyDpynEzeOyy6RIfXxriXgfbokQ5upSSS.qRAo9X2', 'QzVHJQsUtixCLdZjPZf-s7awQo8-vsUB', 1626107462, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(498, 'nguyenthingochuyen', 'nguyenthingochuyen@gmail.com', 502, '$2y$10$Hbq02OOYLYADyYgwZC54iudwDpS7dLOc05sP82QKVa//52jX0kRWO', 'aL7VgtwRh2h5GiCmiiFn3if8gJjhOcEl', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(499, 'phamthihang', 'phamthihang@gmail.com', 503, '$2y$10$C3AOIgIzjkDo9QVcrm8IK.PtZ7lXcdaB50qzN.s4KuyxYvK4cQ8d2', 'zAetkdfvDq4W2DqT8Sox81J_WTZMTL2Z', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(500, 'lethihuong', 'lethihuong@gmail.com', 504, '$2y$10$CckbGScn9Dq1xDyH.t5JOOhoRvBMmDzmV.wiuBwDXw6WyjllwObeW', 'ii-SdHjP_N5f0KRXMHaf5PGJWSTaxCZg', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(501, 'haduccanh', 'haduccanh@gmail.com', 505, '$2y$10$viiNbh6YcZSnssBnBWDNsexXDo4BGURUmvPzliazKcEOy5NuHbRta', '9yoy5piFybuIbRTN5VC_T-GWkcB0nKfP', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(502, 'nguyenthihien', 'nguyenthihien@gmail.com', 506, '$2y$10$RQ.Fj3wBHP6c7RODD.gxAeh0dW9Ua1BsUReQiogYA1yi6iOkbVKJ2', 'z1gedPVu3ponoH1eClz0iqNDZ0FWtmUK', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(503, 'phamquocluan', 'phamquocluan@gmail.com', 509, '$2y$10$kcbyb7YWli5l5nMvPkFadOb/jID77MluD8NajbgbIZvlZw46JUlMm', 'iZ00XGZOxx4JDuwMXLkdhcArKiFbcZEk', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(504, 'lequimy', 'lequimy@gmail.com', 510, '$2y$10$i7BzSSoTrDh2hS0rFycCM.L.y3O6dB9XnUHFbGTa.jGUDPEa8oDnS', 'qcgr6QaAee6nSRanT6M8-5TUDYaIexCF', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(505, 'huynhtuongquynhmy', 'huynhtuongquynhmy@gmail.com', 511, '$2y$10$Urlha5LVMmdqkoeEvit0Q.oGktgaBXlQAtFf3TDZr9PuX1E7QNSsG', 'RGYd8J3XtYFwj_zqmJL-KIdg6FVy06rz', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(506, 'lucthithienson', 'lucthithienson@gmail.com', 514, '$2y$10$2nf5dTQHZwKXMxzlkioB3uYfAfu9XuQcsFmum6yK3xOF8Vypf4u7m', '224ztDTLBZFo2-2_CvBi-tHAEggHn_rn', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(507, 'lethihuyentrang', 'lethihuyentrang@gmail.com', 515, '$2y$10$mdB6vZj6/Kg3QxPpi7xpVe8jgySrDCl4Z/Dt/TGh1AmfnpJNAehxG', 'zfF2Jbn-XhRqMox1QNPiCYQpFLLWd_d3', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(508, 'tranthithuthao', 'tranthithuthao@gmail.com', 516, '$2y$10$syewkhoCgzXHShb3/Xp6Ye73i/UEGbO2DxHtYw8okJTQCHGk/Hscu', 'VyoWbUhtQiF5htEyviCSoQuN1bvwAOXF', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(509, 'ngothiminhthu', 'ngothiminhthu@gmail.com', 517, '$2y$10$79f1BthClb6xqKH5B3IV1e/q.k9jJWU.RVNCHS4s0Z36TcQH2yZym', '4Y0bsuA2rkL9sKMI5H5lyP2DkS8456HX', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(510, 'lenguyenphuongtrinh', 'lenguyenphuongtrinh@gmail.com', 518, '$2y$10$XpmhTDlnNor7M.7.FFBbnuulWi.AVNI9G7MCWukimKOOqBrJ1YlXa', 'cS9zqV7Wb2-0BkHmniMgKQSstJfdJwel', 1626107463, NULL, NULL, '::1', 1626107463, 1626107463, 1, NULL),
(511, 'nguyencongtan', 'nguyencongtan@gmail.com', 519, '$2y$10$OEZIxV.f8Vmt/7vmWUpbE.R/CY9Co0/4Fx5WJ3sxRZHIRzq4T.kci', '2LN8tYE42Eqlewec-LsuO_lBLtYqROcs', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(512, 'vithiminhnguyet', 'vithiminhnguyet@gmail.com', 520, '$2y$10$1eBi9abHNe2eld3/FRwK7eSWKAtmmcJ6.4uAUDcoSSaNeHX.ktmQK', 'iMQ-ypvt3tENMvWpgnWbdp1z6Tqi5I1t', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(513, 'chauhongtuuy', 'chauhongtuuy@gmail.com', 521, '$2y$10$fMVKetmNZJruiQatzkb0p.miweu3WRRsIPNvVKi7FF6bIKLiFqnT.', 'yzKQDLXDh0qK8i-BvS8c2tHUl3pOb0_r', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(514, 'nguyenduykha', 'nguyenduykha@gmail.com', 522, '$2y$10$bBYuf.TK410mXNhjGN4DaOdypoypt8tDjZEh00fpBSnr9C6BVbaYK', 'UYCexm4WH6tGM50HXNh5uH5PgctROowA', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(515, 'daokhacnhattoan', 'daokhacnhattoan@gmail.com', 523, '$2y$10$HQZDqfqDWQ1zTpjqrSEGQeGKvvnE6GqZ5gFbwZ2KHSUWa.E0i7JuS', 'TCMyORoAFib_5s9BRQqYTvN8zuhl4bEd', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(516, 'tranthimaithuong', 'tranthimaithuong@gmail.com', 524, '$2y$10$NKXLuuYbiITtwQ601.OM/.xyhIvTvWM44kA3VDDiiZOKniPF.7HSS', 'CcjIdw7DgCEuHn4nRqQRcQUpUvZcyEnZ', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(517, 'hoanglinhbao', 'hoanglinhbao@gmail.com', 525, '$2y$10$xKX0R2cPKoq330TWUvpOD.UxlEcZ./XYM7BQ.Y16u727AX3LhFlqe', 'jhHzjBTj5tfjZ9EiFfm55PEhlR9y3T9x', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(518, 'nguyenminhduc', 'nguyenminhduc@gmail.com', 526, '$2y$10$hXUag92Rc5ZLLfxsfB5gKOdbmY.zPLyosQVJo5eWnkaAgdwPtCqkO', 'n_FIXaBVwbavd7viNGP6Z-ztILiqmHOr', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(519, 'buiminhngoc', 'buiminhngoc@gmail.com', 527, '$2y$10$TYaUEFkw4C6u/oPvtHxQHu7vXCkAW9YDR1mCLWs/z0HV7FBiYivHq', 'L774SQ7w14LFcyEqyd3z5BrzKevuJ68W', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(520, 'hotrungnghia', 'hotrungnghia@gmail.com', 528, '$2y$10$KvBIJlnTKLyUCFEUnVfSdOUUsnxmwvgSeZr6hBQahLWHqzwXu7H1S', '45geUeiQspCQtETm3MH9da8r6M3oERQj', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(521, 'nguyenduyphong', 'nguyenduyphong@gmail.com', 529, '$2y$10$4TqtglS/eY27xMWOXqdHxuxtO.CEsy5SqNnlQCNBFbqZ7iYLfnwYm', 'ZPvxGeq-xtLHeg0Dlc6nUzFBhvPbJzM4', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(522, 'dangvanquang', 'dangvanquang@gmail.com', 530, '$2y$10$vAkhil5BWHaZMrL6YQR6kuE30Dx3z0LgTmbBeE7X9YnqfWBLmaBC2', '2L0Yq-_Dn_O_9NzfcCocuo9cq1X_mJ3U', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(523, 'tranhoangthucquyen', 'tranhoangthucquyen@gmail.com', 531, '$2y$10$.YebIptkCfTHXqVuEWNDnef8v2kURCXdDP0q8.VzZhgmX6O/BDQhW', 'KyBkDoYdAtvBmhIXHGK-RAModJZ59rQ5', 1626107464, NULL, NULL, '::1', 1626107464, 1626107464, 1, NULL),
(524, 'nguyenthiyenthanh', 'nguyenthiyenthanh@gmail.com', 532, '$2y$10$c9kR0BGsIRPEJUU3.ry.z.Wg6M1mbWzBHPBwrhzYjOk8cBhqeuo7K', 'pbDUn6Wx-e4TPktT83l94VqNkVU53283', 1626107464, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(525, 'nguyenthuongtin', 'nguyenthuongtin@gmail.com', 533, '$2y$10$8/6i/F/wjScojNsqhqknZO3pg0YZGyNSX76s9NGyK/R4sAd1HNXoG', 'TugGiUuMOIS20HcPdQnkqIs2W7UO1Xp0', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(526, 'nguyentatanhtuan', 'nguyentatanhtuan@gmail.com', 534, '$2y$10$Dp4sTOO9hSHd61yTNXR5oOMtW9tkZIcZu1iyHnOwW9.5d6CzrGxFK', 'Ho44B_HlybFpUaG-pYsB1bk-s-AJmr3j', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(527, 'lethichinh', 'lethichinh@gmail.com', 535, '$2y$10$AXSKuytPQjiomk37Zr.N9urmDI4F5IxZQrl6XLqm2uWs43nydTkbK', 'nDjod0BcAixal_9NC9lybNUozYbxLU0e', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(528, 'vothehanh', 'vothehanh@gmail.com', 536, '$2y$10$48fpxDovuRjH8GiZI5/xguEinSPF47Rfhwcu5UGmjq7TY4aSKrVCW', 'qwO4mHzLyucDOpWqLK4w2oK6xZJ6HyHO', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(529, 'nguyenbaohieu', 'nguyenbaohieu@gmail.com', 537, '$2y$10$lMFvoNXJyMByV2cxMEF0b.zzMSO1AgufgydK3TRRG3J3XGJDWShyy', 'Mw4RthTz4Ly-aZO_4PL_xZeiJiIVZUSL', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(530, 'truongthidieply', 'truongthidieply@gmail.com', 538, '$2y$10$o0zK7oylF.aMFw6fEhkQp.3mdninuhnIqaTDbMATencmEQZtGTZ/C', 'c6aWNk-TCXcnfe3hnKuONFZPGnCxOfkX', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(531, 'nguyenhoanganhlinh', 'nguyenhoanganhlinh@gmail.com', 539, '$2y$10$Ng95XHj95PXnnpgHJQYoO.EkFkObjM3W.iN.lUpYdaUrcvYCBPo5m', 'AIX6Nir4fpauzwOCTfo_vPONY4UGUAPA', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(532, 'lehakieumy', 'lehakieumy@gmail.com', 540, '$2y$10$BEKIY8YRvyTmTlRqTUmBzOhRmSSI8JivMYpXvfnxPzR2au6.x0Kbq', 'IzieOp94fqxj_2fXrITgq3AiueUc7b_n', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(533, 'nguyenthingoc', 'nguyenthingoc@gmail.com', 542, '$2y$10$yq53CLvhOXqUQrEVQaJmLuMjBxQnmOKiHC0n0J0hxpc0QQv97hKvO', 'EyM16j_7tsIoJ_TfllJ9ShQFTOpVL47t', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(534, 'dagoutblin', 'dagoutblin@gmail.com', 543, '$2y$10$BqD86CXk5s8emwk3NM/qdOXmxwBkPLPm/O2egWuYExouyXq33cKBy', 'M0MNB8Q_bI3o8e_p7i7ywAXP8MMtuHy5', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(535, 'nguyenthithuydung', 'nguyenthithuydung@gmail.com', 544, '$2y$10$qOfsXuC7/Eycup5ZN//i/.sQuMchmMG22RH4Otuphnc8QtXF/KL1G', 'T4XC7Mza5q_ivtYXtgjKb6uBRjwJ24tJ', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(536, 'dangthilegiang', 'dangthilegiang@gmail.com', 545, '$2y$10$7gIt0qMp3JSZxBDB.rzSd.hqsTt3ZjV3cupCiavz4W2uMwoXyw0nW', 'bcrfEVJigR88HJ_Z3xXtXWclr-wYCXea', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(537, 'vuongthithuhang', 'vuongthithuhang@gmail.com', 546, '$2y$10$628VKoty449cuU815isPbOuXrozMdJ2AjG7goXZ.jrR5UuQs6/pqm', '77LUQBeN17U9K-6Va2eU93SMs41gARZO', 1626107465, NULL, NULL, '::1', 1626107465, 1626107465, 1, NULL),
(538, 'vuchinhnghi', 'vuchinhnghi@gmail.com', 547, '$2y$10$DFiLcP/FHkubTBAWrAQB5.Ey/KcnUgpr7J080ek2VWu34g4K4xl4e', 'gSi5ABdHRUdM6WEplC-9G5Ql5bBTdavU', 1626107466, NULL, NULL, '::1', 1626107466, 1626107466, 1, NULL),
(539, 'dinhtai', 'dinhtai@gmail.com', 548, '$2y$10$DT3anxEh5RKpJYO4BHng3OjRZvmQQ4YiPM6yATXdMS1eKznWYA/sS', 'ZQaU15OUlbjnUFozggKXZQ_BeZsBR8DU', 1626107466, NULL, NULL, '::1', 1626107466, 1626107466, 1, NULL),
(540, 'lethikimthoa', 'lethikimthoa@gmail.com', 549, '$2y$10$HcKJccOjol2Er1I4zLKKXOahScClTDJjXFP3td/13bobX4DhAvd2i', 'V3ZWwxlR18lje8Dwgoe2qcImbD0I5KH4', 1626107466, NULL, NULL, '::1', 1626107466, 1626107466, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_occ`
--

DROP TABLE IF EXISTS `user_occ`;
CREATE TABLE IF NOT EXISTS `user_occ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `occ` int(11) NOT NULL,
  `dich_vu` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_occ`
--

INSERT INTO `user_occ` (`id`, `user_id`, `occ`, `dich_vu`, `created_at`) VALUES
(1, 1, 0, NULL, 1625934461),
(2, 15, 0, NULL, 1625934461),
(3, 16, 0, NULL, 1625934461),
(4, 17, 20000, NULL, 1625934461);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
