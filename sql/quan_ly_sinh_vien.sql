-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 03, 2021 at 08:54 PM
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
-- Table structure for table `dang_ki_dich_vu`
--

DROP TABLE IF EXISTS `dang_ki_dich_vu`;
CREATE TABLE IF NOT EXISTS `dang_ki_dich_vu` (
  `id` int(11) NOT NULL,
  `ma_tai_khoan` int(11) NOT NULL,
  `ngay_dang_ki` int(11) NOT NULL,
  `ma_dich_vu` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `han_su_dung` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ma_the_nap`, `user_tao_hd`, `status`, `ma_giao_dich`, `ma_ma_the`, `created_at`) VALUES
(109, 1, 17, 1, NULL, NULL, 1625339309),
(110, 1, 17, 2, NULL, '1', 1625339657),
(111, 1, 17, 2, NULL, '2', 1625339767),
(112, 1, 17, 2, NULL, '3', 1625343347),
(113, 2, 17, 2, NULL, '4', 1625344835),
(114, 1, 17, 2, NULL, '5', 1625344938),
(115, 1, 17, 2, NULL, '6', 1625345190);

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
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `giang_vien_hd` (`ma_giang_vien`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lop_hanh_chinh`
--

INSERT INTO `lop_hanh_chinh` (`id`, `ma_lop`, `ma_giang_vien`, `khoa_hoc`, `created_at`) VALUES
(2, '17A02', 2, 17, 1623164106),
(3, '17A03', 4, 17, 1623166593),
(4, '17A04', 18, 17, 1623166849),
(5, '17A01', 17, 17, 1623166867);

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ma_the`
--

INSERT INTO `ma_the` (`id`, `ma_the`, `ma_the_nap`, `trang_thai`, `tg_nap`, `user_su_dung`, `created_at`) VALUES
(1, 'iNT2b9mDA7wu7icCpK8bH', 1, 0, NULL, NULL, 1625339691),
(2, 'gkIzyPu5QKKCoYZrOu0PT', 1, 0, NULL, NULL, 1625339795),
(3, 'G7d7ZLBvLGuMev13Iy7zm', 1, 0, NULL, NULL, 1625343454),
(4, '2HvZu4w3BXvs2yFe6WDAA', 2, 0, NULL, NULL, 1625344872),
(5, 'y1VBZRzExhnKIJCmMEeSE', 1, 0, NULL, NULL, 1625345074),
(6, 'kv5ypX7MRMxWF1WWzwpNF', 1, 0, NULL, NULL, 1625345463);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu`, `menu_name`) VALUES
(1, '\'sinh-vien/index\'', 'Quản lý sinh viên');

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
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(4, 'Nguyễn Minh Hội', 'nguyenminhhoi@gmail.com', NULL, 'Quảng Ngãi', 0, 1622771151, '79322861994', 1622771151, 1622771151),
(5, 'Bùi Trần Thiên Hoan', 'buitranthienhoan@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '78866121769', 1622771151, 1622771151),
(6, 'Huỳnh Lê Khang', 'huynhlekhang@gmail.com', NULL, 'Ninh Thuận', 0, 1622771151, '92170894510', 1622771151, 1622771151),
(7, 'Phan Minh Anh Khoa', 'phanminhanhkhoa@gmail.com', NULL, 'Lâm Đồng', 0, 1622771151, '49308428171', 1622771151, 1622771151),
(8, 'Điệp Văn Lâm', 'diepvanlam@gmail.com', NULL, 'Quảng Ninh', 0, 1622771151, '92317193161', 1622771151, 1622771151),
(9, 'Hồ Ngọc Linh', 'hongoclinh@gmail.com', NULL, 'Đăk Lăk', 1, 1622771151, '07612431693', 1622771151, 1622771151),
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `the_nap`
--

INSERT INTO `the_nap` (`id`, `name`, `gia_tien`, `occ`, `img`, `created_at`) VALUES
(1, 'CARD 10', 10000, 10000, '', 1623259985),
(2, 'CARD 30', 30000, 35000, '', 1623259985),
(3, 'CARD 50', 50000, 60000, '', 1623259985),
(4, 'CARD 100', 500000, 140000, '', 1623259985);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `info_id`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'admin', 'mitto.hai.7356@gmail.com6', 0, '$2y$10$L0xLefcDfQHiS4d3wg/CE.dPmq6IQq5lYgCY4SJv0IDdcYRe/GDkO', 'cazH3uZa4-qu3--HMNwJk92DB024IJ0k', 1622739891, NULL, NULL, '::1', 1622739891, 1622739891, 0, 1625323721),
(15, 'phantranbaotuan', 'phantranbaotuan@gmail.com', 2, '$2y$10$puczsqcNubiq0jk6U9DBn.j26WRCZCO5oJfZRTsPAxjcsLizkkKcy', '2zAR6eHhUOmfDs6MtUScOBTVun7xT4iL', 1623613690, NULL, NULL, '::1', 1623613690, 1623613690, 1, 1624473707),
(16, 'nguyenthiennam', 'nguyenthiennam@gmail.com', 1, '$2y$10$gTTEjicwX8tAFFEKFhAYhOvmoFfI/.3aFwmZw4WXKOq699C53w7b2', 'LGnvC_h1aMQlatLrCIv4hdD6Qr2AIw4M', 1623613703, NULL, NULL, '::1', 1623613704, 1623613704, 1, 1624473267),
(17, 'tranduybao', 'tranduybao@gmail.com', 3, '$2y$10$MY.a2H9tY9HyM72R5tUx3uiSYEmxI9BCk7mu0kmVTvfKrES4SxgTK', 'gyHYeklNBXQGE0ZYomttINrfDexgMgNk', 1623696009, NULL, NULL, '::1', 1623696009, 1623696009, 1, 1625323733);

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
