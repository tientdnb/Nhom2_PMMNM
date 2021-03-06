-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 26, 2013 at 06:56 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE IF NOT EXISTS `giohang` (
  `id_giohang` int(10) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL,
  `user` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tinhtrang` text NOT NULL,
  `ngaydat` datetime NOT NULL,
  PRIMARY KEY (`id_giohang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id_giohang`, `id`, `user`, `soluong`, `tinhtrang`, `ngaydat`) VALUES
(138, 71368668, 'phuong', 10, 'damua', '2013-12-20 10:05:14'),
(139, 71368666, 'phuong', 1, 'damua', '2013-12-20 10:09:47'),
(149, 71368667, 'xuanquocqn', 1, 'dathang', '2013-12-25 17:42:32'),
(141, 71368667, 'admin', 1, 'damua', '2013-12-20 10:16:52'),
(142, 71368671, 'admin', 2, 'damua', '2013-12-20 10:16:52'),
(143, 71368671, 'xuanquocqn', 1, 'damua', '2013-12-21 12:06:24'),
(150, 71368666, 'phuongle', 2, 'dathang', '2013-12-26 02:32:50'),
(146, 914362335, 'xuanquocqn', 1, 'dathang', '2013-12-22 12:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `id_hoadon` int(10) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(255) NOT NULL,
  `diachi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `cty` varchar(255) NOT NULL,
  `id` varchar(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tongtien` float NOT NULL,
  `ngaydat` datetime NOT NULL,
  `tinhtrang` text NOT NULL,
  PRIMARY KEY (`id_hoadon`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `hoten`, `diachi`, `email`, `dienthoai`, `fax`, `cty`, `id`, `soluong`, `tongtien`, `ngaydat`, `tinhtrang`) VALUES
(32, 'Nguy???n Xu??n Qu???c', 'Qu???ng Ng??i', 'xuanquocqn@gmail.com', 1657990372, 25, '', '7', 7, 108220000, '2013-12-21 12:32:15', 'damua'),
(33, 'L?? Th??? Ph?????ng', '??i???n Ng???c - Qu???ng Nam', 'phuongle.qn.23@gmail.com', 1657990337, 0, 'VIETHANIT', '98', 3, 705000, '2013-12-22 13:57:08', 'dathang'),
(34, 'Nguy???n Ph????ng T??m', '???? N???ng', 'phuongtamdn@gmail.com', 2147483647, 0, '', '71368671', 1, 37000000, '2013-12-25 04:44:54', 'dathang'),
(35, 'Nguy???n Ph????ng T??m', '???? N???ng', 'phuongtamdn@gmail.com', 2147483647, 0, '', '71368670', 2, 42000000, '2013-12-25 04:44:54', 'dathang');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE IF NOT EXISTS `lienhe` (
  `id_lienhe` int(10) NOT NULL AUTO_INCREMENT,
  `hoten` text NOT NULL,
  `cty` text NOT NULL,
  `email` text NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `diachi` text NOT NULL,
  `noidung` text NOT NULL,
  `ngaylienhe` datetime NOT NULL,
  PRIMARY KEY (`id_lienhe`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id_lienhe`, `hoten`, `cty`, `email`, `dienthoai`, `fax`, `diachi`, `noidung`, `ngaylienhe`) VALUES
(14, 'Nguy???n Xu??n Qu???c', 'VIETHANIT', 'xuanquocqn@gmail.com', 1657990372, 2345245, '???? n???ng', '????? ngh??? nh??n vi??n ph???c v??? c?? th??i ????? t???t h??n ?????i v???i kh??ch h??ng', '2013-12-20 09:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `id_loai` int(10) NOT NULL,
  `id_nhom` int(11) NOT NULL,
  `tenloaisp` text NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  PRIMARY KEY (`id_loai`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id_loai`, `id_nhom`, `tenloaisp`, `ghichu`) VALUES
(15, 2, 'Loa Laptop', ''),
(7, 1, 'Samsung', ''),
(6, 1, 'Toshiba', ''),
(5, 1, 'Sony', ''),
(11, 2, 'USB 3G', ''),
(10, 2, 'USB', ''),
(16, 1, 'BenQ', ''),
(13, 2, 'Chu???t', ''),
(4, 1, 'HP Compaq', ''),
(3, 1, 'Asus', ''),
(9, 1, 'Lenovo', ''),
(8, 1, 'Dell', ''),
(1, 1, 'Apple (Macbook)', ''),
(2, 1, 'Acer', '');

-- --------------------------------------------------------

--
-- Table structure for table `nhomsanpham`
--

CREATE TABLE IF NOT EXISTS `nhomsanpham` (
  `id_nhom` int(10) NOT NULL,
  `tennhom` varchar(255) NOT NULL,
  PRIMARY KEY (`id_nhom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhomsanpham`
--

INSERT INTO `nhomsanpham` (`id_nhom`, `tennhom`) VALUES
(1, 'Laptop'),
(2, 'Ph??? ki???n');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `id_loai` int(10) NOT NULL,
  `tensp` text NOT NULL,
  `mota` text NOT NULL,
  `hinh` text NOT NULL,
  `gia` int(15) NOT NULL,
  `ghichu` text NOT NULL,
  `soluongban` int(10) NOT NULL,
  `id_menu` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2147483648 ;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_loai`, `tensp`, `mota`, `hinh`, `gia`, `ghichu`, `soluongban`, `id_menu`) VALUES
(71368666, 7, 'Samsung NP540U3C', '<p>&nbsp;</p>\r\n<h2 style="margin: 0px; padding: 0px; word-wrap: break-word; font-size: 38px; line-height: 38px; font-weight: normal; font-family: PFSquareSansProMedium, Arial, sans-serif;">C&ocirc;ng ngh??? touch &ldquo;si&ecirc;u m?????t&rdquo;, k???t n???i h???u hi???u v???i Ultrabook touch t??? Samsung</h2>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">r???i nghi???m &ldquo;??a ch???m&rdquo; tr???n v???n</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">Ch??? c???n &ldquo;ch???m nh??? v&agrave; tr???i nghi???m ngay&rdquo; v???i Samsung Series 5 Ultra. Tr???i nghi???m th&uacute; v??? n&agrave;y ???????c th???c hi???n d??? d&agrave;ng tr&ecirc;n m&agrave;n h&igrave;nh 13.3in HD Super Bright nh??? c&ocirc;ng ngh??? t????ng t&aacute;c ??i???m c???a Win 8, c???m gi&aacute;c ch???m &ldquo;m?????t&rdquo; m&agrave; v&agrave; ho&agrave;n ho&agrave;n ???????c s??? d???ng hi???u qu??? tr&ecirc;n t???t c??? 10 ng&oacute;n tay. B???n s??? t???n h?????ng c???m gi&aacute;c l?????t nh??? s&agrave;nh ??i???u, d&ugrave; l&agrave;m vi???c, hay gi???i tr&iacute; c??? ng&agrave;y d&agrave;i v???i c&aacute;c ???ng d???ng (apps) v&agrave; nh???ng tr&ograve; ch??i h???p d???n nh???t.</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">L??u tr??? l???n cho m???i th??? b???n c???n</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">Vi???c s??? h???u m???t chi???c notebook di ?????ng si&ecirc;u m???ng tr?????c gi??? lu&ocirc;n ?????ng ngh??a v???i vi???c b???n ph???i &ldquo; hy sinh&rdquo; m???t l?????ng l??u tr??? ??&aacute;ng k???. Tuy nhi&ecirc;n, notebook si&ecirc;u m???ng Samsung Series 5 ULTRA l???i ???????c thi???t k??? v???i dung l?????ng l??u tr??? kh???ng l???. ??? ????a c???ng v???i kh??? n??ng l??u tr??? d??? li???u l&ecirc;n ?????n 500GB gi&uacute;p ng?????i d&ugrave;ng t???n h?????ng &acirc;m nh???c, phim ???nh th???a th&iacute;ch.</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">Thi???t k??? si&ecirc;u di ?????ng</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">V???i nh???ng ng?????i th?????ng xuy&ecirc;n di chuy???n, vi???c ph???i mang theo b&ecirc;n ng?????i m???t chi???c notebook c???ng k???nh bao gi??? c??ng l&agrave; m???t g&aacute;nh n???ng l???n.Th???u hi???u ??i???u ??&oacute;, Samsung mang ?????n b???n Series 5 ULTRA c&oacute; thi???t k??? r???t m???ng (19.9mm), nh??? (1.69 kg) - th&iacute;ch h???p cho cu???c s???ng n??ng ?????ng h&agrave;ng ng&agrave;y c???a b???n. V???i Samsung Series 5 ULTRA, b???n s??? lu&ocirc;n c&oacute; v??n ph&ograve;ng c???a m&igrave;nh, ??? m???i l&uacute;c, m???i n??i.</p>', 'SamsungNP540U3C.jpg', 26497000, 'new', 1, 0),
(49260, 1, 'MacBook Air MD760', '<p>CPU<span style="white-space:pre" class="Apple-tab-span">	</span>Intel, Core i5 Haswell, 4250U, 1.30 GHz</p>\r\n<p>RAM<span style="white-space:pre" class="Apple-tab-span">	</span>DDR3L(On board), 4 GB</p>\r\n<p>????a c???ng<span style="white-space:pre" class="Apple-tab-span">	</span>SSD, 128 GB</p>\r\n<p>M&agrave;n h&igrave;nh r???ng<span style="white-space:pre" class="Apple-tab-span">	</span>13.3 inch, HD (1440 x 900 pixels)</p>\r\n<p>C???m ???ng<span style="white-space:pre" class="Apple-tab-span">	</span>Kh&ocirc;ng</p>\r\n<p>????? h???a<span style="white-space:pre" class="Apple-tab-span">	</span>Intel HD Graphics 5000, Share 1664MB</p>\r\n<p>????a quang<span style="white-space:pre" class="Apple-tab-span">	</span>Kh&ocirc;ng</p>\r\n<p>H??H theo m&aacute;y<span style="white-space:pre" class="Apple-tab-span">	</span>Mac OS X</p>\r\n<p>PIN/Battery<span style="white-space:pre" class="Apple-tab-span">	</span>4cell Li - Polymer</p>\r\n<p>Tr???ng l?????ng (Kg)<span style="white-space:pre" class="Apple-tab-span">	</span>1.35</p>', 'MacBookAirMD760.jpg', 26990000, 'new', 1, 0),
(71368667, 7, 'Samsung XE700T1C', '<p>&nbsp;</p>\r\n<h2 style="margin: 0px; padding: 0px; word-wrap: break-word; font-size: 38px; line-height: 38px; font-weight: normal; font-family: PFSquareSansProMedium, Arial, sans-serif;">Tr??? th??? v??n ph&ograve;ng di ?????ng</h2>\r\n<p class="headline" style="margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;">Tr???i nghi???m s??? ti???n d???ng c???a m???t m&aacute;y t&iacute;nh b???ng v???i s???c m???nh c???a m???t m&aacute;y t&iacute;nh x&aacute;ch tay th??? th??? v???i Samsung ATIV Tab 7</p>\r\n<p class="headline" style="margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;">&nbsp;</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">S??? l???a ch???n c???a gi???i chuy&ecirc;n nghi???p</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">N???u b???n c???n m???t thi???t b??? h??? tr??? m???nh m??? ??&iacute;ch th???c, Samsung ATIV Tab 7 s??? ??&aacute;p ???ng m???i nhu c???u c???a b???n. V???i b??? vi x??? l&yacute; Intel &reg; Core &trade; i5 th??? h??? m???i nh???t, m&aacute;y cho ph&eacute;p duy???t web nhanh h??n, x??? l&yacute; ??a t&aacute;c v??? m???nh m???, chuy???n ?????i video ho???c &acirc;m nh???c, v&agrave; c&oacute; th??? ch???y c&aacute;c ???ng d???ng &quot;n???ng k&yacute; nh???t&quot;.</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">??&aacute;p ???ng m???i nhu c???u - t??? s&aacute;ng t???o ?????n gi???i tr&iacute;</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">M???t thi???t k??? mang t&iacute;nh c&aacute;ch m???ng k???t h???p s???c m???nh c???a m???t m&aacute;y t&iacute;nh x&aacute;ch tay v???i t&iacute;nh c?? ?????ng c???a m&aacute;y t&iacute;nh b???ng. B???n c&oacute; th??? t???n h?????ng c&aacute;c ti???n &iacute;ch gi???i tr&iacute; m???t c&aacute;ch linh ho???t v&agrave; thu???n ti???n d???ng ??ang di chuy???n, nh?? duy???t web, k???t n???i m???ng x&atilde; h???i, xem phim v&agrave; ch??i game. Ch??? c???n g???n th&ecirc;m b&agrave;n ph&iacute;m v&agrave; touchpad l&agrave; b???n ??&atilde; c&oacute; th??? gi???i quy???t c&ocirc;ng vi???c hi???u qu???, v&agrave; s&aacute;ng t???o nh?? tr&ecirc;n m???t m&aacute;y t&iacute;nh x&aacute;ch tay.</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">Vi???t khi di chuy???n</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">B&uacute;t S Pen ??&atilde; ????a tr???i nghi???m vi???t v&agrave; v??? th???c t??? v&agrave;o th??? gi???i m&aacute;y t&iacute;nh. ???????c ch??? t???o nh&agrave; s???n xu???t c&ocirc;ng ngh??? h&agrave;ng ?????u Wacom, v???i 1024 m???c c???m ???ng cho ????? ch&iacute;nh x&aacute;c si&ecirc;u vi???t theo ti&ecirc;u chu???n c???a c&aacute;c thi???t k??? gia chuy&ecirc;n nghi???p, t???o c???m gi&aacute;c nh?? ??ang d&ugrave;ng m???t c&acirc;y b&uacute;t ho???c b&uacute;t ch&igrave; th&ocirc;ng th?????ng. ????? t???i ??u h&oacute;a s??? tho???i m&aacute;i v&agrave; ti???n d???ng, b&uacute;t c&oacute; k&iacute;ch th?????c v&agrave; h&igrave;nh d&aacute;ng nh?? b&uacute;t th???t v&agrave; ???????c c???m ??? khe b&ecirc;n h&ocirc;ng m&aacute;y.</p>', 'SamsungXE700T1C.jpg', 39000000, 'new', 1, 0),
(71368668, 7, 'Samsung NP530U4C', '<p>&nbsp;<span style="font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;">S???c m???nh c???a m???t notebook hi???u n??ng</span></p>\r\n<p class="headline" style="margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;">Samsung Notebook Series 5 ULTRA</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">Nh???ng gi???i ph&aacute;p nhanh c???a Samsung</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">B???n c&oacute; th??? l&agrave;m vi???c hay gi???i tr&iacute; hi???u qu??? h??n v???i t???c ????? nhanh ?????n kinh ng???c c???a notebook Samsung Series 5. M&aacute;y ch??? m???t 20 gi&acirc;y ????? kh???i ?????ng nh??? t&iacute;nh n??ng Fast Boot hay ng???c nhi&ecirc;n h??n l&agrave; ch??? v???i 2 gi&acirc;y nh??? t&iacute;nh n??ng Fast Start. Kh??? n??ng Plus Fast Browsing t&iacute;ch h???p s???n cho ph&eacute;p b???n duy???t nh???ng trang web th?????ng xem v???i t???c ????? g???p ??&ocirc;i th&ocirc;ng th?????ng.<br />\r\n* T???c ????? thay ?????i t&ugrave;y thu???c v&agrave;o c???u h&igrave;nh, ???ng d???ng v&agrave; c&aacute;c thi???t l???p kh&ocirc;ng d&acirc;y<br />\r\n* Th???i gian kh???i ?????ng ph??? thu???c ki???u ??? c???ng</p>', 'SamsungNP530U4C.jpg', 21999999, 'new', 20, 0),
(71368669, 7, 'Samsung NP535U3X', '<p>&nbsp;<span style="font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;">C&acirc;n b???ng ho&agrave;n h???o gi???a hi???u su???t v&agrave; kh??? n??ng di ?????ng</span></p>\r\n<p class="headline" style="margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;">&bull; S???c m???nh c???a m???t notebook hi???u n??ng<br />\r\n&bull; Thi???t k??? si&ecirc;u di ?????ng<br />\r\n&bull; Nh???ng gi???i ph&aacute;p nhanh c???a Samsung<br />\r\n&bull; C&ocirc;ng ngh??? m&agrave;n h&igrave;nh v?????t tr???i c???a Samsung</p>', 'SamsungNP535U3X.jpg', 13900000, 'hienthi', 0, 0),
(71368670, 7, 'Samsung NP530U3C', '<p>&nbsp;<span style="font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;">Samsung Series 5 ULTRA</span></p>\r\n<p class="headline" style="margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;">S???c m???nh c???a m???t Ultrabook&trade; hi???u n??ng</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">Thi???t k??? si&ecirc;u di ?????ng</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">V???i nh???ng ng?????i th?????ng xuy&ecirc;n di chuy???n, vi???c ph???i mang theo b&ecirc;n ng?????i m???t chi???c notebook c???ng k???nh bao gi??? c??ng l&agrave; m???t g&aacute;nh n???ng l???n.Th???u hi???u ??i???u ??&oacute;, Samsung mang ?????n b???n Notebook Series 5 535 c&oacute; thi???t k??? r???t m???ng (14.9 ~ 17.6mm), nh???(1.52 kg) - th&iacute;ch h???p cho cu???c s???ng n??ng ?????ng h&agrave;ng ng&agrave;y c???a b???n. V???i Samsung Series 5 535, b???n s??? lu&ocirc;n c&oacute; v??n ph&ograve;ng c???a m&igrave;nh, ??? m???i l&uacute;c, m???i n??i.</p>', 'SamsungNP530U3C.jpg', 21000000, 'hienthi', 0, 0),
(71368671, 7, 'Samsung NP900X3C', '<p>&nbsp;<span style="font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;">M???ng ?????n kh&ocirc;ng ng??? - thi???t k??? ho&agrave;n h???o</span></p>\r\n<p class="headline" style="margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;">&bull; M???ng ?????n kh&ocirc;ng ng??? - thi???t k??? ho&agrave;n h???o<br />\r\n&bull; Thi???t k??? ch??a t???ng th???y tr?????c nay<br />\r\n&bull; Samsung Fast Solutions<br />\r\n&bull; M&agrave;n h&igrave;nh r&otilde; h??n, s&aacute;ng h??n v&agrave; r???ng h??n</p>\r\n<p class="headline" style="margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;">&nbsp;</p>', 'SamsungNP900X3C.jpg', 36999999, 'new', 4, 0),
(71368672, 7, 'Samsung NP300E4X', '<p>&nbsp;<span style="font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;">??&aacute;p ???ng m???i nhu c???u t???i gia</span></p>\r\n<p class="headline" style="margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;">Samsung Notebook Series 3</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">M&agrave;n h&igrave;nh m???nh mai</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">G&oacute;p ph???n t???o n&ecirc;n m???t thi???t k??? si&ecirc;u di ?????ng l&agrave; vi???n m&agrave;n h&igrave;nh c???c m???ng &ndash; ch??? b???ng m???t &ldquo;l&oacute;ng tay&rdquo; (m???ng h??n 55 - 60% so v???i c&aacute;c model tr?????c ??&oacute;*). Chi???c laptop s??? nh??? h??n v&agrave; nh??? h??n nh??ng kh&ocirc;ng ???nh h?????ng ?????n k&iacute;ch th?????c m&agrave;n h&igrave;nh, th???t d??? ????? b???n mang theo b&ecirc;n m&igrave;nh khi ra ngo&agrave;i. ?????c bi???t, v???i thi???t k??? sang tr???ng c???a chi???c laptop, b???n s??? lu&ocirc;n tr&ocirc;ng th???t s&agrave;nh ??i???u.&nbsp;<br />\r\n* So s&aacute;nh v???i d&ograve;ng laptop RV / RC</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">Th???i l?????ng s??? d???ng pin l&ecirc;n t???i 7.5 gi???</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">Th???t tho???i m&aacute;i v???i th???i l?????ng s??? d???ng pin k&eacute;o d&agrave;i l&ecirc;n t???i 7.5 gi???* (pin 4400 mAh) / 8.9 gi???* (pin 5200 mAh) cho m???i l???n s???c. Do ??&oacute;, b???n c&oacute; th??? l&agrave;m vi???c l&acirc;u h??n ??? qu&aacute;n cafe, l???p h???c hay b???t c??? n??i n&agrave;o &ndash; v&agrave; th???m ch&iacute; v???n c&ograve;n pin ????? b???n gi???i tr&iacute; cu???i ng&agrave;y. *D???a tr&ecirc;n k???t qu??? ki???m tra BatteryMark v&agrave; s??? kh&aacute;c nhau t&ugrave;y c???u h&igrave;nh m&aacute;y</p>\r\n<h3 style="margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;">Kh??? n??ng ????? h???a m???nh m???</h3>\r\n<p style="margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;">Card ????? h???a th??? h??? m???i NVIDIA GeForce mang ?????n nh???ng tr???i nghi???m video v&agrave; game tuy???t v???i, v???i kh??? n??ng ????? h???a 3D cao c???p v&agrave; b??? nh??? DDR3 m???nh m???. ??&acirc;y qu??? l&agrave; chi???c m&aacute;y t&iacute;nh l&yacute; t?????ng ????? ch??i nh???ng game th&ocirc;ng d???ng, xem phim HD hay ch???nh s???a ???nh.</p>', 'SamsungNP300E4X.jpg', 11310000, 'hienthi', 0, 0),
(71368673, 6, 'Satellite L40 33224G50', '', 'SatelliteL4033224G50.jpg', 11300000, 'hienthi', 0, 0),
(7, 6, 'SATELLITE L50', '<p>&nbsp;<strong style="border: 0px; font-size: small; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, arial, helvetica, sans-serif;"><strong style="border: 0px; font-size: 13px; margin: 0px; padding: 0px;">N&acirc;ng cao Tr???i nghi???m c???a B???n</strong><br style="line-height: 10px;" />\r\n<br style="line-height: 10px;" />\r\n</strong><span style="color: rgb(51, 51, 51); font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">G???n nh??? v&agrave; Tho???i m&aacute;i. ?????c ??i???m k??? thu???t ??u vi???t. H&igrave;nh ???nh phim si&ecirc;u th???c s???c n&eacute;t, h??? tr??? &acirc;m bass tuy???t h???o. Satellite L50. ??&oacute; l&agrave;n t???t c??? nh???ng g&igrave; b???n c???n ????? n???i tr???i gi???a ??&aacute;m ??&ocirc;ng.</span><strong style="border: 0px; font-size: small; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, arial, helvetica, sans-serif;">&nbsp;</strong></p>\r\n<p style="border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;"><strong style="border: 0px; margin: 0px; padding: 0px;"><span style="border: 0px; font-size: small; margin: 0px; padding: 0px; font-family: tahoma, arial, helvetica, sans-serif;">B??? T??ng t???c HD c???a Toshiba</span></strong></p>\r\n<p><span style="border: 0px; font-size: small; margin: 0px; padding: 0px; font-family: tahoma, arial, helvetica, sans-serif;">T??ng truy c???p v&agrave;o c&aacute;c ???ng d???ng v&agrave; c&aacute;c ch????ng tr&igrave;nh y&ecirc;u th&iacute;ch c???a b???n nhanh h??n l&ecirc;n ?????n 60 %, c&ocirc;ng ngh??? c???a B??? t??ng t???c HDD c???a Toshiba gi&uacute;p b??? nh??? h??? th???ng ph???n ???ng nhanh h??n.</span></p>', 'SATELLITEL50.jpg', 15460000, 'new', 0, 0),
(895, 5, 'VAIO?? Tap 11', '<p><span style="font-size: larger;"><span style="font-family: Tahoma;">Tablet PC Windows VAIO&reg; Tap 11 ?????u ti&ecirc;n c???a Sony v???i th&acirc;n m&aacute;y ?????t thi???t k??? m???ng v&agrave; nh??? v???i b&agrave;n ph&iacute;m t??? kh&ocirc;ng d&acirc;y. B&uacute;t c???m ???ng s??? cho s??? d???ng linh ho???t v&agrave; hi???u qu??? nh?? b&uacute;t vi???t tr&ecirc;n gi???y. M???t thi???t k??? ?????c ??&aacute;o, nhi???u ???ng d???ng, t&iacute;ch h???p c&ocirc;ng ngh??? nghe nh&igrave;n cao c???p trong m???t chi???c Tablet PC ho&agrave;n h???o</span></span></p>', 'VAIOTap11.jpg', 25990000, 'new', 0, 0),
(71368674, 5, 'VAIO?? Pro 13', '<p><span style="font-size: large;">Tr???ng l?????ng nh??? v???i hi???u su???t tuy???t v???i.</span></p>\r\n<p>&nbsp;</p>\r\n<p style="margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="rangeText">VAIO<span style="font-size: 10px; vertical-align: baseline;" class="reg">&reg;</span><span class="Apple-converted-space">&nbsp;</span>Pro  11/13 l&agrave; m???t chi???c Ultrabook m???ng v&agrave; si&ecirc;u nh??? v???i c???u tr&uacute;c carbon b???n  b???, ?????t kh??? n??ng k???t n???i tuy???t v???i, b&agrave;n ph&iacute;m tho???i m&aacute;i khi g&otilde;, v&agrave; nh???ng  t&iacute;nh n??ng kh&aacute;c gi&uacute;p chi???c m&aacute;y tr??? th&agrave;nh m???t c&ocirc;ng c??? tuy???t v???i cho c&ocirc;ng  vi???c. ???????c trang b??? b??? x??? l&iacute; Intel<span style="font-size: 10px; vertical-align: baseline;" class="reg">&reg;</span>m???nh  m???, Windows 8, t???m n???n IPS Full HD v???i TRILIMINOS Display cho ??i???n  tho???i, v&agrave; nh???ng t&iacute;nh n??ng cao c???p kh&aacute;c nh?? ??? c???ng SSD t???c ????? cao v&agrave; m???t  t&ugrave;y ch???n Pin th&ecirc;m cho m&aacute;y c&agrave;ng gi&uacute;p chi???c m&aacute;y tr??? n&ecirc;n v?????t tr???i.</p>\r\n<p style="margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="rangeText">&nbsp;</p>\r\n<p style="margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="rangeText">&nbsp;</p>', 'VAIOPro13.jpg', 35990000, 'new', 0, 0),
(875, 5, 'VAIO?? Pro 11', '<h3 style="margin: 15px 0px 10px; padding: 0px; font-size: 22px; font-family: Arial; font-weight: normal; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="subTitle">Tr???ng l?????ng nh??? v???i hi???u su???t tuy???t v???i.</h3>\r\n<p style="margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="rangeText">VAIO<span style="font-size: 10px; vertical-align: baseline;" class="reg">&reg;</span><span class="Apple-converted-space">&nbsp;</span>Pro 11/13 l&agrave; m???t chi???c Ultrabook m???ng v&agrave; si&ecirc;u nh??? v???i c???u tr&uacute;c carbon b???n b???, ?????t kh??? n??ng k???t n???i tuy???t v???i, b&agrave;n ph&iacute;m tho???i m&aacute;i khi g&otilde;, v&agrave; nh???ng t&iacute;nh n??ng kh&aacute;c gi&uacute;p chi???c m&aacute;y tr??? th&agrave;nh m???t c&ocirc;ng c??? tuy???t v???i cho c&ocirc;ng vi???c. ???????c trang b??? b??? x??? l&iacute; Intel<span style="font-size: 10px; vertical-align: baseline;" class="reg">&reg;</span>m???nh m???, Windows 8, t???m n???n IPS Full HD v???i TRILIMINOS Display cho ??i???n tho???i, v&agrave; nh???ng t&iacute;nh n??ng cao c???p kh&aacute;c nh?? ??? c???ng SSD t???c ????? cao v&agrave; m???t t&ugrave;y ch???n Pin th&ecirc;m cho m&aacute;y c&agrave;ng gi&uacute;p chi???c m&aacute;y tr??? n&ecirc;n v?????t tr???i.</p>', 'VAIOPro11.jpg', 23990000, 'new', 0, 0),
(914362335, 5, 'VAIO?? Fit 14', '<h3 style="margin: 15px 0px 10px; padding: 0px; font-size: 22px; font-family: Arial; font-weight: normal; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="subTitle">Hi???n th??? tuy???t ?????p v???i m???i n???i dung</h3>\r\n<p style="margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="rangeText">VAIO<span style="font-size: 10px; vertical-align: baseline;" class="reg">&reg;</span><span class="Apple-converted-space">&nbsp;</span>Fit 14/15 l&agrave; chi???c m&aacute;y t&iacute;nh t???i ??u cho c??? c&ocirc;ng vi???c v&agrave; gi???i tr&iacute; c???a b???n. Ch???t l?????ng h&igrave;nh ???nh r&otilde; n&eacute;t, s???ng ?????ng ???????c t???o ra b???ng nh???ng c&ocirc;ng ngh??? n&acirc;ng cao h&igrave;nh ???nh ?????c ??&aacute;o c???a Sony tr&ecirc;n VAIO. M&agrave;n h&igrave;nh h??? tr??? c???m ???ng ho???t ?????ng linh ho???t v&agrave; ti???n l???i h??n. Thi???t<br />\r\nk??? n???i b???t bi???u tr??ng cho ch???t l?????ng v&agrave; ??a n??ng th??? hi???n xuy&ecirc;n su???t qua s??? tinh gi???n v&agrave; thanh tho&aacute;t c???a chi???c m&aacute;y</p>\r\n<p style="margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="rangeText">&nbsp;</p>\r\n<h3 style="margin: 15px 0px 10px; padding: 0px; font-size: 22px; font-family: Arial; font-weight: normal; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="subTitle">C???m nh???n &acirc;m thanh tuy???t h??n</h3>\r\n<p style="margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="rangeText">VAIO<span style="font-size: 10px; vertical-align: baseline;" class="reg">&reg;</span><span class="Apple-converted-space">&nbsp;</span>Fit 14E/15E tuy???t v???i nh?? m???t chi???c Notebook b&ecirc;n b???n m???i ng&agrave;y. Ch??? ????? ClearAudio+ t??? ?????ng t???i ??u h&oacute;a ch???t l?????ng &acirc;m thanh v&agrave; nh???ng giai ??i???u m&ecirc; ?????m t??? c???p loa ??&ocirc;i c&ocirc;ng su???t l???n cho b???n n&acirc;ng cao tr???i nghi???m &acirc;m nh???c. VAIO<span style="font-size: 10px; vertical-align: baseline;" class="reg">&reg;</span><span class="Apple-converted-space">&nbsp;</span>Fit 15E c&ograve;n trang b??? loa si&ecirc;u tr???m m???nh m??? gi&uacute;p t??ng c?????ng ti???ng Bass phong ph&uacute;. C&ocirc;ng ngh??? NFC cho b???n m??? r???ng c&aacute;ch th?????ng th???c &acirc;m nh???c. Nh???ng g&igrave; b???n c???n cho nhu c???u c&ocirc;ng vi???c v&agrave; gi???i tr&iacute; ?????u c&oacute; th??? t&igrave;m th???y ??? ch&iacute;nh s???n ph???m n&agrave;y.</p>', 'VAIOFit14.jpg', 25990000, 'new', 0, 0),
(795, 4, 'HP 1000', '<p><span style="color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Intel Core i3 3110M (4*2.40Ghz, 3MB Smart cache, 1600Mhz FSB, 35W), Intel 7 Series Express, 4GB DDR3 BUS 1600Mhz, 500GB SATA, DVD-RW Double Layer, 14 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 3000, Wireless 802.11 b/g/n, NIC 1 Gbps, Card Reader 5.1, Webcam 1.3M, Microphone, Bluetooth, HDMI, 2.1 Kg, Pin 6 Cell, DOS,</span></p>', 'HP1000.jpg', 8500000, 'hienthi', 0, 0),
(0, 4, 'HP 450', '<p><span style="color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Intel Core i5 3230M(4*2.60Ghz, 3MB Smart cache, 1600Mhz FSB), Intel 7 Series Express, 2GB DDR3 BUS 1600Mhz, 500 GB SATA, DVD-RW Double Layer, 14 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 4000, Wireless 802.11 b/g/n, NIC 1 Gbps, Card Reader 5.1, Webcam 1.3M, Microphone, Bluetooth 4.0, HDMI, 2.1 Kg, Pin 6 Cell, DOS</span></p>', 'HP450.jpg', 10690000, 'new', 0, 0),
(905, 3, 'ASUS X451CA15', '<p><span style="color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Intel Core i3 3217U (4*1.80Ghz, 3MB Smart cache, 1600Mhz FSB, 17W), Intel 7 Series Express, 2GB DDR3 BUS 1600Mhz, 500 GB SATA, DVD-RW Double Layer, 14.0 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 4000, Wireless 802.11 b/g/n, NIC 1Gbps, Card Reader 5.1, Webcam, Microphone, Bluetooth, HDMI, USB 3.0, 2.1Kg, Pin 4 Cell, DOS, Pin &amp; Adapter b???o h&agrave;nh 12 th&aacute;ng, C&oacute; 2 m&agrave;u : Tr???ng - ??en</span></p>', 'ASUSX451CA15.jpg', 10570000, 'new', 0, 0),
(2147483647, 3, 'ZENBOOK UX21A', '<p style="margin: 0px 0px 4em; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Thi&ecirc;??t l&acirc;??p n&ecirc;n ca??c ti&ecirc;u chu&acirc;??n m????i v&ecirc;?? c&ocirc;ng ngh&ecirc;?? va?? th????i trang, ZENBOOK Prime chi?? da??y 3mm phi??a ?????u ma??y &amp; 9mm phi??a ??u&ocirc;i ma??y. M&aacute;y s??? d???ng ph????ng ph&aacute;p thi???t k??? th??? c&ocirc;ng tinh vi v???i th&acirc;n m&aacute;y b???ng h???p kim nguy&ecirc;n kh???i cho tr???ng l?????ng nh??? m&agrave; b???n b???. Vo?? ngoa??i g???m ho??a ti&ecirc;??t nh???ng ???????ng tro??n ??&ocirc;??ng t&acirc;m tinh quay lan to??a th&ecirc;?? hi&ecirc;??n s???? v&ocirc; t&acirc;??n trong tri???t l&yacute; Thi&ecirc;??n. Thi???t k??? t???ng quan ???????c t???i ??u h&oacute;a mang l???i m???t giao di???n ho&agrave;n ch???nh k???t h???p gi???a th???m m??? &amp; t???c ?????, ph???c v??? ho&agrave;n h???o cho c??? c&ocirc;ng vi???c l???n gi???i tr&iacute;. ??&ecirc;?? duy tri?? giao di&ecirc;??n na??y, ASUS ??a?? pha??t tri&ecirc;??n b??? phu?? ki&ecirc;??n cu??a ZENBOOK Prime th???t ???n t?????ng va?? tinh t&ecirc;??.</p>', 'ZENBOOKUX21A.jpg', 25670000, 'new', 0, 0),
(8148, 3, 'TAICHI 21', '<p>Windows 8 Pro Ho???c nh???ng phi&ecirc;n b???n c&oacute; s???n kh&aacute;c</p>\r\n<p><br />\r\nSi&ecirc;u hi???u su???t ???????c t??ng c?????ng nh??? b??? x??? l&yacute; Intel&reg; </p>\r\n<p><br />\r\nCore&trade; i7 -3517U th??? h??? th??? 3</p>\r\n<p><br />\r\nM&aacute;y t&iacute;nh x&aacute;ch tay 2 m&agrave;n h&igrave;nh t&iacute;ch h???p m&aacute;y t&iacute;nh b???ng ?????u ti&ecirc;n tr&ecirc;n th??? gi???i.</p>\r\n<p><br />\r\nD??? d&agrave;ng chuy???n ?????i ch???c n??ng gi???a ch??? ????? notebook v&agrave; m&aacute;y t&iacute;nh b???ng b???ng m???t thao t&aacute;c n&uacute;t b???m ????n gi???n.</p>\r\n<p><br />\r\nM???ng nh??? ??&aacute;ng kinh ng???c v&agrave; si&ecirc;u di ?????ng</p>\r\n<p><br />\r\nB&uacute;t stylus t&ugrave;y ch???n cho c&aacute;c t&aacute;c v??? ??&ograve;i h???i s??? ch&iacute;nh x&aacute;c v&agrave; ghi ch&uacute; vi???t tay.</p>', 'TAICHI21.jpg', 30500000, 'new', 0, 0),
(74609, 3, 'S200E', '<p>VIVOBOOK</p>\r\n<p>Windows 8 Ho???c nh???ng phi&ecirc;n b???n c&oacute; s???n kh&aacute;c<br />\r\nB??? vi x??? l&yacute; Intel&reg; Core&trade; i3 3217U<br />\r\nM&agrave;n h&igrave;nh c???m ???ng ch&iacute;nh x&aacute;c cho tr???i nghi???m tr???c quan<br />\r\nThi???t k??? m???ng nh??? sang tr???ng v&agrave; phong c&aacute;ch<br />\r\nT???n h?????ng c&ocirc;ng ngh??? SonicMaster cho tr???i nghi???m &acirc;m thanh s???ng ?????ng v&agrave; m???nh m???<br />\r\nC???m nh???n s??? m?????t m&agrave; t??? nhi&ecirc;n v???i b&agrave;n di chu???t ASUS Smart Gesture v&agrave; ch???c n??ng kh???i ?????ng l???i trong v&ograve;ng 2 gi&acirc;y</p>', 'S200E.jpg', 16789000, 'hienthi', 0, 0),
(1, 9, 'YOGA 2 PRO', '<p>M&agrave;n h&igrave;nh: 13,3&quot; c???m ???ng 10 ??i???m ch???m, t???m n???n IPS<br />\r\n????? ph&acirc;n gi???i t???i ??a: 3200 x 1800 pixels<br />\r\nCPU: Intel Haswell Core i7, 1.8Ghz<br />\r\nGPU: Intel HD Graphics 4400<br />\r\nRAM: 4GB, c&ocirc;ng ngh??? DDR3L 1600MHz<br />\r\nSSD: 256GB<br />\r\nPin: t???i ??a c&oacute; th??? ?????t 9 gi???<br />\r\nH??? ??i???u h&agrave;nh: Windows 8.1 64 bit<br />\r\nL???t g???p xoay t&ugrave;y ch???nh t???i ??a ?????n 360 ?????<br />\r\nM???ng 15,5mm, n???ng 1.39kg</p>', 'YOGA2PRO.jpg', 29490000, 'new', 0, 0),
(8, 9, 'LENOVO Z400', '<p>CPU: Core i5-3230M , 2.6Ghz<br />\r\nRAM: 4GB DDR3<br />\r\n??? C???ng: 500GB 5400rpm<br />\r\nM&agrave;n h&igrave;nh: 14 inch HD LED<br />\r\nGPU: Intel HD Graphics<br />\r\nB???o h&agrave;nh: 12 th&aacute;ng</p>', 'LENOVOZ400.jpg', 11990000, 'new', 0, 0),
(66, 9, 'LENOVO S400', '<p>CPU: Core i3 - 2317U , 1.8 Ghz<br />\r\nRAM: 4GB DDR3 1600Mhz<br />\r\nHDD: 320GB Sata 5400rpm<br />\r\nM&agrave;n h&igrave;nh: 14.0 inch HD LED<br />\r\nGPU: Intel HD Graphics 4000<br />\r\nB???o h&agrave;nh: 12 th&aacute;ng</p>', 'LENOVOS400.jpg', 8790000, 'hienthi', 0, 0),
(121, 8, 'INSPIRON 15 N5537', '<p>CPU: Intel Haswell Core i5-4200U,1.6Ghz up to 2.6Ghz<br />\r\nRAM: 4GB DDR3 1600 Mhz<br />\r\n??? C???ng: 750GB Sata 5400rpm<br />\r\nM&agrave;n h&igrave;nh: 15.6&quot; HD LED<br />\r\nGPU: AMD Raedon HD 8670M 2GB</p>', 'INSPIRON15N5537.jpg', 15390000, 'new', 0, 0),
(59, 8, 'DELL VOSTRO-V3560', '', 'DELLVOSTROV3560.jpg', 19699900, 'hienthi', 0, 0),
(573447, 1, 'RETINA ME664ZP/A', '', 'RETINAME664ZPA.jpg', 47990000, 'new', 0, 0),
(78713611, 1, 'MACBOOK PRO 13.3', '<p>Thi???t k??? ?????ng c???p, unibody li???n l???c nh&ocirc;m nguy&ecirc;n kh???i, si&ecirc;u m???ng, si&ecirc;u g???n, si&ecirc;u nh???.<br />\r\nChip Intel th??? h??? hai, core i7 c???c m???nh.<br />\r\nK???t n???i ThunderBolt si&ecirc;u nhanh.<br />\r\nTouchpad ??a ??i???m tuy???t v???i.<br />\r\n??? c???ng dung l?????ng l???n, 500GB tha h??? l??u tr??? d??? li???u v&agrave; phim ???nh.<br />\r\nH??? ??i???u h&agrave;nh Mac m?????t, t????ng th&iacute;ch t???i ??a v???i ph???n c???ng.<br />\r\n??&egrave;n LED n???n b&agrave;n ph&iacute;m c???c ?????p.<br />\r\nPin d&ugrave;ng r???t l&acirc;u, th???i gian d&ugrave;ng ??? ch??? ????? ti&ecirc;u chu???n l&ecirc;n ?????n 8 gi???.</p>', 'MACBOOKPRO13.3.jpg', 33990000, 'new', 0, 0),
(92, 2, 'ACER ASPIRE V5', '<p>CPU: Core i5 - 3337U, 1.8Ghz upto 2.7Ghz<br />\r\nRAM: 4GB DDR3 1600Mhz<br />\r\n??? C???ng: 500GB Sata 5400rpm<br />\r\nM&agrave;n h&igrave;nh: 14.0 inch<br />\r\nGPU: nVidia GeForce 710M 2GB</p>', 'ACERASPIREV5.jpg', 12090000, 'new', 0, 0),
(959, 2, 'ACER V533214G50', '', 'ACERV533214G50.jpg', 9990000, 'hienthi', 0, 0),
(70, 11, 'D-LINK DWM 156', '', 'USB3GDLINKDWM156.jpg', 590000, 'new', 0, 0),
(21, 11, 'Fast Connect MF190', '', 'FastConnectMF190.jpg', 690000, 'new', 0, 0),
(41, 11, 'D-COM 3G', '', 'DCOM3G.jpg', 530000, 'new', 0, 0),
(3, 10, 'KINGSTON 32G', '', 'KINGSTON32G.jpg', 550000, 'hienthi', 0, 0),
(6, 10, 'PNY LOVELY 8G', '', 'PNYLOVELY8G.jpg', 299000, 'new', 0, 0),
(77, 15, 'MICROLAB M119/2.1', '', 'MICROLABM1192.1.jpg', 789000, 'hienthi', 0, 0),
(4297, 15, 'SOUNDMAX A850', '<p><span style="color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">- H??? th???ng loa: 2 + 1 loa si&ecirc;u tr???m<span class="Apple-converted-space">&nbsp;</span></span><br style="color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />\r\n<span style="color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">- Ch???ng nhi???m t???<span class="Apple-converted-space">&nbsp;</span></span><br style="color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />\r\n<span style="color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">- T????ng th&iacute;ch: Laptop,PC,VCD<span class="Apple-converted-space">&nbsp;</span></span><br style="color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />\r\n<span style="color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">- Ngu???n: 220-240V. T???ng c&ocirc;ng su???t 25W<span class="Apple-converted-space">&nbsp;</span></span><br style="color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />\r\n<span style="color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">- ??i???u ch???nh &acirc;m thanh Volume, Bass, Treble<span class="Apple-converted-space"> <br />\r\n</span></span></p>', 'SOUNDMAXA850.jpg', 640000, 'new', 0, 0),
(30, 13, 'LOGITECH M187', '', 'LOGITECHM187.jpg', 298000, 'hienthi', 0, 0),
(98, 13, 'Vtrack 800', '', 'Vtrack800.jpg', 235000, 'hienthi', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE IF NOT EXISTS `thanhvien` (
  `hoten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `hieuluc` int(10) NOT NULL,
  `capquyen` int(10) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`hoten`, `diachi`, `email`, `dienthoai`, `user`, `pass`, `hieuluc`, `capquyen`) VALUES
('Qu???c HT05A', '???? N???ng', 'xuanquocqn@gmail.com', 1657990372, 'Admin', '86e6075b9c1dcae75660adf0cf803fb5', 1, 1),
('Qu???c', 'Qu???ng Ng??i', 'xuanquocqn@gmail.com', 1657990372, 'Xuanquocqn', 'a4a2846150bc2e42819bb85ad4d17cd3', 1, 3),
('Ph?????ng Le', 'Qu???ng Nam', 'phuongle.qn.23@gmail.com', 1657993024, 'phuong', '25f9e794323b453885f5181f1b624d0b', 1, 3),
('Le Th??? Ph?????ng', 'Da Nang', 'phuong@gmail.com', 1657990372, 'phuongle', '25f9e794323b453885f5181f1b624d0b', 1, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
