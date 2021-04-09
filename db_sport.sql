-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2021 lúc 02:07 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_sport`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_User` varchar(255) NOT NULL,
  `admin_Name` varchar(255) NOT NULL,
  `admin_Email` varchar(255) NOT NULL,
  `admin_Pass` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_User`, `admin_Name`, `admin_Email`, `admin_Pass`, `level`) VALUES
('admin', 'Trần Quốc Huy', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 0),
('staff', 'staff', 'sadsadsad@gmail.com', '1253208465b1efa876f982d8a9e73eef', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(4, 'Nike'),
(5, 'Adidas'),
(7, 'Converse'),
(16, 'Vans'),
(34, 'ASICS'),
(35, 'Champion'),
(40, 'Lacoste');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `ssId` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productName`, `ssId`, `price`, `size`, `quantity`, `image`) VALUES
(189, 'Vans UA Sport Suede - VN0A4BU6XW3', 'g7tra27g77uiadp0iv1dhn5rkd', 160, '35', 17, '2d391f7fc9.jpg'),
(191, 'Korea 2020 Stadium Away', 'g7tra27g77uiadp0iv1dhn5rkd', 100, 'M', 191, '4f3793a7fb.jpg'),
(194, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '2v31j7flp508afsat0bfb1kpir', 1280000, '38', 1, '9d5064dc07.jpg'),
(195, 'Vans UA Sport Suede - VN0A4BU6XW3', '2v31j7flp508afsat0bfb1kpir', 160, '35', 15, '2d391f7fc9.jpg'),
(212, 'PRIMEBLUE ULTRABOOST 20', 'psebnmap26fkur5oi8mdns309p', 220, '41', 1, 'f02eca4501.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL,
  `catSize` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`, `catSize`) VALUES
(12, 'Quần', '28'),
(13, 'Quần', '29'),
(14, 'Quần', '30'),
(15, 'Quần', '31'),
(16, 'Quần', '32'),
(17, 'Quần', '33'),
(18, 'Quần', '34'),
(19, 'Quần', '35'),
(20, 'Quần', '36'),
(21, 'Áo', 'S'),
(22, 'Áo', 'M'),
(23, 'Áo', 'L'),
(24, 'Áo', 'XL'),
(25, 'Áo', 'XXL'),
(26, 'Giày', '35'),
(27, 'Giày', '36'),
(28, 'Giày', '37'),
(29, 'Giày', '38'),
(30, 'Giày', '39'),
(31, 'Giày', '40'),
(32, 'Giày', '41'),
(33, 'Giày', '42'),
(34, 'Giày', '43'),
(35, 'Giày', '44'),
(36, 'Giày', '45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nameCus` varchar(255) NOT NULL,
  `emailCus` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`username`, `password`, `nameCus`, `emailCus`, `address`, `phone`) VALUES
('a', '0cc175b9c0f1b6a831c399e269772661', 'a', '1', '1', 1),
('ltht1999', 'c4ca4238a0b923820dcc509a6f75849b', 'Trần Quốc Huy', 'ltht1999@gmail.com', '365 Phạm Hữu Lầu, Phường Phú Mỹ, Quận 7, TP. Hồ Chí Minh', 337865781),
('tien', '2a26569e98b26668f39e98e6baef2d54', 'Minh Tiến', 'cominhtien30@gmail.com', 'Trảng Bom', 825512635),
('tuan123', 'c4ca4238a0b923820dcc509a6f75849b', 'Tuan dep trao', 'tuan150902@gmail.com', 'bien hoa', 2147483647);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id_discount` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_discount`
--

