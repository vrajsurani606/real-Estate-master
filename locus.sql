-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2024 at 08:39 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `locus`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(14, 'Some Information From Our Background', '<p style=\"text-align: justify;\">At Locus Property Management Realty, our mission is to provide our clients with exceptional service, expert advice, and personalized attention throughout the buying or selling process. We have been serving the local community for over 20 years and have a deep understanding of the real estate market in the area. Our team of experienced agents is passionate about helping clients achieve their real estate goals, whether that means finding the perfect home or maximizing the value of their investment property. We are dedicated to providing a stress-free and enjoyable experience for our clients, and we are committed to transparency, honesty, and integrity in all of our dealings.</p>', '15.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mno` text NOT NULL,
  `dob` date DEFAULT NULL,
  `img` text NOT NULL DEFAULT 'user.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `name`, `password`, `email`, `mno`, `dob`, `img`) VALUES
(102, 'vraj', '$2y$10$zdO1dHp2V8nX9Z/fGxeXp.7yd1zqUoVaOnYcIs5A2czXv30u8cZGG', 'vrajsurani606@gmail.com', '9724085965', '2004-06-15', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `id` int(255) NOT NULL,
  `uid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `response` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`id`, `uid`, `name`, `email`, `subject`, `msg`, `response`, `status`, `date`) VALUES
(38, 63, 'Vraj M Surani', 'vrajsurani606@gmail.com', 'hello', 'hello', '', 0, '2024-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `fid` int(255) NOT NULL,
  `uid` int(255) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`fid`, `uid`, `name`, `email`, `message`, `status`) VALUES
(89, 63, 'Vraj M Surani', 'vrajsurani606@gmail.com', 'We value your feedback and are committed to providing the best possible service', 1),
(92, 63, 'Vraj M Surani', 'vrajsurani606@gmail.com', 'Its new feed back', 1),
(93, 63, 'Vraj M Surani', 'vrajsurani606@gmail.com', 'Its new feed back', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblhouse`
--

CREATE TABLE `tblhouse` (
  `pid` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `ptitle` longtext NOT NULL,
  `ptype` varchar(250) NOT NULL,
  `bhk` varchar(100) NOT NULL,
  `stype` varchar(100) NOT NULL,
  `bedroom` int(100) NOT NULL,
  `balcony` int(100) NOT NULL,
  `bathroom` int(100) NOT NULL,
  `kitchen` int(100) NOT NULL,
  `hall` int(100) NOT NULL,
  `floor` int(100) NOT NULL,
  `tfloor` int(100) NOT NULL,
  `price` int(250) NOT NULL,
  `sqft` varchar(250) NOT NULL,
  `paddress` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `img1` varchar(250) NOT NULL,
  `img2` varchar(250) NOT NULL,
  `img3` varchar(250) NOT NULL,
  `img4` varchar(250) NOT NULL,
  `status` enum('Active','Inactive','','') NOT NULL DEFAULT 'Active',
  `featured` longtext NOT NULL,
  `description` text NOT NULL,
  `facilities` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `qc` enum('Pending','Reject','Success','') NOT NULL DEFAULT 'Pending',
  `response` varchar(255) NOT NULL DEFAULT 'Your Listing Is Live...'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblhouse`
--

INSERT INTO `tblhouse` (`pid`, `uid`, `ptitle`, `ptype`, `bhk`, `stype`, `bedroom`, `balcony`, `bathroom`, `kitchen`, `hall`, `floor`, `tfloor`, `price`, `sqft`, `paddress`, `city`, `state`, `img1`, `img2`, `img3`, `img4`, `status`, `featured`, `description`, `facilities`, `date`, `qc`, `response`) VALUES
(180, 63, 'Beautifully Designed and Spacious Four-Bedroom House with Stunning Views', 'Farm-House', '4', 'Rent', 4, 5, 5, 1, 1, 2, 3, 7800000, '8900', 'mavdi chokdi', 'Rajkot', 'Gujarat', 'vu-anh-TiVPTYCG_3E-unsplash (1).jpg', 'spacejoy-RUvW1KGD9a4-unsplash.jpg', 'spacejoy-ffFnddUEaL4-unsplash.jpg', 'alberto-castillo-q-mx4mSkK9zeo-unsplash.jpg', 'Active', 'Yes', '<p>Welcome to this stunning 4-bedroom house located in the heart of a quiet and peaceful neighborhood. This beautifully designed home boasts a spacious living room with large windows offering stunning views of the surrounding mountains and natural landscapes.</p>\r\n<p><strong>The open-plan kitchen is fully equipped with high-end appliances and a large island, making it perfect for entertaining guests. The dining area opens up to a private deck, where you can enjoy your morning coffee while taking in the breathtaking views.</strong></p>\r\n<p>All four bedrooms are located on the upper level and are generously sized, offering plenty of natural light and space for your family to grow.</p>', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 16:27:04', 'Success', 'Your Listing Is Live...'),
(181, 63, 'Honey Homes', 'House', '4', 'Rent', 4, 5, 5, 1, 1, 5, 5, 4500000, '3200', 'Laskana', 'Surat', 'Gujarat', 'bernard-hermant-CLKGGwIBTaY-unsplash.jpg', 'drew-dau-bWijQI4v0dM-unsplash.jpg', 'francesca-tosolini-hCU4fimRW-c-unsplash.jpg', 'jakob-owens-XKLZia7hPYI-unsplash.jpg', 'Active', 'Yes', '<p><strong>Physical forms of homes can be static such as a&nbsp;<a title=\"House\" href=\"https://en.wikipedia.org/wiki/House\">house</a>&nbsp;or an&nbsp;<a title=\"Apartment\" href=\"https://en.wikipedia.org/wiki/Apartment\">apartment</a>, mobile such as a&nbsp;<a title=\"Houseboat\" href=\"https://en.wikipedia.org/wiki/Houseboat\">houseboat</a>,&nbsp;<a title=\"Trailer (vehicle)\" href=\"https://en.wikipedia.org/wiki/Trailer_(vehicle)\">trailer</a>&nbsp;or&nbsp;<a title=\"Yurt\" href=\"https://en.wikipedia.org/wiki/Yurt\">yurt</a>&nbsp;or digital such as virtual space.<sup id=\"cite_ref-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Home#cite_note-1\">[1]</a></sup>&nbsp;The aspect of &lsquo;home&rsquo; can be considered across scales; from the micro scale showcasing the most intimate spaces of the individual dwelling and direct surrounding area to the macro scale of the geographic area such as&nbsp;<a title=\"Town\" href=\"https://en.wikipedia.org/wiki/Town\">town</a>,&nbsp;<a title=\"Village\" href=\"https://en.wikipedia.org/wiki/Village\">village</a>,&nbsp;<a title=\"City\" href=\"https://en.wikipedia.org/wiki/City\">city</a>,&nbsp;<a title=\"Country\" href=\"https://en.wikipedia.org/wiki/Country\">country</a>&nbsp;or&nbsp;<a title=\"Planet\" href=\"https://en.wikipedia.org/wiki/Planet\">planet</a>.</strong></p>', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 18:09:16', 'Success', 'Your Listing Is Live...'),
(182, 63, 'Dream Banglow', 'Banglow', '3', 'Rent', 3, 3, 3, 1, 1, 5, 5, 3999999, '5600', 'Station Road', 'Ahmedabad', 'Gujarat', 'john-fornander-tVzyDSV84w8-unsplash.jpg', 'john-fornander-y3_AHHrxUBY-unsplash.jpg', 'jonathan-borba-N3z-oIHLL3w-unsplash.jpg', 'andrea-davis-qZTgRKioXcE-unsplash.jpg', 'Active', 'Yes', '<p><strong>The concept of &lsquo;home&rsquo; has been researched and theorized across disciplines &ndash; topics ranging from the idea of home, the interior, the psyche, liminal space, contested space to gender and politics</strong></p>', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 18:19:45', 'Success', 'Your Listing Is Live...'),
(183, 63, 'Rani Apartment', 'Flat', '2', 'Rent', 2, 3, 3, 1, 1, 10, 10, 15000, '1200', 'Minnar Chowk', 'Delhi', 'Delhi', 'jennifer-r-sZ9F_XkGJfI-unsplash.jpg', 'jakob-owens-XKLZia7hPYI-unsplash.jpg', 'dim-hou-h8wLc3lbDuA-unsplash.jpg', 'drew-dau-bWijQI4v0dM-unsplash.jpg', 'Active', 'Yes', '<p><strong>A gorgeous abode welcomes with a grand and gleaming door, poised to impress</strong>. Within, a spacious living room bathes in natural light from floor-to-ceiling windows. Furnishings are arranged for cozy chats around a crackling fireplace.</p>', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 18:27:11', 'Success', 'Your Listing Is Live...'),
(184, 63, 'Royal Hills', 'Pent-House', '4', 'Rent', 4, 5, 5, 1, 1, 18, 18, 12000, '1200', 'Katargam', 'Surat', 'Gujarat', 'spacejoy-ffFnddUEaL4-unsplash.jpg', 'dim-hou-h8wLc3lbDuA-unsplash.jpg', 'bernard-hermant-CLKGGwIBTaY-unsplash.jpg', 'alberto-castillo-q-mx4mSkK9zeo-unsplash.jpg', 'Active', 'Yes', '<p>Its Very Beautiful Pent House</p>', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 18:29:09', 'Success', 'Your Listing Is Live...'),
(185, 66, 'Ambrosia Cottage', 'House', '5', 'Rent', 5, 6, 6, 1, 1, 1, 2, 32000, '15000', 'Monalisa Gaeb', 'Una', 'Gujarat', '1.jpeg', 'andrea-davis-qZTgRKioXcE-unsplash.jpg', 'eric-deschaintre-alSZkWagD54-unsplash.jpg', 'francesca-tosolini-hCU4fimRW-c-unsplash.jpg', 'Active', 'Yes', '<p>Its really good expireanse</p>', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 19:00:03', 'Success', 'Your Listing Is Live...'),
(186, 66, 'Mill House', 'Flat', '3', 'Rent', 3, 4, 4, 1, 1, 15, 15, 56000, '4500', ' Main road', 'Amreli', 'Gujarat', '23.jpeg', 'mostafa-safadel-cHjAxnJk_wQ-unsplash.jpg', 'spacejoy-ffFnddUEaL4-unsplash.jpg', 'spacejoy-RUvW1KGD9a4-unsplash.jpg', 'Active', 'Yes', '<p>Treetops; Cleeve&nbsp;<em>Mill</em>; The Gate&nbsp;<em>House</em>; Wild Rose Cottage; Knightsbridge Manor; Hawthorn View; Ivy Cottage; Gillmont; Hollyhock Cottage;</p>', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 19:10:35', 'Success', 'Your Listing Is Live...'),
(187, 66, 'Rose Cottage', 'Banglow', '5', 'Rent', 5, 6, 6, 1, 1, 2, 2, 50000, '5600', 'Kamrej', 'Surat', 'Gujarat', '19.jpeg', 'jakob-owens-XKLZia7hPYI-unsplash.jpg', 'eric-deschaintre-alSZkWagD54-unsplash.jpg', 'ralph-ravi-kayden-2d4lAQAlbDA-unsplash.jpg', 'Active', 'Yes', '', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 19:15:16', 'Success', 'Your Listing Is Live...'),
(188, 66, 'The Lodge', 'Pent-House', '4', 'Rent', 4, 5, 5, 1, 1, 2, 2, 25000, '2000', 'Bimona Dashla', 'Ahmedabad', 'Gujarat', '20.jpeg', 'jakob-owens-XKLZia7hPYI-unsplash.jpg', 'roberto-nickson-h1_ILkb9tLo-unsplash.jpg', 'drew-dau-bWijQI4v0dM-unsplash.jpg', 'Active', 'Yes', '<p><strong>During a family retreat to a remote winter cabin over the holidays, the father is forced to abruptly depart for work, leaving his two children in the care of his new girlfriend, Grace</strong></p>', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 19:19:28', 'Success', 'Your Listing Is Live...'),
(189, 66, 'Meadow View', 'Farm-House', '3', 'Rent', 3, 4, 4, 1, 1, 2, 2, 45000, '4800', 'Kargil Chowk', 'Srinagar ', 'Jammu and Kashmir', '13.jpeg', 'carousel-1.jpg', 'about.jpg', 'carousel-2.jpg', 'Active', 'Yes', '<p>Away from the hustle of the city, nestled in a quaint village of Majorda 0.9 mi away from the serene waters of majorda beach, we offer our esteemed guest a cozy and homely Resort. With a view of meadows inhabited by a <strong>family</strong> of peafowl&rsquo;s and a coconut plantation home to various species of birds, the resort offers you all the peace you need. A dip in the pool for both the young and the old with a view of the church across the meadows will help you relax. We value cleanliness the most and strive to offer our guest clean and safe rooms keeping in mind the pandemic. We have a restaurant in the premises to satisfy every plate. Meadow view resort welcomes our guest to our safe haven. We strive to give our guest best.</p>', '<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Maintanace : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Wifi Plan : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-black fw-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>', '2024-02-28 19:22:45', 'Success', 'Your Listing Is Live...');

-- --------------------------------------------------------

--
-- Table structure for table `tblpbooking`
--

CREATE TABLE `tblpbooking` (
  `bid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `seller_id` int(255) NOT NULL,
  `buyer_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cindate` varchar(255) NOT NULL,
  `coutdate` varchar(255) NOT NULL,
  `bdate` date NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','Success','Reject') NOT NULL DEFAULT 'Pending',
  `details` longtext NOT NULL,
  `reason` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpbooking`
--

INSERT INTO `tblpbooking` (`bid`, `name`, `pid`, `seller_id`, `buyer_id`, `email`, `cindate`, `coutdate`, `bdate`, `status`, `details`, `reason`) VALUES
(82, 'Jaimil', 165, 60, 62, 'jaimilkanejeeya630@gmail.com', '2023-04-25', '2023-06-29', '2023-04-17', 'Success', 'I want to property for children ', 'Deal Done'),
(83, 'Harsh Munjpara', 165, 60, 61, 'harshmunjapara005@gmail.com', '2023-06-23', '2023-08-25', '2023-04-17', 'Success', 'I Want to this property  ', 'Deal Done...'),
(84, 'test', 165, 60, 64, 'test@gmail.com', '2024-02-24', '2024-04-22', '2024-02-22', 'Pending', 'bhade day dyo', ''),
(85, 'test', 165, 60, 64, 'test@gmail.com', '2024-02-24', '2024-04-22', '2024-02-22', 'Pending', 'bhade day dyo', ''),
(86, 'test', 173, 61, 64, 'test@gmail.com', '2024-02-23', '2024-04-22', '2024-02-22', 'Pending', 'BHADE', ''),
(87, 'test', 173, 61, 64, 'test@gmail.com', '2024-02-23', '2024-04-22', '2024-02-22', 'Pending', 'BHADE', ''),
(88, 'test', 165, 60, 64, 'test@gmail.com', '2024-03-15', '2025-02-15', '2024-02-22', 'Pending', 'hello', ''),
(89, 'test', 169, 60, 64, 'test@gmail.com', '', '', '2024-02-23', 'Pending', 'i want this', ''),
(90, 'test', 169, 60, 64, 'test@gmail.com', '', '', '2024-02-23', 'Pending', 'hello', ''),
(91, 'test', 165, 60, 64, 'test@gmail.com', '2024-02-23', '2024-06-23', '2024-02-23', 'Pending', 'bhade', ''),
(92, 'sheta shubham', 175, 62, 65, 'shubhamsheta@gmail.com', '', '', '2024-02-26', 'Pending', 'i want\r\n', ''),
(94, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want to this\r\n', ''),
(95, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(96, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(97, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(98, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(99, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(100, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(101, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(102, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(103, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(104, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(105, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(106, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(107, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(108, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want this', ''),
(109, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want', ''),
(110, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want', ''),
(111, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want', ''),
(112, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'i want', ''),
(113, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'hello', ''),
(114, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'hello', ''),
(115, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'hello', ''),
(116, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'hello', ''),
(117, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'hello', ''),
(118, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'hello', ''),
(119, 'test', 176, 62, 64, 'test@gmail.com', '', '', '2024-02-28', 'Pending', 'hello', ''),
(133, 'test', 165, 60, 64, 'test@gmail.com', '2024-02-28', '2024-06-28', '2024-02-28', 'Pending', 'i want', ''),
(134, 'Aryan', 181, 63, 67, 'aryanvaghela169@gmail.com', '2024-02-29', '2024-05-29', '2024-02-29', 'Success', 'i want', 'okay'),
(135, 'Aryan', 189, 66, 67, 'aryanvaghela169@gmail.com', '2024-02-29', '2024-04-29', '2024-02-29', 'Success', 'i want', 'ok'),
(136, 'Vraj M Surani', 185, 66, 63, 'vrajsurani606@gmail.com', '2024-03-10', '2024-05-16', '2024-03-10', 'Success', 'i want to this property', ''),
(137, 'Vraj M Surani', 188, 66, 63, 'vrajsurani606@gmail.com', '2024-03-10', '2024-05-10', '2024-03-10', 'Success', 'i want to byu this property', 'ok'),
(138, 'Radhe', 181, 63, 66, 'rajodiyavraj@gmail.com', '2024-03-14', '2024-05-15', '2024-03-14', 'Pending', 'i need this', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblplan`
--

CREATE TABLE `tblplan` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(250) NOT NULL,
  `p_price` int(250) NOT NULL,
  `p_credit` int(250) NOT NULL,
  `p_description` varchar(250) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblplan`
--

INSERT INTO `tblplan` (`p_id`, `p_name`, `p_price`, `p_credit`, `p_description`, `date`) VALUES
(16, 'Basic', 199, 1, '<ul>\r\n<li style=\"text-align: left;\">This Is A <strong>Basic</strong> Plan</li>\r\n<li style=\"text-align: left;\">You Will Get <strong>1&nbsp;</strong>Credit</li>\r\n</ul>', '2023-04-17'),
(17, 'Standard', 499, 3, '<ul>\r\n<li style=\"text-align: left;\">This is <strong>Standard</strong> Plan</li>\r\n<li style=\"text-align: left;\">You Will Get <strong>3&nbsp;</strong>Credit</li>\r\n</ul>', '2023-04-17'),
(18, 'Premium', 999, 7, '<ul>\r\n<li style=\"text-align: left;\">This is <strong>Premium</strong> Plan</li>\r\n<li style=\"text-align: left;\">You Will Get <strong>7 </strong>Credit</li>\r\n</ul>', '2023-04-17'),
(19, 'Super Plane', 1950, 10, '<ul>\r\n<li>The 10 Creadit&nbsp;</li>\r\n<li>AT just 1950/-</li>\r\n</ul>', '2024-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpmt`
--

CREATE TABLE `tblpmt` (
  `pmid` int(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pstatus` varchar(255) NOT NULL DEFAULT 'Paid',
  `pmtid` varchar(255) NOT NULL,
  `amt` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `p_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpmt`
--

INSERT INTO `tblpmt` (`pmid`, `uid`, `p_id`, `pstatus`, `pmtid`, `amt`, `date`, `p_name`) VALUES
(48, 60, 16, 'Paid', 'pay_LeqgEYVvVvVutS', 199, '2023-04-17 11:52:33', 'Basic'),
(49, 60, 16, 'Paid', 'pay_LeqkzpyehZcaBS', 199, '2023-04-17 11:57:06', 'Basic'),
(50, 61, 16, 'Paid', 'pay_LerDMtC0DUHPls', 199, '2023-04-17 12:23:57', 'Basic'),
(51, 64, 18, 'Paid', 'pay_NeC8gZGYnF5MFy', 999, '2024-02-23 04:48:59', 'Premium'),
(52, 64, 18, 'Paid', 'pay_NeCD55ysG4xrns', 999, '2024-02-23 04:53:09', 'Premium'),
(53, 64, 19, 'Paid', 'pay_NeOcCpwlJkvjUX', 1950, '2024-02-23 17:01:18', 'Super Plane'),
(54, 65, 19, 'Paid', 'pay_NfQ69nQsmBgq5V', 1950, '2024-02-26 07:07:23', 'Super Plane'),
(55, 65, 19, 'Paid', 'pay_NfQ74FnAb633WJ', 1950, '2024-02-26 07:08:12', 'Super Plane'),
(56, 63, 19, 'Paid', 'pay_NgMwYyqLn9SD94', 1950, '2024-02-28 16:41:03', 'Super Plane'),
(57, 66, 17, 'Paid', 'pay_NgPavl9YJDSHqR', 499, '2024-02-28 19:16:41', 'Standard'),
(58, 67, 16, 'Paid', 'pay_NgZC8yJLL7qbCM', 199, '2024-02-29 04:40:06', 'Basic'),
(59, 63, 19, 'Paid', 'pay_NjTTbuE1ytoWiF', 1950, '2024-03-07 13:01:52', 'Super Plane'),
(60, 63, 16, 'Paid', 'pay_NkCwEjdYhVMBdf', 199, '2024-03-09 09:30:05', 'Basic'),
(61, 66, 16, 'Paid', 'pay_Nm7w00zg0g5hc6', 199, '2024-03-14 05:54:24', 'Basic'),
(62, 66, 16, 'Paid', 'pay_Nm80l63B81N5fU', 199, '2024-03-14 05:59:01', 'Basic'),
(63, 66, 16, 'Paid', 'pay_Nm9Tpg6uzDNBkW', 199, '2024-03-14 07:25:07', 'Basic');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(50) NOT NULL,
  `uname` varchar(250) NOT NULL,
  `mno` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `credit` int(250) NOT NULL DEFAULT 3,
  `img` varchar(250) DEFAULT 'user.png',
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `mno`, `email`, `password`, `address`, `credit`, `img`, `date`) VALUES
(63, 'Vraj M Surani', '9724085965', 'vrajsurani606@gmail.com', '$2y$10$CNFv.fqSV3ZunMV2sRrDdeShL.FVPbPpLko0aFsAvJpubyFU.mbfK', 'laskana', 17, 'user.png', '2024-02-22'),
(66, 'Radhe', '9879169455', 'rajodiyavraj@gmail.com', '$2y$10$WkjdfPIWSZ9W5Ap.w/2W5Ouz.A5h9RNxgEffr3MJSgBzt9CRuZhY.', '', 4, 'user.png', '2024-02-28'),
(67, 'Aryan', '8980189852', 'aryanvaghela169@gmail.com', '$2y$10$r5PqYVyzTFYHJBM/IzoqdegESUuDioxvtk/EmYgq3ClK1Yh49ui3S', '', 4, 'user.png', '2024-02-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `tblhouse`
--
ALTER TABLE `tblhouse`
  ADD PRIMARY KEY (`pid`);
ALTER TABLE `tblhouse` ADD FULLTEXT KEY `ptitle` (`ptitle`,`paddress`,`state`,`city`,`description`,`facilities`);

--
-- Indexes for table `tblpbooking`
--
ALTER TABLE `tblpbooking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `tblplan`
--
ALTER TABLE `tblplan`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tblpmt`
--
ALTER TABLE `tblpmt`
  ADD PRIMARY KEY (`pmid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `fid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tblhouse`
--
ALTER TABLE `tblhouse`
  MODIFY `pid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `tblpbooking`
--
ALTER TABLE `tblpbooking`
  MODIFY `bid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `tblplan`
--
ALTER TABLE `tblplan`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpmt`
--
ALTER TABLE `tblpmt`
  MODIFY `pmid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
