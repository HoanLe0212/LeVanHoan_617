-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2023 at 08:25 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopthoitrang`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(20) NOT NULL,
  `total_profit` int(20) NOT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_user`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `date_order`, `quantity`, `total`, `total_profit`, `payment`, `status`, `created_at`, `updated_at`) VALUES
(66, 1, 'Lê Văn Trí 123', 1, 'levantri192000t@gmail.com', 'Quảng Nam', '332273409', NULL, '2021-01-28', 10, 2500000, 750000, 'COD', 2, '2021-01-27 18:17:24', '2021-01-28 05:02:22'),
(67, 1, 'Lê Văn Trí 123', 1, 'levantri192000t@gmail.com', 'Quảng Nam', '332273409', NULL, '2021-01-30', 20, 4000000, 1000000, 'COD', 2, '2021-01-30 05:26:44', '2021-01-30 07:25:26'),
(68, 1, 'Lê Văn Trí', 1, 'levantri192000t@gmail.com', 'Quảng Nam', '332273409', 'Giao hàng nhớ gọi tôi', '2021-02-01', 15, 3000000, 500000, 'COD', 2, '2021-02-01 07:27:52', '2021-02-01 07:29:29'),
(69, 3, 'Lê Trí', 1, 'levantri@gmail.com', 'Quảng Nam', '332273409', 'nhanh lên nhé', '2021-02-01', 52, 6570000, 1070000, 'COD', 2, '2021-02-01 15:51:27', '2021-02-01 15:59:41'),
(70, 3, 'Lê Trí', 1, 'levantri@gmail.com', 'Quảng Nam', '332273409', NULL, '2021-02-01', 40, 5800000, 1200000, 'COD', 2, '2021-02-01 15:59:03', '2021-02-01 15:59:43'),
(71, 3, 'Lê Trí', 1, 'levantri@gmail.com', 'Quản Nam', '0332273409', NULL, '2021-02-02', 4, 1200000, 360000, 'COD', 3, '2021-02-02 03:18:50', '2023-12-25 05:44:18'),
(72, 3, 'Lê Trí', 1, 'levantri@gmail.com', 'Quản Nam', '0332273409', NULL, '2021-02-02', 3, 1200000, 360000, 'COD', 3, '2021-02-02 03:19:37', '2023-12-25 05:44:22'),
(73, 7, 'Lê Văn Trí', 1, 'levantria@gmail.com', 'Quảng Nam', '0332273409', NULL, '2021-02-02', 4, 600000, 120000, 'COD', 2, '2021-02-02 03:48:19', '2021-02-02 03:50:09'),
(74, 8, 'customer1', 1, 'customer1@gmail.com', 'Đà Nẵng', '0443375487', NULL, '2022-07-26', 6, 1800000, 600000, 'COD', 3, '2022-07-26 14:49:20', '2023-12-25 05:44:21'),
(75, 8, 'customer1', 1, 'customer1@gmail.com', 'Đà Nẵng', '0443375487', 'nhanh nhanh nhé', '2022-07-26', 5, 1500000, 500000, 'COD', 2, '2022-07-26 14:58:16', '2022-07-26 14:59:08'),
(76, 1, 'ABC', 1, 'admin@gmail.com', 'Hà Nội', '0123456789', NULL, '2023-12-25', 2, 450000, 75000, 'COD', 0, '2023-12-25 05:45:00', '2023-12-25 05:45:00'),
(77, 1, 'BCD', 2, 'admin@gmail.com', 'Hà Nội', '0123456789', NULL, '2023-12-25', 2, 500000, 100000, 'COD', 0, '2023-12-25 05:45:43', '2023-12-25 05:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_size` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `id_size`, `quantity`, `size`, `unit_price`, `created_at`, `updated_at`) VALUES
(98, 66, 18, 18, 5, 'M', 200000, '2021-01-27 18:17:24', '2021-01-27 18:17:24'),
(99, 66, 17, 16, 5, 'L', 300000, '2021-01-27 18:17:25', '2021-01-27 18:17:25'),
(100, 67, 18, 18, 20, 'M', 200000, '2021-01-30 05:26:44', '2021-01-30 05:26:44'),
(101, 68, 36, 48, 5, 'S', 180000, '2021-02-01 07:27:52', '2021-02-01 07:27:52'),
(102, 68, 18, 18, 5, 'M', 200000, '2021-02-01 07:27:53', '2021-02-01 07:27:53'),
(103, 68, 23, 32, 5, 'M', 220000, '2021-02-01 07:27:53', '2021-02-01 07:27:53'),
(104, 69, 24, 34, 50, 'M', 120000, '2021-02-01 15:51:27', '2021-02-01 15:51:27'),
(105, 69, 23, 31, 1, 'S', 220000, '2021-02-01 15:51:27', '2021-02-01 15:51:27'),
(106, 69, 22, 29, 1, 'M', 350000, '2021-02-01 15:51:28', '2021-02-01 15:51:28'),
(107, 70, 37, 49, 20, 'S', 90000, '2021-02-01 15:59:03', '2021-02-01 15:59:03'),
(108, 70, 18, 18, 20, 'M', 200000, '2021-02-01 15:59:04', '2021-02-01 15:59:04'),
(109, 71, 17, 16, 2, 'L', 300000, '2021-02-02 03:18:50', '2021-02-02 03:18:50'),
(110, 71, 26, 36, 2, 'S', 300000, '2021-02-02 03:18:50', '2021-02-02 03:18:50'),
(111, 72, 25, 35, 3, 'S', 400000, '2021-02-02 03:19:38', '2021-02-02 03:19:38'),
(112, 73, 39, 52, 4, 'S', 150000, '2021-02-02 03:48:19', '2021-02-02 03:48:19'),
(113, 74, 17, 14, 2, 'S', 300000, '2022-07-26 14:49:20', '2022-07-26 14:49:20'),
(114, 74, 17, 15, 2, 'M', 300000, '2022-07-26 14:49:21', '2022-07-26 14:49:21'),
(115, 74, 17, 16, 2, 'L', 300000, '2022-07-26 14:49:21', '2022-07-26 14:49:21'),
(116, 75, 17, 14, 2, 'S', 300000, '2022-07-26 14:58:16', '2022-07-26 14:58:16'),
(117, 75, 17, 15, 3, 'M', 300000, '2022-07-26 14:58:16', '2022-07-26 14:58:16'),
(118, 76, 70, 106, 1, 'XL', 350000, '2023-12-25 05:45:00', '2023-12-25 05:45:00'),
(119, 76, 44, 63, 1, 'XL', 100000, '2023-12-25 05:45:00', '2023-12-25 05:45:00'),
(120, 77, 64, 98, 1, 'L', 200000, '2023-12-25 05:45:43', '2023-12-25 05:45:43'),
(121, 77, 66, 101, 1, 'M', 300000, '2023-12-25 05:45:43', '2023-12-25 05:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_product`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 17, 'đẹp', '2021-01-05 14:14:08', '2021-01-05 14:14:08'),
(2, 1, 17, 'hoang dep trai', '2021-01-06 01:39:42', '2021-01-06 01:39:42'),
(3, 1, 21, 'aaa', '2021-01-06 08:32:33', '2021-01-06 08:32:33'),
(13, 1, 19, 'bfjkewbfqefbqejfbejwbfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2021-01-09 03:01:58', '2021-01-09 03:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `fashion`
--

CREATE TABLE `fashion` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fashion`
--

INSERT INTO `fashion` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thời trang nam', 1, NULL, '2021-02-01 18:16:24'),
(2, 'Thời trang nữ', 1, '2021-01-04 04:34:24', '2022-07-26 15:00:30'),
(8, 'Đồ bộ', 0, '2021-01-06 08:40:46', '2021-02-01 08:20:45');

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
(1, '2020_12_17_102244_add_column_images_to_product_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_price` int(11) NOT NULL DEFAULT 0,
  `unit_price` int(11) NOT NULL DEFAULT 0,
  `promotion_price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `sold_quantity` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `id_supplier` int(11) NOT NULL,
  `highlights` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `total_number` int(11) NOT NULL DEFAULT 0,
  `total_ra` int(11) NOT NULL DEFAULT 0,
  `product_views` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_type`, `id_user`, `name`, `description`, `long_description`, `original_price`, `unit_price`, `promotion_price`, `quantity`, `sold_quantity`, `image`, `images`, `id_supplier`, `highlights`, `status`, `total_number`, `total_ra`, `product_views`, `created_at`, `updated_at`) VALUES
(17, 91, 1, 'Áo Khoác Kaki Nam AKK0008', '<p>&Aacute;o kho&aacute;c Kaki đơn giản v&agrave; thời thượng, dễ mix mọi trang phục.&nbsp;Chất liệu: kaki co gi&atilde;n, c&oacute; t&uacute;i trong</p>', '<p>&Aacute;o kho&aacute;c Kaki đơn giản v&agrave; thời thượng, dễ mix mọi trang phục.&nbsp;Chất liệu: kaki co gi&atilde;n, c&oacute; t&uacute;i trong</p>', 200000, 350000, 300000, 502, 18, '1609776848_ak2.jpg', '[\"1609776848_ak2.jpg\",\"1609776848_ak3.jpg\",\"1609776848_ak4.jpg\"]', 1, 1, 1, 10, 2, 64, '2021-01-04 16:14:08', '2022-07-26 14:59:48'),
(18, 102, 1, 'Áo Len Cổ Sơ Mi Cao Cấp', '<p>&Aacute;o Len Cổ Sơ Mi Cao Cấp chất len mềm mại, nhẹ nh&agrave;ng. &Aacute;o được thiết kế th&ecirc;m cổ sơ mi thật dễ thương, ph&ugrave; hợp với c&ocirc;ng sở, hoặc đi tiệc, đi chơi.</p>', '<p>&Aacute;o Len Cổ Sơ Mi Cao Cấp chất len mềm mại, nhẹ nh&agrave;ng. &Aacute;o được thiết kế th&ecirc;m cổ sơ mi thật dễ thương, ph&ugrave; hợp với c&ocirc;ng sở, hoặc đi tiệc, đi chơi.</p>', 150000, 310000, 200000, 150, 50, '1609777408_al1.png', '[\"1609777408_al1.png\",\"1609777408_al2.png\",\"1609777408_al3.png\"]', 1, 1, 1, 0, 0, 34, '2021-01-04 16:23:28', '2023-12-25 03:08:32'),
(19, 102, 1, 'Áo phao lót lông có mũ', '<p>Kh&aacute;c với kiểu &aacute;o phao truyền thống, c&aacute;c mẫu &aacute;o phao năm nay đ&atilde; được biến tấu theo kiểu trendy hơn, mới lạ hơn nhưng tất nhi&ecirc;n l&agrave; vẫn cực kỳ ấm &aacute;p.</p>', NULL, 300000, 380000, 350000, 300, 0, '1609917683_ap1.jpg', '[\"1609917683_ap1.jpg\",\"1609917683_ap2.jpg\",\"1609917683_ap3.jpg\"]', 7, 1, 1, 0, 0, 1, '2021-01-06 07:21:23', '2023-12-11 03:19:46'),
(20, 92, 1, 'Áo thun xẻ tà họa tiết tai thỏ', '<p>&Aacute;o thun xẻ t&agrave; họa tiết tai thỏ được thiết kế đơn giản, đường may nhẹ nh&agrave;ng, cổ tr&ograve;n. Chất vải thun m&aacute;t 4 chiều co gi&atilde;n hết cỡ, thấm h&uacute;t mồ h&ocirc;i tốt, ph&ugrave; hợp với m&ugrave;a h&egrave; oi bức hiện nay</p>', NULL, 120000, 165000, 0, 300, 0, '1609918587_acc1.jpg', '[\"1609918587_acc1.jpg\",\"1609918587_acc2.jpg\",\"1609918587_acc3.jpg\"]', 1, 1, 1, 0, 0, 1, '2021-01-06 07:36:27', '2021-01-30 11:23:23'),
(21, 102, 1, 'Set Croptop 2 Món', '<p>Set Croptop 2 M&oacute;n mang phong c&aacute;ch trẻ trung, năng động, c&aacute; t&iacute;nh, với c&aacute;ch phối m&agrave;u đơn giản nhưng kh&ocirc;ng k&eacute;m phần tinh tế. Danang sale tin chắc sẽ trang bị cho c&aacute;c bạn trẻ những bộ trang phục hợp trend, bắt kịp xu thế mới nhất.&nbsp;</p>', '<p>Set Croptop 2 M&oacute;n mang phong c&aacute;ch trẻ trung, năng động, c&aacute; t&iacute;nh, với c&aacute;ch phối m&agrave;u đơn giản nhưng kh&ocirc;ng k&eacute;m phần tinh tế. Danang sale tin chắc sẽ trang bị cho c&aacute;c bạn trẻ những bộ trang phục hợp trend, bắt kịp xu thế mới nhất.&nbsp;</p>', 80000, 90000, 0, 200, 0, '1609918905_an2.jpg', '[\"1609918905_an1.jpg\",\"1609918905_an2.jpg\",\"1609918905_an3.jpg\"]', 1, 1, 1, 0, 0, NULL, '2021-01-06 07:41:45', '2021-01-30 10:46:11'),
(22, 102, 1, 'Áo thun kiểu tay phồng cut-out', '<p><strong>Chất liệu :&nbsp;</strong>Vải Cotton Th&aacute;i&nbsp;(Co d&atilde;n tốt, thấm h&uacute;t tốt).</p>\r\n\r\n<p><strong>Form :</strong>&nbsp; &Aacute;o &ocirc;m body, tay ph&ocirc;ng ngắn, cut-out kiểu.</p>', NULL, 300000, 350000, 0, 199, 1, '1612000703_ak1.jpg', '[\"1612002006_1aks1.jpg\",\"1612002006_1aks2.jpg\",\"1612002006_ak1.jpg\"]', 1, 1, 1, 0, 0, 2, '2021-01-06 08:42:46', '2021-02-01 15:51:28'),
(23, 102, 1, 'Áo cổ lá sen cột nơ nhún tay V', '<p><strong>Chất liệu:&nbsp;</strong>C&aacute;t Nhung.</p>\r\n\r\n<p><strong>Form:</strong>&nbsp;&Aacute;o cổ sen nhọn, tay phồng nhẹ, phom su&ocirc;ng.</p>', NULL, 200000, 250000, 220000, 194, 6, '1612000880_1ak1.jpg', '[\"1612002129_aks1.jpg\",\"1612002129_aks2.jpg\",\"1612002129_aks3.jpg\"]', 1, 1, 1, 5, 1, 4, '2021-01-13 13:01:32', '2021-02-01 18:17:20'),
(24, 102, 1, 'Áo sơ mi kiểu họa tiết Ladona Shirt', '<p><strong>Chất liệu:</strong>&nbsp;Lụa tuyết (mềm, m&aacute;t, kh&ocirc;ng r&uacute;t, kh&ocirc;ng nhăn)</p>\r\n\r\n<p><strong>Form:&nbsp;</strong>&Aacute;o sơ mi phom rộng, tay lửng, phối d&acirc;y eo&nbsp;tăng th&ecirc;m n&eacute;t độc đ&aacute;o v&agrave; thanh lịch.</p>', NULL, 100000, 150000, 120000, 150, 50, '1612003839_5ak1.jpg', '[\"1612003839_5ak1.jpg\",\"1612003839_5ak2.jpg\",\"1612003839_5ak3.jpg\"]', 1, 1, 1, 5, 1, 6, '2021-01-14 15:54:06', '2021-02-01 15:51:27'),
(25, 91, 3, 'Áo Khoác Hoodie Trắng AKN0103', '<p>&Aacute;o kho&aacute;c Hoodie&nbsp;thun nỉ&nbsp;năng động v&agrave;&nbsp;thoải m&aacute;i. Mặc đi nắng hoặc trời se lạnh cực tốt. N&oacute;n rộng, form d&aacute;ng rộng cực chuẩn.</p>', '<p>&Aacute;o kho&aacute;c Hoodie&nbsp;thun nỉ&nbsp;năng động v&agrave;&nbsp;thoải m&aacute;i. Mặc đi nắng hoặc trời se lạnh cực tốt. N&oacute;n rộng, form d&aacute;ng rộng cực chuẩn.</p>\r\n\r\n<p>Chất liệu: vải nỉ&nbsp;cotton b&ocirc;ng</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 280000, 450000, 400000, 97, 3, '1611200177_ak1.jpg', '[\"1611200177_ak1.jpg\",\"1611200177_ak2.jpg\",\"1611200177_ak3.jpg\"]', 6, 1, 1, 0, 0, 87, '2021-01-21 03:36:17', '2021-02-02 03:19:38'),
(26, 91, 1, 'Áo Khoác Trơn Ko Nón AKN0223', '<p>&Aacute;o kho&aacute;c thun nỉ&nbsp;năng động v&agrave;&nbsp;thoải m&aacute;i. Mặc đi nắng hoặc trời se lạnh cực tốt</p>', '<p>&Aacute;o kho&aacute;c thun nỉ&nbsp;năng động v&agrave;&nbsp;thoải m&aacute;i. Mặc đi nắng hoặc trời se lạnh cực tốt</p>\r\n\r\n<p>Chất liệu: vải nỉ&nbsp;cao cấp</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 220000, 300000, 0, 198, 2, '1611201423_1ak1.jpg', '[\"1611201423_1ak1.jpg\",\"1611201423_1ak2.jpg\",\"1611201423_1ak3.jpg\"]', 6, 1, 1, 0, 0, 3, '2021-01-21 03:57:03', '2023-12-07 03:49:36'),
(27, 91, 1, 'Áo Khoác Dù 2 Lớp AKD0030', '<p>&Aacute;o kho&aacute;c D&ugrave;&nbsp;năng động, thoải m&aacute;i. Phong c&aacute;ch đơn giản, dế mặc, from &aacute;o chuẩn đẹp.&nbsp;</p>\r\n\r\n<p>C&oacute; t&uacute;i trong để đồ quan trọng, d&acirc;y r&uacute;t phần h&ocirc;ng, t&uacute;i k&eacute;o YKK 2 b&ecirc;n tiện dụng.</p>', '<p>&Aacute;o kho&aacute;c D&ugrave;&nbsp;năng động, thoải m&aacute;i. Phong c&aacute;ch đơn giản, dế mặc, from &aacute;o chuẩn đẹp.&nbsp;</p>\r\n\r\n<p>C&oacute; t&uacute;i trong để đồ quan trọng, d&acirc;y r&uacute;t phần h&ocirc;ng, t&uacute;i k&eacute;o YKK 2 b&ecirc;n tiện dụng.</p>\r\n\r\n<p>Chất liệu: vải d&ugrave; cao cấp, l&oacute;t trong mịn m&aacute;t.&nbsp;</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>\r\n\r\n<p>dễ chịu mọi thời tiết.</p>', 295000, 350000, 320000, 200, 0, '1611202094_2ak1.jpg', '[\"1611202094_2ak1.jpg\",\"1611202094_2ak2.jpg\",\"1611202094_2ak3.jpg\"]', 6, 0, 1, 0, 0, 6, '2021-01-21 04:08:14', '2021-01-30 10:58:30'),
(28, 91, 1, 'Áo Khoác Kaki Nam AKK000802', '<p>&Aacute;o kho&aacute;c Kaki đơn giản v&agrave; thời thượng, dễ mix mọi trang phục.</p>', '<p>&Aacute;o kho&aacute;c Kaki đơn giản v&agrave; thời thượng, dễ mix mọi trang phục.&nbsp;</p>\r\n\r\n<p>Chất liệu: kaki co gi&atilde;n, c&oacute; t&uacute;i trong</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 350000, 400000, 0, 100, 0, '1611202924_3ak1.jpg', '[\"1611202924_3ak1.jpg\",\"1611202924_3ak2.jpg\",\"1611202924_3ak3.jpg\"]', 1, 0, 1, 0, 0, NULL, '2021-01-21 04:22:04', '2021-01-21 04:22:04'),
(29, 91, 1, 'Áo Khoác Jean Nam AKJ0005', '<p>&Aacute;o kho&aacute;c Jean đơn giản v&agrave; thời thượng, dễ mix mọi trang phục. Đậm chất c&aacute; t&iacute;nh, form cực chuẩn.</p>', '<p>&Aacute;o kho&aacute;c Jean đơn giản v&agrave; thời thượng, dễ mix mọi trang phục. Đậm chất c&aacute; t&iacute;nh, form cực chuẩn.</p>\r\n\r\n<p>Chất liệu: denim&nbsp;co gi&atilde;n, c&oacute; 2&nbsp;t&uacute;i trong</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 450000, 500000, 0, 100, 0, '1611203208_4ak1.jpg', '[\"1611203208_4ak1.jpg\",\"1611203208_4ak2.jpg\",\"1611203208_4ak3.jpg\"]', 1, 0, 1, 0, 0, NULL, '2021-01-21 04:26:48', '2021-01-21 04:26:48'),
(30, 91, 1, 'Áo Khoác Kaki Nam AKK0008KL', '<p>&Aacute;o kho&aacute;c Kaki đơn giản v&agrave; thời thượng, dễ mix mọi trang phục.&nbsp;</p>', '<p>&Aacute;o kho&aacute;c Kaki đơn giản v&agrave; thời thượng, dễ mix mọi trang phục.&nbsp;</p>\r\n\r\n<p>Chất liệu: kaki cao cấp v&agrave; co gi&atilde;n, c&oacute;&nbsp;t&uacute;i trong</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 350000, 500000, 400000, 100, 0, '1611203422_5ak1.jpg', '[\"1611203422_5ak1.jpg\",\"1611203422_5ak2.jpg\",\"1611203422_5ak3.jpg\"]', 9, 0, 1, 0, 0, 2, '2021-01-21 04:30:22', '2021-01-27 08:12:03'),
(31, 91, 1, 'Áo Khoác Jean AKJ0003LJ', '<p>&Aacute;o kho&aacute;c Jean đơn giản v&agrave; thời thượng, dễ mix mọi trang phục. Đậm chất c&aacute; t&iacute;nh, form cực chuẩn.</p>', '<p>&Aacute;o kho&aacute;c Jean đơn giản v&agrave; thời thượng, dễ mix mọi trang phục. Đậm chất c&aacute; t&iacute;nh, form cực chuẩn.</p>\r\n\r\n<p>Chất liệu: denim&nbsp;co gi&atilde;n, c&oacute; 2&nbsp;t&uacute;i trong</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 450000, 500000, 0, 100, 0, '1611203655_6ak1.jpg', '[\"1611203655_6ak1.jpg\",\"1611203655_6ak2.jpg\",\"1611203655_6ak3.jpg\"]', 8, 0, 1, 0, 0, 3, '2021-01-21 04:34:15', '2021-01-27 06:59:53'),
(32, 96, 1, 'Áo Thun Nam Cổ Tròn ATN0091', '<p>&Aacute;o thun cổ tr&ograve;n,&nbsp;dễ mix mọi trang phục&nbsp;</p>', '<p>&Aacute;o thun cổ tr&ograve;n,&nbsp;dễ mix mọi trang phục&nbsp;</p>\r\n\r\n<p>Chất liệu: cotton 100%, mực in bền m&agrave;u</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 180000, 200000, 0, 100, 0, '1611203916_at1.jpg', '[\"1611203916_at1.jpg\",\"1611203916_at2.jpg\",\"1611203916_at3.jpg\"]', 1, 0, 1, 0, 0, 4, '2021-01-21 04:38:36', '2021-01-27 18:50:29'),
(33, 96, 1, 'Áo Thun Nam Cổ Tròn ATN0092', '<p>&Aacute;o thun cổ tr&ograve;n,&nbsp;dễ mix mọi trang phục&nbsp;</p>', '<p>&Aacute;o thun cổ tr&ograve;n,&nbsp;dễ mix mọi trang phục&nbsp;</p>\r\n\r\n<p>Chất liệu: cotton 100%, mực in bền m&agrave;u</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 150000, 200000, 199999, 100, 0, '1611204229_1at1.jpg', '[\"1611204229_1at1.jpg\",\"1611204229_1at2.jpg\",\"1611204229_1at3.jpg\"]', 9, 0, 1, 0, 0, 10, '2021-01-21 04:43:49', '2023-12-04 07:59:33'),
(34, 96, 1, 'Áo Thun Nam Cổ Tròn ATN0088', '<p>&Aacute;o thun cổ tr&ograve;n,&nbsp;dễ mix mọi trang phục&nbsp;</p>', '<p>&Aacute;o thun cổ tr&ograve;n,&nbsp;dễ mix mọi trang phục&nbsp;</p>\r\n\r\n<p>Chất liệu: cotton 100%, mực in bền m&agrave;u</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 180000, 200000, 0, 100, 0, '1611204443_2at1.jpg', '[\"1611204443_2at1.jpg\",\"1611204443_2at2.jpg\",\"1611204443_2at3.jpg\"]', 9, 0, 1, 0, 0, 6, '2021-01-21 04:47:23', '2023-12-07 03:46:38'),
(35, 96, 1, 'Áo Len Tay Dài ATD0010', '<p>&Aacute;o Len Cổ Tr&ograve;n&nbsp;được thiết kế với phong c&aacute;ch hiện đại, thời trang. Chất len dệt kim đầy đặn v&agrave; sắc sảo, thoải m&aacute;i v&agrave; tho&aacute;ng m&aacute;t trong từng chuyển động, dễ mặc cả những thời tiết nắng hoặc se lạnh. &Aacute;o len nam c&oacute; thể kết hợp với nhiều trang phục. Chất vải cao cấp bền bỉ&nbsp;theo thời gian.</p>', '<p>&Aacute;o Len Cổ Tr&ograve;n&nbsp;được thiết kế với phong c&aacute;ch hiện đại, thời trang. Chất len dệt kim đầy đặn v&agrave; sắc sảo, thoải m&aacute;i v&agrave; tho&aacute;ng m&aacute;t trong từng chuyển động, dễ mặc cả những thời tiết nắng hoặc se lạnh. &Aacute;o len nam c&oacute; thể kết hợp với nhiều trang phục. Chất vải cao cấp bền bỉ&nbsp;theo thời gian.</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 250000, 300000, 280000, 100, 0, '1611204774_1td1.jpg', '[\"1611204774_1td1.jpg\",\"1611204774_1td2.jpg\",\"1611204774_1td3.jpg\"]', 9, 0, 0, 0, 0, NULL, '2021-01-21 04:52:54', '2021-01-22 07:38:35'),
(36, 102, 1, 'Áo kiểu nhún tay Turmeric Top', '<p><strong>M&agrave;u sắc:&nbsp;</strong>V&agrave;ng.</p>\r\n\r\n<p><strong>Form :</strong>&nbsp;&Aacute;o kiểu phom su&ocirc;ng,phối nơ trước ngực, tay nh&uacute;n 2 b&ecirc;n.</p>', NULL, 150000, 180000, 0, 95, 5, '1612001146_2ak1.jpg', '[\"1612002469_3aks1.jpg\",\"1612002469_3aks2.jpg\",\"1612002469_3aks3.jpg\"]', 1, 0, 1, 4, 1, 4, '2021-01-30 10:05:47', '2021-02-02 02:27:37'),
(37, 102, 1, 'Áo caro nhí tay phồng Orange Caro', '<p><strong>Chất liệu :&nbsp;</strong>Kate_Cotton poly.</p>\r\n\r\n<p><strong>Form :</strong>&nbsp;&Aacute;o cổ vu&ocirc;ng kiểu, c&agrave;i n&uacute;t, fit cơ thể tay phồng ngắn.</p>', NULL, 80000, 100000, 90000, 80, 20, '1612001359_3ak1.jpg', '[\"1612002336_2aks1.jpg\",\"1612002336_2aks2.jpg\",\"1612002336_2aks3.jpg\"]', 1, 0, 1, 0, 0, 5, '2021-01-30 10:09:19', '2021-02-01 15:59:03'),
(38, 102, 1, 'Áo sơ mi trắng tay dài', '<p><strong>Chất liệu:</strong>&nbsp;Vải lụa g&acirc;n (mềm, rủ, kh&ocirc;ng nhăn)</p>\r\n\r\n<p><strong>Form:</strong>&nbsp;&Aacute;o phom rộng c&agrave;i n&uacute;t, tay d&agrave;i, ra viền th&acirc;n trước.</p>', NULL, 150000, 200000, 0, 100, 0, '1612001607_4ak1.jpg', '[\"1612002590_4aks2.jpg\",\"1612002590_4aks3.jpg\",\"1612002590_4aks4.jpg\"]', 1, 0, 1, 0, 0, 8, '2021-01-30 10:13:27', '2022-07-13 17:22:33'),
(39, 92, 1, 'Ao Thun Sọc Ngang Cổ Tròn', '<p>&Aacute;o thun nữ tay ngắn, cổ tr&ograve;n đẹp, &aacute;o thun freesize dưới 65kg, chất cotton 65/35 tho&aacute;ng m&aacute;t, thoải m&aacute;i, cực chất, phối c&ugrave;ng quần jeans, kaki hoặc short jeans đều đẹp nh&eacute; N&agrave;n</p>', NULL, 120000, 180000, 150000, 396, 4, '1612181419_at1.png', '[\"1612181419_at1.png\",\"1612181419_at2.png\",\"1612181419_at3.png\"]', 7, 0, 1, 0, 0, 17, '2021-02-01 12:10:19', '2022-07-13 17:22:40'),
(43, 91, 1, 'Áo Khoác Dù Boomber AKD0037 Đen', '<p>&Aacute;o kho&aacute;c D&ugrave; Boomber được thiết kế đặc biệt, kh&ocirc;ng chỉ mang đến lớp l&oacute;t d&agrave;y dặn b&ecirc;n trong để giữ ấm m&agrave; c&ograve;n tạo điểm nhấn với phong c&aacute;ch bomber c&aacute; t&iacute;nh, hiện đại.</p>', '<p>&Aacute;o kho&aacute;c D&ugrave; Boomber được thiết kế đặc biệt, kh&ocirc;ng chỉ mang đến lớp l&oacute;t d&agrave;y dặn b&ecirc;n trong để giữ ấm m&agrave; c&ograve;n tạo điểm nhấn với phong c&aacute;ch bomber c&aacute; t&iacute;nh, hiện đại.</p>\r\n\r\n<p>Với chất liệu d&ugrave; cao cấp v&agrave; đường may tỉ mỉ, mỗi chiếc &aacute;o kho&aacute;c l&agrave; sự kết hợp ho&agrave;n hảo giữa t&iacute;nh năng chống gi&oacute;, chống nước v&agrave; phom d&aacute;ng thời trang. Phong c&aacute;ch bomber tạo điểm nhấn ri&ecirc;ng biệt, phản &aacute;nh c&aacute; t&iacute;nh v&agrave; sự c&aacute;i t&ocirc;i của bạn.</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 500000, 550000, 0, 212, 0, '1701918259_Áo-Khoác-Dù-Boomber-AKD0037-đ.jpeg', '[\"1701918259_\\u00c1o Kho\\u00e1c D\\u00f9 Boomber AKD0037 \\u01111.jpg\",\"1701918259_\\u00c1o Kho\\u00e1c D\\u00f9 Boomber AKD0037 \\u01112.jpg\",\"1701918259_\\u00c1o Kho\\u00e1c D\\u00f9 Boomber AKD0037 \\u01113.jpg\"]', 9, 0, 1, 0, 0, 2, '2023-12-07 03:04:19', '2023-12-07 03:40:30'),
(44, 96, 1, 'Áo Thun Wash Nâu ATN0154', '<p>&Aacute;o thun với hiệu ứng wash tạo n&ecirc;n vẻ vintage độc đ&aacute;o, biểu tượng cho sự ấm &aacute;p v&agrave; s&acirc;u sắc.</p>\r\n\r\n<p>Chất liệu mềm mại, tho&aacute;ng kh&iacute;, đảm bảo cảm gi&aacute;c thoải m&aacute;i suốt ng&agrave;y d&agrave;i. Thể hiện c&aacute;i t&ocirc;i ri&ecirc;ng biệt của bạn.<br />\r\n&nbsp;</p>', '<p>&Aacute;o thun với hiệu ứng wash tạo n&ecirc;n vẻ vintage độc đ&aacute;o, biểu tượng cho sự ấm &aacute;p v&agrave; s&acirc;u sắc.</p>\r\n\r\n<p>Chất liệu mềm mại, tho&aacute;ng kh&iacute;, đảm bảo cảm gi&aacute;c thoải m&aacute;i suốt ng&agrave;y d&agrave;i. Thể hiện c&aacute;i t&ocirc;i ri&ecirc;ng biệt của bạn.</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 75000, 100000, 0, 41, 1, '1701919774_Áo Thun Wash Nâu ATN0154.jpeg', '[\"1701919774_\\u00c1o Thun Wash N\\u00e2u ATN0154 1.jpg\",\"1701919774_\\u00c1o Thun Wash N\\u00e2u ATN0154 2.jpg\",\"1701919774_\\u00c1o Thun Wash N\\u00e2u ATN0154 3.jpg\"]', 9, 0, 1, 0, 0, 1, '2023-12-07 03:29:34', '2023-12-25 05:45:00'),
(45, 96, 1, 'Áo Thun Unisex Saigonnese ATN0147 Trắng', '<p>&Aacute;o thun Unisex Saigonese form rộng r&atilde;i, chất liệu cotton compact, định lượng 295gsm d&agrave;y dặn v&agrave; m&aacute;t lạnh, vải đ&atilde; được wash xử l&yacute; r&uacute;t. Đường may v&agrave; mực in cao cấp, giặt m&aacute;y thoải m&aacute;i. Bo cổ bản to d&agrave;y dặn, đường may cao cấp từng chi tiết.&nbsp;<br />\r\n&nbsp;</p>', NULL, 100000, 125000, 0, 60, 0, '1701919869_Áo Thun Unisex Saigonnese ATN0147 tr.jpeg', '[\"1701919869_\\u00c1o Thun Unisex Saigonnese ATN0147 tr1.jpg\",\"1701919869_\\u00c1o Thun Unisex Saigonnese ATN0147 tr2.jpg\",\"1701919869_\\u00c1o Thun Unisex Saigonnese ATN0147 tr3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:31:09', '2023-12-07 03:41:49'),
(46, 96, 1, 'Áo Thun Unisex Saigonnese ATN0147 Đen', '<p>&Aacute;o thun Unisex Saigonese form rộng r&atilde;i, chất liệu cotton compact, định lượng 295gsm d&agrave;y dặn v&agrave; m&aacute;t lạnh, vải đ&atilde; được wash xử l&yacute; r&uacute;t. Đường may v&agrave; mực in cao cấp, giặt m&aacute;y thoải m&aacute;i. Bo cổ bản to d&agrave;y dặn, đường may cao cấp từng chi tiết.&nbsp;<br />\r\n&nbsp;</p>', NULL, 100000, 125000, 0, 7, 0, '1701919934_Áo Thun Unisex Saigonnese ATN0147 đ.jpeg', '[\"1701919934_\\u00c1o Thun Unisex Saigonnese ATN0147 \\u01111.jpg\",\"1701919934_\\u00c1o Thun Unisex Saigonnese ATN0147 \\u01112.jpg\",\"1701919934_\\u00c1o Thun Unisex Saigonnese ATN0147 \\u01113.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:32:14', '2023-12-07 03:42:21'),
(47, 96, 1, 'Áo Thun Unisex Kenta Studio ATN0146 Trắng', '<p>&Aacute;o thun Kenta Studio, chất liệu thun cotton 280gsm d&agrave;y dặn, m&aacute;t lạnh. From unisex thoải m&aacute;i, nam hoặc nữ đều mặc được. Bo cổ bản to d&agrave;y dặn, đường may cao cấp từng chi tiết.&nbsp;<br />\r\n&nbsp;</p>', NULL, 100000, 150000, 0, 64, 0, '1701920046_Áo Thun Unisex Kenta Studio ATN0146 tr.jpeg', '[\"1701920046_\\u00c1o Thun Unisex Kenta Studio ATN0146 tr1.jpg\",\"1701920046_\\u00c1o Thun Unisex Kenta Studio ATN0146 tr2.jpg\",\"1701920046_\\u00c1o Thun Unisex Kenta Studio ATN0146 tr3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:34:06', '2023-12-07 03:42:59'),
(48, 96, 1, 'Áo Thun Unisex Kenta Studio ATN0146 Đen', '<p>&Aacute;o thun Kenta Studio, chất liệu thun cotton 280gsm d&agrave;y dặn, m&aacute;t lạnh. From unisex thoải m&aacute;i, nam hoặc nữ đều mặc được. Bo cổ bản to d&agrave;y dặn, đường may cao cấp từng chi tiết.&nbsp;<br />\r\n&nbsp;</p>', NULL, 100000, 150000, 0, 30, 0, '1701920084_Áo Thun Unisex Kenta Studio ATN0146 đ.jpeg', '[\"1701920084_\\u00c1o Thun Unisex Kenta Studio ATN0146 \\u01111.jpg\",\"1701920084_\\u00c1o Thun Unisex Kenta Studio ATN0146 \\u01112.jpg\",\"1701920084_\\u00c1o Thun Unisex Kenta Studio ATN0146 \\u01113.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:34:44', '2023-12-07 03:43:26'),
(49, 96, 1, 'Áo Thun Raglan Form Boxy ATN0151 Xám', '<p>&Aacute;o thun Raglan Vibee Summer&nbsp;<br />\r\n- Chất liệu 100% cotton tự nhi&ecirc;n, vải d&agrave;y dặn 280gsm, đ&atilde; được wash xử l&yacute; bền m&agrave;u.<br />\r\n- Form boxy năng động, thấm h&uacute;t tốt, mặc si&ecirc;u tho&aacute;ng v&agrave; thoải m&aacute;i, độ bền cao.<br />\r\n- C&ocirc;ng nghệ in chữ nổi hiện đại, bo cổ bản to cao cấp, đường may sắc n&eacute;t từng chi tiết.</p>', NULL, 125000, 150000, 0, 64, 0, '1701920249_Áo Thun Raglan Form Boxy ATN0151 xam.jpeg', '[\"1701920249_\\u00c1o Thun Raglan Form Boxy ATN0151 xam1.jpg\",\"1701920249_\\u00c1o Thun Raglan Form Boxy ATN0151 xam2.jpg\",\"1701920249_\\u00c1o Thun Raglan Form Boxy ATN0151 xam3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:37:29', '2023-12-07 03:43:43'),
(50, 96, 1, 'Áo Thun Raglan Form Boxy ATN0151 Nâu', '<p>&Aacute;o thun Raglan Vibee Summer&nbsp;<br />\r\n- Chất liệu 100% cotton tự nhi&ecirc;n, vải d&agrave;y dặn 280gsm, đ&atilde; được wash xử l&yacute; bền m&agrave;u.<br />\r\n- Form boxy năng động, thấm h&uacute;t tốt, mặc si&ecirc;u tho&aacute;ng v&agrave; thoải m&aacute;i, độ bền cao.<br />\r\n- C&ocirc;ng nghệ in chữ nổi hiện đại, bo cổ bản to cao cấp, đường may sắc n&eacute;t từng chi tiết.</p>', NULL, 125000, 150000, 0, 17, 0, '1701920315_Áo Thun Raglan Form Boxy ATN0151 nau.jpeg', '[\"1701920315_\\u00c1o Thun Raglan Form Boxy ATN0151 nau1.jpg\",\"1701920315_\\u00c1o Thun Raglan Form Boxy ATN0151 nau2.jpg\",\"1701920315_\\u00c1o Thun Raglan Form Boxy ATN0151 nau3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:38:35', '2023-12-07 03:44:11'),
(51, 96, 1, 'Áo Thun Raglan Form Boxy ATN0151', '<p>&Aacute;o thun Raglan Vibee Summer&nbsp;<br />\r\n- Chất liệu 100% cotton tự nhi&ecirc;n, vải d&agrave;y dặn 280gsm, đ&atilde; được wash xử l&yacute; bền m&agrave;u.<br />\r\n- Form boxy năng động, thấm h&uacute;t tốt, mặc si&ecirc;u tho&aacute;ng v&agrave; thoải m&aacute;i, độ bền cao.<br />\r\n- C&ocirc;ng nghệ in chữ nổi hiện đại, bo cổ bản to cao cấp, đường may sắc n&eacute;t từng chi tiết.</p>', NULL, 125000, 150000, 0, 25, 0, '1701920362_Áo Thun Raglan Form Boxy ATN0151 đ.jpeg', '[\"1701920362_\\u00c1o Thun Raglan Form Boxy ATN0151 \\u01111.jpg\",\"1701920362_\\u00c1o Thun Raglan Form Boxy ATN0151 \\u01112.jpg\",\"1701920362_\\u00c1o Thun Raglan Form Boxy ATN0151 \\u01113.jpg\"]', 9, 0, 1, 0, 0, 1, '2023-12-07 03:39:22', '2023-12-07 03:45:28'),
(52, 93, 1, 'Quần Jean nam đen slimfit cơ bản QJD0053', '<p>Quần Jean Nam Kenta cơ bản với chất lượng cao cấp, đường may sắc n&eacute;t từng chi tiết, form slimfit vừa vặn v&agrave; thoải m&aacute;i, nhẹ nh&agrave;ng khi mặc. Dễ d&agrave;ng phối với mọi trang phục, chiếc quần Jean Kenta sẽ tạo cho bạn cảm gi&aacute;c tự tin nhất khi mặc với mức gi&aacute; cực k&igrave; hợp l&yacute;.</p>\r\n\r\n<p>Chất liệu: denim co gi&atilde;n thoải m&aacute;i, mịn m&aacute;t, bền m&agrave;u.<br />\r\n&nbsp;</p>', '<p>Quần Jean Nam Kenta cơ bản với chất lượng cao cấp, đường may sắc n&eacute;t từng chi tiết, form slimfit vừa vặn v&agrave; thoải m&aacute;i, nhẹ nh&agrave;ng khi mặc. Dễ d&agrave;ng phối với mọi trang phục, chiếc quần Jean Kenta sẽ tạo cho bạn cảm gi&aacute;c tự tin nhất khi mặc với mức gi&aacute; cực k&igrave; hợp l&yacute;.</p>\r\n\r\n<p>Chất liệu: denim co gi&atilde;n thoải m&aacute;i, mịn m&aacute;t, bền m&agrave;u.</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 200000, 250000, 0, 36, 0, '1701920812_Quần Jean nam đen slimfit cơ bản QJD0053.jpeg', '[\"1701920812_Qu\\u1ea7n Jean nam \\u0111en slimfit c\\u01a1 b\\u1ea3n QJD0053 1.jpg\",\"1701920812_Qu\\u1ea7n Jean nam \\u0111en slimfit c\\u01a1 b\\u1ea3n QJD0053 2.jpg\",\"1701920812_Qu\\u1ea7n Jean nam \\u0111en slimfit c\\u01a1 b\\u1ea3n QJD0053 3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:46:52', '2023-12-07 03:53:57'),
(53, 93, 1, 'Quần Jean nam xanh nhạt slimfit cơ bản QJD0054', '<p>Quần Jean Nam Kenta cơ bản với chất lượng cao cấp, đường may sắc n&eacute;t từng chi tiết, form slimfit vừa vặn v&agrave; thoải m&aacute;i, nhẹ nh&agrave;ng khi mặc. Dễ d&agrave;ng phối với mọi trang phục, chiếc quần Jean Kenta sẽ tạo cho bạn cảm gi&aacute;c tự tin nhất khi mặc với mức gi&aacute; cực k&igrave; hợp l&yacute;.</p>\r\n\r\n<p>Chất liệu: denim co gi&atilde;n thoải m&aacute;i, mịn m&aacute;t, bền m&agrave;u.<br />\r\n&nbsp;</p>', '<p>Quần Jean Nam Kenta cơ bản với chất lượng cao cấp, đường may sắc n&eacute;t từng chi tiết, form slimfit vừa vặn v&agrave; thoải m&aacute;i, nhẹ nh&agrave;ng khi mặc. Dễ d&agrave;ng phối với mọi trang phục, chiếc quần Jean Kenta sẽ tạo cho bạn cảm gi&aacute;c tự tin nhất khi mặc với mức gi&aacute; cực k&igrave; hợp l&yacute;.</p>\r\n\r\n<p>Chất liệu: denim co gi&atilde;n thoải m&aacute;i, mịn m&aacute;t, bền m&agrave;u.</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 250000, 325000, 0, 67, 0, '1701920924_Quần Jean nam xanh nhạt slimfit cơ bản QJD0054.jpeg', '[\"1701920924_Qu\\u1ea7n Jean nam xanh nh\\u1ea1t slimfit c\\u01a1 b\\u1ea3n QJD0054 1.jpg\",\"1701920924_Qu\\u1ea7n Jean nam xanh nh\\u1ea1t slimfit c\\u01a1 b\\u1ea3n QJD0054 2.jpg\",\"1701920924_Qu\\u1ea7n Jean nam xanh nh\\u1ea1t slimfit c\\u01a1 b\\u1ea3n QJD0054 3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:48:44', '2023-12-07 03:55:50'),
(54, 93, 1, 'Quần Jean Regular QJD0067', '<p>Quần Jean Regular với chất liệu Jean cao cấp v&agrave; kiểu d&aacute;ng Regular fit, tạo n&ecirc;n sự thoải m&aacute;i v&agrave; linh hoạt cho người mặc. Quần Jean Regular kh&ocirc;ng qu&aacute; chật v&agrave; cũng kh&ocirc;ng qu&aacute; rộng, tạo cảm gi&aacute;c thoải m&aacute;i tối đa v&agrave; phong c&aacute;ch dễ d&agrave;ng kết hợp với nhiều loại trang phục kh&aacute;c nhau.<br />\r\n&nbsp;</p>', NULL, 300000, 350000, 0, 9, 0, '1701921032_Quần Jean Regular QJD0067 đen.jpeg', '[\"1701921032_Qu\\u1ea7n Jean Regular QJD0067 \\u0111en1.jpg\",\"1701921032_Qu\\u1ea7n Jean Regular QJD0067 \\u0111en2.jpg\",\"1701921032_Qu\\u1ea7n Jean Regular QJD0067 \\u0111en3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:50:32', '2023-12-07 03:56:06'),
(55, 93, 1, 'Quần Jean Trắng Túi Ngoài QJD0068', '<p>Quần Jean với chất liệu Jean cao cấp v&agrave; kiểu d&aacute;ng, tạo n&ecirc;n sự thoải m&aacute;i v&agrave; linh hoạt cho người mặc. Quần Jean Regular kh&ocirc;ng qu&aacute; chật v&agrave; cũng kh&ocirc;ng qu&aacute; rộng, tạo cảm gi&aacute;c thoải m&aacute;i tối đa v&agrave; phong c&aacute;ch dễ d&agrave;ng kết hợp với nhiều loại trang phục kh&aacute;c nhau.<br />\r\n&nbsp;</p>', NULL, 300000, 350000, 0, 34, 0, '1701921130_Quần Jean Trắng Túi Ngoài QJD0068 tr.jpeg', '[\"1701921130_Qu\\u1ea7n Jean Tr\\u1eafng T\\u00fai Ngo\\u00e0i QJD0068 tr1.jpg\",\"1701921130_Qu\\u1ea7n Jean Tr\\u1eafng T\\u00fai Ngo\\u00e0i QJD0068 tr2.jpg\",\"1701921130_Qu\\u1ea7n Jean Tr\\u1eafng T\\u00fai Ngo\\u00e0i QJD0068 tr3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:52:10', '2023-12-07 03:56:42'),
(56, 93, 1, 'Quần Jogger Jean QJK0034 xanh', '<p>Quần Jogger Jean của mang đến sự kết hợp ho&agrave;n hảo giữa phom d&aacute;ng thời trang v&agrave; sự thoải m&aacute;i linh hoạt. Được thiết kế từ chất liệu Jean chất lượng cao v&agrave; kiểu d&aacute;ng jogger hiện đại, thoải m&aacute;i cho người mặc. Tận hưởng sự thoải m&aacute;i m&agrave; chỉ quần jogger jean c&oacute; thể mang lại. Với khả năng di chuyển dễ d&agrave;ng v&agrave; phong c&aacute;ch kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh, quần Jogger jean sẽ l&agrave; điểm nhấn ho&agrave;n hảo cho tủ đồ của bạn.<br />\r\n&nbsp;</p>', '<p>Quần Jogger Jean của mang đến sự kết hợp ho&agrave;n hảo giữa phom d&aacute;ng thời trang v&agrave; sự thoải m&aacute;i linh hoạt. Được thiết kế từ chất liệu Jean chất lượng cao v&agrave; kiểu d&aacute;ng jogger hiện đại, thoải m&aacute;i cho người mặc. Tận hưởng sự thoải m&aacute;i m&agrave; chỉ quần jogger jean c&oacute; thể mang lại. Với khả năng di chuyển dễ d&agrave;ng v&agrave; phong c&aacute;ch kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh, quần Jogger jean sẽ l&agrave; điểm nhấn ho&agrave;n hảo cho tủ đồ của bạn.<br />\r\n&nbsp;</p>', 300000, 350000, 0, 58, 0, '1701921193_Quần Jogger Jean QJK0034 xanh.jpeg', '[\"1701921193_Qu\\u1ea7n Jogger Jean QJK0034 xanh1.jpg\",\"1701921193_Qu\\u1ea7n Jogger Jean QJK0034 xanh2.jpg\",\"1701921193_Qu\\u1ea7n Jogger Jean QJK0034 xanh3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:53:13', '2023-12-07 03:55:30'),
(57, 101, 1, 'Quần Short Kaki Lưng Thun QSL0056 Đen', '<p>Quần Short Kaki Nam lưng thun to&agrave;n phần. Chất vải kaki mịn v&agrave; m&aacute;t. Form tr&ecirc;n gối, vừa vặn. Chất liệu co co gi&atilde;n, mặc cực k&igrave; thoải m&aacute;i. Thử ngay sản phẩm n&agrave;y của Kenta nh&eacute;.<br />\r\n&nbsp;</p>', '<p>Quần Short Kaki Nam lưng thun to&agrave;n phần. Chất vải kaki mịn v&agrave; m&aacute;t. Form tr&ecirc;n gối, vừa vặn. Chất liệu co co gi&atilde;n, mặc cực k&igrave; thoải m&aacute;i. Thử ngay sản phẩm n&agrave;y của Kenta nh&eacute;.</p>\r\n\r\n<p>Hướng dẫn bảo quản:</p>\r\n\r\n<p>- Kh&ocirc;ng d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Ủi ở nhiệt độ th&iacute;ch hợp, hạn chế d&ugrave;ng m&aacute;y sấy.</p>\r\n\r\n<p>- Giặt ở chế độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.</p>', 125000, 150000, 0, 31, 0, '1701921531_Quần Short Kaki Lưng Thun QSL0056 den.jpeg', '[\"1701921531_Qu\\u1ea7n Short Kaki L\\u01b0ng Thun QSL0056 den1.jpg\",\"1701921531_Qu\\u1ea7n Short Kaki L\\u01b0ng Thun QSL0056 den2.jpg\",\"1701921531_Qu\\u1ea7n Short Kaki L\\u01b0ng Thun QSL0056 den3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:58:51', '2023-12-07 04:04:11'),
(58, 101, 1, 'Quần Short Kaki Lưng Thun QSL0056 Xám', '<p>Quần Short Kaki Nam lưng thun to&agrave;n phần. Chất vải kaki mịn v&agrave; m&aacute;t. Form tr&ecirc;n gối, vừa vặn. Chất liệu co co gi&atilde;n, mặc cực k&igrave; thoải m&aacute;i. Thử ngay sản phẩm n&agrave;y của Kenta nh&eacute;.<br />\r\n&nbsp;</p>', '<p>Quần Short Kaki Nam lưng thun to&agrave;n phần. Chất vải kaki mịn v&agrave; m&aacute;t. Form tr&ecirc;n gối, vừa vặn. Chất liệu co co gi&atilde;n, mặc cực k&igrave; thoải m&aacute;i. Thử ngay sản phẩm n&agrave;y của Kenta nh&eacute;.<br />\r\n&nbsp;</p>', 125000, 150000, 0, 17, 0, '1701921591_Quần Short Kaki Lưng Thun QSL0056 xam.jpeg', '[\"1701921591_Qu\\u1ea7n Short Kaki L\\u01b0ng Thun QSL0056 xam1.jpg\",\"1701921591_Qu\\u1ea7n Short Kaki L\\u01b0ng Thun QSL0056 xam2.jpg\",\"1701921591_Qu\\u1ea7n Short Kaki L\\u01b0ng Thun QSL0056 xam3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 03:59:51', '2023-12-07 04:04:25'),
(59, 101, 1, 'Quần Short Kaki Lưng Thun QSL0056 Xanh', '<p>Quần Short Kaki Nam lưng thun to&agrave;n phần. Chất vải kaki mịn v&agrave; m&aacute;t. Form tr&ecirc;n gối, vừa vặn. Chất liệu co co gi&atilde;n, mặc cực k&igrave; thoải m&aacute;i. Thử ngay sản phẩm n&agrave;y của Kenta nh&eacute;.<br />\r\n&nbsp;</p>', '<p>Quần Short Kaki Nam lưng thun to&agrave;n phần. Chất vải kaki mịn v&agrave; m&aacute;t. Form tr&ecirc;n gối, vừa vặn. Chất liệu co co gi&atilde;n, mặc cực k&igrave; thoải m&aacute;i. Thử ngay sản phẩm n&agrave;y của Kenta nh&eacute;.<br />\r\n&nbsp;</p>', 125000, 150000, 0, 19, 0, '1701921642_Quần Short Kaki Lưng Thun QSL0056 xanh.jpeg', '[\"1701921642_Qu\\u1ea7n Short Kaki L\\u01b0ng Thun QSL0056 xanh1.jpg\",\"1701921642_Qu\\u1ea7n Short Kaki L\\u01b0ng Thun QSL0056 xanh2.jpg\",\"1701921642_Qu\\u1ea7n Short Kaki L\\u01b0ng Thun QSL0056 xanh3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 04:00:42', '2023-12-07 04:04:42'),
(60, 101, 1, 'Quần Short Thun Nỉ Túi Nổi QST0014 Đen', '<p>Quần short thun nỉ thoải m&aacute;i v&agrave; dễ chịu khi mặc, thiết kế t&uacute;i nổi rộng r&atilde;i tạo điểm nhấn</p>\r\n\r\n<p>Chất liệu: nỉ da c&aacute; mịn m&aacute;t, thấm h&uacute;t tốt</p>', '<p>Quần short thun nỉ thoải m&aacute;i v&agrave; dễ chịu khi mặc, thiết kế t&uacute;i nổi rộng r&atilde;i tạo điểm nhấn</p>\r\n\r\n<p>Chất liệu: nỉ da c&aacute; mịn m&aacute;t, thấm h&uacute;t tốt</p>', 125000, 150000, 0, 25, 0, '1701921697_Quần Short Thun Nỉ Túi Nổi QST0014 den.jpeg', '[\"1701921697_Qu\\u1ea7n Short Thun N\\u1ec9 T\\u00fai N\\u1ed5i QST0014 den1.jpg\",\"1701921697_Qu\\u1ea7n Short Thun N\\u1ec9 T\\u00fai N\\u1ed5i QST0014 den2.jpg\",\"1701921697_Qu\\u1ea7n Short Thun N\\u1ec9 T\\u00fai N\\u1ed5i QST0014 den3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 04:01:37', '2023-12-07 04:04:59'),
(61, 101, 1, 'Quần Short Thun Nỉ Túi Nổi QST0014 Xám', '<p>Quần short thun nỉ thoải m&aacute;i v&agrave; dễ chịu khi mặc, thiết kế t&uacute;i nổi rộng r&atilde;i tạo điểm nhấn</p>\r\n\r\n<p>Chất liệu: nỉ da c&aacute; mịn m&aacute;t, thấm h&uacute;t tốt</p>', '<p>Quần short thun nỉ thoải m&aacute;i v&agrave; dễ chịu khi mặc, thiết kế t&uacute;i nổi rộng r&atilde;i tạo điểm nhấn</p>\r\n\r\n<p>Chất liệu: nỉ da c&aacute; mịn m&aacute;t, thấm h&uacute;t tốt</p>', 125000, 150000, 0, 37, 0, '1701921764_Quần Short Thun Nỉ Túi Nổi QST0014 xam.jpeg', '[\"1701921764_Qu\\u1ea7n Short Thun N\\u1ec9 T\\u00fai N\\u1ed5i QST0014 xam1.jpg\",\"1701921764_Qu\\u1ea7n Short Thun N\\u1ec9 T\\u00fai N\\u1ed5i QST0014 xam2.jpg\",\"1701921764_Qu\\u1ea7n Short Thun N\\u1ec9 T\\u00fai N\\u1ed5i QST0014 xam3.jpg\"]', 9, 0, 1, 0, 0, NULL, '2023-12-07 04:02:44', '2023-12-07 04:05:17'),
(62, 102, 1, 'Áo Len Nữ Lửng Dệt Kim Cổ Cao Sọc Gân Form Slim Cropped', '<p>&Aacute;o Len Nữ Lửng Dệt Kim Cổ Cao Sọc G&acirc;n Form Slim Cropped</p>', NULL, 250000, 300000, 0, 64, 0, '1702264604_Áo Len Nữ Lửng Dệt Kim Cổ Cao Sọc Gân Form Slim Cropped.jpeg', '[\"1702264604_\\u00c1o Len N\\u1eef L\\u1eedng D\\u1ec7t Kim C\\u1ed5 Cao S\\u1ecdc G\\u00e2n Form Slim Cropped1.jpg\",\"1702264604_\\u00c1o Len N\\u1eef L\\u1eedng D\\u1ec7t Kim C\\u1ed5 Cao S\\u1ecdc G\\u00e2n Form Slim Cropped2.jpg\",\"1702264604_\\u00c1o Len N\\u1eef L\\u1eedng D\\u1ec7t Kim C\\u1ed5 Cao S\\u1ecdc G\\u00e2n Form Slim Cropped3.jpg\"]', 10, 0, 1, 0, 0, NULL, '2023-12-11 03:16:44', '2023-12-11 03:31:41'),
(63, 102, 1, 'Áo Tanktop 2 Dây Nữ Kẻ Sọc Ngang Form Fitted', '<p>&Aacute;o Tanktop 2 D&acirc;y Nữ Kẻ Sọc Ngang Form Fitted</p>\r\n\r\n<p>Kiểu d&aacute;ng năng động</p>', NULL, 100000, 125000, 99000, 48, 0, '1702264728_Áo Tanktop 2 Dây Nữ Kẻ Sọc Ngang Form Fitted.jpeg', '[\"1702264728_\\u00c1o Tanktop 2 D\\u00e2y N\\u1eef K\\u1ebb S\\u1ecdc Ngang Form Fitted1.jpg\",\"1702264728_\\u00c1o Tanktop 2 D\\u00e2y N\\u1eef K\\u1ebb S\\u1ecdc Ngang Form Fitted2.jpg\",\"1702264728_\\u00c1o Tanktop 2 D\\u00e2y N\\u1eef K\\u1ebb S\\u1ecdc Ngang Form Fitted3.jpg\"]', 10, 0, 1, 0, 0, NULL, '2023-12-11 03:18:48', '2023-12-11 03:31:58'),
(64, 92, 1, 'Áo Thun Nữ Lửng Tay Ngắn In Hình Form Boxy Trắng', '<p>Chất liệu: cotton, tho&aacute;ng kh&iacute;</p>', NULL, 150000, 200000, 0, 24, 1, '1702264911_Áo Thun Nữ Lửng Tay Ngắn In Hình Form Boxy tr.jpeg', '[\"1702264911_\\u00c1o Thun N\\u1eef L\\u1eedng Tay Ng\\u1eafn In H\\u00ecnh Form Boxy tr1.jpg\",\"1702264911_\\u00c1o Thun N\\u1eef L\\u1eedng Tay Ng\\u1eafn In H\\u00ecnh Form Boxy tr2.jpg\",\"1702264911_\\u00c1o Thun N\\u1eef L\\u1eedng Tay Ng\\u1eafn In H\\u00ecnh Form Boxy tr3.jpg\"]', 10, 0, 1, 0, 0, 1, '2023-12-11 03:21:51', '2023-12-25 05:45:43'),
(65, 92, 1, 'Áo Thun Nữ Lửng Tay Ngắn In Hình Form Boxy Đen', '<p>Năng động, thoải m&aacute;i</p>', NULL, 150000, 200000, 0, 60, 0, '1702264971_Áo Thun Nữ Lửng Tay Ngắn In Hình Form Boxy.jpeg', '[\"1702264971_\\u00c1o Thun N\\u1eef L\\u1eedng Tay Ng\\u1eafn In H\\u00ecnh Form Boxy1.jpg\",\"1702264971_\\u00c1o Thun N\\u1eef L\\u1eedng Tay Ng\\u1eafn In H\\u00ecnh Form Boxy2.jpg\",\"1702264971_\\u00c1o Thun N\\u1eef L\\u1eedng Tay Ng\\u1eafn In H\\u00ecnh Form Boxy3.jpg\"]', 10, 0, 1, 0, 0, NULL, '2023-12-11 03:22:51', '2023-12-11 03:32:24'),
(66, 103, 1, 'Đầm Polo Nữ Tay Ngắn Cổ Gài Nút Trơn Form Regular', '<p>năng động, thoải m&aacute;i, tho&aacute;ng m&aacute;t</p>', NULL, 250000, 300000, 0, 39, 1, '1702265097_Đầm Polo Nữ Tay Ngắn Cổ Gài Nút Trơn Form Regular.jpeg', '[\"1702265097_\\u0110\\u1ea7m Polo N\\u1eef Tay Ng\\u1eafn C\\u1ed5 G\\u00e0i N\\u00fat Tr\\u01a1n Form Regular1.jpg\",\"1702265097_\\u0110\\u1ea7m Polo N\\u1eef Tay Ng\\u1eafn C\\u1ed5 G\\u00e0i N\\u00fat Tr\\u01a1n Form Regular2.jpg\",\"1702265097_\\u0110\\u1ea7m Polo N\\u1eef Tay Ng\\u1eafn C\\u1ed5 G\\u00e0i N\\u00fat Tr\\u01a1n Form Regular3.jpg\"]', 10, 0, 1, 0, 0, 1, '2023-12-11 03:24:57', '2023-12-25 05:45:43'),
(67, 103, 1, 'Đầm Mini Nữ Nhún Tay Trơn Form A Line', '<p>Đầm Mini Nữ Nh&uacute;n Tay Trơn Form A Line</p>', NULL, 250000, 300000, 0, 36, 0, '1702265147_Đầm Mini Nữ Nhún Tay Trơn Form A Line.jpeg', '[\"1702265147_\\u0110\\u1ea7m Mini N\\u1eef Nh\\u00fan Tay Tr\\u01a1n Form A Line1.jpg\",\"1702265147_\\u0110\\u1ea7m Mini N\\u1eef Nh\\u00fan Tay Tr\\u01a1n Form A Line2.jpg\",\"1702265147_\\u0110\\u1ea7m Mini N\\u1eef Nh\\u00fan Tay Tr\\u01a1n Form A Line3.jpg\"]', 10, 0, 1, 0, 0, NULL, '2023-12-11 03:25:47', '2023-12-11 03:32:41'),
(68, 103, 1, 'Đầm Nữ Tay Lửng Corduroy Trơn Form Straight', '<p>Đầm Nữ Tay Lửng Corduroy Trơn Form Straight</p>', NULL, 250000, 300000, 0, 70, 0, '1702265185_Đầm Nữ Tay Lửng Corduroy Trơn Form Straight.jpeg', '[\"1702265185_\\u0110\\u1ea7m N\\u1eef Tay L\\u1eedng Corduroy Tr\\u01a1n Form Straight1.jpg\",\"1702265185_\\u0110\\u1ea7m N\\u1eef Tay L\\u1eedng Corduroy Tr\\u01a1n Form Straight2.jpg\",\"1702265185_\\u0110\\u1ea7m N\\u1eef Tay L\\u1eedng Corduroy Tr\\u01a1n Form Straight3.jpg\"]', 10, 0, 1, 0, 0, NULL, '2023-12-11 03:26:25', '2023-12-11 03:32:53'),
(69, 92, 1, 'Áo Thun Nữ Tay Ngắn Nhãn Trang Trí Form Fitted', '<p>&Aacute;o Thun Nữ Tay Ngắn Nh&atilde;n Trang Tr&iacute; Form Fitted</p>', NULL, 100000, 125000, 0, 25, 0, '1702265359_Áo Thun Nữ Tay Ngắn Nhãn Trang Trí Form Fitted.jpeg', '[\"1702265359_\\u00c1o Thun N\\u1eef Tay Ng\\u1eafn Nh\\u00e3n Trang Tr\\u00ed Form Fitted1.jpg\",\"1702265359_\\u00c1o Thun N\\u1eef Tay Ng\\u1eafn Nh\\u00e3n Trang Tr\\u00ed Form Fitted2.jpg\",\"1702265359_\\u00c1o Thun N\\u1eef Tay Ng\\u1eafn Nh\\u00e3n Trang Tr\\u00ed Form Fitted3.jpg\"]', 10, 0, 1, 0, 0, NULL, '2023-12-11 03:29:19', '2023-12-11 03:33:01'),
(70, 91, 1, 'Áo Khoác Phao Phối AKD0039 đ', '<p>&Aacute;o Kho&aacute;c Phao Phối AKD0039 đ</p>', NULL, 300000, 350000, 0, 8, 1, '1702265413_Áo Khoác Phao Phối AKD0039 đ.jpeg', '[\"1702265413_\\u00c1o Kho\\u00e1c Phao Ph\\u1ed1i AKD0039 \\u01111.jpg\",\"1702265413_\\u00c1o Kho\\u00e1c Phao Ph\\u1ed1i AKD0039 \\u01112.jpg\",\"1702265413_\\u00c1o Kho\\u00e1c Phao Ph\\u1ed1i AKD0039 \\u01113.jpg\"]', 9, 0, 1, 0, 0, 1, '2023-12-11 03:30:13', '2023-12-25 05:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(11) NOT NULL,
  `id_fashion` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `id_fashion`, `name`, `created_at`, `updated_at`) VALUES
(91, 1, 'Áo Khoác Nam', '2021-01-01 03:47:49', '2021-02-01 08:28:24'),
(92, 2, 'Áo Thun Nữ', '2021-01-01 08:00:31', '2021-02-01 08:27:41'),
(93, 1, 'Quần Dài Nam', '2021-01-01 11:45:59', '2021-02-01 08:28:11'),
(96, 1, 'Áo Thun Nam', '2021-01-13 12:04:28', '2021-02-01 08:27:53'),
(100, 1, 'Áo Sơ Mi Nam', '2021-01-21 02:53:47', '2021-02-01 08:28:36'),
(101, 1, 'Quần Short Nam', '2021-01-21 02:54:40', '2021-02-01 08:28:58'),
(102, 2, 'Áo Kiểu Nữ', '2021-01-30 09:43:11', '2021-02-01 08:28:47'),
(103, 2, 'Váy', '2023-12-04 07:43:55', '2023-12-04 07:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `stars` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `id_user`, `id_product`, `content`, `stars`, `created_at`, `updated_at`) VALUES
(8, 3, 17, NULL, 5, '2021-01-19 16:32:39', '2021-01-19 16:32:39'),
(9, 1, 16, NULL, 5, '2021-01-20 03:07:04', '2021-01-20 03:07:04'),
(10, 1, 17, 'tốt', 5, '2021-01-20 03:21:18', '2021-01-20 03:21:18'),
(11, 3, 23, 'cui', 5, '2021-01-21 03:21:37', '2021-01-21 03:21:37'),
(12, 3, 24, 'đẹp', 5, '2021-01-27 07:40:13', '2021-01-27 07:40:13'),
(13, 3, 36, 'Cũng được', 4, '2021-02-02 02:27:36', '2021-02-02 02:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `sale_banner`
--

CREATE TABLE `sale_banner` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sale_banner`
--

INSERT INTO `sale_banner` (`id`, `id_type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(10, 92, '1609748248_banner2.png', 1, '2021-01-04 07:52:24', '2021-02-01 18:14:30'),
(11, 91, '1610417468_banner1.jpg', 1, '2021-01-04 08:11:00', '2021-02-01 18:14:36'),
(12, 92, '1610417347_BANNER-CONTENT-WEB-FINAL-01-01.jpg', 1, '2021-01-05 07:12:57', '2021-02-01 18:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(50) NOT NULL DEFAULT 0,
  `sold_quantity` int(100) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `id_product`, `size`, `quantity`, `sold_quantity`, `created_at`, `updated_at`) VALUES
(14, 17, 'S', 296, 4, '2021-01-27 15:48:22', '2022-07-26 14:58:16'),
(15, 17, 'M', 95, 5, '2021-01-27 15:48:33', '2022-07-26 14:58:16'),
(16, 17, 'L', 91, 9, '2021-01-27 15:48:43', '2022-07-26 14:49:21'),
(17, 18, 'S', 100, 0, '2021-01-27 15:51:00', '2021-01-27 15:51:25'),
(18, 18, 'M', 50, 50, '2021-01-27 15:51:10', '2021-02-01 15:59:03'),
(19, 19, 'S', 100, 0, '2021-01-30 04:26:40', '2021-01-30 05:19:07'),
(20, 19, 'M', 100, 0, '2021-01-30 04:27:06', '2021-01-30 05:19:17'),
(21, 19, 'L', 100, 0, '2021-01-30 04:27:20', '2021-01-30 05:19:26'),
(22, 20, 'S', 100, 0, '2021-01-30 05:19:48', '2021-01-30 05:20:27'),
(23, 20, 'M', 100, 0, '2021-01-30 05:20:00', '2021-01-30 05:20:36'),
(24, 20, 'L', 100, 0, '2021-01-30 05:20:12', '2021-01-30 05:20:45'),
(26, 21, 'M', 100, 0, '2021-01-30 05:21:52', '2021-01-30 10:46:02'),
(27, 21, 'L', 100, 0, '2021-01-30 05:22:02', '2021-01-30 10:46:11'),
(29, 22, 'M', 99, 1, '2021-01-30 10:46:46', '2021-02-01 15:51:28'),
(30, 22, 'S', 100, 0, '2021-01-30 10:46:59', '2021-01-30 10:47:24'),
(31, 23, 'S', 99, 1, '2021-01-30 10:51:17', '2021-02-01 15:51:27'),
(32, 23, 'M', 95, 5, '2021-01-30 10:51:26', '2021-02-01 07:27:53'),
(33, 24, 'S', 100, 0, '2021-01-30 10:51:41', '2021-01-30 10:53:24'),
(34, 24, 'M', 50, 50, '2021-01-30 10:51:54', '2021-02-01 15:51:27'),
(35, 25, 'S', 97, 3, '2021-01-30 10:52:07', '2021-02-02 03:19:38'),
(36, 26, 'S', 98, 2, '2021-01-30 10:52:17', '2021-02-02 03:18:50'),
(37, 26, 'M', 100, 0, '2021-01-30 10:52:27', '2021-01-30 10:54:36'),
(38, 27, 'S', 100, 0, '2021-01-30 10:55:51', '2021-01-30 10:58:21'),
(39, 27, 'M', 100, 0, '2021-01-30 10:56:09', '2021-01-30 10:58:30'),
(40, 28, 'S', 100, 0, '2021-01-30 11:00:00', '2021-01-30 11:00:00'),
(41, 29, 'M', 100, 0, '2021-01-30 11:00:13', '2021-01-30 11:00:13'),
(42, 30, 'S', 100, 0, '2021-01-30 11:00:44', '2021-01-30 11:00:44'),
(43, 31, 'S', 100, 0, '2021-01-30 11:00:59', '2021-01-30 11:00:59'),
(44, 32, 'S', 100, 0, '2021-01-30 11:01:15', '2021-01-30 11:01:15'),
(45, 33, 'M', 100, 0, '2021-01-30 11:01:30', '2021-01-30 11:01:30'),
(46, 34, 'S', 100, 0, '2021-01-30 11:01:44', '2021-01-30 11:01:44'),
(47, 35, 'S', 100, 0, '2021-01-30 11:01:55', '2021-01-30 11:01:55'),
(48, 36, 'S', 95, 5, '2021-01-30 11:02:06', '2021-02-01 07:27:52'),
(49, 37, 'S', 80, 20, '2021-01-30 11:02:17', '2021-02-01 15:59:03'),
(50, 38, 'S', 100, 0, '2021-01-30 11:02:26', '2021-01-30 11:03:13'),
(52, 39, 'S', 96, 4, '2021-02-01 15:29:57', '2021-02-02 03:48:19'),
(53, 39, 'M', 300, 0, '2021-02-01 15:30:26', '2021-02-01 15:32:44'),
(54, 17, 'XL', 20, 0, '2022-07-26 14:59:38', '2022-07-26 14:59:48'),
(55, 40, 'L', 40, 0, '2023-12-04 07:54:35', '2023-12-04 07:55:00'),
(56, 40, 'XL', 30, 0, '2023-12-04 07:54:41', '2023-12-04 07:55:08'),
(57, 41, 'L', 70, 0, '2023-12-04 07:58:20', '2023-12-04 07:58:48'),
(58, 41, 'XL', 100, 0, '2023-12-04 07:58:27', '2023-12-04 07:58:55'),
(59, 41, 'XXL', 0, 0, '2023-12-04 07:58:32', '2023-12-04 07:58:32'),
(60, 43, 'L', 80, 0, '2023-12-07 03:39:48', '2023-12-07 03:40:18'),
(61, 43, 'XL', 100, 0, '2023-12-07 03:39:54', '2023-12-07 03:40:25'),
(62, 43, 'XXL', 32, 0, '2023-12-07 03:40:00', '2023-12-07 03:40:30'),
(63, 44, 'XL', 11, 1, '2023-12-07 03:40:44', '2023-12-25 05:45:00'),
(64, 44, 'XXL', 30, 0, '2023-12-07 03:40:49', '2023-12-07 03:41:11'),
(65, 45, 'L', 10, 0, '2023-12-07 03:41:25', '2023-12-07 03:41:42'),
(66, 45, 'XL', 50, 0, '2023-12-07 03:41:31', '2023-12-07 03:41:49'),
(67, 46, 'L', 5, 0, '2023-12-07 03:42:02', '2023-12-07 03:42:16'),
(68, 46, 'XL', 2, 0, '2023-12-07 03:42:08', '2023-12-07 03:42:21'),
(69, 47, 'L', 7, 0, '2023-12-07 03:42:31', '2023-12-07 03:42:46'),
(70, 47, 'XL', 55, 0, '2023-12-07 03:42:35', '2023-12-07 03:42:51'),
(71, 47, 'XXL', 2, 0, '2023-12-07 03:42:39', '2023-12-07 03:42:58'),
(72, 48, 'L', 8, 0, '2023-12-07 03:43:09', '2023-12-07 03:43:21'),
(73, 48, 'XL', 22, 0, '2023-12-07 03:43:15', '2023-12-07 03:43:26'),
(74, 49, 'L', 64, 0, '2023-12-07 03:43:34', '2023-12-07 03:43:42'),
(75, 50, 'L', 3, 0, '2023-12-07 03:43:49', '2023-12-07 03:44:04'),
(76, 50, 'XL', 14, 0, '2023-12-07 03:43:53', '2023-12-07 03:44:11'),
(77, 51, 'XL', 25, 0, '2023-12-07 03:44:19', '2023-12-07 03:44:26'),
(78, 52, 'XL', 12, 0, '2023-12-07 03:53:28', '2023-12-07 03:53:50'),
(79, 52, 'XXL', 24, 0, '2023-12-07 03:53:39', '2023-12-07 03:53:57'),
(80, 53, 'L', 42, 0, '2023-12-07 03:54:44', '2023-12-07 03:55:44'),
(81, 53, 'XL', 25, 0, '2023-12-07 03:54:48', '2023-12-07 03:55:50'),
(82, 54, 'XL', 9, 0, '2023-12-07 03:54:58', '2023-12-07 03:56:06'),
(83, 55, 'L', 34, 0, '2023-12-07 03:55:03', '2023-12-07 03:56:42'),
(84, 56, 'L', 22, 0, '2023-12-07 03:55:12', '2023-12-07 03:55:24'),
(85, 56, 'XL', 36, 0, '2023-12-07 03:55:16', '2023-12-07 03:55:30'),
(86, 57, 'XL', 24, 0, '2023-12-07 04:03:16', '2023-12-07 04:04:03'),
(87, 57, 'XXL', 7, 0, '2023-12-07 04:03:22', '2023-12-07 04:04:11'),
(88, 58, 'L', 5, 0, '2023-12-07 04:03:32', '2023-12-07 04:04:20'),
(89, 58, 'XL', 12, 0, '2023-12-07 04:03:36', '2023-12-07 04:04:25'),
(90, 59, 'L', 7, 0, '2023-12-07 04:03:40', '2023-12-07 04:04:38'),
(91, 59, 'XL', 12, 0, '2023-12-07 04:03:44', '2023-12-07 04:04:42'),
(92, 60, 'XL', 25, 0, '2023-12-07 04:03:48', '2023-12-07 04:04:59'),
(93, 61, 'XL', 37, 0, '2023-12-07 04:03:52', '2023-12-07 04:05:17'),
(94, 62, 'M', 22, 0, '2023-12-11 03:30:25', '2023-12-11 03:31:35'),
(95, 62, 'L', 42, 0, '2023-12-11 03:30:32', '2023-12-11 03:31:41'),
(96, 63, 'M', 15, 0, '2023-12-11 03:30:38', '2023-12-11 03:31:52'),
(97, 63, 'L', 33, 0, '2023-12-11 03:30:43', '2023-12-11 03:31:58'),
(98, 64, 'L', 24, 1, '2023-12-11 03:30:48', '2023-12-25 05:45:43'),
(99, 65, 'M', 30, 0, '2023-12-11 03:30:54', '2023-12-11 03:32:20'),
(100, 65, 'XL', 30, 0, '2023-12-11 03:30:59', '2023-12-11 03:32:24'),
(101, 66, 'M', 39, 1, '2023-12-11 03:31:04', '2023-12-25 05:45:43'),
(102, 67, 'L', 36, 0, '2023-12-11 03:31:10', '2023-12-11 03:32:41'),
(103, 68, 'M', 35, 0, '2023-12-11 03:31:15', '2023-12-11 03:32:47'),
(104, 68, 'L', 35, 0, '2023-12-11 03:31:20', '2023-12-11 03:32:53'),
(105, 69, 'L', 25, 0, '2023-12-11 03:31:24', '2023-12-11 03:33:01'),
(106, 70, 'XL', 8, 1, '2023-12-11 03:31:28', '2023-12-25 05:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, '1608611197_BANNER-CONTENT-WEB-FINAL-01-01.jpg', 1, '2020-12-22 04:26:37', '2021-02-01 18:15:05'),
(13, '1608621167_banner1.jpg', 1, '2020-12-22 07:12:47', '2021-01-01 08:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `created_at`, `updated_at`, `image`) VALUES
(1, 'GUCCI', '2021-01-18 17:08:52', '2021-01-18 16:51:06', '1610988666_gucci.png'),
(5, 'Tommy', '2021-01-21 03:19:37', '2021-01-21 03:19:37', '1611199177_logotm.jpg'),
(6, 'Adidas', '2021-01-21 03:25:13', '2021-01-21 03:25:13', '1611199513_Adidas.png'),
(7, 'Dior', '2021-01-21 03:27:58', '2021-01-21 03:27:58', '1611199678_Dior.jpg'),
(8, 'Lacoste', '2021-01-21 03:31:52', '2021-01-21 03:31:52', '1611199912_Lacoste.jpg'),
(9, 'KENTA', '2021-01-21 03:48:53', '2021-01-21 03:48:53', '1611200933_kenta.jpg'),
(10, 'ROUTINE', '2023-12-11 03:13:54', '2023-12-11 03:13:54', '1702264434_routine.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_status` timestamp NULL DEFAULT NULL,
  `time_code` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `password`, `email`, `address`, `phone`, `level`, `status`, `code`, `time_status`, `time_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$I29N4b3tKhLnH6LYe8wDZO3y1PE88IAkFjJX8YFHw.Pv7ns2EA87u', 'admin@gmail.com', 'Quảng Nam', '0123456789', 1, 0, '$2y$10$F9tSaAAAJ10VjMJBc0Bon.U5ceySSCVKIH8ZnLe.el6AemgJ/PFIO', NULL, '2021-01-25 19:30:45', NULL, NULL, '2022-07-26 14:52:55'),
(8, 'customer1', '$2y$10$VxI67vdxM6AxtTiRNKEM7.fzr8b3Igy9dZCn8M/neU3QBlUHrF/jm', 'customer1@gmail.com', 'Đà Nẵng', '0443375487', 0, 0, NULL, NULL, NULL, NULL, '2022-07-13 16:14:36', '2022-07-26 14:47:36'),
(9, 'customer2', '$2y$10$pepxqSOAxxcjDi7sKa78/OqJuvZdHfijTTX7YJ03xKSjubvcdPjpq', 'customer2@gmail.com', 'Đà Nẵng', '0223368465', 0, 0, NULL, NULL, NULL, NULL, '2022-07-13 16:16:01', '2022-07-13 16:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_visitor` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `date_visitor`) VALUES
(1, '127.0.0.1', '2021-01-23'),
(2, '103.221.221.189', '2020-12-23'),
(3, '104.221.221.189', '2020-12-23'),
(4, '103.221.227.942', '2021-01-23'),
(5, '192.19.005.189', '2021-01-23'),
(6, '192.18.705.189', '2021-01-23'),
(7, '102.18.705.189', '2021-01-23'),
(30, '127.0.0.1', '2021-01-29'),
(31, '127.0.0.1', '2021-01-29'),
(32, '127.0.0.1', '2021-01-29'),
(33, '127.0.0.1', '2021-01-29'),
(34, '127.0.0.1', '2021-01-30'),
(35, '127.0.0.1', '2021-01-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fashion`
--
ALTER TABLE `fashion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `sale_banner`
--
ALTER TABLE `sale_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fashion`
--
ALTER TABLE `fashion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sale_banner`
--
ALTER TABLE `sale_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
