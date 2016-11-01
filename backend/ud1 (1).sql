-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2015 at 01:10 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ud1`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon`
--

CREATE TABLE IF NOT EXISTS `addon` (
`addon_id` int(11) NOT NULL,
  `addon_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon`
--

INSERT INTO `addon` (`addon_id`, `addon_name`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Điều hòa', 1, 1, 1417106413, 1417106413),
(2, 'Internet', 2, 1, 1417106413, 1417106413),
(3, 'Cable TV', 3, 1, 1417106413, 1417106413),
(4, 'Sân thượng/Hiên', 4, 1, 1417106413, 1417106413),
(5, 'Wi-Fi', 5, 1, 1417106413, 1417106413),
(6, 'Lò vi sóng', 6, 1, 1417106413, 1417106413),
(7, 'Sàn gỗ', 7, 1, 1417106413, 1417106413),
(8, 'Bờ sông', 8, 1, 1417106413, 1417106413),
(9, 'Hệ thống sưởi', 9, 1, 1417106413, 1417106413),
(10, 'Hút thuốc', 10, 1, 1417106413, 1417106413),
(11, 'Pha cà phê', 11, 1, 1417106413, 1417106413),
(12, 'Nhà bếp', 12, 1, 1417106413, 1417106413);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
`area_id` int(11) NOT NULL,
  `area_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Dưới 30 m2', 1, 1, 1417106413, 1417106413),
(2, '30 - 50 m2', 2, 1, 1417106413, 1417106413),
(3, '50 - 70 m2', 3, 1, 1417106413, 1417106413),
(4, '70 - 100 m2', 4, 1, 1417106413, 1417106413),
(5, '100 - 150 m2', 5, 1, 1417106413, 1417106413),
(6, '150 - 200 m2', 6, 1, 1417106413, 1417106413),
(7, '200 - 250 m2', 7, 1, 1417106413, 1417106413),
(8, '250 - 300 m2', 8, 1, 1417106413, 1417106413),
(9, '300 - 350 m2', 9, 1, 1417106413, 1417106413),
(10, '350 - 400 m2', 10, 1, 1417106413, 1417106413),
(11, '400 - 600 m2', 11, 1, 1417106413, 1417106413),
(12, '600 - 800 m2', 12, 1, 1417106413, 1417106413),
(13, '800 - 1000 m2', 13, 1, 1417106413, 1417106413),
(14, 'Trên 1000 m2', 14, 1, 1417106413, 1417106413);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`article_id` int(11) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_alias` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_d` varchar(255) NOT NULL,
  `meta_k` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `article_title`, `article_alias`, `content`, `status`, `creation_time`, `update_time`, `title`, `meta_d`, `meta_k`) VALUES
(1, 'ABOUT US', 'about-us', '<p>\r\n	Unique Design is one of Vietnam&#39;s leading Architectural and Interior Design Service companies. We are a group of highly skilled and committed architects, designers and artists who have been living, studying and working overseas and in Vietnam and who bring a unique blend of international and local to every project we work on. We have established relationships and alliances with experienced and high quality suppliers and factories and we are committed to delivering the best results, in quality and cost, to our clients.</p>\r\n<p>\r\n	The Unique Design team is well known for their fresh and innovative approach to any challenge, their deep understanding of architectural and interior design and aesthetics and for the trust and respect our team engenders through total commitment to our client&rsquo;s needs. We have, over many years, completed numerous projects which have benefited and complimented our client&#39;s values, strategies and market positioning. The work that Unique Design delivers is reflected in our name: it is Unique and it is well executed.</p>\r\n<p>\r\n	The services we offer include:</p>\r\n<ul>\r\n	<li>\r\n		architectural design</li>\r\n	<li>\r\n		interior architecture</li>\r\n	<li>\r\n		fitting out</li>\r\n	<li>\r\n		project management</li>\r\n	<li>\r\n		furniture supply and manufacture</li>\r\n	<li>\r\n		turnkey project</li>\r\n</ul>\r\n', 0, 0, 1422281510, '', '', ''),
(4, 'SERVICES', 'services', '<p>\r\n	Architectural Design</p>\r\n<p>\r\n	Interior Architecture</p>\r\n<p>\r\n	Fitting out</p>\r\n<p>\r\n	Furniture Supply and Manufacture</p>\r\n<p>\r\n	Turnkey Project</p>\r\n<p>\r\n	Project Management</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<div class="intro">\r\n	<p>\r\n		Our design and competitive bidding process significantly lowers the cost of your place, while increasing its worth.</p>\r\n</div>\r\n', 0, 0, 1422281557, '', '', ''),
(8, 'PEOPLE', 'people', '<p>\r\n	Since most of UD Team members have been living, studying and working both in Vietnam and in England, The United State, France, Finland, Japan and Australia, we therefore have global experiences, an understanding and appreciation of International trend and how they can be applied in a Vietnam context.</p>\r\n', 1, 1418353482, 1422281597, '', '', ''),
(11, 'CONTACT', 'contact', '<h2>\r\n	Head office</h2>\r\n<p>\r\n	65<br />\r\n	Le Loi, Saigon Center<br />\r\n	District 1, HCMC</p>\r\n<p>\r\n	&nbsp;</p>\r\n<h2>\r\n	Studio/Showroom</h2>\r\n<p>\r\n	37<br />\r\n	Nguyen Dinh Chieu<br />\r\n	District 1, HCMC</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	T: +84 8 38 245 027<br />\r\n	F: +84 8 38 245 029</p>\r\n', 1, 1418363093, 1422281630, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `articles_tag`
--

CREATE TABLE IF NOT EXISTS `articles_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `object_type` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_tag`
--

INSERT INTO `articles_tag` (`article_id`, `tag_id`, `object_type`) VALUES
(10, 1, 2),
(10, 5, 2),
(8, 10, 2),
(8, 9, 2),
(8, 6, 2),
(11, 13, 2),
(11, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE IF NOT EXISTS `block` (
`block_id` int(11) NOT NULL,
  `block_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`block_id`, `block_name`, `status`) VALUES
(1, 'Bất động sản bán', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
`city_id` int(11) NOT NULL,
  `city_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `region_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` int(11) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `region_id`, `status`, `display_order`, `creation_time`, `update_time`) VALUES
(1, 'Hồ Chí Minh', 1, 1, 1, 1417104922, 1417104922);

-- --------------------------------------------------------

--
-- Table structure for table `direction`
--

CREATE TABLE IF NOT EXISTS `direction` (
`direction_id` int(11) NOT NULL,
  `direction_name` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `direction`
--

INSERT INTO `direction` (`direction_id`, `direction_name`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Đông', 1, 1, 1417106424, 1417106424),
(2, 'Tây', 2, 1, 1417106424, 1417106424),
(3, 'Nam', 3, 1, 1417106424, 1417106424),
(4, 'Bắc', 4, 1, 1417106424, 1417106424),
(5, 'Đông Nam', 5, 1, 1417106424, 1417106424),
(6, 'Đông Bắc', 6, 1, 1417106424, 1417106424),
(7, 'Tây Nam', 7, 1, 1417106424, 1417106424),
(8, 'Tây Bắc', 8, 1, 1417106424, 1417106424);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
`district_id` int(11) NOT NULL,
  `district_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `city_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`, `city_id`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Quận 1', 1, 1, 1, 1417104931, 1417104931),
(2, 'Quận 2', 1, 2, 1, 1417104931, 1417104931),
(3, 'Quận 3', 1, 3, 1, 1417104931, 1417104931),
(4, 'Quận 4', 1, 4, 1, 1417104931, 1417104931),
(5, 'Quận 5', 1, 5, 1, 1417104931, 1417104931),
(6, 'Quận 6', 1, 6, 1, 1417104931, 1417104931),
(7, 'Quận 7', 1, 7, 1, 1417104931, 1417104931),
(8, 'Quận 8', 1, 8, 1, 1417104931, 1417104931),
(9, 'Quận 9', 1, 9, 1, 1417104931, 1417104931),
(10, 'Quận 10', 1, 10, 1, 1417104931, 1417104931),
(11, 'Quận 11', 1, 11, 1, 1417104931, 1417104931),
(12, 'Quận 12', 1, 12, 1, 1417104931, 1417104931),
(13, 'Quận Bình Tân', 1, 13, 1, 1417104931, 1417104931),
(14, 'Quận Bình Thạnh', 1, 14, 1, 1417104931, 1417104931),
(15, 'Quận Gò Vấp', 1, 15, 1, 1417104931, 1417104931),
(16, 'Quận Phú Nhuận', 1, 16, 1, 1417104931, 1417104931),
(17, 'Quận Tân Bình', 1, 17, 1, 1417104931, 1417104931),
(18, 'Quận Tân Phú', 1, 18, 1, 1417104931, 1417104931),
(19, 'Quận Thủ Đức', 1, 19, 1, 1417104931, 1417104931),
(20, 'Huyện Bình Chánh', 1, 20, 1, 1417104931, 1417104931),
(21, 'Huyện Cần Giờ', 1, 21, 1, 1417104931, 1417104931),
(22, 'Huyện Củ Chi', 1, 22, 1, 1417104931, 1417104931),
(23, 'Huyện Hóc Môn', 1, 23, 1, 1417104931, 1417104931),
(24, 'Huyện Nhà Bè', 1, 24, 1, 1417104931, 1417104931);

-- --------------------------------------------------------

--
-- Table structure for table `estate_type`
--

CREATE TABLE IF NOT EXISTS `estate_type` (
`estate_type_id` int(11) NOT NULL,
  `estate_type_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `estate_alias` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estate_type`
--

INSERT INTO `estate_type` (`estate_type_id`, `estate_type_name`, `estate_alias`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Nhà mặt tiền', 'nha-mat-tien', 1, 1, 1417106391, 1417106391),
(2, 'Nhà trong hẻm', 'nha-trong-hem', 2, 1, 1417106391, 1417106391),
(3, 'Biệt thự', 'biet-thu', 3, 1, 1417106391, 1417106391),
(4, 'Căn hộ chung cư', 'can-ho-chung-cu', 4, 1, 1417106391, 1417106391),
(5, 'Mặt bằng', 'mat-bang', 5, 1, 1417106391, 1417106391),
(6, 'Văn phòng', 'van-phong', 6, 1, 1417106391, 1417106391),
(7, 'Kho, xưởng', 'kho-xuong', 7, 1, 1417106391, 1417106391),
(8, 'Nhà hàng, khách sạn', 'nha-hang-khach-san', 8, 1, 1417106391, 1417106391),
(9, 'Shop, kiot, quán', 'shop-kiot-quan', 9, 1, 1417106391, 1417106391),
(10, 'Trang trại', 'trang-trai', 10, 1, 1417106391, 1417106391),
(11, 'Phòng trọ, nhà trọ', 'phong-tro-nha-tro', 11, 1, 1417106391, 1417106391),
(12, 'Đất', 'dat', 12, 1, 1417106391, 1417106391),
(13, 'Đất nền, đất thổ cư', 'dat-nen-dat-tho-cu', 13, 1, 1417106391, 1417106391),
(14, 'Đất nông, lâm nghiệp', 'dat-nong-lam-nghiep', 14, 1, 1417106391, 1417106391),
(15, 'Các loại khác', 'cac-loai-khac', 15, 1, 1417106391, 1417106391);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`image_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_1` varchar(255) NOT NULL,
  `url_2` varchar(255) NOT NULL,
  `url_3` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` tinyint(4) NOT NULL COMMENT '1: post.    2 :article    3:project',
  `display_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `url`, `url_1`, `url_2`, `url_3`, `object_id`, `object_type`, `display_order`) VALUES
(1, 'upload/2014/12/12/01_parallax_1418354442.jpg', 'upload/2014/12/12/01_parallax_1418354442_690x460.jpg', 'upload/2014/12/12/01_parallax_1418354442_2.jpg', 'upload/2014/12/12/01_parallax_1418354442_4.jpg', 10, 2, 1),
(3, 'upload/2014/12/12/01_home_1418355733.jpg', 'upload/2014/12/12/01_home_1418355733_690x460.jpg', 'upload/2014/12/12/01_home_1418355733_2.jpg', 'upload/2014/12/12/01_home_1418355733_4.jpg', 10, 2, 1),
(4, 'upload/2014/12/12/03_home_1418355734.jpg', 'upload/2014/12/12/03_home_1418355734_690x460.jpg', 'upload/2014/12/12/03_home_1418355734_2.jpg', 'upload/2014/12/12/03_home_1418355734_4.jpg', 10, 2, 1),
(5, 'upload/2014/12/12/06_home_1418355734.png', 'upload/2014/12/12/06_home_1418355734_690x460.png', 'upload/2014/12/12/06_home_1418355734_2.png', 'upload/2014/12/12/06_home_1418355734_4.png', 10, 2, 1),
(6, 'upload/2014/12/12/03_blog_1418356746.jpg', 'upload/2014/12/12/03_blog_1418356746_690x460.jpg', 'upload/2014/12/12/03_blog_1418356746_2.jpg', 'upload/2014/12/12/03_blog_1418356746_4.jpg', 8, 2, 1),
(7, 'upload/2014/12/12/03_home_1418356747.jpg', 'upload/2014/12/12/03_home_1418356747_690x460.jpg', 'upload/2014/12/12/03_home_1418356747_2.jpg', 'upload/2014/12/12/03_home_1418356747_4.jpg', 8, 2, 1),
(8, 'upload/2014/12/12/06_home_1418356747.png', 'upload/2014/12/12/06_home_1418356747_690x460.png', 'upload/2014/12/12/06_home_1418356747_2.png', 'upload/2014/12/12/06_home_1418356747_4.png', 8, 2, 1),
(9, 'upload/2014/12/12/03_parallax_1418356748.jpg', 'upload/2014/12/12/03_parallax_1418356748_690x460.jpg', 'upload/2014/12/12/03_parallax_1418356748_2.jpg', 'upload/2014/12/12/03_parallax_1418356748_4.jpg', 8, 2, 1),
(10, 'upload/2014/12/12/01_parallax_1418363081.jpg', 'upload/2014/12/12/01_parallax_1418363081_690x460.jpg', 'upload/2014/12/12/01_parallax_1418363081_2.jpg', 'upload/2014/12/12/01_parallax_1418363081_4.jpg', 11, 2, 1),
(11, 'upload/2014/12/12/03_blog_1418363082.jpg', 'upload/2014/12/12/03_blog_1418363082_690x460.jpg', 'upload/2014/12/12/03_blog_1418363082_2.jpg', 'upload/2014/12/12/03_blog_1418363082_4.jpg', 11, 2, 1),
(12, 'upload/2014/12/12/01_blog_1418363083.jpg', 'upload/2014/12/12/01_blog_1418363083_690x460.jpg', 'upload/2014/12/12/01_blog_1418363083_2.jpg', 'upload/2014/12/12/01_blog_1418363083_4.jpg', 11, 2, 1),
(13, 'upload/2014/12/12/01_home_1418367052.jpg', 'upload/2014/12/12/01_home_1418367052_690x460.jpg', 'upload/2014/12/12/01_home_1418367052_2.jpg', 'upload/2014/12/12/01_home_1418367052_4.jpg', 10, 1, 1),
(14, 'upload/2014/12/12/01_parallax_1418367052.jpg', 'upload/2014/12/12/01_parallax_1418367052_690x460.jpg', 'upload/2014/12/12/01_parallax_1418367052_2.jpg', 'upload/2014/12/12/01_parallax_1418367052_4.jpg', 10, 1, 1),
(15, 'upload/2014/12/12/03_blog_1418367053.jpg', 'upload/2014/12/12/03_blog_1418367053_690x460.jpg', 'upload/2014/12/12/03_blog_1418367053_2.jpg', 'upload/2014/12/12/03_blog_1418367053_4.jpg', 10, 1, 1),
(16, 'upload/2014/12/12/01_blog_1418367054.jpg', 'upload/2014/12/12/01_blog_1418367054_690x460.jpg', 'upload/2014/12/12/01_blog_1418367054_2.jpg', 'upload/2014/12/12/01_blog_1418367054_4.jpg', 10, 1, 1),
(17, 'upload/2014/12/12/03_home_1418367054.jpg', 'upload/2014/12/12/03_home_1418367054_690x460.jpg', 'upload/2014/12/12/03_home_1418367054_2.jpg', 'upload/2014/12/12/03_home_1418367054_4.jpg', 10, 1, 1),
(18, 'upload/2014/12/13/01_parallax_1418431782.jpg', 'upload/2014/12/13/01_parallax_1418431782_690x460.jpg', 'upload/2014/12/13/01_parallax_1418431782_2.jpg', 'upload/2014/12/13/01_parallax_1418431782_4.jpg', 14, 1, 1),
(19, 'upload/2014/12/13/03_home_1418431782.jpg', 'upload/2014/12/13/03_home_1418431782_690x460.jpg', 'upload/2014/12/13/03_home_1418431782_2.jpg', 'upload/2014/12/13/03_home_1418431782_4.jpg', 14, 1, 1),
(20, 'upload/2014/12/13/06_home_1418431783.png', 'upload/2014/12/13/06_home_1418431783_690x460.png', 'upload/2014/12/13/06_home_1418431783_2.png', 'upload/2014/12/13/06_home_1418431783_4.png', 14, 1, 1),
(21, 'upload/2014/12/13/01_home_1418437556.jpg', 'upload/2014/12/13/01_home_1418437556_690x460.jpg', 'upload/2014/12/13/01_home_1418437556_2.jpg', 'upload/2014/12/13/01_home_1418437556_4.jpg', 1, 3, 1),
(25, 'upload/2014/12/13/03_parallax_1418437559.jpg', 'upload/2014/12/13/03_parallax_1418437559_690x460.jpg', 'upload/2014/12/13/03_parallax_1418437559_2.jpg', 'upload/2014/12/13/03_parallax_1418437559_4.jpg', 1, 3, 1),
(27, 'upload/2014/12/13/01_parallax_1418438439.jpg', 'upload/2014/12/13/01_parallax_1418438439_690x460.jpg', 'upload/2014/12/13/01_parallax_1418438439_2.jpg', 'upload/2014/12/13/01_parallax_1418438439_4.jpg', 1, 3, 1),
(28, 'upload/2014/12/13/03_blog_1418438440.jpg', 'upload/2014/12/13/03_blog_1418438440_690x460.jpg', 'upload/2014/12/13/03_blog_1418438440_2.jpg', 'upload/2014/12/13/03_blog_1418438440_4.jpg', 1, 3, 1),
(29, 'upload/2014/12/13/01_home_1418450914.jpg', 'upload/2014/12/13/01_home_1418450914_690x460.jpg', 'upload/2014/12/13/01_home_1418450914_2.jpg', 'upload/2014/12/13/01_home_1418450914_4.jpg', 9, 3, 1),
(30, 'upload/2014/12/13/01_parallax_1418450915.jpg', 'upload/2014/12/13/01_parallax_1418450915_690x460.jpg', 'upload/2014/12/13/01_parallax_1418450915_2.jpg', 'upload/2014/12/13/01_parallax_1418450915_4.jpg', 9, 3, 1),
(31, 'upload/2014/12/13/03_blog_1418450916.jpg', 'upload/2014/12/13/03_blog_1418450916_690x460.jpg', 'upload/2014/12/13/03_blog_1418450916_2.jpg', 'upload/2014/12/13/03_blog_1418450916_4.jpg', 9, 3, 1),
(32, 'upload/2014/12/13/01_blog_1418450916.jpg', 'upload/2014/12/13/01_blog_1418450916_690x460.jpg', 'upload/2014/12/13/01_blog_1418450916_2.jpg', 'upload/2014/12/13/01_blog_1418450916_4.jpg', 9, 3, 1),
(33, 'upload/2014/12/13/03_home_1418450917.jpg', 'upload/2014/12/13/03_home_1418450917_690x460.jpg', 'upload/2014/12/13/03_home_1418450917_2.jpg', 'upload/2014/12/13/03_home_1418450917_4.jpg', 9, 3, 1),
(34, 'upload/2014/12/13/01_home_1418451021.jpg', 'upload/2014/12/13/01_home_1418451021_690x460.jpg', 'upload/2014/12/13/01_home_1418451021_2.jpg', 'upload/2014/12/13/01_home_1418451021_4.jpg', 4, 1, 1),
(35, 'upload/2014/12/13/01_parallax_1418451022.jpg', 'upload/2014/12/13/01_parallax_1418451022_690x460.jpg', 'upload/2014/12/13/01_parallax_1418451022_2.jpg', 'upload/2014/12/13/01_parallax_1418451022_4.jpg', 4, 1, 1),
(36, 'upload/2014/12/13/03_blog_1418451022.jpg', 'upload/2014/12/13/03_blog_1418451022_690x460.jpg', 'upload/2014/12/13/03_blog_1418451022_2.jpg', 'upload/2014/12/13/03_blog_1418451022_4.jpg', 4, 1, 1),
(37, 'upload/2014/12/13/03_home_1418451023.jpg', 'upload/2014/12/13/03_home_1418451023_690x460.jpg', 'upload/2014/12/13/03_home_1418451023_2.jpg', 'upload/2014/12/13/03_home_1418451023_4.jpg', 4, 1, 1),
(38, 'upload/2014/12/13/06_home_1418451024.png', 'upload/2014/12/13/06_home_1418451024_690x460.png', 'upload/2014/12/13/06_home_1418451024_2.png', 'upload/2014/12/13/06_home_1418451024_4.png', 4, 1, 1),
(39, 'upload/2014/12/13/01_home_1418451077.jpg', 'upload/2014/12/13/01_home_1418451077_690x460.jpg', 'upload/2014/12/13/01_home_1418451077_2.jpg', 'upload/2014/12/13/01_home_1418451077_4.jpg', 3, 1, 1),
(40, 'upload/2014/12/13/06_home_1418451078.png', 'upload/2014/12/13/06_home_1418451078_690x460.png', 'upload/2014/12/13/06_home_1418451078_2.png', 'upload/2014/12/13/06_home_1418451078_4.png', 3, 1, 1),
(41, 'upload/2014/12/13/01_parallax_1418451078.jpg', 'upload/2014/12/13/01_parallax_1418451078_690x460.jpg', 'upload/2014/12/13/01_parallax_1418451078_2.jpg', 'upload/2014/12/13/01_parallax_1418451078_4.jpg', 3, 1, 1),
(42, 'upload/2014/12/13/03_blog_1418451079.jpg', 'upload/2014/12/13/03_blog_1418451079_690x460.jpg', 'upload/2014/12/13/03_blog_1418451079_2.jpg', 'upload/2014/12/13/03_blog_1418451079_4.jpg', 3, 1, 1),
(43, 'upload/2014/12/13/03_home_1418451080.jpg', 'upload/2014/12/13/03_home_1418451080_690x460.jpg', 'upload/2014/12/13/03_home_1418451080_2.jpg', 'upload/2014/12/13/03_home_1418451080_4.jpg', 3, 1, 1),
(44, 'upload/2014/12/13/01_parallax_1418451168.jpg', 'upload/2014/12/13/01_parallax_1418451168_690x460.jpg', 'upload/2014/12/13/01_parallax_1418451168_2.jpg', 'upload/2014/12/13/01_parallax_1418451168_4.jpg', 2, 1, 1),
(45, 'upload/2014/12/13/03_blog_1418451169.jpg', 'upload/2014/12/13/03_blog_1418451169_690x460.jpg', 'upload/2014/12/13/03_blog_1418451169_2.jpg', 'upload/2014/12/13/03_blog_1418451169_4.jpg', 2, 1, 1),
(46, 'upload/2014/12/13/01_blog_1418451170.jpg', 'upload/2014/12/13/01_blog_1418451170_690x460.jpg', 'upload/2014/12/13/01_blog_1418451170_2.jpg', 'upload/2014/12/13/01_blog_1418451170_4.jpg', 2, 1, 1),
(47, 'upload/2014/12/13/01_home_1418451170.jpg', 'upload/2014/12/13/01_home_1418451170_690x460.jpg', 'upload/2014/12/13/01_home_1418451170_2.jpg', 'upload/2014/12/13/01_home_1418451170_4.jpg', 2, 1, 1),
(48, 'upload/2014/12/13/03_parallax_1418451171.jpg', 'upload/2014/12/13/03_parallax_1418451171_690x460.jpg', 'upload/2014/12/13/03_parallax_1418451171_2.jpg', 'upload/2014/12/13/03_parallax_1418451171_4.jpg', 2, 1, 1),
(49, 'upload/2014/12/13/01_parallax_1418451278.jpg', 'upload/2014/12/13/01_parallax_1418451278_690x460.jpg', 'upload/2014/12/13/01_parallax_1418451278_2.jpg', 'upload/2014/12/13/01_parallax_1418451278_4.jpg', 1, 1, 1),
(50, 'upload/2014/12/13/01_home_1418451279.jpg', 'upload/2014/12/13/01_home_1418451279_690x460.jpg', 'upload/2014/12/13/01_home_1418451279_2.jpg', 'upload/2014/12/13/01_home_1418451279_4.jpg', 1, 1, 1),
(51, 'upload/2014/12/13/03_parallax_1418451279.jpg', 'upload/2014/12/13/03_parallax_1418451279_690x460.jpg', 'upload/2014/12/13/03_parallax_1418451279_2.jpg', 'upload/2014/12/13/03_parallax_1418451279_4.jpg', 1, 1, 1),
(52, 'upload/2014/12/13/03_blog_1418451280.jpg', 'upload/2014/12/13/03_blog_1418451280_690x460.jpg', 'upload/2014/12/13/03_blog_1418451280_2.jpg', 'upload/2014/12/13/03_blog_1418451280_4.jpg', 1, 1, 1),
(53, 'upload/2014/12/13/01_blog_1418451281.jpg', 'upload/2014/12/13/01_blog_1418451281_690x460.jpg', 'upload/2014/12/13/01_blog_1418451281_2.jpg', 'upload/2014/12/13/01_blog_1418451281_4.jpg', 1, 1, 1),
(54, 'upload/2014/12/13/01_parallax_1418451322.jpg', 'upload/2014/12/13/01_parallax_1418451322_690x460.jpg', 'upload/2014/12/13/01_parallax_1418451322_2.jpg', 'upload/2014/12/13/01_parallax_1418451322_4.jpg', 7, 1, 1),
(55, 'upload/2014/12/13/03_blog_1418451323.jpg', 'upload/2014/12/13/03_blog_1418451323_690x460.jpg', 'upload/2014/12/13/03_blog_1418451323_2.jpg', 'upload/2014/12/13/03_blog_1418451323_4.jpg', 7, 1, 1),
(56, 'upload/2014/12/13/03_home_1418451323.jpg', 'upload/2014/12/13/03_home_1418451323_690x460.jpg', 'upload/2014/12/13/03_home_1418451323_2.jpg', 'upload/2014/12/13/03_home_1418451323_4.jpg', 7, 1, 1),
(57, 'upload/2014/12/13/01_blog_1418451324.jpg', 'upload/2014/12/13/01_blog_1418451324_690x460.jpg', 'upload/2014/12/13/01_blog_1418451324_2.jpg', 'upload/2014/12/13/01_blog_1418451324_4.jpg', 7, 1, 1),
(58, 'upload/2014/12/13/03_parallax_1418451325.jpg', 'upload/2014/12/13/03_parallax_1418451325_690x460.jpg', 'upload/2014/12/13/03_parallax_1418451325_2.jpg', 'upload/2014/12/13/03_parallax_1418451325_4.jpg', 7, 1, 1),
(59, 'upload/2014/12/13/01_parallax_1418451369.jpg', 'upload/2014/12/13/01_parallax_1418451369_690x460.jpg', 'upload/2014/12/13/01_parallax_1418451369_2.jpg', 'upload/2014/12/13/01_parallax_1418451369_4.jpg', 5, 1, 1),
(60, 'upload/2014/12/13/03_blog_1418451370.jpg', 'upload/2014/12/13/03_blog_1418451370_690x460.jpg', 'upload/2014/12/13/03_blog_1418451370_2.jpg', 'upload/2014/12/13/03_blog_1418451370_4.jpg', 5, 1, 1),
(61, 'upload/2014/12/13/01_blog_1418451371.jpg', 'upload/2014/12/13/01_blog_1418451371_690x460.jpg', 'upload/2014/12/13/01_blog_1418451371_2.jpg', 'upload/2014/12/13/01_blog_1418451371_4.jpg', 5, 1, 1),
(62, 'upload/2014/12/13/03_home_1418451371.jpg', 'upload/2014/12/13/03_home_1418451371_690x460.jpg', 'upload/2014/12/13/03_home_1418451371_2.jpg', 'upload/2014/12/13/03_home_1418451371_4.jpg', 5, 1, 1),
(63, 'upload/2014/12/13/03_parallax_1418451372.jpg', 'upload/2014/12/13/03_parallax_1418451372_690x460.jpg', 'upload/2014/12/13/03_parallax_1418451372_2.jpg', 'upload/2014/12/13/03_parallax_1418451372_4.jpg', 5, 1, 1),
(64, 'upload/2014/12/13/01_parallax_1418451420.jpg', 'upload/2014/12/13/01_parallax_1418451420_690x460.jpg', 'upload/2014/12/13/01_parallax_1418451420_2.jpg', 'upload/2014/12/13/01_parallax_1418451420_4.jpg', 8, 1, 1),
(65, 'upload/2014/12/13/01_home_1418451421.jpg', 'upload/2014/12/13/01_home_1418451421_690x460.jpg', 'upload/2014/12/13/01_home_1418451421_2.jpg', 'upload/2014/12/13/01_home_1418451421_4.jpg', 8, 1, 1),
(66, 'upload/2014/12/13/03_parallax_1418451421.jpg', 'upload/2014/12/13/03_parallax_1418451421_690x460.jpg', 'upload/2014/12/13/03_parallax_1418451421_2.jpg', 'upload/2014/12/13/03_parallax_1418451421_4.jpg', 8, 1, 1),
(67, 'upload/2014/12/13/03_blog_1418451422.jpg', 'upload/2014/12/13/03_blog_1418451422_690x460.jpg', 'upload/2014/12/13/03_blog_1418451422_2.jpg', 'upload/2014/12/13/03_blog_1418451422_4.jpg', 8, 1, 1),
(68, 'upload/2014/12/13/03_home_1418451423.jpg', 'upload/2014/12/13/03_home_1418451423_690x460.jpg', 'upload/2014/12/13/03_home_1418451423_2.jpg', 'upload/2014/12/13/03_home_1418451423_4.jpg', 8, 1, 1),
(69, 'upload/2014/12/13/01_parallax_1418451532.jpg', 'upload/2014/12/13/01_parallax_1418451532_690x460.jpg', 'upload/2014/12/13/01_parallax_1418451532_2.jpg', 'upload/2014/12/13/01_parallax_1418451532_4.jpg', 6, 1, 1),
(70, 'upload/2014/12/13/03_blog_1418451533.jpg', 'upload/2014/12/13/03_blog_1418451533_690x460.jpg', 'upload/2014/12/13/03_blog_1418451533_2.jpg', 'upload/2014/12/13/03_blog_1418451533_4.jpg', 6, 1, 1),
(71, 'upload/2014/12/13/03_home_1418451534.jpg', 'upload/2014/12/13/03_home_1418451534_690x460.jpg', 'upload/2014/12/13/03_home_1418451534_2.jpg', 'upload/2014/12/13/03_home_1418451534_4.jpg', 6, 1, 1),
(72, 'upload/2014/12/13/03_parallax_1418451535.jpg', 'upload/2014/12/13/03_parallax_1418451535_690x460.jpg', 'upload/2014/12/13/03_parallax_1418451535_2.jpg', 'upload/2014/12/13/03_parallax_1418451535_4.jpg', 6, 1, 1),
(73, 'upload/2014/12/13/01_home_1418452769.jpg', 'upload/2014/12/13/01_home_1418452769_690x460.jpg', 'upload/2014/12/13/01_home_1418452769_2.jpg', 'upload/2014/12/13/01_home_1418452769_4.jpg', 4, 3, 1),
(74, 'upload/2014/12/13/01_parallax_1418452769.jpg', 'upload/2014/12/13/01_parallax_1418452769_690x460.jpg', 'upload/2014/12/13/01_parallax_1418452769_2.jpg', 'upload/2014/12/13/01_parallax_1418452769_4.jpg', 4, 3, 1),
(75, 'upload/2014/12/13/03_blog_1418452770.jpg', 'upload/2014/12/13/03_blog_1418452770_690x460.jpg', 'upload/2014/12/13/03_blog_1418452770_2.jpg', 'upload/2014/12/13/03_blog_1418452770_4.jpg', 4, 3, 1),
(76, 'upload/2014/12/13/01_parallax_1418452799.jpg', 'upload/2014/12/13/01_parallax_1418452799_690x460.jpg', 'upload/2014/12/13/01_parallax_1418452799_2.jpg', 'upload/2014/12/13/01_parallax_1418452799_4.jpg', 5, 3, 1),
(77, 'upload/2014/12/13/03_blog_1418452800.jpg', 'upload/2014/12/13/03_blog_1418452800_690x460.jpg', 'upload/2014/12/13/03_blog_1418452800_2.jpg', 'upload/2014/12/13/03_blog_1418452800_4.jpg', 5, 3, 1),
(78, 'upload/2014/12/13/06_home_1418452800.png', 'upload/2014/12/13/06_home_1418452800_690x460.png', 'upload/2014/12/13/06_home_1418452800_2.png', 'upload/2014/12/13/06_home_1418452800_4.png', 5, 3, 1),
(79, 'upload/2014/12/13/03_blog_1418452839.jpg', 'upload/2014/12/13/03_blog_1418452839_690x460.jpg', 'upload/2014/12/13/03_blog_1418452839_2.jpg', 'upload/2014/12/13/03_blog_1418452839_4.jpg', 8, 3, 1),
(80, 'upload/2014/12/13/06_home_1418452840.png', 'upload/2014/12/13/06_home_1418452840_690x460.png', 'upload/2014/12/13/06_home_1418452840_2.png', 'upload/2014/12/13/06_home_1418452840_4.png', 8, 3, 1),
(81, 'upload/2014/12/13/03_parallax_1418452841.jpg', 'upload/2014/12/13/03_parallax_1418452841_690x460.jpg', 'upload/2014/12/13/03_parallax_1418452841_2.jpg', 'upload/2014/12/13/03_parallax_1418452841_4.jpg', 8, 3, 1),
(82, 'upload/2014/12/13/01_home_1418452876.jpg', 'upload/2014/12/13/01_home_1418452876_690x460.jpg', 'upload/2014/12/13/01_home_1418452876_2.jpg', 'upload/2014/12/13/01_home_1418452876_4.jpg', 7, 3, 1),
(83, 'upload/2014/12/13/03_parallax_1418452877.jpg', 'upload/2014/12/13/03_parallax_1418452877_690x460.jpg', 'upload/2014/12/13/03_parallax_1418452877_2.jpg', 'upload/2014/12/13/03_parallax_1418452877_4.jpg', 7, 3, 1),
(84, 'upload/2014/12/13/06_home_1418452878.png', 'upload/2014/12/13/06_home_1418452878_690x460.png', 'upload/2014/12/13/06_home_1418452878_2.png', 'upload/2014/12/13/06_home_1418452878_4.png', 7, 3, 1),
(85, 'upload/2014/12/13/03_home_1418452878.jpg', 'upload/2014/12/13/03_home_1418452878_690x460.jpg', 'upload/2014/12/13/03_home_1418452878_2.jpg', 'upload/2014/12/13/03_home_1418452878_4.jpg', 7, 3, 1),
(86, 'upload/2014/12/13/01_parallax_1418452907.jpg', 'upload/2014/12/13/01_parallax_1418452907_690x460.jpg', 'upload/2014/12/13/01_parallax_1418452907_2.jpg', 'upload/2014/12/13/01_parallax_1418452907_4.jpg', 6, 3, 1),
(87, 'upload/2014/12/13/03_blog_1418452908.jpg', 'upload/2014/12/13/03_blog_1418452908_690x460.jpg', 'upload/2014/12/13/03_blog_1418452908_2.jpg', 'upload/2014/12/13/03_blog_1418452908_4.jpg', 6, 3, 1),
(88, 'upload/2014/12/13/01_blog_1418452909.jpg', 'upload/2014/12/13/01_blog_1418452909_690x460.jpg', 'upload/2014/12/13/01_blog_1418452909_2.jpg', 'upload/2014/12/13/01_blog_1418452909_4.jpg', 6, 3, 1),
(89, 'upload/2014/12/13/03_home_1418452909.jpg', 'upload/2014/12/13/03_home_1418452909_690x460.jpg', 'upload/2014/12/13/03_home_1418452909_2.jpg', 'upload/2014/12/13/03_home_1418452909_4.jpg', 6, 3, 1),
(90, 'upload/2014/12/13/01_home_1418452939.jpg', 'upload/2014/12/13/01_home_1418452939_690x460.jpg', 'upload/2014/12/13/01_home_1418452939_2.jpg', 'upload/2014/12/13/01_home_1418452939_4.jpg', 9, 1, 1),
(91, 'upload/2014/12/13/01_parallax_1418452939.jpg', 'upload/2014/12/13/01_parallax_1418452939_690x460.jpg', 'upload/2014/12/13/01_parallax_1418452939_2.jpg', 'upload/2014/12/13/01_parallax_1418452939_4.jpg', 9, 1, 1),
(92, 'upload/2014/12/13/03_parallax_1418452940.jpg', 'upload/2014/12/13/03_parallax_1418452940_690x460.jpg', 'upload/2014/12/13/03_parallax_1418452940_2.jpg', 'upload/2014/12/13/03_parallax_1418452940_4.jpg', 9, 1, 1),
(93, 'upload/2014/12/13/06_home_1418452941.png', 'upload/2014/12/13/06_home_1418452941_690x460.png', 'upload/2014/12/13/06_home_1418452941_2.png', 'upload/2014/12/13/06_home_1418452941_4.png', 9, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `legal`
--

CREATE TABLE IF NOT EXISTS `legal` (
`legal_id` int(11) NOT NULL,
  `legal_name` varchar(100) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `legal`
--

INSERT INTO `legal` (`legal_id`, `legal_name`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Sổ đỏ/ sổ hồng', 1, 1, 1417164620, 1417164620),
(2, 'Giấy tờ hợp lệ', 2, 1, 1417164620, 1417164620),
(3, 'Giấy phép XD', 3, 1, 1417164620, 1417164620),
(4, 'Giấy phép KD', 4, 1, 1417164620, 1417164620);

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE IF NOT EXISTS `link` (
`link_id` int(11) NOT NULL,
  `text_link` varchar(255) NOT NULL,
  `block_id` int(11) NOT NULL,
  `link_url` varchar(500) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`link_id`, `text_link`, `block_id`, `link_url`, `status`) VALUES
(9, 'Bán nhà quận 7', 1, 'http://google.com', 1),
(10, 'Bán nhà quận 2', 1, 'http://bannhaquan8.com', 1),
(11, 'Bán nhà quận 1', 1, 'http://google.com', 1),
(12, 'Bán nhà quận 10', 1, 'http://nhaquan10.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_alias` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `cal_type` tinyint(1) NOT NULL,
  `total_area` int(11) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `type_id` int(11) NOT NULL,
  `estate_type_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `project_type_id` int(11) NOT NULL,
  `direction_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `legal_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `horizontal` varchar(10) NOT NULL,
  `lengths` varchar(10) NOT NULL,
  `road` varchar(10) NOT NULL,
  `floors` tinyint(4) NOT NULL,
  `bedroom` tinyint(4) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_d` varchar(255) NOT NULL,
  `meta_k` varchar(255) NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `longt` varchar(100) NOT NULL,
  `latt` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_alias`, `image_url`, `content`, `address`, `price`, `cal_type`, `total_area`, `contact`, `phone`, `type_id`, `estate_type_id`, `city_id`, `district_id`, `project_type_id`, `direction_id`, `area_id`, `legal_id`, `price_id`, `horizontal`, `lengths`, `road`, `floors`, `bedroom`, `creation_time`, `update_time`, `status`, `user_id`, `title`, `meta_d`, `meta_k`, `hot`, `video_url`, `longt`, `latt`) VALUES
(1, 'Bán nhà và đất diện tích 2500m2 mặt tiền đường giá bán 2 tỷ 600 triệu', 'ban-nha-va-dat-dien-tich-2500m2-mat-tien-duong-gia-ban-2-ty-600-trieu', 'upload/2014/12/13/01_parallax_1418451278.jpg', 'B&aacute;n nh&agrave; gấp đi nước ngo&agrave;i, tổng diện t&iacute;ch nh&agrave; v&agrave; đất l&agrave; 2500m2<br />\r\n<br />\r\nDiện t&iacute;ch nh&agrave; 8x50m, nh&agrave; gồm c&oacute; 1 ph&ograve;ng kh&aacute;ch 4 ph&ograve;ng ngủ, 2 toilet 2 nh&agrave; tắm, s&acirc;n trước 140m2, s&acirc;n sau rộng 80m2, nh&agrave; tho&aacute;ng m&aacute;t, tiện mở qu&aacute;n, nh&agrave; c&oacute; đầy đủ tiện nghi để đồ lại v&agrave;o ở liền<br />\r\n<br />\r\nNh&agrave; mặt đường ch&iacute;nh rộng 20m, khu vực tiện đi lại: gần c&aacute;c Khu C&ocirc;ng Nghiệp lớn Mỹ Xu&acirc;n, Ph&uacute; Mỹ, C&ocirc;ng ty quốc tế All Well ng&atilde; ba t&oacute;c ti&ecirc;n, c&aacute;ch th&agrave;nh phố HCM 60km, c&aacute;ch TP B&agrave; Rịa 15km, C&aacute;ch TP Vũng T&agrave;u 35km.<br />\r\n<br />\r\nGần nh&agrave; thờ, gần ủy ban x&atilde;, gần trường học cấp 1, 2, 3, gần nh&agrave; thờ, ch&ugrave;a.', '1 Nguyễn Trãi , Quận 1', '2,6 tỷ', 2, 2500, 'Chính chủ', '0969.491.249', 1, 1, 1, 1, 5, 1, 14, 1, 17, '8', '50', '20', 4, 20, 1417617702, 1418451290, 1, 1, 'Bán nhà và đất diện tích 2500m2 mặt tiền đường giá bán 2 tỷ 600 triệu', 'Bán nhà và đất diện tích 2500m2 mặt tiền đường giá bán 2 tỷ 600 triệu', 'Bán nhà và đất diện tích 2500m2 mặt tiền đường giá bán 2 tỷ 600 triệu', 1, '', '', ''),
(2, 'Bán nhà trong hẻm', 'ban-nha-trong-hem', 'upload/2014/12/13/03_blog_1418451169.jpg', '- Đất thổ cư khu d&acirc;n cư đ&ocirc;ng, tiện &iacute;ch dịch vụ đầy đủ, vị tr&iacute; đắc địa, giao th&ocirc;ng thuận tiện, liền kề 4 khu c&ocirc;ng nghiệp lớn, d&acirc;n cư đ&ocirc;ng: Chỉ cần 10 ph&uacute;t đến Chợ B&agrave; Điểm, 15 ph&uacute;t đến BX An Sương, 20 ph&uacute;t đến KCN T&acirc;n B&igrave;nh, 30 ph&uacute;t đến s&acirc;n bay T&acirc;n Sơn Nhất.<br />\r\n<br />\r\n- Hạ tầng ho&agrave;n thiện 95%: điện, nước, internet, c&aacute;p quang, c&ocirc;ng vi&ecirc;n, s&acirc;n b&oacute;ng đ&aacute;, trường học, bệnh viện, TTTM, chợ, bưu điện, trường đại học, UBND, khu vui chơi giải tr&iacute;, hồ sinh th&aacute;i 20ha. - Đa dạng diện t&iacute;ch: 5X15m, 5x17m, 5x20m, 5x23m, 5x25m, 7x20m, 8x20m, 10x20m, 10x30m. Đường nhựa 12m, vỉa h&egrave; c&acirc;y xanh, đ&egrave;n điện chiếu s&aacute;ng.<br />\r\n<br />\r\nGi&aacute; từ 101 triệu/nền - 285 triệu/nền.<br />\r\n<br />\r\n-đ&acirc;́t th&ocirc;̉ cư 100%, s&ocirc;̉ h&ocirc;̀ng ri&ecirc;ng từng n&ecirc;̀n.<br />\r\n<br />\r\n- Thanh to&aacute;n 35% nhận nền x&acirc;y nh&agrave;, c&ograve;n lại trả g&oacute;p trong v&ograve;ng 18 th&aacute;ng, l&atilde;i suất 0%.<br />\r\n<br />\r\n+ Đợt 1 Thanh to&aacute;n 35% k&yacute; hợp đồng nhận nền x&acirc;y dựng ngay + Đợt 2 Thanh to&aacute;n 10% Thanh to&aacute;n 2 th&aacute;ng tiếp theo<br />\r\n<br />\r\n+ Đợt 3 Thanh to&aacute;n 10% Thanh to&aacute;n 2 th&aacute;ng tiếp theo<br />\r\n<br />\r\n+ Đợt 4 Thanh to&aacute;n 10% Thanh to&aacute;n 2 th&aacute;ng tiếp theo<br />\r\n<br />\r\n+ Đợt 5 Thanh to&aacute;n 10% Thanh to&aacute;n 2 th&aacute;ng tiếp theo<br />\r\n<br />\r\n+ Đợt 7 Thanh to&aacute;n 10% Thanh to&aacute;n 2 th&aacute;ng tiếp theo<br />\r\n<br />\r\n+ Đợt 8 Thanh to&aacute;n 5% Nhận quyền sử dụng đất (sổ hồng)<br />\r\nChiết khấu ngay 4% khi thanh to&aacute;n 75%.<br />\r\nQu&agrave; tặng hấp dẫn: - 5 Tấn xi măng + 5.000 vi&ecirc;n gạch<br />\r\n<br />\r\n- Tặng một bộ salon trị gi&aacute; tr&ecirc;n 10 triệu đồng khi kh&aacute;ch h&agrave;ng x&acirc;y dựng b&ecirc;n cty. - Tư vấn v&agrave; tặng bản vẽ thiết kế, hỗ trợ xin giấy ph&eacute;p x&acirc;y dựng, thủ tục hồ sơ ho&agrave;n c&ocirc;ng.<br />\r\n<br />\r\nĐặc biệt: c&oacute; xe &ocirc; t&ocirc; đưa kh&aacute;ch đi tham quan dự &aacute;n miễn ph&iacute; mỗi ng&agrave;y H&atilde;y li&ecirc;n hệ ngay để c&oacute; vị tr&iacute; tốt nhất, th&ocirc;ng tin đầy đủ cho m&igrave;nh. C&ocirc;ng ty BDS Trần Anh (Chủ đầu tư).', '120 Tôn Đản , Quận 4', '70 triệu', 2, 300, 'Chính chủ', '0969.491.249', 1, 1, 1, 4, 5, 4, 8, 1, 10, '8', '12', '4', 2, 2, 1417619843, 1418451232, 1, 1, 'Bán nhà trong hẻm', 'Bán nhà trong hẻm', 'Bán nhà trong hẻm', 1, '', '', ''),
(3, 'Bán nhà mặt tiền đường Trương Văn Thành quận 9 1,2 tỷ/36m2', 'ban-nha-mat-tien-duong-truong-van-thanh-quan-9-12-ty-36m2', 'upload/2014/12/13/06_home_1418451078.png', 'B&aacute;n nh&agrave; mặt tiền đường Trương Văn Th&agrave;nh quận 9 1,2 tỷ/36m2<br />\r\n<br />\r\nCần b&aacute;n nh&agrave; mặt tiền đường Trương Văn Th&agrave;nh phường Hiệp Ph&uacute;, Quận 9.<br />\r\n<br />\r\nHiện trạng: nh&agrave; cấp 4 c&oacute; g&aacute;c lửng, thuận tiện cho việc kinh doanh hay mở văn ph&ograve;ng, ph&ograve;ng v&eacute;&hellip;<br />\r\n<br />\r\nVị tr&iacute;: nằm gần ng&atilde; tư Trương Văn Th&agrave;nh với T&acirc;n Lập 2, khu d&acirc;n tr&iacute; cao, gần trường học, bệnh viện&hellip;từ nh&agrave; ra xa lộ h&agrave; nội khoảng 200m. giao th&ocirc;ng đi lại thuận tiện&hellip;.<br />\r\n<br />\r\nDiện t&iacute;ch: 3,45x10,5=36m2 Sổ hổng ri&ecirc;ng (ch&iacute;nh chủ)<br />\r\n<br />\r\nGi&aacute; : 1,2 tỷ (thương lượng)<br />\r\n<br />\r\nHướng: T&acirc;y Nam Ngo&agrave;i ra c&ocirc;ng ty ch&uacute;ng t&ocirc;i c&ograve;n chuy&ecirc;n nhận k&yacute; gửi, mua b&aacute;n, hợp thức h&oacute;a giấy tờ, c&aacute;c loại nh&agrave; đất lớn nhỏ.<br />\r\n<br />\r\nMọi chi tiết xin li&ecirc;n hệ: 0166 707 2227 &ndash; 0909 94 64 74(gặp Anh T&ugrave;ng).', 'Đường Trương Văn Thành, Phường Hiệp Phú, Quận 9, Hồ Chí Minh', '1,2 triệu', 1, 36, 'Anh Tùng', '0166 707 2227 - 0909 94 64 74', 1, 1, 1, 9, 5, 0, 2, 1, 2, '3,45', '10,5', '', 0, 0, 1417651208, 1418451135, 2, 14, 'Bán nhà mặt tiền đường Trương Văn Thành quận 9 1,2 tỷ/36m2', 'Bán nhà mặt tiền đường Trương Văn Thành quận 9 1,2 tỷ/36m2', 'Bán nhà mặt tiền đường Trương Văn Thành quận 9 1,2 tỷ/36m2', 1, '', '', ''),
(4, 'Bán nhà mặt tiền Đỗ Nhuận gần chợ Sơn Kỳ', 'bán-nhà-mạt-tièn-dõ-nhuạn-gàn-chọ-son-kỳ', 'upload/2014/12/13/01_parallax_1418451022.jpg', 'ban nha mat tien duong do nhuan', 'Đường Đỗ Nhuận, Phường Sơn Kỳ, Quận Tân Phú, Hồ Chí Minh', '2,7 triệu', 1, 64, 'V.Nga', '0903 345 358', 1, 1, 1, 18, 5, 0, 3, 2, 2, '4', '16', '', 0, 0, 1417651355, 1418451056, 1, 14, 'Bán nhà mặt tiền Đỗ Nhuận gần chợ Sơn Kỳ', 'Bán nhà mặt tiền Đỗ Nhuận gần chợ Sơn Kỳ', 'Bán nhà mặt tiền Đỗ Nhuận gần chợ Sơn Kỳ', 1, '', '', ''),
(5, 'Bán nhà liền kế 5x15 trong khu dân cư biệt lập cao cấp. tiện ích hồ bơi, công viên', 'ban-nha-lien-ke-5x15-trong-khu-dan-cu-biet-lap-cao-cap-tien-ich-ho-boi-cong-vien', 'upload/2014/12/13/03_parallax_1418451372.jpg', 'Cần b&aacute;n nh&agrave; liền kế 5m x 15m, bao gồm 1 trệt, 2 lầu, nằm trong khu d&acirc;n cư biệt lập bảo vệ 24/24<br />\r\n<br />\r\n. C&oacute; hồ bơi, si&ecirc;u thị, s&acirc;n Tennis,c&ocirc;ng vi&ecirc;n c&acirc;y xanh Kh&ocirc;ng kh&iacute; trong l&agrave;nh, c&oacute; con k&ecirc;nh chạy xung quanh.', 'Đường Nguyễn Duy Trinh, Quận 2, Hồ Chí Minh', '2,2 tỷ', 2, 80, 'Liên hệ', '0906999274', 1, 3, 1, 2, 2, 2, 4, 1, 17, '5', '15', '', 0, 0, 1417651556, 1418451389, 1, 1, 'Bán nhà liền kế 5x15 trong khu dân cư biệt lập cao cấp. tiện ích hồ bơi, công viên', 'Bán nhà liền kế 5x15 trong khu dân cư biệt lập cao cấp. tiện ích hồ bơi, công viên', 'Bán nhà liền kế 5x15 trong khu dân cư biệt lập cao cấp. tiện ích hồ bơi, công viên', 1, '', '', ''),
(6, 'Đất biệt thự Đường 23, HBC,TĐ Dự Án Q3, ven Sông Sài Gòn', 'dat-biet-thu-duong-23-hbctd-du-an-q3-ven-song-sai-gon', 'upload/2014/12/13/03_blog_1418451533.jpg', 'B&aacute;n l&ocirc; đất đường 23, Hiệp B&igrave;nh Ch&aacute;nh, Thủ Đức, 8mx15m, sổ đỏ, gi&aacute; 24tr/m2.<br />\r\n<br />\r\nCần b&aacute;n gấp l&ocirc; đất đường 23, Hiệp B&igrave;nh Ch&aacute;nh, Thủ Đức, nằm trong khu dự &aacute;n ph&aacute;t triển nh&agrave; quận 3, sổ đỏ ri&ecirc;ng ch&iacute;nh chủ, đường nhựa hiện hữu rộng r&atilde;i, gần s&ocirc;ng, khu d&acirc;n cư, nhiều tiện &iacute;ch, giao th&ocirc;ng thuận tiện, hướng ra S&Ocirc;NG S&Agrave;I G&Ograve;N c&aacute;ch Phạm Văn Đồng 200m.<br />\r\n<br />\r\nDT: 8mx15m, sổ đỏ ri&ecirc;ng, gi&aacute; 24tr/m2.<br />\r\n<br />\r\nLi&ecirc;n hệ : Anh Quyền 0909.57.67.80 chủ đất, xem đ&acirc;t vui l&ograve;ng gọi trước.', 'Đường Số 23, Phường Hiệp Bình Chánh, Quận Thủ Đức, Hồ Chí Minh', '2,88 tỷ', 2, 120, 'Quyền', '0909576780', 1, 12, 1, 19, 2, 0, 5, 3, 17, '8', '15', '', 0, 0, 1417651749, 1418451559, 1, 1, 'Đất biệt thự Đường 23, HBC,TĐ Dự Án Q3, ven Sông Sài Gòn', 'Đất biệt thự Đường 23, HBC,TĐ Dự Án Q3, ven Sông Sài Gòn', 'Đất biệt thự Đường 23, HBC,TĐ Dự Án Q3, ven Sông Sài Gòn', 1, '', '', ''),
(7, 'Xuất Cảnh Bán Gấp Biệt Thự Sân Vườn-Q.Thủ Đức', 'xuat-canh-ban-gap-biet-thu-san-vuon-qthu-duc', 'upload/2014/12/13/03_home_1418451323.jpg', 'Xuất Cảnh B&aacute;n Gấp Biệt Thự S&acirc;n Vườn-Q.Thủ Đức.DT:320m2=15x22m.<br />\r\n<br />\r\nG&iacute;a:2,7 tỷ Khu d&acirc;n cư an ninh, gần khu biệt thư ARISTA-VILLA Thủ Đưc Sổ Hồng<br />\r\n<br />\r\n-Đường xe hơi LH: 0985-093-256 A.NGỌC', 'Đường 12, Phường Hiệp Bình Phước, Quận Thủ Đức, Hồ Chí Minh', '2,7 tỷ', 2, 320, 'Ngọc', '0934444256', 1, 3, 1, 19, 2, 0, 9, 2, 17, '15', '22', '', 0, 0, 1417651967, 1418451340, 1, 1, 'Xuất Cảnh Bán Gấp Biệt Thự Sân Vườn-Q.Thủ Đức', 'Xuất Cảnh Bán Gấp Biệt Thự Sân Vườn-Q.Thủ Đức', 'Xuất Cảnh Bán Gấp Biệt Thự Sân Vườn-Q.Thủ Đức', 1, '', '', ''),
(8, 'Bán Nhà Và Đất Biệt Thự Ngay Ngã 4 Bình Triệu-Đường Pham Văn Đồng. ', 'ban-nha-va-dat-biet-thu-ngay-nga-4-binh-trieu-duong-pham-van-dong', 'upload/2014/12/13/01_parallax_1418451420.jpg', 'B&aacute;n Nh&agrave; V&agrave; Đất Biệt Thự Ngay Ng&atilde; 4 B&igrave;nh Triệu<br />\r\n<br />\r\n-Đường Pham Văn Đồng. Khu biệt thự Th&agrave;nh Uỷ Thủ Đức. DT: 7x21m150m2<br />\r\n<br />\r\n. X&acirc;y dưng 1 tr&ecirc;t 1 lầu. nh&agrave; thi&ecirc;t kế x&acirc;y đươc 4 tầng<br />\r\n<br />\r\n. Đường 10m. Khu d&acirc;n cư an ninh, yen tĩnh, d&acirc;n tr&iacute; cao G&iacute;a: 4,2 tỷ.<br />\r\n<br />\r\n- V&agrave; 1 l&ocirc; đất Biệt thự Đường 27-Hiệp B&igrave;nh Ch&aacute;nh-Thủ Đức<br />\r\n<br />\r\n- Khu biệt thự 18 căn Gần trường mỹ thuật. G&iacute;a 17tr/m2<br />\r\n<br />\r\nLH: 093-4444-256 A.CH&Iacute;N', 'Đường Hiệp Bình, Phường Hiệp Bình Chánh, Quận Thủ Đức, Hồ Chí Minh', '17 triệu', 1, 150, 'A.CHÍN', '0934444256', 1, 3, 1, 19, 2, 0, 6, 2, 6, '7', '21', '', 0, 0, 1417652092, 1418451459, 1, 1, 'Bán Nhà Và Đất Biệt Thự Ngay Ngã 4 Bình Triệu-Đường Pham Văn Đồng. ', 'Bán Nhà Và Đất Biệt Thự Ngay Ngã 4 Bình Triệu-Đường Pham Văn Đồng. ', 'Bán Nhà Và Đất Biệt Thự Ngay Ngã 4 Bình Triệu-Đường Pham Văn Đồng. ', 1, '', '', ''),
(9, 'Nhà hẻm 68 Trần Quang Khải,Quận 1, diện tích 81m2, giá 1,75 tỷ', 'nha-hem-68-tran-quang-khaiquan-1-dien-tich-81m2-gia-175-ty', 'upload/2014/12/13/01_parallax_1418452939.jpg', 'Cần b&aacute;n gấp 1 căn nh&agrave; hẻm 68 Trần Quang Khải hướng Bắc gần cầu Ho&agrave;ng Hoa Th&aacute;m c&oacute; sổ hồng: DT đất: 20.3m2, DTSD: 81.2m2 gồm đ&uacute;c tầng 1, đ&uacute;c tầng 2, v&agrave; 1 g&aacute;c gỗ tr&ecirc;n c&ugrave;ng.<br />\r\n<br />\r\nNh&agrave; c&oacute; mặt trước rộng khoảng 5m, d&agrave;i 4m, 2 b&ecirc;n h&ocirc;ng l&agrave; 2 hẻm nhỏ n&ecirc;n nh&agrave; c&oacute; nhiều cửa sổ, th&ocirc;ng tho&aacute;ng. Trước nh&agrave; c&oacute; thể để 2 chiếc xe gắn m&aacute;y.<br />\r\n<br />\r\nTương lai nh&agrave; sẽ ra mặt tiền do đường Đặng Dung nối d&agrave;i cắt trước nh&agrave;, kh&ocirc;ng phạm v&agrave;o diện t&iacute;ch nh&agrave; hiện hữu.<br />\r\n<br />\r\nNh&agrave; thuộc khu vực thuộc A18, thuộc đất nh&agrave; ở hiện hữu như theo bản vẽ quy hoạch mới nhất c&oacute; đ&iacute;nh k&egrave;m của th&agrave;nh phố về phường T&acirc;n Định (c&oacute; thể xem tr&ecirc;n phường T&acirc;n Định hay QLĐT quận 1)<br />\r\n<br />\r\nGi&aacute; muốn b&aacute;n nhanh l&agrave; 1,75 tỷ Li&ecirc;n hệ: Ki&ecirc;n - 097.5956.202 - MTG', '123 Nguyen DInh Chieu', '1,75 tỷ', 2, 81, 'Kiên', '097.5956.202', 1, 2, 1, 1, 6, 1, 4, 2, 16, '5', '4', '', 2, 0, 1417652237, 1418452946, 1, 1, 'Nhà hẻm 68 Trần Quang Khải,Quận 1, diện tích 81m2, giá 1,75 tỷ', 'Nhà hẻm 68 Trần Quang Khải,Quận 1, diện tích 81m2, giá 1,75 tỷ', 'Nhà hẻm 68 Trần Quang Khải,Quận 1, diện tích 81m2, giá 1,75 tỷ', 1, '', '', ''),
(10, 'Nhà bán đường Cây Trâm Gò Vấp , 1ty950tr , HXH', 'nha-ban-duong-cay-tram-go-vap-1ty950tr-hxh', 'upload/2014/12/12/01_blog_1418367054.jpg', 'Cần b&aacute;n gấp nh&agrave; đường C&acirc;y Tr&acirc;m - G&ograve; Vấp Hẻm Xe Hơi 6m ra v&agrave;o thoải m&aacute;i X&acirc;y năm 2013 mọi thứ đều như mới Sổ hồng năm 2013 , c&ocirc;ng chứng sang t&ecirc;n ngay S&acirc;n để xe rộng 5m Diện t&iacute;ch 4x17 Gi&aacute; 1ty950tr Hướng Đ&ocirc;ng Bắc Nh&agrave; được x&acirc;y với 4 PN, 4 WC, 1 nh&agrave; bếp v&agrave; c&oacute; s&acirc;n sau phơi đồ Tặng nội thất v&agrave; m&aacute;y lạnh Khu d&acirc;n cư y&ecirc;n tĩnh, đ&ocirc;ng đ&uacute;c , an ninh tuyệt đối Gần trường học, ng&acirc;n h&agrave;ng, chợ..v.v.v. Giao th&ocirc;ng thuận tiện Hẻm kết nối với 3 đường l&agrave; C&acirc;y Tr&acirc;m, Phạm Văn Chi&ecirc;u, Quang Trung LH ch&iacute;nh chủ để đi xem nh&agrave; : 0972004778 - Mr.Hải', 'Đường Cây Trâm, Phường 9, Quận Gò Vấp, Hồ Chí Minh', '1,95 tỷ', 2, 70, 'Mr.Hải', '0972004778 ', 1, 2, 1, 15, 6, 0, 4, 2, 16, '4', '17', '', 0, 0, 1417652330, 1418367062, 1, 1, 'Nhà bán đường Cây Trâm Gò Vấp , 1ty950tr , HXH', 'Nhà bán đường Cây Trâm Gò Vấp , 1ty950tr , HXH', 'Nhà bán đường Cây Trâm Gò Vấp , 1ty950tr , HXH', 1, '', '', ''),
(14, 'ds afdsf sdfasdf asdf dsf as gasg d', 'ds-afdsf-sdfasdf-asdf-dsf-as-gasg-d', 'upload/2014/12/13/06_home_1418431783.png', 'f grfg qwrtgrwegwgtergergafzdgfv rgwe terwhrewherh erheh eh&nbsp;', 'jhgkj', '111', 1, 111, 'dsfasd', 'fsdfadsf g', 2, 1, 1, 13, 2, 1, 1, 1, 14, '11', '11', '21', 2, 2, 1418431789, 1418433032, 1, 1, 'ds afdsf sdfasdf asdf dsf as gasg d', 'ds afdsf sdfasdf asdf dsf as gasg d', 'ds afdsf sdfasdf asdf dsf as gasg d', 0, ' dhdghd', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_addon`
--

CREATE TABLE IF NOT EXISTS `post_addon` (
  `post_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_addon`
--

INSERT INTO `post_addon` (`post_id`, `addon_id`) VALUES
(14, 2),
(14, 3),
(14, 4),
(14, 8),
(14, 9),
(14, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 7),
(4, 8),
(4, 9),
(3, 4),
(3, 5),
(3, 6),
(3, 10),
(3, 11),
(3, 12),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(7, 2),
(7, 3),
(7, 8),
(7, 9),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(8, 1),
(8, 5),
(8, 6),
(8, 7),
(8, 11),
(8, 12),
(6, 2),
(6, 3),
(6, 8),
(6, 9),
(9, 2),
(9, 3),
(9, 4),
(9, 8),
(9, 9),
(9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE IF NOT EXISTS `price` (
`price_id` int(11) NOT NULL,
  `price_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`price_id`, `price_name`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Dưới 1 triệu', 1, 1, 1417106435, 1417106435),
(2, '1 - 3 triệu', 2, 1, 1417106435, 1417106435),
(3, '3 - 5 triệu', 3, 1, 1417106435, 1417106435),
(4, '5 - 10 triệu', 4, 1, 1417106435, 1417106435),
(5, '10 - 15 triệu', 5, 1, 1417106435, 1417106435),
(6, '15 - 20 triệu', 6, 1, 1417106435, 1417106435),
(7, '20 - 30 triệu', 7, 1, 1417106435, 1417106435),
(8, '30 - 40 triệu', 8, 1, 1417106435, 1417106435),
(9, '40 - 60 triệu', 9, 1, 1417106435, 1417106435),
(10, '60 - 80 triệu', 10, 1, 1417106435, 1417106435),
(11, '80 - 100 triệu', 11, 1, 1417106435, 1417106435),
(12, '100 - 300 triệu', 12, 1, 1417106435, 1417106435),
(13, '300 - 500 triệu', 13, 1, 1417106435, 1417106435),
(14, '500 - 800 triệu', 14, 1, 1417106435, 1417106435),
(15, '800 - 1 tỷ', 15, 1, 1417106435, 1417106435),
(16, '1 - 2 tỷ', 16, 1, 1417106435, 1417106435),
(17, '2 - 3 tỷ', 17, 1, 1417106435, 1417106435),
(18, '3 - 4 tỷ', 18, 1, 1417106435, 1417106435),
(19, '4 - 6 tỷ', 19, 1, 1417106435, 1417106435),
(20, '6 - 8 tỷ', 20, 1, 1417106435, 1417106435),
(21, '8 - 10 tỷ', 21, 1, 1417106435, 1417106435),
(22, '10 - 15 tỷ', 22, 1, 1417106435, 1417106435),
(23, '15 - 20 tỷ', 23, 1, 1417106435, 1417106435),
(24, '20 - 30 tỷ', 24, 1, 1417106435, 1417106435),
(25, '30 - 60 tỷ', 25, 1, 1417106435, 1417106435),
(26, 'Trên 60 tỷ', 26, 1, 1417106435, 1417106435);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
`project_id` int(11) NOT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `project_alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `project_type_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(200) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `longt` varchar(100) CHARACTER SET utf8 NOT NULL,
  `latt` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_d` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_k` varchar(255) CHARACTER SET utf8 NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `project_alias`, `project_type_id`, `district_id`, `address`, `contact`, `phone`, `image_url`, `video_url`, `description`, `content`, `hot`, `longt`, `latt`, `status`, `title`, `meta_d`, `meta_k`, `creation_time`, `update_time`) VALUES
(1, 'Chung Cu An Tinh', 'chung-cu-an-tinh', 1, 3, '123 Nguyen DInh Chieu', 'Hoang', '0918783455', 'upload/2014/12/13/03_parallax_1418437559.jpg', 'link', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abcChung cu danh cho nguoi co thu nhap trung binh 123 abcChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc', 1, '', '', 1, 'Chung Cu An Tinh', 'Chung Cu An Tinh', 'Chung Cu An Tinh', 1418437583, 1418438547),
(2, 'Chung Cu Hoang Anh', 'chung-cu-hoang-anh', 1, 1, '123 ABC', 'Hoang', '0918783455', 'upload/2014/12/13/01_parallax_1418438439.jpg', 'link', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc', 1, '', '', 1, 'Chung Cu Hoang Anh', 'Chung Cu Hoang Anh', 'Chung Cu Hoang Anh', 1418452009, 1418452009),
(3, 'Chung Cu An Phat Gia', 'chung-cu-an-phat-gia', 1, 6, '123 Nguyen Trai', 'Hoang huy', '0918783455', 'upload/2014/12/13/03_blog_1418438440.jpg', 'link', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc', 1, '', '', 1, 'Chung Cu An Phat Gia', 'Chung Cu An Phat Gia', 'Chung Cu An Phat Gia', 1418452080, 1418452080),
(4, 'Biệt thự Vĩnh Phát', 'biet-thu-vinh-phat', 2, 5, '123 An Duong Vuong', 'Hoang huy', '0918783455', 'upload/2014/12/13/01_home_1418452769.jpg', 'link', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc', 1, '', '', 1, 'Biệt thự Vĩnh Phát', 'Biệt thự Vĩnh Phát', 'Biệt thự Vĩnh Phát', 1418452107, 1418452775),
(5, 'Biệt thự Cat Tuongs', 'biet-thu-cat-tuongs', 2, 5, '123 Le Hong Phong', 'Tuyen', '0918783455', 'upload/2014/12/13/03_blog_1418452800.jpg', 'link', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc', 1, '', '', 1, 'Biệt thự Cat Tuongs', 'Biệt thự Cat Tuongs', 'Biệt thự Cat Tuongs', 1418452127, 1418452815),
(6, 'Cao ốc Lê Toàn', 'cao-oc-le-toan', 3, 4, '123 Ton Dan', 'Tuyen', '0918783455', 'upload/2014/12/13/03_blog_1418452908.jpg', 'link', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc', 1, '', '', 1, 'Cao ốc Lê Toàn', 'Cao ốc Lê Toàn', 'Cao ốc Lê Toàn', 1418452151, 1418452914),
(7, 'Cao ốc HAGL', 'cao-oc-hagl', 3, 7, '123 Le Văn Luong', 'Long', '0918783455', 'upload/2014/12/13/06_home_1418452878.png', 'link', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc', 1, '', '', 1, 'Cao ốc HAGL', 'Cao ốc HAGL', 'Cao ốc HAGL', 1418452174, 1418452885),
(8, 'Khu dân cư Thanh Đa', 'khu-dan-cu-thanh-da', 5, 14, '123 Thanh Đa', 'Hiếu', '0918783455', 'upload/2014/12/13/06_home_1418452840.png', 'link', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc', 1, '', '', 1, 'Khu dân cư Thanh Đa', 'Khu dân cư Thanh Đa', 'Khu dân cư Thanh Đa', 1418452201, 1418452846),
(9, 'Khu dân cư Thanh Đa', 'khu-dan-cu-thanh-da', 5, 14, '123 Thanh Đa', 'Hiếu', '0918783455', 'upload/2014/12/13/01_home_1418437556.jpg', 'link', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc', 'Chung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc<br />\r\nChung cu danh cho nguoi co thu nhap trung binh 123 abc', 1, '', '', 1, 'Khu dân cư Thanh Đa', 'Khu dân cư Thanh Đa', 'Khu dân cư Thanh Đa', 1418452333, 1418452333);

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE IF NOT EXISTS `project_type` (
`project_type_id` int(11) NOT NULL,
  `project_type_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `project_type_alias` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_type`
--

INSERT INTO `project_type` (`project_type_id`, `project_type_name`, `project_type_alias`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Căn hộ/ Chung cư', 'can-ho-chung-cu', 1, 1, 1417106783, 1417106783),
(2, 'Khu biệt thự', 'khu-biet-thu', 2, 1, 1417106783, 1417106783),
(3, 'Cao ốc văn phòng', 'cao-oc-van-phong', 3, 1, 1417106783, 1417106783),
(4, 'Khu thương mại', 'khu-thuong-mai', 4, 1, 1417106783, 1417106783),
(5, 'Khu dân cư', 'khu-dan-cu', 5, 1, 1417106783, 1417106783),
(6, 'Nhà ở xã hội', 'nha-o-xa-hoi', 6, 1, 1417106783, 1417106783),
(7, 'Khu đô thị mới', 'khu-do-thi-moi', 7, 1, 1417106783, 1417106783);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `staff_name` varchar(100) NOT NULL,
  `staff_name_alias` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_d` varchar(255) NOT NULL,
  `meta_k` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
`tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `tag_name_kd` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`, `tag_name_kd`) VALUES
(1, 'huy hoàng', 'huy-hoang'),
(2, 'Thiết kế 1', 'thiet-ke-1'),
(3, ' Thiết kế 1', 'thiet-ke-1'),
(4, 'Thiết kế 1', 'thiet-ke-1'),
(5, ' ke gy', 'ke-gy'),
(6, 'tag1', 'tag1'),
(7, ' tag2', 'tag2'),
(8, ' tag3', 'tag3'),
(9, '  tag2', 'tag2'),
(10, '  tag3', 'tag3'),
(11, 'trai nghiem', 'trai-nghiem'),
(12, 've que', 've-que'),
(13, ' ve que', 've-que');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
`type_id` int(11) NOT NULL,
  `type_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display_order` int(11) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `display_order`, `creation_time`, `update_time`) VALUES
(1, 'Cần bán', 1, 1417106448, 1417106448),
(2, 'Cho thuê', 2, 1417106448, 1417106448);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `group`, `full_name`, `phone`, `image_url`, `description`, `creation_time`, `update_time`, `status`) VALUES
(1, 'admin@uniquedesign.com.vn', '0c8abdb962f042d1857c66dd26b0c87b', 2, 'Nguyễn Huy Hoàng', '', '', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
`video_id` int(11) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon`
--
ALTER TABLE `addon`
 ADD PRIMARY KEY (`addon_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
 ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `articles_tag`
--
ALTER TABLE `articles_tag`
 ADD PRIMARY KEY (`article_id`,`tag_id`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
 ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
 ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `direction`
--
ALTER TABLE `direction`
 ADD PRIMARY KEY (`direction_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
 ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `estate_type`
--
ALTER TABLE `estate_type`
 ADD PRIMARY KEY (`estate_type_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `legal`
--
ALTER TABLE `legal`
 ADD PRIMARY KEY (`legal_id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
 ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
 ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
 ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_type`
--
ALTER TABLE `project_type`
 ADD PRIMARY KEY (`project_type_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
 ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`tag_id`), ADD FULLTEXT KEY `tag_name` (`tag_name`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
 ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
 ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon`
--
ALTER TABLE `addon`
MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `direction`
--
ALTER TABLE `direction`
MODIFY `direction_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `estate_type`
--
ALTER TABLE `estate_type`
MODIFY `estate_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `legal`
--
ALTER TABLE `legal`
MODIFY `legal_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `project_type`
--
ALTER TABLE `project_type`
MODIFY `project_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
