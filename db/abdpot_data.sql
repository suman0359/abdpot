-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2015 at 11:44 PM
-- Server version: 5.5.42-37.1
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `abdpot_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `book_code` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `book_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `group_id`, `book_code`, `book_name`, `rate`, `status`) VALUES
(1, 1, 'HT2015-1', 'HHC Test paper 2015', 250, 1),
(2, 2, 'HEG-8525-5', 'HSC English Grammer ', 750, 1);

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE IF NOT EXISTS `college` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `thana_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `jonal_id` int(11) NOT NULL,
  `executive_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `district_id`, `thana_id`, `division_id`, `jonal_id`, `executive_id`, `name`, `address`, `status`) VALUES
(1, 1, 7, 1, 1, 8, 'Dhaka City College', 'Road # 4, Dhanmondi - 2012                                    ', 1),
(2, 48, 450, 2, 6, 10, 'Chowmohani S.A College', 'Chawmohani , Noakhali                                    ', 1),
(3, 1, 33, 1, 1, 8, 'Titumir College', '                       Gulshan Dhaka                                                 ', 1),
(4, 56, 311, 4, 7, 13, 'rangpur cant', '                                                                        ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `status`) VALUES
(1, 'Bangla', 1),
(2, 'English', 1),
(3, 'Science', 1),
(4, 'Arts', 1),
(5, 'Business Studies', 1),
(6, 'Math', 1);

-- --------------------------------------------------------

--
-- Table structure for table `distribute`
--

CREATE TABLE IF NOT EXISTS `distribute` (
  `id` int(11) NOT NULL,
  `distribute_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `distribute_date` date NOT NULL,
  `college_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `entryby` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `comments` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `distribute`
--

INSERT INTO `distribute` (`id`, `distribute_time`, `distribute_date`, `college_id`, `teacher_id`, `entryby`, `comments`, `status`) VALUES
(1, '2015-10-27 11:25:05', '2015-10-27', 1, 1, '8', ' Test', 1),
(2, '2015-10-27 11:37:10', '2015-10-27', 4, 2, '13', ' ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `distribute_books`
--

CREATE TABLE IF NOT EXISTS `distribute_books` (
  `distribute_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `line_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `distribute_books`
--

INSERT INTO `distribute_books` (`distribute_id`, `book_id`, `quantity`, `price`, `line_no`, `status`) VALUES
(1, 1, 1, 250, 0, 1),
(1, 2, 1, 750, 1, 1),
(2, 1, 2, 250, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `status`) VALUES
(1, ' Dhaka  ', 1),
(2, 'Bandarban  ', 1),
(3, 'Barguna  ', 1),
(4, 'Barisal  ', 1),
(5, 'Bhola  ', 1),
(6, 'Bogra  ', 1),
(7, 'Brahmanbaria  ', 1),
(8, 'Chandpur  ', 1),
(9, 'Chittagong  ', 1),
(10, 'Chuadanga  ', 1),
(11, 'Comilla  ', 1),
(12, 'Cox''s Bazar  ', 1),
(13, 'Bagerhat ', 1),
(14, 'Dinajpur  ', 1),
(15, 'Faridpur  ', 1),
(16, 'Feni  ', 1),
(17, 'Gaibandha  ', 1),
(18, 'Gazipur  ', 1),
(19, 'Gopalganj  ', 1),
(20, 'Habiganj  ', 1),
(21, 'Jamalpur  ', 1),
(22, 'Jessore  ', 1),
(23, 'Jhalokati  ', 1),
(24, 'Jhenaidah  ', 1),
(25, 'Joypurhat  ', 1),
(26, 'Khagrachhari  ', 1),
(27, 'Khulna  ', 1),
(28, 'Kishoreganj  ', 1),
(29, 'Kurigram  ', 1),
(30, 'Kushtia  ', 1),
(31, 'Lakshmipur  ', 1),
(32, 'Lalmonirhat  ', 1),
(33, 'Madaripur  ', 1),
(34, 'Magura  ', 1),
(35, 'Manikganj  ', 1),
(36, 'Meherpur  ', 1),
(37, 'Moulvibazar  ', 1),
(38, 'Munshiganj  ', 1),
(39, 'Mymensingh  ', 1),
(40, 'Naogaon  ', 1),
(41, 'Narail  ', 1),
(42, 'Narayanganj  ', 1),
(43, 'Narsingdi  ', 1),
(44, 'Natore  ', 1),
(45, 'Nawabganj  ', 1),
(46, 'Netrakona  ', 1),
(47, 'Nilphamari  ', 1),
(48, 'Noakhali  ', 1),
(49, 'Pabna  ', 1),
(50, 'Panchagarh  ', 1),
(51, 'Patuakhali  ', 1),
(52, 'Pirojpur  ', 1),
(53, 'Rajbari  ', 1),
(54, 'Rajshahi  ', 1),
(55, 'Rangamati  ', 1),
(56, 'Rangpur  ', 1),
(57, 'Satkhira  ', 1),
(58, 'Shariatpur  ', 1),
(59, 'Sherpur  ', 1),
(60, 'Sirajganj  ', 1),
(61, 'Sunamganj  ', 1),
(62, 'Sylhet  ', 1),
(63, 'Tangail  ', 1),
(64, 'Thakurgaon  ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE IF NOT EXISTS `division` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `division_head` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `name`, `division_head`, `status`) VALUES
(1, 'Dhaka', 11, 1),
(2, 'Chiattagong', 0, 1),
(3, 'Khulna', 0, 1),
(4, 'rajshahi', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `status`) VALUES
(1, 'Science', 1),
(2, 'Arts', 1),
(3, 'Business Studies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_college`
--

CREATE TABLE IF NOT EXISTS `inventory_college` (
  `id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory_college`
--

INSERT INTO `inventory_college` (`id`, `college_id`, `book_id`, `quantity`, `status`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 2, 1, 1),
(3, 4, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_division`
--

CREATE TABLE IF NOT EXISTS `inventory_division` (
  `id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `division_uid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_jonal`
--

CREATE TABLE IF NOT EXISTS `inventory_jonal` (
  `id` int(11) NOT NULL,
  `jonal_id` int(11) NOT NULL,
  `jonal_uid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jonal`
--

CREATE TABLE IF NOT EXISTS `jonal` (
  `id` int(11) NOT NULL,
  `div_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jonal`
--

INSERT INTO `jonal` (`id`, `div_id`, `name`, `status`) VALUES
(1, 1, 'Dhaka North', 1),
(2, 1, 'Dhaka South', 1),
(3, 3, 'Khulna - A', 1),
(4, 3, 'Khulna - B', 1),
(5, 2, 'Chiattagong East', 1),
(6, 2, 'Chiattagong West', 1),
(7, 4, 'rangpur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_content`
--

CREATE TABLE IF NOT EXISTS `permission_content` (
  `id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `m_action` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_content`
--

INSERT INTO `permission_content` (`id`, `module`, `m_action`, `status`) VALUES
(1, 'user', 'index,add,edit,delete,delete_all,permission', 1),
(2, 'college', 'add,edit,delete,delete_all', 1),
(4, 'scategory', 'add,edit,delete,delete_all', 1),
(5, 'department', 'add,edit,delete,delete_all', 1),
(6, 'supplier', 'add,edit,delete,delete_all', 1),
(7, 'customer', 'add,edit,delete,delete_all', 1),
(8, 'producttype', 'add,edit,delete,delete_all', 1),
(9, 'product', 'add,edit,delete,delete_all', 1),
(10, 'purchase', 'add,printpreview', 1),
(11, 'transfer', 'add,printpreview', 1),
(12, 'inventory', 'product_info', 1),
(13, 'report', 'report_item', 1);

-- --------------------------------------------------------

--
-- Table structure for table `requisition`
--

CREATE TABLE IF NOT EXISTS `requisition` (
  `id` int(11) NOT NULL,
  `requisition_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `requisition_date` date NOT NULL,
  `jonal_id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  `requisition_by` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `comments` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `accept` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `requisition`
--

INSERT INTO `requisition` (`id`, `requisition_time`, `requisition_date`, `jonal_id`, `college_id`, `requisition_by`, `comments`, `accept`, `status`) VALUES
(1, '2015-10-26 04:44:40', '2015-10-26', 1, 1, '8', 'Please send this books.  ', 1, 1),
(2, '2015-10-27 11:33:48', '2015-10-27', 7, 4, '13', ' ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `requisition_books`
--

CREATE TABLE IF NOT EXISTS `requisition_books` (
  `requisition_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `line_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `requisition_books`
--

INSERT INTO `requisition_books` (`requisition_id`, `book_id`, `quantity`, `price`, `line_no`, `status`) VALUES
(1, 1, 3, 250, 0, 1),
(1, 2, 2, 750, 1, 1),
(2, 1, 6, 250, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `college_id`, `dep_id`, `name`, `address`, `status`) VALUES
(1, 1, 1, 'Mr Alauddin', 'Dhaka                                    ', 1),
(2, 4, 1, 'abc', '                                    ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thana`
--

CREATE TABLE IF NOT EXISTS `thana` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=580 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thana`
--

INSERT INTO `thana` (`id`, `district_id`, `name`, `status`) VALUES
(1, 1, 'Agargon', 1),
(2, 1, 'Badda', 1),
(3, 1, 'Bijoynagar', 1),
(4, 1, 'Cantonment', 1),
(5, 1, 'College Gate', 1),
(6, 1, 'Dhaka', 1),
(7, 1, 'Dhanmondi', 1),
(8, 1, 'Firmgate', 1),
(9, 1, 'Fokirapul', 1),
(10, 1, 'Green Road', 1),
(11, 1, 'Kakrail', 1),
(12, 1, 'Kalabagan', 1),
(13, 1, 'Kallyanpur', 1),
(14, 1, 'Karwan Bazar', 1),
(15, 1, 'Khilkhet', 1),
(16, 1, 'Lalmatia', 1),
(17, 1, 'Mirpur', 1),
(18, 1, 'Mogbazar', 1),
(19, 1, 'Mohakhali', 1),
(20, 1, 'Mohammadpur', 1),
(21, 1, 'Motijheel', 1),
(22, 1, 'New Eskaton Road', 1),
(23, 1, 'Pallabi', 1),
(24, 1, 'Panthapath', 1),
(25, 1, 'Purana Paltan', 1),
(26, 1, 'Razarbagh', 1),
(27, 1, 'Shahbagh', 1),
(28, 1, 'Shamoli', 1),
(29, 1, 'Shantinagar', 1),
(30, 1, 'Sher-E-Bangla Nagar', 1),
(31, 1, 'Uttara', 1),
(32, 1, 'Satmasjid Road', 1),
(33, 1, 'Gulshan-2', 1),
(34, 1, 'Mitford Road', 1),
(35, 1, 'Kuril', 1),
(36, 1, 'English Road', 1),
(37, 1, 'Gulshan-1', 1),
(38, 1, 'Rampura', 1),
(41, 1, 'Armanitola', 1),
(42, 1, 'Gandaria', 1),
(43, 1, 'Saidabad', 1),
(44, 1, 'Jatrabari', 1),
(45, 1, 'Doyagong', 1),
(46, 1, 'PostoGhola', 1),
(47, 1, 'Nazrul Islam Saroni', 1),
(48, 1, 'Abul Hasnat Road', 1),
(49, 1, 'Malibagh', 1),
(50, 1, 'Siddeshwari Road', 1),
(51, 1, 'Bashabo', 1),
(52, 1, 'Tejgaon', 1),
(53, 1, 'Mohakhali DOHS', 1),
(54, 1, 'Babubazar', 1),
(55, 1, 'Banani', 1),
(56, 1, 'Baridhara DOHS', 1),
(57, 1, 'Bashabo', 1),
(58, 1, 'Bonosree', 1),
(59, 1, 'Boshundhora', 1),
(60, 1, 'Khilgaon', 1),
(61, 1, 'Madertak', 1),
(62, 1, 'Mitford Road', 1),
(63, 1, 'Sabujbagh', 1),
(64, 1, 'Shajahanpur', 1),
(65, 1, '    Dhamrai   ', 1),
(66, 1, '    Dohar   ', 1),
(67, 1, '    Keraniganj   ', 1),
(68, 1, '    Nawabganj   ', 1),
(69, 1, '    Savar   ', 1),
(70, 15, '    Alfadanga   ', 1),
(71, 15, '    Bhanga   ', 1),
(72, 15, '    Boalmari   ', 1),
(73, 15, '    Charbhadrasan   ', 1),
(74, 15, '    Faridpur Sadar   ', 1),
(75, 15, '    Madhukhali   ', 1),
(76, 15, '    Nagarkanda   ', 1),
(77, 15, '    Sadarpur   ', 1),
(78, 15, '    Saltha   ', 1),
(79, 18, '    Gazipur Sadar   ', 1),
(80, 18, '    Kaliakair   ', 1),
(81, 18, '    Kaliganj   ', 1),
(82, 18, '    Kapasia   ', 1),
(83, 18, '    Sreepur   ', 1),
(84, 19, '    Gopalganj Sadar   ', 1),
(85, 19, '    Kashiani   ', 1),
(86, 19, '    Kotalipara   ', 1),
(87, 19, '    Muksudpur   ', 1),
(88, 19, '    Tungipara   ', 1),
(89, 21, '    Baksiganj   ', 1),
(90, 21, '    Dewanganj   ', 1),
(91, 21, '    Islampur   ', 1),
(92, 21, '    Jamalpur Sadar   ', 1),
(93, 21, '    Madarganj   ', 1),
(94, 21, '    Melandaha   ', 1),
(95, 21, '    Sarishabari   ', 1),
(96, 28, '    Astagram   ', 1),
(97, 28, '    Bajitpur   ', 1),
(98, 28, '    Bhairab   ', 1),
(99, 28, '    Hossainpur   ', 1),
(100, 28, '    Itna   ', 1),
(101, 28, '    Karimganj   ', 1),
(102, 28, '    Katiadi   ', 1),
(103, 28, '    Kishoreganj Sadar   ', 1),
(104, 28, '    Kuliarchar   ', 1),
(105, 28, '    Mithamain   ', 1),
(106, 28, '    Nikli   ', 1),
(107, 28, '    Pakundia   ', 1),
(108, 28, '    Tarail   ', 1),
(109, 33, '    Rajoir   ', 1),
(110, 33, '    Madaripur Sadar   ', 1),
(111, 33, '    Kalkini   ', 1),
(112, 33, '    Shibchar   ', 1),
(113, 35, '    Daulatpur   ', 1),
(114, 35, '    Ghior   ', 1),
(115, 35, '    Harirampur   ', 1),
(116, 35, '    Manikgonj Sadar   ', 1),
(117, 35, '    Saturia   ', 1),
(118, 35, '    Shivalaya   ', 1),
(119, 35, '    Singair   ', 1),
(120, 38, '    Gazaria   ', 1),
(121, 38, '    Lohajang   ', 1),
(122, 38, '    Munshiganj Sadar   ', 1),
(123, 38, '    Sirajdikhan   ', 1),
(124, 38, '    Sreenagar   ', 1),
(125, 38, '    Tongibari   ', 1),
(126, 39, '    Bhaluka   ', 1),
(127, 39, '    Dhobaura   ', 1),
(128, 39, '    Fulbaria   ', 1),
(129, 39, '    Gaffargaon   ', 1),
(130, 39, '    Gauripur   ', 1),
(131, 39, '    Haluaghat   ', 1),
(132, 39, '    Ishwarganj   ', 1),
(133, 39, '    Mymensingh Sadar   ', 1),
(134, 39, '    Muktagachha   ', 1),
(135, 39, '    Nandail   ', 1),
(136, 39, '    Phulpur   ', 1),
(137, 39, '    Trishal   ', 1),
(138, 39, '    Tara Khanda   ', 1),
(139, 42, '    Araihazar   ', 1),
(140, 42, '    Bandar   ', 1),
(141, 42, '    Narayanganj Sadar   ', 1),
(142, 42, '    Rupganj   ', 1),
(143, 42, '    Sonargaon   ', 1),
(144, 42, '    Fatullah   ', 1),
(145, 42, '    Siddhirganj   ', 1),
(146, 46, '    Atpara   ', 1),
(147, 46, '    Barhatta   ', 1),
(148, 46, '    Durgapur   ', 1),
(149, 46, '    Khaliajuri   ', 1),
(150, 46, '    Kalmakanda   ', 1),
(151, 46, '    Kendua   ', 1),
(152, 46, '    Madan   ', 1),
(153, 46, '    Mohanganj   ', 1),
(154, 46, '    Netrokona Sadar   ', 1),
(155, 46, '    Purbadhala   ', 1),
(156, 53, '    Baliakandi   ', 1),
(157, 53, '    Goalandaghat   ', 1),
(158, 53, '    Pangsha   ', 1),
(159, 53, '    Rajbari Sadar   ', 1),
(160, 53, '    Kalukhali   ', 1),
(161, 58, '    Bhedarganj   ', 1),
(162, 58, '    Damudya   ', 1),
(163, 58, '    Gosairhat   ', 1),
(164, 58, '    Naria   ', 1),
(165, 58, '    Shariatpur Sadar   ', 1),
(166, 58, '    Zanjira   ', 1),
(167, 58, '    Shakhipur   ', 1),
(168, 59, '    Jhenaigati   ', 1),
(169, 59, '    Nakla   ', 1),
(170, 59, '    Nalitabari   ', 1),
(171, 59, '    Sherpur Sadar   ', 1),
(172, 59, '    Sreebardi   ', 1),
(173, 63, '    Gopalpur   ', 1),
(174, 63, '    Basail   ', 1),
(175, 63, '    Bhuapur   ', 1),
(176, 63, '    Delduar   ', 1),
(177, 63, '    Ghatail   ', 1),
(178, 63, '    Kalihati   ', 1),
(179, 63, '    Madhupur   ', 1),
(180, 63, '    Mirzapur   ', 1),
(181, 63, '    Nagarpur   ', 1),
(182, 63, '    Sakhipur   ', 1),
(183, 63, '    Dhanbari   ', 1),
(184, 63, '    Tangail Sadar   ', 1),
(185, 43, '    Narsingdi Sadar   ', 1),
(186, 43, '    Belabo   ', 1),
(187, 43, '    Monohardi   ', 1),
(188, 43, '    Palash   ', 1),
(189, 43, '    Raipura   ', 1),
(190, 43, '    Shibpur   ', 1),
(191, 6, '    Adamdighi   ', 1),
(192, 6, '    Bogra Sadar   ', 1),
(193, 6, '    Dhunat   ', 1),
(194, 6, '    Dhupchanchia   ', 1),
(195, 6, '    Gabtali   ', 1),
(196, 6, '    Kahaloo   ', 1),
(197, 6, '    Nandigram   ', 1),
(198, 6, '    Sariakandi   ', 1),
(199, 6, '    Sahajanpur   ', 1),
(200, 6, '    Sherpur   ', 1),
(201, 6, '    Shibganj   ', 1),
(202, 6, '    Sonatola   ', 1),
(203, 25, '    Akkelpur   ', 1),
(204, 25, '    Joypurhat Sadar   ', 1),
(205, 25, '    Kalai   ', 1),
(206, 25, '    Khetlal   ', 1),
(207, 25, '    Panchbibi   ', 1),
(208, 40, '    Atrai   ', 1),
(209, 40, '    Badalgachhi   ', 1),
(210, 40, '    Manda   ', 1),
(211, 40, '    Dhamoirhat   ', 1),
(212, 40, '    Mohadevpur   ', 1),
(213, 40, '    Naogaon Sadar   ', 1),
(214, 40, '    Niamatpur   ', 1),
(215, 40, '    Patnitala   ', 1),
(216, 40, '    Porsha   ', 1),
(217, 40, '    Raninagar   ', 1),
(218, 40, '    Sapahar   ', 1),
(219, 44, '    Bagatipara   ', 1),
(220, 44, '    Baraigram   ', 1),
(221, 44, '    Gurudaspur   ', 1),
(222, 44, '    Lalpur   ', 1),
(223, 44, '    Natore Sadar   ', 1),
(224, 44, '    Singra   ', 1),
(225, 44, '    Naldanga   ', 1),
(226, 45, '    Bholahat   ', 1),
(227, 45, '    Gomastapur   ', 1),
(228, 45, '    Nachole   ', 1),
(229, 45, '    Nawabganj Sadar   ', 1),
(230, 45, '    Shibganj   ', 1),
(231, 49, '    Atgharia   ', 1),
(232, 49, '    Bera   ', 1),
(233, 49, '    Bhangura   ', 1),
(234, 49, '    Chatmohar   ', 1),
(235, 49, '    Faridpur   ', 1),
(236, 49, '    Ishwardi   ', 1),
(237, 49, '    Pabna Sadar   ', 1),
(238, 49, '    Santhia   ', 1),
(239, 49, '    Sujanagar   ', 1),
(240, 49, '    Ataikula   ', 1),
(241, 54, '    Bagha   ', 1),
(242, 54, '    Bagmara   ', 1),
(243, 54, '    Charghat   ', 1),
(244, 54, '    Durgapur   ', 1),
(245, 54, '    Godagari   ', 1),
(246, 54, '    Mohanpur   ', 1),
(247, 54, '    Paba   ', 1),
(248, 54, '    Puthia   ', 1),
(249, 54, '    Tanore   ', 1),
(250, 54, '    Boalia Thana', 1),
(251, 54, '    Matihar Thana', 1),
(252, 54, '    Rajpara Thana', 1),
(253, 54, '    Shah Mokdum Thana', 1),
(254, 60, '    Belkuchi   ', 1),
(255, 60, '    Chauhali   ', 1),
(256, 60, '    Kamarkhanda   ', 1),
(257, 60, '    Kazipur   ', 1),
(258, 60, '    Raiganj   ', 1),
(259, 60, '    Shahjadpur   ', 1),
(260, 60, '    Sirajganj Sadar   ', 1),
(261, 60, '    Tarash   ', 1),
(262, 60, '    Ullahpara   ', 1),
(263, 14, '    Birampur   ', 1),
(264, 14, '    Birganj   ', 1),
(265, 14, '    Biral   ', 1),
(266, 14, '    Bochaganj   ', 1),
(267, 14, '    Chirirbandar   ', 1),
(268, 14, '    Phulbari   ', 1),
(269, 14, '    Ghoraghat   ', 1),
(270, 14, '    Hakimpur   ', 1),
(271, 14, '    Kaharole   ', 1),
(272, 14, '    Khansama   ', 1),
(273, 14, '    Dinajpur Sadar   ', 1),
(274, 14, '    Nawabganj   ', 1),
(275, 14, '    Parbatipur   ', 1),
(276, 17, '    Phulchhari   ', 1),
(277, 17, '    Gaibandha Sadar   ', 1),
(278, 17, '    Gobindaganj   ', 1),
(279, 17, '    Palashbari   ', 1),
(280, 17, '    Sadullapur   ', 1),
(281, 17, '    Sughatta   ', 1),
(282, 17, '    Sundarganj   ', 1),
(283, 29, '    Bhurungamari   ', 1),
(284, 29, '    Char Rajibpur   ', 1),
(285, 29, '    Chilmari   ', 1),
(286, 29, '    Phulbari   ', 1),
(287, 29, '    Kurigram Sadar   ', 1),
(288, 29, '    Nageshwari   ', 1),
(289, 29, '    Rajarhat   ', 1),
(290, 29, '    Raomari   ', 1),
(291, 29, '    Ulipur   ', 1),
(292, 31, '    Aditmari   ', 1),
(293, 31, '    Hatibandha   ', 1),
(294, 31, '    Kaliganj   ', 1),
(295, 31, '    Lalmonirhat Sadar   ', 1),
(296, 31, '    Patgram   ', 1),
(297, 47, '    Dimla   ', 1),
(298, 47, '    Domar   ', 1),
(299, 47, '    Jaldhaka   ', 1),
(300, 47, '    Kishoreganj   ', 1),
(301, 47, '    Nilphamari Sadar   ', 1),
(302, 47, '    Saidpur   ', 1),
(303, 50, '    Atwari   ', 1),
(304, 50, '    Boda   ', 1),
(305, 50, '    Debiganj   ', 1),
(306, 50, '    Panchagarh Sadar   ', 1),
(307, 50, '    Tetulia   ', 1),
(308, 56, '    Badarganj   ', 1),
(309, 56, '    Gangachhara   ', 1),
(310, 56, '    Kaunia   ', 1),
(311, 56, '    Rangpur Sadar   ', 1),
(312, 56, '    Mithapukur   ', 1),
(313, 56, '    Pirgachha   ', 1),
(314, 56, '    Pirganj   ', 1),
(315, 56, '    Taraganj   ', 1),
(316, 64, '    Baliadangi   ', 1),
(317, 64, '    Haripur   ', 1),
(318, 64, '    Pirganj   ', 1),
(319, 64, '    Ranisankail   ', 1),
(320, 64, '    Thakurgaon Sadar   ', 1),
(321, 3, '    Amtali   ', 1),
(322, 3, '    Bamna   ', 1),
(323, 3, '    Barguna Sadar   ', 1),
(324, 3, '    Betagi   ', 1),
(325, 3, '    Patharghata   ', 1),
(326, 3, '    Taltoli   ', 1),
(327, 4, '    Agailjhara   ', 1),
(328, 4, '    Babuganj   ', 1),
(329, 4, '    Bakerganj   ', 1),
(330, 4, '    Banaripara   ', 1),
(331, 4, '    Gaurnadi   ', 1),
(332, 4, '    Hizla   ', 1),
(333, 4, '    Barisal Sadar   ', 1),
(334, 4, '    Mehendiganj   ', 1),
(335, 4, '    Muladi   ', 1),
(336, 4, '    Wazirpur   ', 1),
(337, 5, '    Bhola Sadar   ', 1),
(338, 5, '    Burhanuddin   ', 1),
(339, 5, '    Char Fasson   ', 1),
(340, 5, '    Daulatkhan   ', 1),
(341, 5, '    Lalmohan   ', 1),
(342, 5, '    Manpura   ', 1),
(343, 5, '    Tazumuddin   ', 1),
(344, 23, '    Jhalokati Sadar   ', 1),
(345, 23, '    Kathalia   ', 1),
(346, 23, '    Nalchity   ', 1),
(347, 23, '    Rajapur   ', 1),
(348, 51, '    Bauphal   ', 1),
(349, 51, '    Dashmina   ', 1),
(350, 51, '    Galachipa   ', 1),
(351, 51, '    Kalapara   ', 1),
(352, 51, '    Mirzaganj   ', 1),
(353, 51, '    Patuakhali Sadar   ', 1),
(354, 51, '    Rangabali   ', 1),
(355, 51, '    Dumki   ', 1),
(356, 52, '    Bhandaria   ', 1),
(357, 52, '    Kawkhali   ', 1),
(358, 52, '    Mathbaria   ', 1),
(359, 52, '    Nazirpur   ', 1),
(360, 52, '    Pirojpur Sadar   ', 1),
(361, 52, '    Nesarabad (Swarupkati)   ', 1),
(362, 52, '    Zianagor   ', 1),
(363, 2, '    Ali Kadam   ', 1),
(364, 2, '    Bandarban Sadar   ', 1),
(365, 2, '    Lama   ', 1),
(366, 2, '    Naikhongchhari   ', 1),
(367, 2, '    Rowangchhari   ', 1),
(368, 2, '    Ruma   ', 1),
(369, 2, '    Thanchi   ', 1),
(370, 7, '    Akhaura   ', 1),
(371, 7, '    Bancharampur   ', 1),
(372, 7, '    Brahmanbaria Sadar   ', 1),
(373, 7, '    Kasba   ', 1),
(374, 7, '    Nabinagar   ', 1),
(375, 7, '    Nasirnagar   ', 1),
(376, 7, '    Sarail   ', 1),
(377, 7, '    Ashuganj   ', 1),
(378, 7, '    Bijoynagar   ', 1),
(379, 8, '    Chandpur Sadar   ', 1),
(380, 8, '    Faridganj   ', 1),
(381, 8, '    Haimchar   ', 1),
(382, 8, '    Haziganj   ', 1),
(383, 8, '    Kachua   ', 1),
(384, 8, '    Matlab Dakshin   ', 1),
(385, 8, '    Matlab Uttar   ', 1),
(386, 8, '    Shahrasti   ', 1),
(387, 9, '    Anwara   ', 1),
(388, 9, '    Banshkhali   ', 1),
(389, 9, '    Boalkhali   ', 1),
(390, 9, '    Chandanaish   ', 1),
(391, 9, '    Fatikchhari   ', 1),
(392, 9, '    Hathazari   ', 1),
(393, 9, '    Lohagara   ', 1),
(394, 9, '    Mirsharai   ', 1),
(395, 9, '    Patiya   ', 1),
(396, 9, '    Rangunia   ', 1),
(397, 9, '    Raozan   ', 1),
(398, 9, '    Sandwip   ', 1),
(399, 9, '    Satkania   ', 1),
(400, 9, '    Sitakunda   ', 1),
(401, 9, '    Bandor (Chittagong Port) Thana', 1),
(402, 9, '    Chandgaon Thana', 1),
(403, 9, '    Double Morring Thana', 1),
(404, 9, '    Kotwali Thana', 1),
(405, 9, '    Pahartali Thana', 1),
(406, 9, '    Panchlaish Thana', 1),
(407, 11, '    Barura   ', 1),
(408, 11, '    Brahmanpara   ', 1),
(409, 11, '    Burichong   ', 1),
(410, 11, '    Chandina   ', 1),
(411, 11, '    Chauddagram   ', 1),
(412, 11, '    Daudkandi   ', 1),
(413, 11, '    Debidwar   ', 1),
(414, 11, '    Homna   ', 1),
(415, 11, '    Laksam   ', 1),
(416, 11, '    Muradnagar   ', 1),
(417, 11, '    Nangalkot   ', 1),
(418, 11, '    Comilla Sadar   ', 1),
(419, 11, '    Meghna   ', 1),
(420, 11, '    Titas   ', 1),
(421, 11, '    Monohargonj   ', 1),
(422, 11, '    Sadar South   ', 1),
(423, 12, '    Chakaria   ', 1),
(424, 12, '    Cox''s Bazar Sadar   ', 1),
(425, 12, '    Kutubdia   ', 1),
(426, 12, '    Maheshkhali   ', 1),
(427, 12, '    Ramu   ', 1),
(428, 12, '    Teknaf   ', 1),
(429, 12, '    Ukhia   ', 1),
(430, 12, '    Pekua   ', 1),
(431, 16, '    Chhagalnaiya   ', 1),
(432, 16, '    Daganbhuiyan   ', 1),
(433, 16, '    Feni Sadar   ', 1),
(434, 16, '    Parshuram   ', 1),
(435, 16, '    Sonagazi   ', 1),
(436, 16, '    Fulgazi   ', 1),
(437, 26, '    Dighinala   ', 1),
(438, 26, '    Khagrachhari   ', 1),
(439, 26, '    Lakshmichhari   ', 1),
(440, 26, '    Mahalchhari   ', 1),
(441, 26, '    Manikchhari   ', 1),
(442, 26, '    Matiranga   ', 1),
(443, 26, '    Panchhari   ', 1),
(444, 26, '    Ramgarh   ', 1),
(445, 31, '    Lakshmipur Sadar   ', 1),
(446, 31, '    Raipur   ', 1),
(447, 31, '    Ramganj   ', 1),
(448, 31, '    Ramgati   ', 1),
(449, 31, '    Komolnagar   ', 1),
(450, 48, '    Begumganj   ', 1),
(451, 48, '    Noakhali Sadar   ', 1),
(452, 48, '    Chatkhil   ', 1),
(453, 48, '    Companiganj   ', 1),
(454, 48, '    Hatiya   ', 1),
(455, 48, '    Senbagh   ', 1),
(456, 48, '    Sonaimuri   ', 1),
(457, 48, '    Subarnachar   ', 1),
(458, 48, '    Kabirhat   ', 1),
(459, 55, '    Bagaichhari   ', 1),
(460, 55, '    Barkal   ', 1),
(461, 55, '    Kawkhali (Betbunia)   ', 1),
(462, 55, '    Belaichhari   ', 1),
(463, 55, '    Kaptai   ', 1),
(464, 55, '    Juraichhari   ', 1),
(465, 55, '    Langadu   ', 1),
(466, 55, '    Naniyachar   ', 1),
(467, 55, '    Rajasthali   ', 1),
(468, 55, '    Rangamati Sadar   ', 1),
(469, 20, '    Ajmiriganj   ', 1),
(470, 20, '    Bahubal   ', 1),
(471, 20, '    Baniyachong   ', 1),
(472, 20, '    Chunarughat   ', 1),
(473, 20, '    Habiganj Sadar   ', 1),
(474, 20, '    Lakhai   ', 1),
(475, 20, '    Madhabpur   ', 1),
(476, 20, '    Nabiganj   ', 1),
(477, 37, '    Barlekha   ', 1),
(478, 37, '    Kamalganj   ', 1),
(479, 37, '    Kulaura   ', 1),
(480, 37, '    Moulvibazar Sadar   ', 1),
(481, 37, '    Rajnagar   ', 1),
(482, 37, '    Sreemangal   ', 1),
(483, 37, '    Juri   ', 1),
(484, 61, '    Bishwamvarpur   ', 1),
(485, 61, '    Chhatak   ', 1),
(486, 61, '    Derai   ', 1),
(487, 61, '    Dharampasha   ', 1),
(488, 61, '    Dowarabazar   ', 1),
(489, 61, '    Jagannathpur   ', 1),
(490, 61, '    Jamalganj   ', 1),
(491, 61, '    Sullah   ', 1),
(492, 61, '    Sunamganj Sadar   ', 1),
(493, 61, '    Tahirpur   ', 1),
(494, 61, '    South Sunamganj   ', 1),
(495, 62, '    Balaganj   ', 1),
(496, 62, '    Beanibazar   ', 1),
(497, 62, '    Bishwanath   ', 1),
(498, 62, '    Companigonj   ', 1),
(499, 62, '    Fenchuganj   ', 1),
(500, 62, '    Golapganj   ', 1),
(501, 62, '    Gowainghat   ', 1),
(502, 62, '    Jaintiapur   ', 1),
(503, 62, '    Kanaighat   ', 1),
(504, 62, '    Sylhet Sadar   ', 1),
(505, 62, '    Zakiganj   ', 1),
(506, 62, '    South Shurma   ', 1),
(507, 13, '    Bagerhat Sadar   ', 1),
(508, 13, '    Chitalmari   ', 1),
(509, 13, '    Fakirhat   ', 1),
(510, 13, '    Kachua   ', 1),
(511, 13, '    Mollahat   ', 1),
(512, 13, '    Mongla   ', 1),
(513, 13, '    Morrelganj   ', 1),
(514, 13, '    Rampal   ', 1),
(515, 13, '    Sarankhola   ', 1),
(516, 10, '    Alamdanga   ', 1),
(517, 10, '    Chuadanga Sadar   ', 1),
(518, 10, '    Damurhuda   ', 1),
(519, 10, '    Jibannagar   ', 1),
(520, 22, '    Abhaynagar   ', 1),
(521, 22, '    Bagherpara   ', 1),
(522, 22, '    Chaugachha   ', 1),
(523, 22, '    Jhikargachha   ', 1),
(524, 22, '    Keshabpur   ', 1),
(525, 22, '    Jessore Sadar   ', 1),
(526, 22, '    Manirampur   ', 1),
(527, 22, '    Sharsha   ', 1),
(528, 24, '    Harinakunda   ', 1),
(529, 24, '    Jhenaidah Sadar   ', 1),
(530, 24, '    Kaliganj   ', 1),
(531, 24, '    Kotchandpur   ', 1),
(532, 24, '    Maheshpur   ', 1),
(533, 24, '    Shailkupa   ', 1),
(534, 27, '    Batiaghata   ', 1),
(535, 27, '    Dacope   ', 1),
(536, 27, '    Dumuria   ', 1),
(537, 27, '    Dighalia   ', 1),
(538, 27, '    Koyra   ', 1),
(539, 27, '    Paikgachha   ', 1),
(540, 27, '    Phultala   ', 1),
(541, 27, '    Rupsha   ', 1),
(542, 27, '    Terokhada   ', 1),
(543, 27, '    Daulatpur Thana', 1),
(544, 27, '    Khalishpur Thana', 1),
(545, 27, '    Khan Jahan Ali Thana', 1),
(546, 27, '    Kotwali Thana', 1),
(547, 27, '    Sonadanga Thana', 1),
(548, 27, '    Harintana Thana', 1),
(549, 30, '    Bheramara   ', 1),
(550, 30, '    Daulatpur   ', 1),
(551, 30, '    Khoksa   ', 1),
(552, 30, '    Kumarkhali   ', 1),
(553, 30, '    Kushtia Sadar   ', 1),
(554, 30, '    Mirpur   ', 1),
(555, 30, '    Shekhpara   ', 1),
(556, 34, '    Magura Sadar   ', 1),
(557, 34, '    Mohammadpur   ', 1),
(558, 34, '    Shalikha   ', 1),
(559, 34, '    Sreepur   ', 1),
(560, 36, '    Gangni   ', 1),
(561, 36, '    Meherpur Sadar   ', 1),
(562, 36, '    Mujibnagar   ', 1),
(563, 41, '    Kalia   ', 1),
(564, 41, '    Lohagara   ', 1),
(565, 41, '    Narail Sadar   ', 1),
(566, 41, '    Naragati Thana', 1),
(567, 57, '    Assasuni   ', 1),
(568, 57, '    Debhata   ', 1),
(569, 57, '    Kalaroa   ', 1),
(570, 57, '    Kaliganj   ', 1),
(571, 57, '    Satkhira Sadar   ', 1),
(572, 57, '    Shyamnagar   ', 1),
(573, 57, '    Tala   ', 1),
(574, 57, 'Debhata   ', 1),
(575, 57, ' Kalaroa   ', 1),
(576, 57, ' Kaliganj   ', 1),
(577, 57, 'Satkhira Sadar   ', 1),
(578, 57, ' Shyamnagar   ', 1),
(579, 57, ' Tala   ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `id` int(11) NOT NULL,
  `transfer_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `challan_date` date NOT NULL,
  `memo_no` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `rid` int(11) NOT NULL,
  `transfer_to` int(11) NOT NULL,
  `transfer_from_div` int(11) NOT NULL,
  `to_jonal` int(11) NOT NULL,
  `entryby` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `comments` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `transfer_time`, `challan_date`, `memo_no`, `rid`, `transfer_to`, `transfer_from_div`, `to_jonal`, `entryby`, `comments`, `status`) VALUES
(1, '2015-10-27 11:15:14', '2015-10-27', 'ABC 22852855', 0, 1, 0, 0, '1', ' Test send', 1),
(2, '2015-10-27 11:30:05', '2015-10-27', 'Apooo', 1, 1, 0, 0, '1', ' test final', 1),
(3, '2015-10-27 11:35:20', '2015-10-27', '45436', 2, 4, 0, 0, '1', ' rtrtret', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_item`
--

CREATE TABLE IF NOT EXISTS `transfer_item` (
  `transfer_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `line_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transfer_item`
--

INSERT INTO `transfer_item` (`transfer_id`, `book_id`, `quantity`, `price`, `line_no`, `status`) VALUES
(1, 1, 1, 250, 0, 1),
(1, 2, 1, 750, 1, 1),
(2, 1, 1, 250, 0, 1),
(2, 2, 1, 750, 1, 1),
(3, 1, 4, 250, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pdepartment` int(11) NOT NULL COMMENT '''0''=" All permission". and '' others define in department table''',
  `entryby` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `jonal_id` int(11) NOT NULL,
  `status` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `image`, `address`, `email`, `password`, `phone`, `user_type`, `pdepartment`, `entryby`, `division_id`, `jonal_id`, `status`) VALUES
(1, 'BBTech Admin', 'logo.png', 'Dhaka-1200', 'admin@book', 'c8837b23ff8aaa8a2dde915473ce0991', '01922483273', '1', 1, 1, 6, 5, '1'),
(2, 'suman0359', 'suman.jpg', 'House#01, Road# 06, Block# C, Banasree, Rampura', 'tasfir_suman@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '01911198784', '1', 0, 1, 0, 0, '1'),
(3, 'suman0359', '', 'dasdasd', 'tasfir_suman@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '', '0', 0, 1, 0, 0, '13'),
(4, 'Dhaka', '', '', '', 'c8837b23ff8aaa8a2dde915473ce0991', '', '', 0, 1, 0, 0, '13'),
(5, 'Dhaka', '', '', '', '', '', '', 0, 1, 0, 0, '13'),
(6, 'Homepage Banners', '', '', '', '', '', '', 0, 1, 0, 0, '13'),
(7, 'Test user ', '', 'adfdfdf', 'name@email.com', '202cb962ac59075b964b07152d234b70', '123252', '3', 6, 1, 0, 0, '13'),
(8, 'Lokman Alam', '', 'lokman dhaka', 'lokmna@yahoo.com', 'd0970714757783e6cf17b26fb8e2298f', '123', '5', 0, 1, 1, 1, '1'),
(9, 'Mr. xyz', '', 'dsfsdf', 'sbtalk21@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '3234234', '5', 0, 1, 1, 2, '1'),
(10, 'Mr. ABC KK', '', 'fsdfsdf', 'demo@bbtdemo.com', 'd41d8cd98f00b204e9800998ecf8427e', 'etete', '5', 0, 1, 2, 6, '1'),
(11, 'younus Khan', '', 'asdasd', 'yk@yao.com', '202cb962ac59075b964b07152d234b70', '052', '3', 0, 1, 3, 0, '13'),
(12, 'hasinuzzama', '', 'eres', 'hasin@gmail.com', 'e99a18c428cb38d5f260853678922e03', '01912209733', '3', 0, 1, 0, 0, '1'),
(13, 'rakib', '', 'rwerewr', 'rakib@gmail.com', '8b14dbe9e9e0551a989d61c4c9fd70f7', '019176677', '5', 0, 1, 4, 7, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE IF NOT EXISTS `user_permission` (
  `uid` int(11) NOT NULL,
  `module` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `m_action` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `entryby` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`uid`, `module`, `m_action`, `entryby`, `status`) VALUES
(1, 'user', 'a:6:{i:0;s:5:"index";i:1;s:3:"add";i:2;s:4:"edit";i:3;s:6:"delete";i:4;s:10:"delete_all";i:5;s:10:"permission";}', 1, 1),
(1, 'category', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(1, 'scategory', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(1, 'department', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(1, 'supplier', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(1, 'customer', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(1, 'producttype', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(1, 'product', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(1, 'purchase', 'a:2:{i:0;s:3:"add";i:1;s:12:"printpreview";}', 1, 1),
(1, 'sale', 'a:2:{i:0;s:3:"add";i:1;s:12:"printpreview";}', 1, 1),
(1, 'inventory', 'a:1:{i:0;s:12:"product_info";}', 1, 1),
(1, 'report', 'a:1:{i:0;s:11:"report_item";}', 1, 1),
(2, 'user', 'a:6:{i:0;s:5:"index";i:1;s:3:"add";i:2;s:4:"edit";i:3;s:6:"delete";i:4;s:10:"delete_all";i:5;s:10:"permission";}', 1, 1),
(2, 'college', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(2, 'scategory', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(2, 'department', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(2, 'supplier', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(2, 'customer', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(2, 'producttype', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(2, 'product', 'a:4:{i:0;s:3:"add";i:1;s:4:"edit";i:2;s:6:"delete";i:3;s:10:"delete_all";}', 1, 1),
(2, 'purchase', 'a:2:{i:0;s:3:"add";i:1;s:12:"printpreview";}', 1, 1),
(2, 'transfer', 'a:2:{i:0;s:3:"add";i:1;s:12:"printpreview";}', 1, 1),
(2, 'inventory', 'a:1:{i:0;s:12:"product_info";}', 1, 1),
(2, 'report', 'a:1:{i:0;s:11:"report_item";}', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distribute`
--
ALTER TABLE `distribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_college`
--
ALTER TABLE `inventory_college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_division`
--
ALTER TABLE `inventory_division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_jonal`
--
ALTER TABLE `inventory_jonal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jonal`
--
ALTER TABLE `jonal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_content`
--
ALTER TABLE `permission_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisition`
--
ALTER TABLE `requisition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thana`
--
ALTER TABLE `thana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `distribute`
--
ALTER TABLE `distribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inventory_college`
--
ALTER TABLE `inventory_college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inventory_division`
--
ALTER TABLE `inventory_division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventory_jonal`
--
ALTER TABLE `inventory_jonal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jonal`
--
ALTER TABLE `jonal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `permission_content`
--
ALTER TABLE `permission_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `requisition`
--
ALTER TABLE `requisition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `thana`
--
ALTER TABLE `thana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=580;
--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