INSERT INTO `tbl_discount` (`id_discount`, `code`, `discount`) VALUES
(1, 'dacs2020', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_imgthumb`
--

CREATE TABLE `tbl_imgthumb` (
  `id` int(11) NOT NULL,
  `imgthumb` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_imgthumb`
--

INSERT INTO `tbl_imgthumb` (`id`, `imgthumb`, `product`) VALUES
(2, '5eeb8d0c7f.jpg', 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_Id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `buyer` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `totalprice` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_Id`, `date`, `buyer`, `receiver`, `phone`, `email`, `address`, `totalprice`, `status`) VALUES
(86, '2020-05-20 17:10:48', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 1019000, '2'),
(87, '2020-05-20 17:11:20', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 160, '3'),
(88, '2020-05-21 05:44:41', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 1280000, '2'),
(89, '2020-05-21 09:43:37', '', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 3840000, '1'),
(90, '2020-05-21 09:44:57', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 6400000, '1'),
(91, '2020-05-21 09:45:26', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 0, '3'),
(92, '2020-05-21 13:15:40', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 1280780, '0'),
(93, '2020-05-21 13:23:49', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 1280000, '0'),
(94, '2020-05-21 13:24:41', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 100, '0'),
(95, '2020-05-21 13:35:30', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 2038000, '0'),
(96, '2020-05-21 13:36:37', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 2038000, '0'),
(97, '2020-05-21 13:36:56', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 2038000, '2'),
(98, '2020-05-21 13:39:44', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 2038000, '2'),
(99, '2020-05-21 13:39:44', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 2038000, '2'),
(100, '2020-05-21 14:46:21', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', 'Hưng Nhượng', 2038000, '0'),
(101, '2020-05-22 04:02:37', 'ltht1999', 'Huỳnh Đình MInh Kha', 2147483647, 'khubuloz@gmail.com', 'Gò Vấp', 3840160, '2'),
(102, '2020-05-23 17:33:50', '2', 'Hoài Thương', 377755750, 'thuongkhung2020@gmail.com', 'Xã Tân Hào', 1160, '2'),
(111, '2020-06-08 07:03:11', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', '365 Phạm Hữu Lầu, Phường Phú Mỹ, Quận 7, TP. Hồ Chí Minh', 120, '0'),
(112, '2020-06-12 02:44:05', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', '365 Phạm Hữu Lầu, Phường Phú Mỹ, Quận 7, TP. Hồ Chí Minh', 36, '0'),
(113, '2020-06-12 04:57:36', 'ltht1999', 'Trần Quốc Huy', 337865781, 'ltht1999@gmail.com', '365 Phạm Hữu Lầu, Phường Phú Mỹ, Quận 7, TP. Hồ Chí Minh', 36, '0'),
(115, '2021-03-01 13:01:03', 'tuan123', 'Tuan dep trao', 2147483647, 'tuan150902@gmail.com', 'bien hoa', 80, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orderdetails`
--

CREATE TABLE `tbl_orderdetails` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_orderdetails`
--

INSERT INTO `tbl_orderdetails` (`id`, `id_order`, `productName`, `size`, `quantity`, `image`, `price`) VALUES
(56, 86, 'Nike Sportswear', '31', 1, '23fe3f827b.jpg', 1019000),
(57, 87, 'Vans UA Sport Suede - VN0A4BU6XW3', '35', 1, '2d391f7fc9.jpg', 160),
(58, 88, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 1, '9d5064dc07.jpg', 1280000),
(59, 89, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 3, '9d5064dc07.jpg', 1280000),
(60, 90, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 5, '9d5064dc07.jpg', 1280000),
(61, 92, 'Vans UA Sport Suede - VN0A4BU6XW3', '35', 3, '2d391f7fc9.jpg', 160),
(62, 92, 'Korea 2020 Stadium Away', 'M', 3, '4f3793a7fb.jpg', 100),
(63, 92, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 1, '9d5064dc07.jpg', 1280000),
(64, 93, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 1, '9d5064dc07.jpg', 1280000),
(65, 94, 'Korea 2020 Stadium Away', 'M', 1, '4f3793a7fb.jpg', 100),
(66, 95, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(67, 96, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(68, 97, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(69, 98, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(70, 99, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(71, 100, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(73, 101, 'Vans UA Sport Suede - VN0A4BU6XW3', '35', 1, '2d391f7fc9.jpg', 160),
(74, 102, 'Vans UA Sport Suede - VN0A4BU6XW3', '35', 6, '2d391f7fc9.jpg', 160),
(75, 102, 'Korea 2020 Stadium Away', 'M', 2, '4f3793a7fb.jpg', 100),
(85, 111, 'Nike Air Force 1 All White', '38', 1, '85ec88ab11.jpg', 120),
(86, 112, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 'L', 1, '3070301b97.png', 36),
(87, 113, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 'L', 1, '3070301b97.png', 36),
(89, 115, 'Converse Chuck Taylor All Star Cheerful - 167069C', '38', 1, '5508c3592a.jpg', 80);

--
-- Bẫy `tbl_orderdetails`
--
DELIMITER $$
CREATE TRIGGER `trg_delete` AFTER DELETE ON `tbl_orderdetails` FOR EACH ROW UPDATE tbl_product SET tbl_product.quantity = tbl_product.quantity + old.quantity
WHERE tbl_product.productName = old.productName AND tbl_product.size = old.size
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_update` BEFORE INSERT ON `tbl_orderdetails` FOR EACH ROW UPDATE tbl_product SET tbl_product.quantity = tbl_product.quantity - new.quantity
WHERE tbl_product.productName = new.productName AND tbl_product.size = new.size
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `price` bigint(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `size`, `price`, `quantity`, `image`, `type`, `description`, `status`) VALUES
(98, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'S', 36, 500, '3070301b97.png', 1, 'An oversized crocodile brings subtle flair to this tough, ultra-dry technical jersey t-shirt. High performance, unbeatable style.', 0),
(99, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'M', 36, 500, '3070301b97.png', 1, 'An oversized crocodile brings subtle flair to this tough, ultra-dry technical jersey t-shirt. High performance, unbeatable style.', 0),
(100, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'L', 36, 498, '3070301b97.png', 1, 'An oversized crocodile brings subtle flair to this tough, ultra-dry technical jersey t-shirt. High performance, unbeatable style.', 0),
(101, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'XL', 36, 500, '3070301b97.png', 1, 'An oversized crocodile brings subtle flair to this tough, ultra-dry technical jersey t-shirt. High performance, unbeatable style.', 0),
(102, 'T-Clip Leather Sneakers', 26, 40, '35', 77, 2000, 'dd6e2cca70.png', 0, 'This sneaker delivers an urban aesthetic, combining Lacoste’s signature Sideline silhouette with 80s detailing. Uppers crafted from a mix of premium leather, suede and mesh panels, are executed in sport-inspired shades. Perforations elevate the look further, referencing the tennis court. The crocodile appears embossed on the quarter and Lacoste lettered branding on the tongue and heel adds signature flair.', 0),
(103, 'T-Clip Leather Sneakers', 26, 40, '36', 77, 200, 'dd6e2cca70.png', 0, 'This sneaker delivers an urban aesthetic, combining Lacoste’s signature Sideline silhouette with 80s detailing. Uppers crafted from a mix of premium leather, suede and mesh panels, are executed in sport-inspired shades. Perforations elevate the look further, referencing the tennis court. The crocodile appears embossed on the quarter and Lacoste lettered branding on the tongue and heel adds signature flair.', 0),
(104, 'Crocodile Striped Colorblock Fleece', 12, 40, '28', 45, 500, '88ff4f6e76.png', 0, 'These sport shorts have an iconic colourblock look with crocodile bands along the pockets. With their brushed cotton blend and adjustable waistband, they\'re both soft and functional, so you can give it your all on the courts but still look and feel good.', 0),
(105, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'XXL', 36, 200, '3070301b97.png', 1, 'An oversized crocodile brings subtle flair to this tough, ultra-dry technical jersey t-shirt. High performance, unbeatable style.', 0),
(106, 'T-Clip Leather Sneakers', 26, 40, '45', 77, 60, 'dd6e2cca70.png', 0, 'This sneaker delivers an urban aesthetic, combining Lacoste’s signature Sideline silhouette with 80s detailing. Uppers crafted from a mix of premium leather, suede and mesh panels, are executed in sport-inspired shades. Perforations elevate the look further, referencing the tennis court. The crocodile appears embossed on the quarter and Lacoste lettered branding on the tongue and heel adds signature flair.', 0),
(107, 'C LOGO COTTON TERRY BERMUDA SHORTS', 12, 35, '32', 40, 20, '16a5b47221.png', 0, 'The shorts you need in your new season wardrobe, crafted from heavyweight cotton terry. Featuring the classic C in satin and twill, slanted pockets are handy for any essentials.', 0),
(108, 'C LOGO COTTON TERRY BERMUDA SHORTS', 12, 35, '35', 40, 200, '16a5b47221.png', 0, 'The shorts you need in your new season wardrobe, crafted from heavyweight cotton terry. Featuring the classic C in satin and twill, slanted pockets are handy for any essentials.', 0),
(109, 'C LOGO COTTON TERRY BERMUDA SHORTS', 12, 35, '34', 40, 10, '16a5b47221.png', 0, 'The shorts you need in your new season wardrobe, crafted from heavyweight cotton terry. Featuring the classic C in satin and twill, slanted pockets are handy for any essentials.', 0),
(110, 'SCRIPT LOGO COACH JACKET', 21, 35, 'L', 135, 199, '4314a3cf75.jpg', 0, 'Channeling varsity vibes, our coach jacket is crafted in a lightweight coated fabric with our script logo to the chest. With a press stud closure and welt pockets, this archival sports silhouette comes complete with our C logo patch to the sleeve.', 0),
(111, 'SCRIPT LOGO COACH JACKET', 21, 35, 'XXL', 135, 20, '4314a3cf75.jpg', 0, 'Channeling varsity vibes, our coach jacket is crafted in a lightweight coated fabric with our script logo to the chest. With a press stud closure and welt pockets, this archival sports silhouette comes complete with our C logo patch to the sleeve.', 0),
(112, 'GEL-KAYANO 27', 26, 34, '36', 160, 200, '66182f375e.png', 0, 'Enjoy excellent comfort and advanced support with the GEL-KAYANO® 27 running shoe. The redesigned mesh upper helps keep feet cool, while the sole is more flexible to help promote a more natural roll through the gait cycle. This starts in the heel with added flex grooves that assist in isolating initial impact to force a softer and smoother feeling at footstrike. At midstance, the foot should stop pronating and re-supinate for an efficient toe-off. To help this natural motion, we incorporate DYNAMIC DUOMAX® technology to help support the foot and increase stability for runners whose feet roll inward too much (overpronate). The midsole also integrates SPACE TRUSSTIC™ technology, which provides stability and reduces the overall weight to help promote a smoother transition from foot strike to toe-off. This added stability is complemented by deeper forefoot flex grooves for a smoother roll through toe-off, allowing the shoe to move more naturally with the foot. Lastly, a large section of reflective materials in the rearfoot helps keep runners visible when running in low-light conditions. The GEL-KAYANO® 27 model is an excellent choice for both competitive and noncompetitive runners looking for an everyday trainer that combines comfort with support.', 0),
(113, 'GEL-KAYANO 27', 26, 34, '43', 160, 200, '66182f375e.png', 0, 'Enjoy excellent comfort and advanced support with the GEL-KAYANO® 27 running shoe. The redesigned mesh upper helps keep feet cool, while the sole is more flexible to help promote a more natural roll through the gait cycle. This starts in the heel with added flex grooves that assist in isolating initial impact to force a softer and smoother feeling at footstrike. At midstance, the foot should stop pronating and re-supinate for an efficient toe-off. To help this natural motion, we incorporate DYNAMIC DUOMAX® technology to help support the foot and increase stability for runners whose feet roll inward too much (overpronate). The midsole also integrates SPACE TRUSSTIC™ technology, which provides stability and reduces the overall weight to help promote a smoother transition from foot strike to toe-off. This added stability is complemented by deeper forefoot flex grooves for a smoother roll through toe-off, allowing the shoe to move more naturally with the foot. Lastly, a large section of reflective materials in the rearfoot helps keep runners visible when running in low-light conditions. The GEL-KAYANO® 27 model is an excellent choice for both competitive and noncompetitive runners looking for an everyday trainer that combines comfort with support.', 0),
(114, 'GEL-CUMULUS 22', 26, 34, '41', 120, 20, '1e5c47278b.png', 0, 'The GEL-CUMULUS® 22 running shoe is a recommended choice for neutral runners who want a soft, flexible everyday trainer with a great fit. This update features a one-piece upper mesh that\'s combined with a seamless 3D print construction, which balances support and comfort around the foot — giving you an excellent fit right out of the box. The FLYTEFOAM® technology midsole is softer than the previous version to promote a pillowy ride. Under heel where the foot first hits the ground has been redesigned to better isolate impact. This new heel design has deeper forefoot flex grooves and a softer midsole foam to give you a soft ride. A hard-wearing AHAR® rubber outsole compound has been placed in key contact areas to help the GEL-CUMULUS® 22 shoe stand up to a ton of miles.', 0),
(115, 'GEL-KAYANO 26', 26, 34, '38', 100, 200, 'fcc7998700.png', 1, 'Enjoy luxurious comfort and improved bounce with the men\'s GEL-KAYANO® 26 running shoe, featuring GEL® technology to the forefoot and rear for high-density shock absorption and a comfortable feel over long distances. Featuring a jacquard mesh upper and FLYTEFOAM® Propel technology for a lightweight quality that allows your feet to breathe, this ASICS running shoe is all about going the distance, providing exceptional support and comfort over long periods of time. The EVA sockliner offers excellent rebound and cushioning, while the Guidance TRUSSTIC SYSTEM® technology brings a new level of stability, working with the contoured midsole to help control torsion. Meanwhile, the SpEVA 45 lasting improves bounce-back characteristics to put a spring in your step (quite literally). ', 0),
(116, 'OLD SKOOL PRO', 26, 16, '37', 65, 22, '0846299bf7.png', 0, 'The Old Skool Pro, a Vans classic upgraded for enhanced performance, features sturdy canvas and suede uppers, single-wrap foxing tape, enhanced footbeds for superior cushioning and impact protection, and Vans original waffle outsoles made of a rubber that offers grip and support. The Old Skool Pro also includes DURACAP reinforcement rubber underlays in high wear areas for unrivaled durability, and Pro Vulc Lite construction to deliver the best in boardfeel, flex, and traction.', 0),
(117, 'OLD SKOOL PRO', 26, 16, '39', 65, 20, '0846299bf7.png', 0, 'The Old Skool Pro, a Vans classic upgraded for enhanced performance, features sturdy canvas and suede uppers, single-wrap foxing tape, enhanced footbeds for superior cushioning and impact protection, and Vans original waffle outsoles made of a rubber that offers grip and support. The Old Skool Pro also includes DURACAP reinforcement rubber underlays in high wear areas for unrivaled durability, and Pro Vulc Lite construction to deliver the best in boardfeel, flex, and traction.', 0),
(118, 'OLD SKOOL PRO', 26, 16, '43', 65, 10, '0846299bf7.png', 0, 'The Old Skool Pro, a Vans classic upgraded for enhanced performance, features sturdy canvas and suede uppers, single-wrap foxing tape, enhanced footbeds for superior cushioning and impact protection, and Vans original waffle outsoles made of a rubber that offers grip and support. The Old Skool Pro also includes DURACAP reinforcement rubber underlays in high wear areas for unrivaled durability, and Pro Vulc Lite construction to deliver the best in boardfeel, flex, and traction.', 0),
(119, 'WASHED VANS SPORT', 26, 16, '36', 65, 20, 'e6d64b490b.png', 0, 'The Washed Vans Sport is a retro lace-up style featuring washed canvas and suede uppers with the iconic Vans checkerboard print, old school V sidestripes, padded collars, and signature rubber waffle outsoles.', 1),
(120, 'WASHED VANS SPORT', 26, 16, '40', 65, 2, 'e6d64b490b.png', 0, 'The Washed Vans Sport is a retro lace-up style featuring washed canvas and suede uppers with the iconic Vans checkerboard print, old school V sidestripes, padded collars, and signature rubber waffle outsoles.', 1),
(122, 'Converse Chuck Taylor All Star Cheerful - 167069C', 26, 7, '38', 80, 99, '5508c3592a.jpg', 0, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.', 0),
(123, 'Converse Chuck Taylor All Star Cheerful - 167069C', 26, 7, '44', 80, 10, '5508c3592a.jpg', 0, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.', 0),
(124, 'Converse Chuck Taylor All Star Cheerful - 167068C', 26, 7, '41', 80, 19, '0e96643557.jpg', 0, 'Hút mắt với hình ảnh mặt cười ngộ nghĩnh được biến tấu dưới dạng chữ Converse cực xịn xò. Gam màu xanh “so fresh” mix cùng form dáng cổ cao năng động cho bạn có được những outfit thời trang.', 0),
(125, 'Converse Chuck Taylor All Star Cheerful - 167068C', 26, 7, '36', 80, 100, '0e96643557.jpg', 0, 'Hút mắt với hình ảnh mặt cười ngộ nghĩnh được biến tấu dưới dạng chữ Converse cực xịn xò. Gam màu xanh “so fresh” mix cùng form dáng cổ cao năng động cho bạn có được những outfit thời trang.', 0),
(126, 'Chuck Taylor All Star Seasonal Color - 163352C', 26, 7, '38', 80, 20, '6f7f9323f3.jpg', 1, 'Thiết kế cổ cao quen thuộc là đặc trưng trong phong cách của Converse. Logo nằm ở má trong thân giày tạo điểm nhấn nổi bật. Chất vải Canvas nhẹ bền cùng đường viền đen bao quanh đế giày tạo nét nổi bật cho dòng Seasonal Corlor', 0),
(127, 'Chuck Taylor All Star Seasonal Color - 163352C', 26, 7, '42', 80, 198, '6f7f9323f3.jpg', 1, 'Thiết kế cổ cao quen thuộc là đặc trưng trong phong cách của Converse. Logo nằm ở má trong thân giày tạo điểm nhấn nổi bật. Chất vải Canvas nhẹ bền cùng đường viền đen bao quanh đế giày tạo nét nổi bật cho dòng Seasonal Corlor', 0),
(129, 'PRIMEBLUE ULTRABOOST 20', 26, 5, '41', 220, 40, 'f02eca4501.jpg', 1, 'Tự tin không phải tự nhiên mà có. Tố chất ấy được vun đắp qua từng buổi chạy. Đôi giày adidas Primeblue Ultraboost 20 là người bạn đồng hành lý tưởng cho các buổi chạy tuyệt vời nhất. Thân giày bằng vải dệt kim co giãn cho phép bàn chân chuyển động tự nhiên và đế ngoài linh hoạt giúp bạn di chuyển nhịp nhàng. Nhờ đó, bạn dễ dàng hoàn thành quãng đường chạy và đong đầy sự tự tin cho cả cuộc đời.', 0),
(131, 'Nike Air Force 1 All White', 26, 4, '38', 120, 99, '85ec88ab11.jpg', 1, 'Hoops in the park, Sunday BBQs and sunshine. The radiance lives on in the Nike Air Force 1 \'07, the b-ball OG that puts a fresh spin on the features you know best: crisp leather, stitched overlays in classic all white and the perfect amount of flash to make you shine.', 0),
(132, 'COPA 20.3 FIRM GROUND', 26, 5, '41', 80, 10, '46e3bcc890.jpg', 1, 'Đá hăng hơn, thắng lớn hơn. Yêu cầu nhiều hơn. Đường bóng xử lý. Đồng đội cùng chiến tuyến. Với đôi giày bóng đá này, cả hai đều được nâng tầm. Đường khâu ở mũi giày bằng da mềm giúp giữ bóng trong tầm kiểm soát. Má giày bằng vải lưới co giãn và lưỡi giày đơn tích hợp giúp cố định bàn chân khi bạn phô diễn kỹ thuật. Nâng tầm cuộc chơi với đôi giày bóng đá adidas Copa 20.3 Firm Ground.', 0),
(133, 'STAN SMITH DARK BLUE', 26, 5, '39', 80, 20, 'd77e545430.jpg', 1, 'Trước đây, Stan Smith từng là ngôi sao lớn của làng quần vợt. Từ đó đến nay, đôi giày mang tên ông luôn thắng đậm trên đường phố. Từ trên xuống dưới, đôi giày này giữ đúng phong cách thiết yếu theo nguyên bản năm 1972 với thiết kế bằng da tối giản và đường nét thanh thoát vốn đã trở thành đặc trưng của dòng giày này.', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_theodoi`
--

CREATE TABLE `tbl_theodoi` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gio_vao` varchar(50) NOT NULL,
  `gio_ra` varchar(50) NOT NULL,
  `phien_lam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_theodoi`
--

INSERT INTO `tbl_theodoi` (`id`, `username`, `email`, `gio_vao`, `gio_ra`, `phien_lam`) VALUES
(17, 'staff', 'sadsadsad@gmail.com', '23/11/2020 13:40:22', '23/11/2020 13:40:28', 'nv9c0vk46hfe34n50mg8ms36p4'),
(18, 'staff', 'sadsadsad@gmail.com', '27/12/2020 18:52:14', '27/12/2020 18:52:36', '923kbb01vkjp97h4b1dkmvldvp'),
(19, 'staff', 'sadsadsad@gmail.com', '01/03/2021 20:02:16', '', 'fplfpqnt51leq4vqe2ssu92b0h');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_User`) USING BTREE;

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id_discount`);

--
-- Chỉ mục cho bảng `tbl_imgthumb`
--
ALTER TABLE `tbl_imgthumb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_Id`);

--
-- Chỉ mục cho bảng `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`),
  ADD KEY `brandId` (`brandId`);

--
-- Chỉ mục cho bảng `tbl_theodoi`
--
ALTER TABLE `tbl_theodoi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id_discount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_imgthumb`
--
ALTER TABLE `tbl_imgthumb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `tbl_theodoi`
--
ALTER TABLE `tbl_theodoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD CONSTRAINT `tbl_orderdetails_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`order_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
