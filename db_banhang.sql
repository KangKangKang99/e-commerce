-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th7 29, 2020 lúc 03:28 PM
-- Phiên bản máy phục vụ: 8.0.18
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_06_23_043149_create_tbl_admin_table', 1),
(2, '2020_06_23_154205_create_tbl_category_product', 2),
(3, '2020_06_24_061819_create_tbl_brand_product', 3),
(4, '2020_06_24_064559_test', 4),
(5, '2020_06_24_110735_create_tbl_product', 5),
(6, '2020_07_23_164720_tbl_customer', 6),
(7, '2020_07_24_054758_tbl_shipping', 7),
(10, '2020_07_24_134539_tbl_payment', 8),
(11, '2020_07_24_134719_tbl_order', 8),
(13, '2020_07_24_134824_tbl_order_details', 9),
(14, '2020_07_24_144244_tbl_order', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'khuong.dvan@gmail.com', 'b050360f4688418ef0041fb096a2f57c', 'Khuong Dang', '0972710002', NULL, NULL),
(3, 'Khuong.dvan@gmail.com', '434ca78efc99fb243c0dc0b8e780b450', 'Khuong Dang', '0972710002', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand_product`
--

DROP TABLE IF EXISTS `tbl_brand_product`;
CREATE TABLE IF NOT EXISTS `tbl_brand_product` (
  `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand_product`
--

INSERT INTO `tbl_brand_product` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'Hãng quả táo cắn dở vô cùng nổi tiếng', 1, NULL, NULL),
(2, 'Lenovo - Thinkpad', 'Lenovo - Thinkpad', 1, NULL, NULL),
(3, 'Dell - XPS - Vostro', 'Dell', 1, NULL, NULL),
(4, 'Asus - vivobook - TUF - ROG', 'Asus', 1, NULL, NULL),
(5, 'MSI gaming', 'Laptop gaming hiệu năng cao', 1, NULL, NULL),
(6, 'ACER gaming', 'Laptop gaming hiệu năng cao', 1, NULL, NULL),
(7, 'Sennheiser - Skullcandy - JBL', 'Hãng tai nghe nổi tiếng', 1, NULL, NULL),
(8, 'Sony - LG', 'Sony', 1, NULL, NULL),
(9, 'Xiaomi', 'xiaomi', 0, NULL, NULL),
(10, 'Logitech - Fuhlen', 'Logitech - Fulhen', 1, NULL, NULL),
(11, 'Microsoft', 'Hãng microsoft nổi tiếng', 0, NULL, NULL),
(12, 'Các thương hiệu game', 'game', 0, NULL, NULL),
(13, 'Intel - AMD - Nivida ...', 'linh kiện', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

DROP TABLE IF EXISTS `tbl_category_product`;
CREATE TABLE IF NOT EXISTS `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'Laptop gaming, laptop văn phòng, laptop học tập - giải trí .... của các hãng như asus, dell , lenovo, macbook ...', 1, NULL, NULL),
(2, 'Chuột - bàn phím - tai nghe', 'Phụ kiện điện tử chính hãng của Apple  - Samsung - Logitech ...', 1, NULL, NULL),
(3, 'Play station', 'Máy chơi game PS - series: PS5, PS 4, PS3 ...', 1, NULL, NULL),
(4, 'Xbox', 'Xbox gaming', 1, NULL, NULL),
(5, 'Phần mềm - Game bản quyền', 'Phần mềm và game bản quyền trên các nền tảng : PC, PS, Xbox, Switch', 1, NULL, NULL),
(6, 'Linh kiện máy tính', 'CPU , GPU, RAM, ổ cứng SSD - HDD ...', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

DROP TABLE IF EXISTS `tbl_customers`;
CREATE TABLE IF NOT EXISTS `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_address`, `customer_phone`) VALUES
(3, 'Đặng Văn Hưng', 'kietjkd@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Số 1 Đại Cồ Việt - Bách Khoa - Hai Bà Trưng - Hà Nội', '0972710002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `shipping_id` int(11) UNSIGNED NOT NULL,
  `order_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `shipping_id` (`shipping_id`),
  KEY `payment_id` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

DROP TABLE IF EXISTS `tbl_order_details`;
CREATE TABLE IF NOT EXISTS `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_details_id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `product_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `product_content` text NOT NULL,
  `product_detail_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `product_price` int(255) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `product_img1` varchar(100) NOT NULL,
  `product_img2` varchar(100) NOT NULL,
  `product_img3` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_detail_desc`, `product_price`, `product_img`, `product_status`, `product_img1`, `product_img2`, `product_img3`) VALUES
(8, 'Lenovo Thinkpad t490s', 1, 2, 'Dòng Laptop Business cao cấp, mỏng nhẹ, siêu bền bỉ, cấu hình mạnh và độ bền rất cao, rất được ưa chuộng và tin dùng, ưu điểm về bàn phím và pin dùng lâu là những thế mạnh các dòng khác khó sánh bằng, máy phù hợp công việc di chuyển nhiều', '<b>- CPU: </b> Intel Core i7-8565U <br>\r\n<b>- Màn hình:</b> 14\" IPS (1920 x 1080) <br>\r\n<b>- RAM:</b> 16GB Onboard DDR4 2400MHz <br>\r\n<b>- Đồ họa:</b> Intel UHD Graphics 620 <br>\r\n<b>- Lưu trữ:</b> 256GB SSD M.2 NVMe  <br>\r\n<b>- Hệ điều hành:</b> Free DOS <br>\r\n<b>- Pin:</b>  3 cell 57 Wh Pin rời <br>\r\n<b>- Khối lượng: </b> 1.4 kg <br>', 'Chiếc laptop doanh nhânh tầm trung t-series. Với thiết kế vỏ hợp kim magie cho máy mỏng nhẹ. Cấu hình i7 8th, Ram 8gb. Màn hình fullHD. Pin trâu đến 10h ...', 29500000, 'thinkpad_t490s_thumb43.jpg', 1, 'thinkpad_t490s_img16.jpg', 'thinkpad_t490s_img296.jpg', 'thinkpad_t490s_img367.jpg'),
(9, 'Dell XPS 7590', 1, 3, 'Dell XPS 7590 là dòng máy tính được ra mắt là phiên bản thay thế chiếc Dell XPS 9570 đã được ra mắt trước đó. So với XPS 9570 thì Dell XPS 7590 có thiết kế đẹp mắt hơn, cấu hình mới mẻ hơn, chất lượng màn hình cũng được cải thiện nhiều hơn.', '<b>Hệ điều hành - Operation System: </b>	 Windows 10 Pro bản quyền <br>\r\n<b>Bộ xử lý - CPU: </b>	Intel Core i9-9980HK (2.4GHz up to 5.0GHz 16MB Cache) <br>\r\n<b>Màn hình - Monitor: </b>	15.6\" 4K Oled(3820 x 2160) InfinityEdge Anti-Reflective IPSsRGB 500-Nits display <br>\r\n<b>Bộ nhớ trong - Ram: </b>	32GB DDR4-2666MHz <br>\r\n<b>Ổ đĩa cứng - HDD:</b>	1TB M.2 PCIe NVMe SSD <br>\r\n<b>Card đồ hoạ - Video: </b>NVIDIA® GeForce® GTX 1650 4GB GDDR5 <br>\r\n<b>Đọc thẻ - Card reader: </b>	 Có <br>\r\n<b>Webcam: </b>	 Có <br>\r\n<b>Finger Print</b>	 Có bảo mật vân tay <br>\r\n<b>Cổng giao tiếp - Port: </b>1 x USB 2.03 x USB 3.0 1 x Mini DisplayPort1 x HDMI <br>\r\n<b>Bluetooth: </b>	 Bluetooth v4.0 <br>\r\n<b>Pin:</b>	6-Cell 97WHr Integrated <br>\r\n<b>Trọng lượng:</b>	2.0kg   <br>', 'Chiếc flagship của hãng Dell.  Mỏng nhẹ nhưng cấu hình cực trâu. Màn hình sắc nét, độ phân giải 2k ...', 65700000, 'dellxps_7590_thumb33.jpg', 1, 'dellxps_7590_img146.jpg', 'dellxps_7590_img228.jpg', 'dellxps_7590_img369.jpg'),
(10, 'Asus VivoBook S14 S431', 1, 4, 'Đặc điểm nổi bật của Asus VivoBook S14 S431 i7 8565U/8GB+32GB/512GB/Win10 (EB131T)\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nLaptop ASUS VivoBook S14 S431 i7  là chiếc laptop 14 inch sở hữu thiết kế mỏng nhẹ, cấu hình mạnh mẽ cùng nhiều đột phá về tính năng. Laptop sử dụng ổ cứng tích hợp SSD + Intel Optane cho tốc độ xử lí cực nhanh, mở khóa khuôn mặt hiện đại, bản lề Ergolift sáng tạo.', '<b>CPU: </b>	Intel Core i7 Coffee Lake, 8565U, 1.80 GHz<br>\r\n<b>RAM: </b>	8 GB, LPDDR3 (On board), 2133 MHz <br>\r\n<b>Ổ cứng:	 </b>Intel Optane 32GB (H10), SSD 512 GB M.2 PCIe, Không hỗ trợ khe cắm HDD <br>\r\n<b>Màn hình </b>:	14 inch, Full HD (1920 x 1080)<br>\r\n<b>Card màn hình:</b>	Card đồ họa tích hợp, Intel® UHD Graphics 620<br>\r\n<b>Cổng kết nối: </b>	USB 3.1, HDMI, USB 2.0, USB Type-C<br>\r\n<b>Hệ điều hành: </b>	Windows 10 Home SL<br>\r\n<b>Thiết kế: </b>	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền<br>\r\n<b>Kích thước: </b>	Dày 18 mm, 1.4 kg<br>\r\n<b>Thời điểm ra mắt: </b>	2019<br>', 'Là laptop phân khúc tầm trung của Asus. Chú trọng thiết kế màu sắc, cấu hình i7 - 8th. Thích hợp cho doanh nhân văn phòng, hoặc các học sinh sinh viên phải di chuyển nhiều', 21790000, 'asusvivobook_thumb4.jpg', 1, 'asusvivobook_img145.jpg', 'asusvivobook_img224.jpg', 'asusvivobook_img384.jpg'),
(11, 'Macbook pro 13 2020', 1, 1, 'MacBook Pro 13 inch 2020 với nhiều sự bổ sung mới, hoàn thiện hơn, giá hấp dẫn đã mang đến một sự lựa chọn tuyệt vời so với những đối thủ khác trong phân khúc.', '<b>Công nghệ CPU:: </b>	Intel Core i5 quad‑core 8th‑generation <br>\r\n<b>Tốc độ CPU: </b>	1.4GHz <br>\r\n<b>Tốc độ tối đa: </b>	Turbo Boost up to 3.9GHz <br>\r\n<b>Dung lượng RAM : </b>	8GB <br>\r\n<b>Loại ổ đĩa: </b>	SSD <br>\r\n<b>Dung lượng đĩa cứng: </b>	256GB<br>\r\n<b>Kích thước màn hình: </b>	13,3 inch, Retina (2560 x 1600 pixel) <br>\r\n<b>Thiết kế card: </b>	Đồ họa Intel Iris Plus 645 <br>\r\n<b>Kết nối không dây khác: </b>	Hai cổng Thunderbolt 3 <br>\r\n<b>Thông tin Pin	: </b>58,2 W Li-Poly <br>\r\n<b>Trọng lượng (kg): </b>	1,4 kg <br>', 'Laptop thời thượng của Apple với độ hoàn thiện tuyệt vời. Chip Intel thế hệ thứ 10 và RAM nhanh hơn', 31200000, 'macbookpro13_thumb95.jpg', 1, 'macbookpro13_img10.jpg', 'macbookpro13_img256.jpg', 'macbookpro13_img319.jpg'),
(12, 'MSI GF75 thin', 1, 5, 'MSI GF75 thin là một trong những model laptop chơi game ấn tượng được hãng MSI ra mắt cách đây không lâu. Sở hữu bề ngoài ‘siêu mỏng cánh’ nhưng tiềm ẩn khả năng xử lý xuất sắc, MSI GF 75 thin hứa hẹn sẽ là một ‘siêu phẩm’ trong phân khúc laptop chơi game mỏng nhẹ.', '<b>Hệ điều hành - Operation System: </b> Windows 10 Home bản quyền <br>\r\n<b>Bộ xử lý - CPU: </b>\r\n\r\nIntel Core i7-10750H (2.60Ghz up to 5.00GHz, 12 MB Intel® Smart Cache)<br>\r\n<b>Màn hình - Monitor: </b>\r\n\r\n17.3\" Full HD ( 1920 x 1080 ), 120Hz, IPS Panel <br>\r\n\r\n<b></b>Bộ nhớ trong - Ram\r\n\r\n8GB DDR4 bus 2666MHz , 2 slots, up to 32GB <br>\r\n\r\n<b>Ổ đĩa cứng - HDD: </b>\r\n\r\n512GB SSD NVMe M.2 PCIe Gen 3 x 2 <br>\r\n\r\n\r\n<b>Card đồ hoạ - Video: </b>\r\n\r\nNVidia Geforce GTX 1650 4GB GDDR6 <br>\r\n\r\n\r\n<b>Đọc thẻ - Card reader:</b>\r\n\r\nSD (XC/HC) Card Reader <br>\r\n\r\n<b>Webcam:</b>\r\n\r\nHD Cam <br>\r\n\r\n\r\n<b>Giao tiếp mạng - Communications:</b>\r\n \r\nIntel Wi-Fi 6 AX201(2*2 ax) + BT5 <br>\r\n\r\n<b>Cổng giao tiếp - Port: </b>\r\n\r\n1x (4K @ 30Hz) HDMI, 1x RJ45, 1x Type-C USB3.2 Gen1, 3x Type-A USB3.2 Gen1 <br>\r\n\r\n<b>Bluetooth:</b>\r\n\r\nBluetooth 5.0<br>\r\n\r\n<b>Pin:</b>\r\n\r\n3 cell , 51Whr<br>\r\n\r\n<b>Trọng lượng: </b>\r\n\r\n2.2kg               <br>', 'Laptop gaming của hãng MSI. Sở hữu chip core i7 - 10th H và card đồ hoạ GTX 1650. Chắc chắn sẽ đáp ứng nhu cầu làm việc và giải trí của bạn', 34100000, 'msi_gf75_thumb26.jpg', 1, 'msi_gf75_img194.jpg', 'msi_gf75_img250.jpg', 'msi_gf75_img30.jpg'),
(13, 'Acer Nitro 15 2020', 1, 6, 'Laptop Acer Gaming Nitro 5 2020 AN515-55-73VQ là dòng Nitro 5 phiên bản 2020 mới nhất, sử dụng CPU thế hệ thứ 10 mang lại hiệu năng cao so với dòng tiền nhiệm, sản phẩm đã có mặt tại <b> IT-store   </b>', '<b>      CPU: </b>                  	\r\n    Intel Core i7 10750H <br>\r\n\r\n  <b>Hệ điều hành: </b>  	\r\nWindows 10 SL 64 Bit <br>\r\n\r\n  <b>  RAM: </b>	\r\nDDR4 8GB (1 x 8GB) 2933MHz; 2 slots, up to 32GB<br>\r\n\r\n  <b>GPU: </b>  	\r\nGeforce GTX 1650Ti 4GB<br>\r\n\r\n  <b>Màn hình	: </b>  \r\n15.6\" FHD (1920×1080), IPS<br>\r\n\r\n  <b>Ổ cứng SSD: </b>  	\r\n512GB SSD NVMe M.2 PCIe Gen 3 x 2<br>\r\n\r\n  <b>Ổ cứng HDD: </b>  	\r\n1 slot HDD 2.5\'<br>\r\n\r\n\r\n  <b> Lan: </b> 	\r\nGigabit Ethernet<br>\r\n\r\n  <b>Wireless Lan	: </b>  \r\nIntel Wi-Fi 6 AX201(2*2 ax) + BT5<br>\r\n\r\n  <b>Các cổng kết nối: </b>  	\r\n2x USB 2.0; 1x USB 3.0; 1x USB 3.1 Type C; 1x HDMI<br>\r\n\r\n  <b>Bàn phím	: </b>  \r\nBacklight Keyboard<br>\r\n\r\n  <b>  Pin : </b>\r\n4 Cell , 48 Whr<br>\r\n\r\n  <b>Trọng lượng: </b>  	\r\n2.45 kg<br>', 'Laptop gaming của hãng ACER Nitro 5 2020 AN515-55-5304 tích hợp những “vũ khí” mới nhất. Bao gồm CPU Intel® Core™ i5 10300H, VGA NVIDIA® GeForce GTX 1650Ti cho hiệu năng xử lý mạnh mẽ.', 27490000, 'acer_nitro152020_thumb70.jpg', 1, 'acer_nitro152020_img14.jpg', 'acer_nitro152020_img251.jpg', 'acer_nitro152020_img387.jpg'),
(14, 'Tai nghe Gaming Lenovo H300 Stereo Headset', 2, 2, 'Là một trong những sản phẩm tai nghe không dây dành riêng cho việc chơi game. Tai nghe Gaming Lenovo H300 Stereo Headset mang đến cho bạn một trải nghiệm tuyệt vời khi sử dụng với thông số kỹ thuật cực kỳ nổi bật rất tuyệt vời dành dành cho âm thanh trong game. Không những vậy nó còn được thiết kế không dây rất tiện lợi không bị vướng khi sử dụng.', 'Tai nghe Lenovo Legion H300 Stereo Gaming Headset - ROW <br>\r\nThiết kế dành cho các game thủ <br>\r\nMàng loa 50 mm, âm thanh lớn, chi tiết nhỏ. <br>\r\nMic lớn được tăng cường 6 mm đảm bảo đồng đội có thể nghe thấy bạn.<br>\r\nTrọng lượng nhẹ cao cấp được thiết kế để giúp đôi tai bạn không bị áp lực.<br>', 'Là một trong những sản phẩm tai nghe không dây dành riêng cho việc chơi game. Tai nghe Gaming Lenovo H300 Stereo Headset mang đến cho bạn một trải nghiệm tuyệt vời khi sử dụng với thông số kỹ thuật cực kỳ nổi bật rất tuyệt vời dành dành cho âm thanh trong game. Không những vậy nó còn được thiết kế không dây rất tiện lợi không bị vướng khi sử dụng.', 1590000, 'tainghe_H300lenovo_thumb0.jpg', 1, 'tainghe_H300lenovo_img177.jpg', 'tainghe_H300lenovo_img287.jpg', 'tainghe_H300lenovo_img354.jpg'),
(15, 'Tai nghe JBL LIVE200BTBLK', 2, 7, 'Tai nghe Bluetooth JBL LIVE200BTBLK Đen  thiết kế dạng vòng cổ, siêu nhẹ. Vòng đeo cổ được thiết kế ôm sát tự nhiên cho bạn sử dụng thoải mái suốt ngày dài.', 'Kết nối: Bluetooth <br>\r\nCủ loa: 8 mm <br>\r\nĐáp ứng tần số: 20Hz - 20kHz<br>\r\nCông nghệ âm thanh JBL Signature Sound<br>\r\n10 giờ phát nhạc chỉ với 2 giờ sạc đầy<br>\r\nKhả năng trả lời điện thoại        <br>', 'Tai nghe Bluetooth JBL LIVE200BTBLK Đen với thiết kế độc đáo, dây đeo cổ linh hoạt cho phép bạn thoải mái di chuyển và chất lượng âm thanh tuyệt vời với âm bass mạnh mẽ, âm treble trong trẻo, phù hợp với mọi đối tượng sử dụng .', 1650000, 'tainghe_jblive_thumb31.jpg', 1, 'tainghe_jblive_img127.jpg', 'tainghe_jblive_img286.jpg', 'tainghe_jblive_img39.jpg'),
(16, 'Tai nghe Logitech G933 Artemis Spectrum Wireless RGB 7.1 Surround Gaming', 2, 7, 'Trình điều khiểm âm thanh PRO - G cho hiệu năng vượt trội . Các trình điều khiển âm thanh PRO - G được thực hiện với các vật liệu lưới la cung cấp cho người chơi hiệu suất giống như audiophlie . Từ âm nhạc yêu thích của bạn đến nhạc nền trò chơi mở rộng . Trải nghiệm âm thanh vòng 7.1 tuyệt vời với Dolby hoặc DTS Headphong X Surround Sound , tạo ra nhận thức không gian trong game , cho phép bạn nghe rõ kẻ thù lén lút xung quang hoặc các tín hiệu khả năng đặc biệt . * Âm thanh vòm 7.1 yêu cầu phần mềm Logitech Gaming SoftWare .', 'Kích thước: 172 mm x 81,7 mm x 182 mm <br>\r\nTrọng lượng: 366 g<br>\r\nChiều dài cáp: 2 m<br>\r\nĐáp ứng tần số: 20 Hz - 20 KHz<br>\r\nTrở kháng: 39 Ohms (thụ động), 5k Ohms (hoạt động)<br>\r\nĐộ nhạy: 107dB SPL / mW<br>\r\nMicro : Cardioid (một chiều)<br>\r\nTuổi thọ pin: 8 giờ<br>\r\nCổng sạc pin: USB<br>\r\nĐiều khiển âm thanh: Có<br>\r\nYêu cầu: Windows 7 trở lên, macOS X 10.10 trở lên; PS4 ™ hoặc Xbox One ™, Nintendo Switch<br>\r\nKết nối: Cổng USB, cổng âm thanh 3,5 mm; cổng đầu ra âm thanh RCA  <br>', 'Trình điều khiểm âm thanh PRO - G cho hiệu năng vượt trội . Các trình điều khiển âm thanh PRO - G được thực hiện với các vật liệu lưới la cung cấp cho người chơi hiệu suất giống như audiophlie . Từ âm nhạc yêu thích của bạn đến nhạc nền trò chơi mở rộng . Trải nghiệm âm thanh vòng 7.1 tuyệt vời với Dolby hoặc DTS Headphong X Surround Sound , tạo ra nhận thức không gian trong game , cho phép bạn nghe rõ kẻ thù lén lút xung quang hoặc các tín hiệu khả năng đặc biệt . * Âm thanh vòm 7.1 yêu cầu phần mềm Logitech Gaming SoftWare .', 3890000, 'tainghe_logitechg933_thumb40.jpg', 1, 'tainghe_logitechg933_img159.jpg', 'tainghe_logitechg933_img224.jpg', 'tainghe_logitechg933_img330.jpg'),
(17, 'Tai nghe Sennheiser Momentum True Wireless 2', 2, 7, 'Mới đây, hãng âm thanh Sennheiser của Đức đã chính thức tung bản nâng cấp thế hệ thứ hai cho mẫu tai nghe đoạt nhiều giải thưởng danh giá Momentum True Wireless.\r\n\r\nSennheiser Momentum True Wireless 2 sẽ gần như không có đối thủ về chất lượng âm thanh, phiên bản thế hệ thứ 2 được Sennheiser bổ sung và hoàn thiện những điểm khuyết về tính năng, thiết kế cũng như hiệu năng âm thanh.', 'Tai nghe Audiophile - True Wireless đầu tiên trên thế giới <br>\r\nNhờ vào công nghệ Qualcomm apt  <br>\r\nX Low Latency, bạn có thể trải nghiệm âm thanh 1 cách hoàn hảo <br>\r\nCông nghệ chống ồn Noise Cancellation beamforming (buff sóng) và Transparent Hearing cho phép bạn luôn nhận thức được môi trường xung quanh của bạn, dù có hoặc không có âm nhạc. <br>\r\nSennheiser Momentum True Wireless dải tần từ 5Hz đến 21000Hz, độ nhạy 107dB, bluetooth 5.0 aptX LLC (chuẩn bluetooth giúp bạn xem phim mà không bị trễ tiếng, ít trễ nhất) <br>\r\nThời gian sạc nhanh 1.5 tiếng <br>\r\nThời gian nghe nhạc liên tục 4 tiếng + 8 tiếng sạc bằng hộp đựng tai nghe kiêm sạc <br>\r\nKháng nước cấp độ IPX4. <br>\r\nNghe nhạc theo cách bạn muốn với ứng dụng Sennheiser Smart Control <br>\r\nTruy cập trợ lý ảo (Siri, Google Assistant) với chỉ 1 động tác chạm <br>\r\nSản phẩm chính hãng Sennheiser (Đức) <br>', 'Mới đây, hãng âm thanh Sennheiser của Đức đã chính thức tung bản nâng cấp thế hệ thứ hai cho mẫu tai nghe đoạt nhiều giải thưởng danh giá Momentum True Wireless.\r\n\r\nSennheiser Momentum True Wireless 2 sẽ gần như không có đối thủ về chất lượng âm thanh, phiên bản thế hệ thứ 2 được Sennheiser bổ sung và hoàn thiện những điểm khuyết về tính năng, thiết kế cũng như hiệu năng âm thanh.', 8490000, 'tainghe_senheisermomentum_thumb0.jpg', 1, 'tainghe_senheisermomentum_img130.jpg', 'tainghe_logitechg933_img29.jpg', 'tainghe_senheisermomentum_img393.jpg'),
(18, 'Tai nghe Sennheiser GAME ZERO', 2, 7, 'Nâng cấp trải nghiệm chơi game của bạn với tai nghe Sennheiser GAME ZERO. Hãng công nghệ âm thanh nổi tiếng Sennheiser muốn mang đến cho các game thủ một thiết bị có thể giúp người chơi đắm chìm trong thế giới trò chơi của riêng mình. Được thiết kế với công nghệ âm thanh tiên tiến cho phép tái tạo âm thanh chính xác và tự nhiên nhất. Không chỉ vậy bạn thậm chí có thể nghe được những âm thanh mờ nhạt nhất từ game. Thiết kế trực quan, phần chụp tai kín để ngăn tiếng ồn từ bên ngoài và bên trong. Tận hưởng thế giới game sống động đầy ấn tượng, GAME ZERO có thể gập lại gọn gàng và có hộp đựng đi kèm tránh hư hỏng hay trầy xước.', '- Tai nghe cấp độ chơi game <br>\r\n- Tích hợp 2 bộ chuyển đổi (transducers)<br>\r\n- Công nghệ “Ergonomic Acoustic Refinement” tái tạo âm thanh chính xác và tự nhiên<br>\r\n- Micro công nghệ khử tiếng ồn<br>\r\n- Thiết kế đệm tai kín tránh ảnh hưởng tiếng ồn, thoải mái khi đeo trong thời gian dài<br>\r\n- Tương thích với nhiều nền tảng <br>', 'Nâng cấp trải nghiệm chơi game của bạn với tai nghe Sennheiser GAME ZERO. Hãng công nghệ âm thanh nổi tiếng Sennheiser muốn mang đến cho các game thủ một thiết bị có thể giúp người chơi đắm chìm trong thế giới trò chơi của riêng mình. Được thiết kế với công nghệ âm thanh tiên tiến cho phép tái tạo âm thanh chính xác và tự nhiên nhất. Không chỉ vậy bạn thậm chí có thể nghe được những âm thanh mờ nhạt nhất từ game. Thiết kế trực quan, phần chụp tai kín để ngăn tiếng ồn từ bên ngoài và bên trong. Tận hưởng thế giới game sống động đầy ấn tượng, GAME ZERO có thể gập lại gọn gàng và có hộp đựng đi kèm tránh hư hỏng hay trầy xước.', 4490000, 'tainghe_senheisegamezero_thumb65.jpg', 1, 'tainghe_senheisegamezero_img198.jpg', 'tainghe_senheisegamezero_img239.jpg', 'tainghe_senheisegamezero_img38.jpg'),
(19, 'TAI NGHE SKULLCANDY INDY TRULY WIRELESS', 2, 7, 'Skullcandy Push là chiếc tai nghe true wireless đầu tiên của hãng âm thanh hiệu Skullcandy với mức giá khá cao gần 4 triệu đồng với kiểu dáng khá lạ lẫm với sự đón nhận không khả quan từ thị trường. Hãng đã mạnh dạn phát triển dòng tai nghe true wireless mang tên Skullcandy Indy Truly với kiểu dáng truyền thống hơn, nhỏ gọn, bền đẹp và mức giá chỉ bằng một nửa so với Airpods.', 'Âm thanh hạng Premium Sound với âm Bass & Treble độc quyền từ Skullcandy <br>\r\nThiết kế với trọng lượng nhẹ, chống nước và bụi bẩn đạt chuẩn IP55 <br>\r\nCho phép thực hiện Call, Volume, Play Music với hệ thống Touch Control <br>\r\nKết nối không dây với công nghệ Bluetooth 5.0, Pin sạc lên đến 16 giờ           <br>', 'Skullcandy Push là chiếc tai nghe true wireless đầu tiên của hãng âm thanh hiệu Skullcandy với mức giá khá cao gần 4 triệu đồng với kiểu dáng khá lạ lẫm với sự đón nhận không khả quan từ thị trường. Hãng đã mạnh dạn phát triển dòng tai nghe true wireless mang tên Skullcandy Indy Truly với kiểu dáng truyền thống hơn, nhỏ gọn, bền đẹp và mức giá chỉ bằng một nửa so với Airpods.', 1990000, 'tainghe_skullcandy_thumb74.jpg', 1, 'tainghe_skullcandy_img116.jpg', 'tainghe_skullcandy_img233.jpg', 'tainghe_skullcandy_img395.jpg'),
(20, 'Chuột Logitech G102 Lightsync RGB Black', 2, 10, 'Logitech G102 Prodiry đã ra mắt theo mong đợi với chất lượng build, chất lượng cảm biến, độ hoàn thiện và các tính năng bổ trợ cực kỳ ấn tượng nhưng với một mức giá vô cùng hợp lý, có thể nói là rẻ không tưởng', '- Kiểu kết nối: Có dây <br>\r\n- Dạng cảm biến: Optical <br>\r\n- Độ phân giải: 8000 DPI<br>\r\n- Tốc độ phản hồi: 1000 Hz (1 ms) <br>\r\n- Màu sắc: Đen  <br>', 'Logitech G102 Prodiry đã ra mắt theo mong đợi với chất lượng build, chất lượng cảm biến, độ hoàn thiện và các tính năng bổ trợ cực kỳ ấn tượng nhưng với một mức giá vô cùng hợp lý, có thể nói là rẻ không tưởng', 499000, 'chuot_logitechg102_thumb12.jpg', 1, 'chuot_logitechg102_img132.jpg', 'chuot_logitechg102_img260.jpg', 'chuot_logitechg102_img330.jpg'),
(21, 'Chuột không dây Logitech Pebble M350', 2, 10, 'Chuột không dây kết nối bluetooth của phân khúc tầm trung đến từ logitech', 'THIẾT KẾ VIÊN SỎI MỎNG, GỌN, ĐẸP– Logitech Pebble nổi bật với thiết kế đơn giản, dễ cầm, cảm giác thoải mái và vô tư mang theo đi bất cứ đâu. <br>\r\n- BẤM VÀ CUỘN KHÔNG TIẾNG KÊU– Tận hưởng trải nghiệm yên tĩnh cho bản thân và những người xung quanh. Nút bấm giảm 90% tiếng ồn. Thậm chí nút cuộn bằng cao su cũng giúp giảm tiếng ồn khi sử dụng.*Tiếng click được so sánh giữa Logitech Pebble vàLogitech M170. Âm thanh nút bấm trái dBA được đo tại 1 phòng thí nghiệm độc lập với khoảng cách 1m.<br>\r\n- ĐA KÉT NỐI– Kết nối thiết bị theo cách bạn muốn bằng Bluetooth® hoặc đầu thu USB đi kèm.<br>\r\n- TUỔI THỌ PIN 18 THÁNG– Logitech Pebble có thể sử dụng tới 18 tháng chỉ với 1 cụcAA battery. Thời lượng sử dụng pin sẽ thay đổi theo người dùng.<br>\r\n- MẮT ĐỌC CHÍNH XÁC– Logitech Pebble có mắt đọc nhạy và chính xác.<br>\r\n- THƯƠNG HIỆU LOGITECH    <br>', 'Chuột không dây kết nối bluetooth của phân khúc tầm trung đến từ logitech', 519000, 'chuot_logitechM350_thumb6.jpg', 1, 'chuot_logitechM350_img120.jpg', 'chuot_logitechM350_img249.jpg', 'chuot_logitechM350_img344.jpg'),
(22, 'Chuột fuhlen G90 EVOS', 2, 10, 'Chuột gaming xin xò của fuhlen', 'Cảm biến: quang học Pixart PMW3360 <br>\r\n\r\n-DPI: 12.000<br>\r\n\r\n-LED RGB 16.8 triệu màu<br>\r\n\r\n-Tần số phản hồi: 125/250/500/1000Hz<br>\r\n\r\n-Kết nối: USB, dây dẫn bọc lưới chống cắt<br>\r\n\r\n-Thiết kế bất đối xứng dành cho người thuận tay phải.<br>\r\n\r\n-LED cho nút cuộn và logo.<br>\r\n\r\n-7 nút bấm<br>\r\n\r\n-Switch Magnet Driven (quang học) siêu bền, gần như không thể bị hỏng.<br>\r\n\r\nCảm biến: quang học Pixart PMW3360      <br>', 'Chuột gaming xin xò của fuhlen', 580000, 'chuot_fuhleng90_thumb92.jpg', 1, 'chuot_fuhleng90_img191.jpg', 'chuot_fuhleng90_img26.jpg', 'chuot_fuhleng90_img341.jpg'),
(23, 'Chuột có dây fuhlen L102', 2, 10, 'Là chuột quốc dân của fuhlen. Giá rẻ nhưng chất lượng cực kì tốt', '- Kiểu kết nối: Có dây<br>\r\n- Dạng cảm biến: Optical<br>\r\n- Độ phân giải: 1000 DPI<br>\r\n- Màu sắc: Đen<br>', 'Là chuột quốc dân của fuhlen. Giá rẻ nhưng chất lượng cực kì tốt', 129000, 'chuot_fuhlenl102_thumb89.jpg', 1, 'chuot_fuhlenl102_img172.jpg', 'chuot_fuhlenl102_img24.jpg', 'chuot_fuhlenl102_img324.jpg'),
(25, 'Bàn phím cơ Logitech Gaming G512', 2, 10, 'Thương hiệu thiết bị ngoại vi Logitech vừa chính thức công bố bàn phím cơ chơi game G512 hoàn toàn mới với hai biến thể sử dụng switch Romer-G Tactile hoặc Rome-G Linear tiên tiến.', 'Bàn phím cơ gaming Logitech : Logitech G512<br>\r\nSwitch cơ học Romer-G được phát triển bởi Logitech<br>\r\nPhím Multimedia tiện lợi<br>\r\nThêm cổng USB nối dài tiện lợi<br>\r\nHệ thống led RGB 16.8 triệu màu với tính năng LightSync<br>', 'Thiết kế của G512 Carbon có thể nói là mang đầy đặc trưng của Logitech trong những năm gần đây. Khi đập vào mắt người dùng chính là tối giản đầy “thực dụng”. Lý do mình nói nó thực dụng chính là vì thiết kế của nó không hề đặc biệt, không đường nét góc cạnh, không núm control volume và cũng có không phím macro riêng biệt như những chiếc bàn phím cơ gaming trên thị trường. Cấu thành của Logitech G512 Carbon chỉ đơn giản với 108 phím được đặt trên một vỉ phím phẳng lỳ.', 2690000, 'banphim_logitechG512_thumb40.jpg', 1, 'banphim_logitechG512_img128.jpg', 'banphim_logitechG512_img254.jpg', 'banphim_logitechG512_img324.jpg'),
(26, 'Bàn phím cơ FuhlenD Destroy Mechanical Blue', 2, 10, 'Bàn Phím Gaming Có Dây Fuhlen D Destroyer Mechanical Blue Switch có vẻ ngoài cứng cáp, khoác lên mình bộ vỏ màu đen bằng nhựa chống nhám, Fuhlen Destroyer sẽ khiến game thủ vừa lòng về vẻ đẹp này. Với bộ khung dày, chắc chắn tăng cường sự ổn định cho bàn phím, nâng cao cảm giác gõ phím cho người sử dụng.', 'Kiểu bàn phím, số phím: 108 phím cơ fullsize<br>\r\nLoại đèn: LED quang học màu đỏ với nhiều chế độ điều chỉnh<br>\r\nLoại switch: Blue switches với vòng đời 55 triệu lần nhấn<br>\r\nKiểu giao tiếp: Giao tiếp qua cổng USB, đầu USB được mạ vàng nhằm tăng khả năng tiếp xúc      <br>', 'Bàn Phím Gaming Có Dây Fuhlen D Destroyer Mechanical Blue Switch có vẻ ngoài cứng cáp, khoác lên mình bộ vỏ màu đen bằng nhựa chống nhám, Fuhlen Destroyer sẽ khiến game thủ vừa lòng về vẻ đẹp này. Với bộ khung dày, chắc chắn tăng cường sự ổn định cho bàn phím, nâng cao cảm giác gõ phím cho người sử dụng.', 860000, 'banphim_fuhlenD_thumb85.jpg', 1, 'banphim_fuhlenD_img16.jpg', 'banphim_fuhlenD_img227.jpg', 'banphim_fuhlenD_img311.jpg'),
(27, 'Bộ chuột bàn phím Apple Magic', 2, 1, 'Magic Keyboard được Apple sáng tạo để phục vụ cho các dòng máy Mac của hãng, sản phẩm sở hữu thiết kế thanh lịch hiện đại và hội tụ nhiều công nghệ đặc trưng của Táo khuyết, mang tới trải nghiệm gõ chính xác, thoải mái nhất cho người dùng.', 'Thiết kế mỏng nhẹ, cấu trúc bàn phím chuẩn<br>     \r\nCông nghệ không dây Bluetooth hiện đại<br>     \r\nSản xuất theo tiêu chuẩn của Apple<br>     \r\nChất liệu kim loại nhôm cao cấp, nút bấm siêu nhạy<br>     \r\nTự động kết nối với máy Mac của bạn<br>     \r\nBàn phím có thiết kế đẹp mắt với pin tích hợp tính năng sạc lại<br>     \r\nThời lượng pin có thể lên tới 1 tháng sau 1 lần sạc đầy<br>', 'Magic Keyboard được Apple sáng tạo để phục vụ cho các dòng máy Mac của hãng, sản phẩm sở hữu thiết kế thanh lịch hiện đại và hội tụ nhiều công nghệ đặc trưng của Táo khuyết, mang tới trải nghiệm gõ chính xác, thoải mái nhất cho người dùng.', 26900000, 'chuotbanphim_applemagic_thumb8.jpg', 1, 'chuotbanphim_applemagic_img182.jpg', 'chuotbanphim_applemagic_img249.jpg', 'chuotbanphim_applemagic_img342.jpg'),
(28, 'PS4 slime black 1TB', 3, 8, 'Chiếc may chơi game của hãng sony. Dòng PS4 slim mỏng với dung lượng 1TB', 'Playstation 4 Slim thế hệ mới (CUH-2218 series) <br>\r\nMỏng hơn, nhỏ gọn hơn, tiết kiệm điện hơn<br>\r\nPhiên bản với ổ cứng 1TB<br>\r\nTặng kèm 3 đĩa game gốc<br>\r\nBảo hành 1 năm chính hãng của Sony Việt Nam<br>', 'Máy chơi game PlayStation 4. <br>\r\nBộ nhớ 1TB thoải mái cho việc lưu trữ.<br>\r\nThiết kế nhỏ gọn, tiết kiệm điện.<br>\r\nTốc độ siêu nhanh với bộ xử lý tối ưu và bộ nhớ RAM đến 8GB.<br>\r\nDễ dàng chia sẻ những khoảng khắc chơi game với nút SHARE trên cần điều khiển.<br>\r\nTay điều khiển DualShock® 4 tích hợp cảm ứng, loa, micro, rung cho trải nghiệm trò chơi trung thực hơn.<br>\r\nTiếp tục chơi game trên điện thoại với tính năng Remote Play.         <br>', 84901000, 'ps4_slimblack_thumb44.jpg', 1, 'ps4_slimblack_img18.jpg', 'ps4_slimblack_img254.jpg', 'ps4_slimblack_img368.jpg'),
(29, 'PS4 pro Black 1TB', 3, 8, 'Phiên bản pro của PS4. Với cấu hình mạnh hơn và nhiều tính năng mới', 'Vi xử lý chính: đơn nhân Custom<br>\r\nCPU: x86-64 AMD Jaguar 8 nhân<br>\r\nGPU: nền tảng AMD tốc độ 4.2 TFLOPS<br>\r\nBộ nhớ: GDDR5 8GB 1GB VRAM<br>\r\nBộ nhớ trong: 1TB<br>\r\nKích thước: 295×55×327 mm<br>\r\nCân nặng: 3,3 kg<br>\r\nỔ BD/DVD: BD × 6 CAV, DVD × 8 CAV<br>\r\nKết nối: USB 3.1 x 3, 3.5mm<br>\r\nMạng: Ethernet, Bluetooth 4.0, Wifi<br>\r\nNguồn: AC 100V, 50/60Hz, 310W<br>\r\nNgõ ra: HDMI 4K/HDR, digial           <br>', 'Máy chơi game PlayStation 4 Pro.<br>\r\nKhả năng hiển thị nội dung 4K. <br>\r\nHỗ trợ chơi các game 4K với đồ họa chất lượng, nhiều hiệu ứng.<br>\r\nHình ảnh HDR cho độ tương phản cao.<br>\r\nBộ nhớ 1TB thoải mái cho việc lưu trữ.<br>\r\nThiết kế nhỏ gọn, tiết kiệm điện.<br>\r\nTốc độ siêu nhanh với bộ xử lý tối ưu và bộ nhớ RAM đến 8GB.<br>\r\nDễ dàng chia sẻ những khoảng khắc chơi game với nút SHARE trên cần điều khiển.<br>\r\nTay điều khiển DualShock® 4 tích hợp cảm ứng, loa, micro, rung cho trải nghiệm trò chơi trung thực hơn.<br>\r\nTiếp tục chơi game trên điện thoại với tính năng Remote Play.<br>', 11490000, 'ps4_proBlack_thumb6.jpg', 1, 'ps4_proBlack_img158.jpg', 'ps4_proBlack_img259.jpg', 'ps4_proBlack_img374.jpg'),
(30, 'PS4 edition White limited', 3, 8, 'Phiên bản PS4 ra mắt giới hạn. Cấu hình của PS4 pro', 'Vi xử lý chính: đơn nhân Custom <br>\r\nCPU: x86-64 AMD Jaguar 8 nhân <br>\r\nGPU: nền tảng AMD tốc độ 4.2 TFLOPS <br>\r\nBộ nhớ: GDDR5 8GB 1GB VRAM <br>\r\nBộ nhớ trong: 1TB <br>\r\nKích thước: 295×55×327 mm <br>\r\nCân nặng: 3,3 kg <br>\r\nỔ BD/DVD: BD × 6 CAV, DVD × 8 CAV <br>\r\nKết nối: USB 3.1 x 3, 3.5mm <br>\r\nMạng: Ethernet, Bluetooth 4.0, Wifi <br>\r\nNguồn: AC 100V, 50/60Hz, 310W <br>\r\nNgõ ra: HDMI 4K/HDR, digial          <br>', 'PS4 edition White limited PS4 edition White limited PS4 edition White limited', 18310000, 'ps4_editionWhite_thumb32.jpg', 1, 'ps4_editionWhite_img33.jpg', 'ps4_editionWhite_img259.jpg', 'ps4_editionWhite_img154.jpg'),
(31, 'Xbox 360 Black', 4, 11, 'Máy chơi game Xbox. Mặc dù đã ra mắt rất lâu nhưng vẫn còn đáp ứng đầy đủ nhu cầu của người dùng', 'Nhà phát triển	Microsoft <br>\r\nNhà chế tạo	Flextronics, Wistron, Celestica, Foxconn<br>\r\nDòng sản phẩm	Xbox<br>\r\nLoại	Video game console<br>\r\nThế hệ	Thế hệ thứ 7<br>\r\nMức độ bán lẻ bao phủ	<br>\r\nXuất hiện theo khu vực<br>\r\nCPU	Chip 3 nhân 3,2 GHz PowerPC Xenon<br>\r\nBộ nhớ	GDDR3 RAM 512 MB 700 MHz<br>\r\nĐồ họa	500 MHz ATI Xenos<br>\r\nÂm thannh <br>\r\nAnalog stereo<br>\r\nStereo LPCM (TOSLINK và HDMI)<br>\r\nDolby Digital 5.1 (TOSLINK và HDMI)<br>\r\nDolby Digital with WMA pro (TOSLINK và HDMI)<br>\r\nKết nối	Nguyên mẫu<br>\r\n2.4 GHz không dây, 3 × USB 2.0, IR receiver, 100 Mbit Ethernet<br>\r\nAdd-on: Wifi 802.11a/b/g, Wifi 802.11a/b/g/n[4]<br>', 'ính năng nổi bật của Xbox 360 là dịch vụ trực tuyến Xbox Live. Gồm 2 phiên bản miễn phí và thuê bao, Xbox Live cho người dùng khả năng thi đấu trực tuyến; tải về trò chơi hay bản dùng thử trò chơi mới; xem trailer, mua và xem bản thu sóng trực tuyến các chương trình TV, âm nhạc và phim ảnh qua các cổng Xbox Video và Xbox Music; và truy cập những dịch vụ nội dung bên thứ ba qua các ứng dụng thu sóng truyền thông. Bên cạnh những tính năng đa phương tiện trực tuyến, Xbox còn cho phép thu sóng phát hình trực tiếp từ máy vi tính.', 3980000, 'xbox_360Black_thumb79.jpg', 1, 'xbox_360Black_img130.jpg', 'xbox_360Black_img216.jpg', 'xbox_360Black_img350.jpg'),
(32, 'Xbox One S White', 4, 11, 'Xbox OneS máy chơi game mới của hãng microsoft  .Được giới thiệu vào ngày 21 tháng 5 năm 2013 và là thiết bị thế hệ thứ ba trong gia đình Xbox', 'Hệ điều hành <br>\r\nCPU	8 lõi AMD 1,7 Ghz (2 Quad-Core Jaguar modules)<br>\r\nBộ nhớ	8 GB DDR3<br>\r\nLưu trữ	500 GB (HDD)<br>\r\nHiển thị	<br>\r\nVideo output formats<br>\r\nĐồ họa	853 MHz AMD Radeon<br>\r\nÂm thanh	Âm thanh vòm 7.1<br>\r\nĐầu vào	3 cổng USB 3.0 và 1 cổng HDMI<br>\r\nMáy ảnh	Camera Kinect (1080p)<br>\r\nDịch vụ trực tuyến	Xbox Live<br>', 'Xbox One được trang bị CPU gồm 8 nhân x86-64 sản xuất bởi AMD, RAM 8GB. Bộ nhớ trong 500GB và ổ đĩa Blu-ray. GPU cũng được sản xuất bởi AMD với tổng cộng 768 lõi. Về kết nối, nó có Gigabit Ethernet, Wifi và Wifi Direct.\r\n\r\nXbox One có khả năng chơi video độ phân giải 4K và hỗ trợ âm thanh vòm 7.1', 6990000, 'xbox_oneS_thumb56.jpg', 1, 'xbox_oneS_img163.jpg', 'xbox_oneS_img27.jpg', 'xbox_oneS_img334.jpg'),
(33, 'Xbox One X black', 4, 11, 'Phiên bản máy chơi game mới nhất của xbox. Ra mắt   2020', 'Vi xử lý	Scorpio Engine, 6 Teraflops, băng thông 326GB/s. <br>\r\nBộ nhớ Flash	8GB<br>\r\nBộ nhớ RAM	12GB GDDR5 at 326 GB/s<br>\r\nBộ nhớ lưu trữ	1TB HDD<br>\r\nChuẩn video	Đầu đọc Blu-ray 4K, HDMI 2160p@60Hz, HDR 10.<br>\r\nChuẩn âm thanh	DTS 5.1, DOLBY Digital 5.1, TrueHD with Atmos, PCM 2.0, 5.1, 7.1<br>\r\nKết nối mạng	WiFi băng tần kép, tín hiệu hồng ngoại<br>\r\nCổng kết nối	Power Port, 2 HDMI Ports, 3 USB 3.0 Ports, IR Out, S/PDIF, Ethernet Port.   <br>', 'icrosoft Xbox Series X đã được hãng Microsoft chính thức công bố tên của dòng máy chơi game tiếp theo của họ là Xbox Series X, dự kiến bán ra cuối năm 2020. Microsoft đã tung ra đoạn trailer thời lượng gần 2 phút để giới thiệu tên gọi là ngoại hình thiết kế của Xbox Series X, kèm theo đó, trưởng bộ phận máy chơi game Xbox – Phil Spencer cũng tuyên bố rằng Xbox Series X sẽ có sức mạnh xử lý gấp 4 lần thế hệ Xbox One X. Đoạn trailer cho thấy Xbox mới sẽ có thiết kế hình trụ đứng, tương tự như case máy PC để bàn, chứ không còn là dạng nằm ngang như các đời trước nữa, ngoài ra tay cầm cũng được thiết kế lại và bổ sung thêm nút share để người chơi có thể share màn hình khi chơi game lên các mạng xã hội.', 11360000, 'xbox_oneX_thumb42.jpg', 1, 'xbox_oneX_img147.jpg', 'xbox_oneX_img222.jpg', 'xbox_oneX_img312.jpg'),
(35, 'The Witcher® 3: Wild Hunt', 5, 12, 'Siêu phẩm game the witcher 3. ra mắt 2015', 'Hệ máy: PS4, PC,<br<>\r\nCấu hình tối thiểu: <br<>\r\nCPU: Intel CPU Core i5-2500K 3.3GHz / AMD CPU Phenom II X4 940<br<>\r\nVGA: Nvidia GPU GeForce GTX 660 AMD GPU / Radeon HD 7870<br<>\r\nRAM: 6GB<br<>\r\nWindows 7 64-bit hoặc Windows 8 (8.1) 64-bit<br<>\r\nDirect X 11<br<>\r\nHDD trống 40 GB      <br<>', 'The Witcher: Wild Hunt is a story-driven, next-generation open world role-playing game set in a visually stunning fantasy universe full of meaningful choices and impactful consequences. In The Witcher you play as the professional monster hunter, Geralt of Rivia, tasked with finding a child of prophecy in a vast open world rich with merchant cities, viking pirate islands, dangerous mountain passes, and forgotten caverns to explore.', 439000, 'game_thewitcher3_thumb80.jpg', 1, 'game_thewitcher3_img165.jpg', 'game_thewitcher3_img276.jpg', 'game_thewitcher3_img393.jpg'),
(36, 'PlayerUnknown\'s Battlegrounds PUBG', 5, 12, 'PUBG', 'PUBG game                        PUBG game                        PUBG game                        PUBG game                        PUBG game                        PUBG game                        PUBG game                        PUBG game', 'PUBG game', 2400000, 'game_pubg_thumb79.jpg', 1, 'game_pubg_img180.jpg', 'game_pubg_img275.jpg', 'game_pubg_img321.jpg'),
(37, 'Sekiro: Shadows Die Twice', 5, 12, 'game Sekiro. GOTY 2018', 'game Sekiro. GOTY 2018', 'game Sekiro. GOTY 2018', 1270000, 'game_sekiro_thumb46.jpg', 1, 'game_sekiro_img48.jpg', 'game_sekiro_img74.jpg', 'game_sekiro_img12.jpg'),
(38, 'Call of Duty: Advanced Warfare - Gold Edition', 5, 12, 'COD phiên bản giới hạn', 'Cấu hình tối thiểu: <br>\r\n\r\nHệ điều hành: Windows 7 64-Bit / Windows 8 64-Bit <br>\r\nVi xử lý: Intel Core 2 Duo E8200 2.66 Ghz hoặc AMD Phenom X3 8750 2.4 Ghz trở lên <br>\r\nRAM: 6 GB <br>\r\nHDD: 40 GB <br>\r\nVGA: NVIDIA GeForce GTS 450 hoặc ATI Radeon HD 5870 trở lên <br>\r\nCấu hình đề nghị: <br> <br>\r\n\r\nHệ điều hành: Windows 7 64-Bit / Windows 8 64-Bit <br>\r\nVi xử lý: Intel Core i5 – 680 3.6GHz <br>\r\nRAM: 8 GB <br>\r\nHDD: 40 GB <br>\r\nVGA: NVIDIA GeForce GTX 760 4GB        <br>', 'Call of Duty: Advanced Warfare là phần thứ 11 của dòng game bắn súng góc nhìn người thứ nhất (FPS) Call of Duty và là phần thứ sáu được phát triển bởi Sledgehammer Games. Tựa game đã được phát hành trên PC, PlayStation 3, PlayStation 4, Xbox 360 và Xbox One vào ngày 4 tháng 11 năm 2014.[4] High Moon Studios đảm nhiệm việc phát triển Advanced Warfare cho PlayStation 3 và Xbox 360 chứ không phải do Sledgehammer Games trực tiếp đảm nhiệm. Đây là phiên bản đầu tiên trong sê-ri trò chơi Call of Duty không có phiên bản cho nền tảng của Nintendo từ thời Call of Duty: Modern Warfare 2', 1280000, 'game_COD_thumb75.jpg', 1, 'game_COD_img114.jpg', 'game_COD_img169.jpg', 'game_COD_img14.jpg'),
(39, 'HĐH Microsoft HĐH Microsoft Windows Home 10 64Bit Eng Home 10 64Bit Eng', 5, 11, 'Key Win 10 home mới nhất', 'Với thành phần cốt yếu là Windows 10 trên máy tính, bạn có thể làm mọi việc. <br>\r\n\r\n• Các tính năng bảo mật tích hợp bao gồm tính năng chống vi-rút, tường lửa và bảo vệ Internet<br>\r\n• Quét khuôn mặt hoặc vân tay của bạn bằng Windows Hello để mở khóa PC theo cách nhanh chóng, an toàn và không cần mật khẩu.*<br>\r\n• Tính năng Hỗ trợ tập trung giúp bạn chặn thông báo, âm thanh và cảnh báo để có thời gian làm việc không bị phân tâm.<br>\r\n• Nhờ có Dòng thời gian, bạn có thể nhanh chóng và dễ dàng chuyển đến các tài liệu, ứng dụng và trang web gần đây nhất<br>\r\n• Microsoft Photos là một ứng dụng đơn giản giúp bạn sắp xếp, tìm kiếm, chỉnh sửa và chia sẻ ảnh cũng như video của mình.**<br>\r\n• Phát trực tuyến ngay video chơi game trực tiếp, quay màn hình và kiểm soát từng cài đặt âm thanh bằng thanh Trò chơi.<br>\r\n\r\n*Một số tính năng cần phải có phần cứng và/hoặc phần mềm chuyên dụng.<br>\r\n**Microsoft Photos hoạt động với hình ảnh và video được lưu trữ trên PC của bạn và trong OneDrive.<br>', 'HDH từ hãng microsoft', 2390000, 'game_win10Home_thumb46.jpg', 1, 'game_win10Home_thumb55.jpg', 'game_win10Home_thumb5.jpg', 'game_win10Home_thumb27.jpg'),
(40, 'VGA ASUS GeForce GTX 1080 TI', 6, 4, 'Card màn hình 11GB. Siêu hiệu năng mới nhất của nivida', 'ASUS GeForce GTX 1080 TI 11GB Turbo (TURBO-GTX1080TI-11G) <br>\r\nNVIDIA GeForce® GTX 1080 Ti is the fastest gaming GPU that delivers 35% faster performance than the GeForce GTX 1080.<br>\r\nDual-ball Bearing Fan runs smoother by reducing friction, further improving 2X longer card lifespan and cooling efficiency.<br>\r\nIndustry Only Auto-Extreme Technology with Super Alloy Power II delivers premium quality and best reliability. <br>', 'Card màn hình 11GB. Siêu hiệu năng mới nhất của nivida', 18900000, 'linhkien_vga1080ti_thumb22.jpg', 1, 'linhkien_vga1080ti_img167.jpg', 'linhkien_vga1080ti_img277.jpg', 'linhkien_vga1080ti_img335.jpg'),
(41, 'Card màn hình NVIDIA Quadro P1000 4GB GDDR5', 6, 13, 'Card màn hình NVIDIA Quadro P1000 4GB GDDR5', '- Chip đồ họa: NVIDIA Quadro P1000 <br>\r\n- Bộ nhớ: 4GB GDDR5 ( 128-bit ) <br>\r\n- Nguồn phụ: Không nguồn phụ         <br>', 'Card màn hình NVIDIA Quadro P1000 4GB GDDR5', 6490000, 'linhkien_nividaP1000_thumb24.jpg', 1, 'linhkien_nividaP1000_img117.jpg', 'linhkien_nividaP1000_img242.jpg', 'linhkien_nividaP1000_img390.jpg'),
(42, 'Card màn hình GALAX GeForce RTX 2060 6GB GDDR6', 6, 13, 'Card màn hình GALAX GeForce RTX 2060 6GB GDDR6\r\nBy\r\nGALAX\r\nSKU: 19020026', '- Bộ nhớ: 6GB GDDR6 ( 192-bit ) <br>\r\n- GPU clock 1695 MHz', 'Card màn hình GALAX GeForce RTX 2060 6GB GDDR6\r\nBy\r\nGALAX\r\nSKU: 19020026', 9490000, 'linhkien_gtx2060_thumb27.jpg', 1, 'linhkien_gtx2060_img167.jpg', 'linhkien_gtx2060_img240.jpg', 'linhkien_gtx2060_img342.jpg'),
(43, 'Card màn hình GALAX GeForce GTX 1050 2GB', 6, 13, 'Card màn hình GALAX GeForce GTX 1050 2GB GDDR5 EXOC\r\nBy\r\nGALAX\r\nSKU: 1800857', '- Chip đồ họa: NVIDIA GeForce GTX 1050 <br>\r\n- Bộ nhớ: 2GB GDDR5 ( 128-bit )<br>\r\n- GPU clock Base Clock (MHz) 1417 Boost Clock (MHz) 1531<br>\r\n- Nguồn phụ: Không nguồn phụ<br>', 'Card màn hình GALAX GeForce GTX 1050 2GB GDDR5 EXOC\r\nBy\r\nGALAX\r\nSKU: 1800857', 3120000, 'athumb35.jpg', 1, 'a239.jpg', 'a21.jpg', 'a178.jpg'),
(44, 'Card màn hình ASUS GeForce GTX 1050Ti 4GB GDDR5', 6, 13, 'Card màn hình ASUS GeForce GTX 1050Ti 4GB GDDR5 Cerberus OC\r\nBy\r\nASUS\r\nSKU: 1800559', '- Chip đồ họa: NVIDIA GeForce GTX 1050Ti <br>\r\n- Bộ nhớ: 4GB GDDR5 ( 128-bit )<br>\r\n- GPU clock Chế độ OC - Xung Tăng cường GPU : 1480 MHz , Xung Nền GPU : 1366 MHz Chế độ Chơi Game - Xung Tăng cường GPU : 1455 MHz , Xung Nền GPU : 1341 MHz<br>\r\n- Nguồn phụ: Không nguồn phụ      <br>', 'Card màn hình ASUS GeForce GTX 1050Ti 4GB GDDR5 Cerberus OC\r\nBy\r\nASUS\r\nSKU: 1800559', 489000, 'bthumb80.jpg', 1, 'b123.jpg', 'b288.jpg', 'b35.jpg'),
(45, 'Card màn hình MSI GeForce GTX 1660Ti', 6, 13, 'Card màn hình MSI GeForce GTX 1660Ti 6GB GDDR6 Ventus XS OC', '- Chip đồ họa: NVIDIA GeForce GTX 1660Ti <br>\r\n- Bộ nhớ: 6GB GDDR6 ( 192-bit )<br>\r\n- GPU clock 1830 MHz<br>\r\n- Nguồn phụ: 1 x 8-pin        <br>', 'Card màn hình MSI GeForce GTX 1660Ti 6GB GDDR6 Ventus XS OC', 8290000, 'cthumb50.jpg', 0, 'cimg160.jpg', 'cimg260.jpg', 'cimg326.jpg'),
(46, 'Laptop ASUS TUF Gaming', 1, 4, 'Laptop ASUS TUF Gaming FX504GE-EN047T (15.6\" FHD/i7-8750H/8GB/1TB HDD/GTX 1050Ti/Win10/2.3 kg)', '- CPU: Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nhân, 12 luồng ) <br>\r\n- Màn hình: 15.6\" ( 1920 x 1080 ) , không cảm ứng <br>\r\n- RAM: 1 x 8GB DDR4 2666MHz <br>\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1050Ti 4GB GDDR5 <br>\r\n- Lưu trữ: 1TB HDD 5400RPM <br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit <br>\r\n- Pin: 3 cell 48 Wh Pin liền , khối lượng: 2.3 kg <br>', 'Laptop ASUS TUF Gaming FX504GE-EN047T (15.6\" FHD/i7-8750H/8GB/1TB HDD/GTX 1050Ti/Win10/2.3 kg)', 25490000, 'laptop_athumb20.jpg', 1, 'laptop_a154.jpg', 'laptop_a21.jpg', 'laptop_a345.jpg'),
(47, 'Laptop MSI Bravo 15 A4DCR-052VN', 1, 5, 'Laptop MSI Bravo 15 A4DCR-052VN (15.6\" FHD/R5 4600H/8GB/256GB SSD/Radeon RX 5300M/Win10/2kg)\r\nBy\r\nMSI\r\nSKU: 200500686', '- CPU: AMD Ryzen 5 4600H <br>\r\n- Màn hình: 15.6\" IPS (1920 x 1080)<br>\r\n- RAM: 1 x 8GB DDR4 3200MHz<br>\r\n- Đồ họa: AMD Radeon RX 5300M 3GB GDDR6 / AMD Radeon Graphics<br>\r\n- Lưu trữ: 256GB SSD M.2 NVMe <br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit<br>\r\n- Pin: 3 cell 51 Wh Pin liền<br>\r\n- Khối lượng: 2 kg            <br>', 'Laptop MSI Bravo 15 A4DCR-052VN (15.6\" FHD/R5 4600H/8GB/256GB SSD/Radeon RX 5300M/Win10/2kg)\r\nBy\r\nMSI\r\nSKU: 200500686', 20190000, 'laptop_bthumb89.jpg', 1, 'laptop_b124.jpg', 'laptop_b260.jpg', 'laptop_b390.jpg'),
(48, 'Laptop Acer Predator Helios 300', 1, 6, 'Laptop Acer Predator Helios 300 PH315-52-78HH (NH.Q53SV.008) (15\" FHD/i7-9750H/8GB/256GB SSD/GTX 1660Ti/Win10/2.4 kg)\r\nBy\r\nACER', '- CPU: Intel Core i7-9750H ( 2.6 GHz - 4.5 GHz / 12MB / 6 nhân, 12 luồng ) <br>\r\n- Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng <br>\r\n- RAM: 1 x 8GB DDR4 2666MHz <br>\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1660Ti 6GB GDDR6 <br>\r\n- Lưu trữ: 256GB SSD M.2 NVMe <br>\r\n- Hệ điều hành: Windows 10 Home 64-bit <br>\r\n- Pin: 4 cell 59 Wh , khối lượng: 2.4 kg        <br>', 'Laptop Acer Predator Helios 300 PH315-52-78HH (NH.Q53SV.008) (15\" FHD/i7-9750H/8GB/256GB SSD/GTX 1660Ti/Win10/2.4 kg)\r\nBy\r\nACER', 36990000, 'laptop_cthumb12.jpg', 1, 'laptop_c274.jpg', 'laptop_c373.jpg', 'laptop_c194.jpg'),
(49, 'Laptop Acer Predator Triton 500', 1, 6, 'Laptop Acer Predator Triton 500 PT515-52-72U2 (NH.Q6WSV.001) (15.6\" FHD 300Hz/i7-10875H/32GB/1TB SSD/GeForce RTX 2080 Super/Win10/2.1kg)\r\nBy\r\nACER', '- CPU: Intel Core i7-10875H <br>\r\n- Màn hình: 15.6\" (1920 x 1080), 300Hz<br>\r\n- RAM: 2 x 16GB DDR4 2933MHz<br>\r\n- Đồ họa: NVIDIA GeForce RTX 2080 Super 8GB GDDR6 / Intel UHD Graphics<br>\r\n- Lưu trữ: 1TB SSD M.2 NVMe <br>\r\n- Hệ điều hành: Windows 10 Home 64-bit<br>\r\n- Pin: 4 cell 84 Wh Pin liền<br>\r\n- Khối lượng: 2.1 kg<br>', 'Laptop Acer Predator Triton 500 PT515-52-72U2 (NH.Q6WSV.001) (15.6\" FHD 300Hz/i7-10875H/32GB/1TB SSD/GeForce RTX 2080 Super/Win10/2.1kg)\r\nBy\r\nACER', 78690000, 'laptop_dthumb67.jpg', 1, 'laptop_d193.jpg', 'laptop_d241.jpg', 'laptop_d364.jpg'),
(50, 'Laptop MSI Alpha 15 A3DDK-212VN', 1, 5, 'Laptop MSI Alpha 15 A3DDK-212VN (15.6\" FHD 120Hz/R7 3750H/8GB/512GB SSD/Radeon RX 5500M/Win10/2.3kg)\r\nBy\r\nMSI', '- CPU: AMD Ryzen 7 3750H <br>\r\n- Màn hình: 15.6\" IPS (1920 x 1080), 120Hz <br>\r\n- RAM: 1 x 8GB DDR4 2666MHz <br>\r\n- Đồ họa: AMD Radeon RX 5500M 4GB GDDR6 / AMD Radeon Vega 10 Graphics <br>\r\n- Lưu trữ: 512GB SSD M.2 NVMe  <br>\r\n- Hệ điều hành: Windows 10 Home 64-bit <br>\r\n- Pin: 6 cell 51 Wh Pin liền <br>\r\n- Khối lượng: 2.3 kg <br>', 'Laptop MSI Alpha 15 A3DDK-212VN (15.6\" FHD 120Hz/R7 3750H/8GB/512GB SSD/Radeon RX 5500M/Win10/2.3kg)\r\nBy\r\nMSI', 25490000, 'laptop_ethumb15.jpg', 1, 'laptop_e175.jpg', 'laptop_e231.jpg', 'laptop_e239.jpg'),
(51, 'Laptop ASUS ZenBook', 1, 4, 'Laptop ASUS ZenBook UX430UA-GV334T (14\" FHD/i5-8250U/8GB/UHD 620/Win10/1.2 kg)\r\nBy\r\nASUS', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) <br>\r\n- Màn hình: 14\" IPS ( 1920 x 1080 ) , không cảm ứng<br>\r\n- RAM: 8GB Onboard LPDDR3<br>\r\n- Đồ họa: Intel UHD Graphics 620<br>\r\n- Lưu trữ: 256GB SSD M.2 SATA<br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit<br>\r\n- Pin: 3 cell 50 Wh Pin liền , khối lượng: 1.2 kg   <br>', 'Laptop ASUS ZenBook UX430UA-GV334T (14\" FHD/i5-8250U/8GB/UHD 620/Win10/1.2 kg)\r\nBy\r\nASUS', 20190000, 'laptop_fthumb21.jpg', 1, 'laptop_f162.jpg', 'laptop_f295.jpg', 'laptop_f29.jpg'),
(52, 'Laptop ASUS ZenBook Pro Duo', 1, 4, 'Laptop ASUS ZenBook Pro Duo UX581GV-H2029T (15\" UHD/i7-9750H/32GB/1TB SSD/RTX 2060/Win10/2.5kg)\r\nBy\r\nASUS', '- CPU: Intel Core i7 9750H <br>\r\n- Màn hình: 15.6\" OLED (3840 x 2160)<br>\r\n- RAM: 32GB Onboard DDR4 2666MHz<br>\r\n- Đồ họa: NVIDIA GeForce RTX 2060 6GB GDDR6 / Intel UHD Graphics 630<br>\r\n- Lưu trữ: 1TB SSD M.2 NVMe <br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit<br>\r\n- Pin: 8 cell 71 Wh Pin liền<br>\r\n- Khối lượng: 2.5 kg                 <br>', 'Laptop ASUS ZenBook Pro Duo UX581GV-H2029T (15\" UHD/i7-9750H/32GB/1TB SSD/RTX 2060/Win10/2.5kg)\r\nBy\r\nASUS', 64990000, 'laptop_gthumb63.jpg', 1, 'laptop_g191.jpg', 'laptop_g251.jpg', 'laptop_g393.jpg'),
(53, 'Laptop ASUS ROG Zephyrus', 1, 4, 'Laptop ASUS ROG Zephyrus S GX502GV-AZ061T (15\" FHD/i7-9750H/16GB/512GB SSD/RTX 2060/Win10/2 kg)\r\nBy\r\nASUS', '- CPU: Intel Core i7-9750H <br>\r\n- Màn hình: 15.6\" IPS (1920 x 1080), 240Hz<br>\r\n- RAM: 16GB Onboard DDR4 2666MHz<br>\r\n- Đồ họa: NVIDIA GeForce RTX 2060 6GB GDDR6 / Intel UHD Graphics 630<br>\r\n- Lưu trữ: 512GB SSD M.2 NVMe <br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit<br>\r\n- Pin: 4 cell 76 Wh Pin liền<br>\r\n- Khối lượng: 2 kg     <br>', 'Laptop ASUS ROG Zephyrus S GX502GV-AZ061T (15\" FHD/i7-9750H/16GB/512GB SSD/RTX 2060/Win10/2 kg)\r\nBy\r\nASUS', 54990000, 'laptop_hthumb88.jpg', 1, 'laptop_h196.jpg', 'laptop_h277.jpg', 'laptop_h393.jpg'),
(54, 'Laptop Dell G7 7588-N7588A', 1, 3, 'Laptop Dell G7 7588-N7588A (15.6\" FHD/i7-8750H/8GB/1TB HDD/GTX 1050Ti/Win10/2.7 kg)\r\nBy\r\nDell', '- CPU: Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nhân, 12 luồng ) <br>\r\n- Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng<br>\r\n- RAM: 1 x 8GB DDR4 2666MHz<br>\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1050Ti 4GB GDDR5<br>\r\n- Lưu trữ: 128GB SSD M.2 SATA / 1TB HDD 5400RPM<br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit<br>\r\n- Pin: 4 cell 56 Wh Pin liền , khối lượng: 2.7 kg     <br>', 'Cỗ máy chiến game Dell Inspiron 7588 được ra mắt với G5 vào năm 2018. Chúng có thiết kế gần như nhau, nhưng Dell Inspiron 7588 đi kèm với các tính năng tốt hơn. Hiệu suất của nó là đáng kể so với Inspiron 15 7000 và Dell G3 / G5 do bộ vi xử lý nhanh hơn và phần cứng cực mạnh. Khung gầm bằng nhựa 99% nhưng bù vào đó nó lại có cấu trúc bên trong độc đáo. Một Backlit màu xanh đã giúp Dell cho máy tính xách tay này một cái nhìn tốt hơn giống như chúng ta đã thấy trên Alienware R5 2018. Màn hình độc lập với góc nhìn giúp tăng cường trải nghiệm chơi game. Tùy chọn 4K UHD khả dụng nếu bạn chọn định cấu hình hoặc nâng cấp.', 33390000, 'laptop_ithumb38.jpg', 1, 'laptop_i110.jpg', 'laptop_i298.jpg', 'laptop_i39.jpg'),
(55, 'Laptop Dell Vostro 5581-VRF6J1', 1, 3, 'Laptop Dell Vostro 5581-VRF6J1 (15.6\" FHD/i5-8265U/4GB/1TB HDD/MX130/Win10/1.9 kg)\r\nBy\r\nDell', '- CPU: Intel Core i5-8265U ( 1.6 GHz - 3.9 GHz / 6MB / 4 nhân, 8 luồng ) <br>\r\n- Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng<br>\r\n- RAM: 1 x 4GB DDR4 2666MHz<br>\r\n- Đồ họa: Intel UHD Graphics 620 / NVIDIA GeForce MX130 2GB GDDR5<br>\r\n- Lưu trữ: 1TB HDD 5400RPM<br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit + Office Personal 365<br>\r\n- Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.9 kg  <br>', 'Với thiết kế luôn giữ được sự đơn giản nhưng hiệu quả mà dòng laptop làm việc này mang lại thật sự đáng tìm hiệu. Luôn nắm bắt được công nghệ tiên tiến, người dùng luôn được trải nghiệm những công nghệ mới mà Dell mang lại, sử dụng màn hình với tấm nền chống chối, chống lóa mang lại cho người dùng trải nghiệm cả trong môi trường có nắng, tăng thời gian sử dụng liên tục cho người dùng hạn chế mỏi mắt. Sử dụng chip Intel thế hệ cao cập nhật các chế độ mới và mang đến hiệu năng tốt hơn. Đặc biệt, sử dụng chip đồ họa cao hơn các dòng máy tầm trung khác mang lại được sự trải nghiệm tốt hơn các ứng dụng đáp ứng cho công việc cũng như tăng thêm phần thú vị trong thời gian giải trí. Hỗ trợ bảo mật vân tay giúp người dùng có thể lưu trữ thông tin tốt hơn, an toàn hơn chỉ với 1 lần chạm.', 19390000, 'laptop_kthumb52.jpg', 1, 'laptop_k138.jpg', 'laptop_k250.jpg', 'laptop_k317.jpg'),
(57, 'Laptop Dell Inspiron 7373-TI501OW', 1, 3, 'Laptop Dell Inspiron 7373-TI501OW (13.3\" FHD/i5-8250U/8GB/UHD 620/Win10/1.6 kg)\r\nBy\r\nDell', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) <br>\r\n- Màn hình: 13.3\" IPS ( 1920 x 1080 ) , cảm ứng<br>\r\n- RAM: 1 x 8GB DDR4 2400MHz<br>\r\n- Đồ họa: Intel UHD Graphics 620<br>\r\n- Lưu trữ: 256GB SSD M.2 SATA<br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit<br>\r\n- Pin: 3 cell 38 Wh Pin liền , khối lượng: 1.6 kg      <br>', 'Làm đẹp làm sáng hơn: Thiết kế mỏng mờ giúp bạn thêm không gian màn hình cho những hình ảnh tuyệt đẹp, trong khi màn hình cảm ứng Full HD IPS cho phép bạn xem màn hình từ nhiều góc độ khác nhau mà không ảnh hưởng đến chất lượng hình ảnh. Ngoài ra, một bảng điều khiển 300-nit sáng rõ ràng làm việc ở ngoài trời dễ dàng hơn và luồng thú vị hơn.\r\n\r\nWaves MaxxAudio® Pro cung cấp âm thanh chuyên nghiệp, hoàn thành trải nghiệm nhập vai của bạn. Nó tự động điều chỉnh âm thanh của bạn với độ cao rõ nét hơn, tăng âm trầm và tăng âm lượng để mọi thứ mà bạn nghe đều chính xác theo cách của nó.', 22390000, 'laptop_lthumb36.jpg', 1, 'laptop_l337.jpg', 'laptop_l128.jpg', 'laptop_l270.jpg'),
(58, 'Laptop Dell G3 3579-G5I5423W', 1, 3, 'Laptop Dell G3 3579-G5I5423W (15\" FHD/i5-8300H/8GB/128GB SSD/1TB HDD/GTX 1050Ti/Win10/2.4 kg) By Dell', '- CPU: Intel Core i5-8300H ( 2.3 GHz - 4.0 GHz / 8MB / 4 nhân, 8 luồng )<br>   \r\n- Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng<br>   \r\n- RAM: 1 x 8GB DDR4 2400MHz<br>   \r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1050Ti 4GB GDDR5<br>   \r\n- Lưu trữ: 128GB SSD M.2 NVMe / 1TB HDD 5400RPM<br>   \r\n- Hệ điều hành: Windows 10 Home 64-bit<br>   \r\n- Pin: 4 cell 56 Wh Pin liền , khối lượng: 2.4 kg <br>', 'Đồ họa vượt trội: Laptop Dell G3 3579 (G5I5423W) trang bị card đồ họa NVIDIA® GeForce® GTX 1050Ti mạnh mẽ với công nghệ thiết kế Max-Q cho phép bạn chơi game ở cài đặt cao hơn với chi tiết rõ nét và chơi game mượt mà, chân thực cho trải nghiệm trên màn hình chân thực hơn.\r\n\r\nTuyệt đẹp từ mọi góc độ: gameplay xuất hiện sắc nét từ hầu như mọi góc độ trên màn hình 15\" với một góc nhìn rộng với chuyển mạch trong mặt phẳng, và độ phân giải FHD với tấm nền chống chói hiển thị.\r\n\r\nĐường truyền hoàn hảo: công nghệ SmartByte ưu tiên băng thông mạng cho nội dung trực quan truyền tải liền mạch khi streaming trên Laptop Dell G3 3579 (G5I5423W).\r\n\r\nÂm thanh chân thực: Đắm chìm trong âm thanh vượt trội với hai loa phát trước đi kèm công nghệ Waves MaxxAudio® Pro.', 25490000, 'laptop_mthumb37.jpg', 1, 'laptop_m145.jpg', 'laptop_m283.jpg', 'laptop_m321.jpg'),
(59, 'Laptop Dell Inspiron 13 7391', 1, 3, 'Laptop Dell Inspiron 13 7391 7391-N3TI5008W (13.3\" Full HD/Intel Core i5-10210U/8GB/512GB SSD/Windows 10 Home 64-bit/1.5kg)            By\r\nDell', '- CPU: Intel Core i5-10210U <br>\r\n\r\n- Màn hình: 13.3\" (1920 x 1080)   <br>\r\n\r\n- RAM: 1 x 8GB Onboard LPDDR3 2133MHz <br>\r\n\r\n- Đồ họa: Intel UHD Graphics <br>\r\n\r\n- Lưu trữ: 512GB SSD M.2 NVMe   <br>\r\n\r\n- Hệ điều hành: Windows 10 Home 64-bit   <br>\r\n\r\n- Pin: 4 Cell 45Wh Pin liền   <br>\r\n\r\n- Khối lượng: 1.5 kg       <br>', 'Bộ xử lý: Bộ xử lý Intel Core thế hệ mới nhất mang đến cho laptop Dell Inspiron 7391-N3TI5008W khả năng phản hồi nhanh và xử lý đa nhiệm một cách liền mạch.\r\n\r\nBộ nhớ và lưu trữ: Dễ dàng chuyển đổi qua lại giữa các ứng dụng đang mở với bộ nhớ RAM có dung lượng 8GB. Lưu trữ phim, ảnh và nhạc với tùy chọn ổ lưu trữ SSD có dung lượng có thể nâng cấp tối đa lên tới 1TB PCle. Tận hưởng trải nghiệm tốt nhất khả năng lưu trữ dung lượng lớn ở tốc độ cao với hệ thống ổ lưu trữ SSD.\r\n\r\nCổng USB Type-C: Cổng kết nối đa chức năng cho khả năng tương thích với các thiết bị ngoại vi mở rộng, đồng thời hỗ trợ DisplayPort và Power Delivery và cho phép bạn cắm vào nhiều cấu hình và thiết bị khác nhau với một kết nối dễ dàng.', 26490000, 'laptop_aathumb69.jpg', 1, 'laptop_aa113.jpg', 'laptop_aa216.jpg', 'laptop_aa348.jpg');
INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_detail_desc`, `product_price`, `product_img`, `product_status`, `product_img1`, `product_img2`, `product_img3`) VALUES
(60, 'Laptop Lenovo ThinkPad E490s', 1, 2, 'Laptop Lenovo ThinkPad E490s-20NGS01N00 (14\" FHD/i7-8565UC/8GB/256GB SSD/UHD 620/Free DOS/1.6 kg)\r\nBy\r\nLenovo', '- CPU: Intel Core i7-8565UC ( 1.8 GHz - 4.6 GHz / 8MB / 4 nhân, 8 luồng ) <br>\r\n- Màn hình: 14\" IPS ( 1920 x 1080 ) , không cảm ứng<br>\r\n- RAM: 2 x 4GB DDR4 2666MHz<br>\r\n- Đồ họa: Intel UHD Graphics 620<br>\r\n- Lưu trữ: 256GB SSD M.2<br>\r\n- Hệ điều hành: Free DOS<br>\r\n- Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.6 kg         <br>', 'Laptop Lenovo ThinkPad E490s-20NGS01N00 được trang bị bộ xử lý Intel® Quad Core mới nhất, bộ nhớ RAM lên đến 32GB và khe lưu trữ hỗ trợ cả công nghệ Intel Optane, điều đó có nghĩa là khi bạn nâng cấp cấu hình ở mức cao nhất, mọi thứ đều được tăng tốc, từ tính toán hàng ngày đến tải các trò chơi hiệu năng cao.', 21490000, 'laptop_abthumb1.jpg', 1, 'laptop_ab132.jpg', 'laptop_ab241.jpg', 'laptop_ab348.jpg'),
(61, 'Laptop Lenovo Legion Y740', 1, 2, 'Laptop Lenovo Legion Y740-81HE003XVN (15\" FHD/i7-8750H/16GB/128GB SSD/1TB HDD/RTX 2060/Win10/2.3 kg)\r\nBy\r\nLenovo', '- CPU: Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nhân, 12 luồng ) <br>\r\n- Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng<br>\r\n- RAM: 2 x 8GB DDR4 2666MHz<br>\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce RTX 2060 6GB GDDR6<br>\r\n- Lưu trữ: 128GB SSD M.2 NVMe / 1TB HDD 7200RPM<br>\r\n- Hệ điều hành: Windows 10 Home 64-bit<br>\r\n- Pin: 3 cell 57 Wh Pin liền , khối lượng: 2.3 kg            <br>', 'Sở hữu hiệu suất đáng kinh ngạc thường chỉ có sẵn trên máy tính để bàn, bộ xử lý Intel Core hiệu năng cao mang đến khả năng chơi game mạnh mẽ mà bạn có thể mang theo và chơi game bất cứ đâu. Với số lượng lõi và tốc độ xử lý lớn, Laptop Lenovo Legion Y740-81HE003XVN được cung cấp bởi các bộ xử lý này có đủ sức mạnh để xử lý các trò chơi AAA đòi hỏi khắt khe nhất hiện nay.\r\n\r\nĐồ họa NVIDIA GeForce RTX 20 Series mang đến trải nghiệm chơi game đỉnh cao. Được hỗ trợ bởi kiến trúc GPU NVIDIA Turing™ mang tính cách mạng, hệ thống đồ họa mạnh mẽ này hợp nhất với khả năng ray-tracing thời gian thực, trí tuệ nhân tạo và tạo bóng được lập trình để mang đến cho bạn trải nghiệm đồ họa vô cùng choáng ngợp.', 48000000, 'laptop_acthumb90.jpg', 1, 'laptop_ac187.jpg', 'laptop_ac255.jpg', 'laptop_ac350.jpg'),
(62, 'Laptop Lenovo Yoga', 1, 2, 'Laptop Lenovo Yoga 720-13IKB (81C3000TVN) (13.3\" FHD/i5-8250U/8GB/UHD 620/Win10/1.3 kg)\r\nBy\r\nLenovo', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) <br>\r\n- Màn hình: 13.3\" ( 1920 x 1080 ) , cảm ứng <br>\r\n- RAM: 1 x 8GB Onboard DDR4 2400MHz <br>\r\n- Đồ họa: Intel UHD Graphics 620 <br>\r\n- Lưu trữ: 256GB SSD M.2 NVMe <br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit <br>\r\n- Pin: 4 cell 48 Wh Pin liền , khối lượng: 1.3 kg      <br>', 'Lenovo là một trong những hãng điện tử sản xuất máy tính mang thương hiệu toàn cầu nổi tiếng về kiểu dáng đẹp, nhỏ gọn song song với hiệu năng tốt. Nổi bật trong số đó là dòng Yoga của Lenovo mới được ra mắt gần đây hứa hẹn đem lại nhiều trải nghiệm khác biệt trong công việc và giải trí.\r\n\r\nMới đây tại sự kiện công nghệ lớn nhất thế giới MWC, Lenovo đã chính thức giới thiệu mẫu laptop thinkpad Yoga đình đám của hãng góp phần tạo nên tên tuổi cho Lenovo vào những phân khúc laptop cao cấp.\r\n\r\nYoga 720 (12”) là một Laptop 2 trong 1 có thể \"biến hình\" hoàn hảo theo nhu cầu của bạn. Nó có thiết kế mỏng nhẹ đi cùng sức mạnh và của bộ xử lý Intel Core i5 thế hệ 8, đăng nhập tức thì bằng vân tay một chạm, hỗ trợ bút kỹ thuật số và trải nghiệm âm thanh nhà hát. Tính linh hoạt, thời trang, cho một cuộc sống năng động.', 23490000, 'laptop_adthumb64.jpg', 1, 'laptop_ad160.jpg', 'laptop_ad254.jpg', 'laptop_ad387.jpg'),
(63, 'Laptop Lenovo Extreme gen 2', 1, 2, 'Lenovo Thinkpad X1 Extreme Gen 2 Windows 10 Core™ i7 9750H / RAM 16GB / SSD 512GB / FHD / GTX 1650', 'Vi xử lý: Intel Core i5 9300H, 4 nhân / 8 luồng <br>\r\nMàn hình: 15.6\" FHD IPS (1920 x 1080) chống chói <br>\r\nRAM: 8GB DDR4 bus 2666 MHz (Nâng cấp tối đa 64GB) <br>\r\nCard đồ họa: Nvidia Geforce GTX1650 4GB <br>\r\nLưu trữ: 256GB m.2 NVMe(Nâng cấp tối đa 2TB) <br>\r\nPin: 80 WHr <br>\r\nKết nối chính: 2 x USB-C, 2 x USB-A, SD Card slot <br>\r\nHệ điều hành: Windows 10 bản quyền <br>\r\nMàu sắc: Black              <br>', 'Nếu bạn là người đam mê Thinkpad như mình, làm các công việc cơ động, đi lại cần 1 máy hoạt động ổn định mạnh mẽ, làm đồ hoạ tốt, chơi games ok, kiểu dáng tối giản thì Laptop ThinkPad X1 Extreme Gen 2 là sự lựa chọn tốt nhất, với cấu hình mạnh mẽ Core i7 thế hệ thứ 9 9750h, Ram 2666 có thể nhận tối đa 64GB, ổ cứng tốc độ cao Nvme, kèm theo vga mới nhất VGA NVIDIA 1650 4GB mạnh mẽ, kèm theo màn hình siêu mỏng 15,6\'\' Full HD tràn viền cao cấp nhất là 4K OlED, trọng lượng máy chỉ có 1,7Kg thì đây quả thật là tuyệt tác công nghệ 2019 của Lenovo tạo ra. \r\n \r\nMàn hình OLED 4K ThinkPad X1 cực kỳ mới của Lenovo\r\n \r\nNếu bạn nghĩ rằng bạn không thể cực đoan hơn ThinkPad X1 Extreme , hãy nghĩ lại. Lenovo đang tung ra thế hệ máy tính xách tay ThinkPad X1 Extreme thế hệ thứ hai  và nó chứa đầy những tính năng mới, bao gồm màn hình OLED 4K tùy chọn cũng như bộ xử lý Intel Core i9 thế hệ thứ 9 và GPU GTX 1650 Max-Q.', 48790000, 'laptop_aethumb44.jpg', 1, 'laptop_ae159.jpg', 'laptop_ae24.jpg', 'laptop_ae398.jpg'),
(64, 'laptop Thinkpad x1 Carbon gen 8', 1, 2, 'Lenovo ThinkPad X1 Carbon Gen 8 Intel Core i7 10610U, RAM 16GB, 1TB m.2 NVMe, 14\" 4K IPS HDR (3840 x 2160), Intel UHD 620, 51Whr, Black', 'Vi xử lý: Intel Core i5 10210U, 4 nhân / 8 luồng <br>\r\nMàn hình: 14\" FHD IPS (1920 x 1080) chống chói<br>\r\nRAM: 8GB DDR4 bus 2666 MHz (Nâng cấp tối đa 8GB)<br>\r\nCard đồ họa: Intel UHD<br>\r\nLưu trữ: 256GB m.2 Nvme (Nâng cấp tối đa 2TB)<br>\r\nPin: 51 WHr<br>\r\nKết nối chính: 2 x USB-C, Thunderbolt 3, 2 x USB-A<br>\r\nHệ điều hành: Windows 10 bản quyền<br>\r\nMàu sắc: Black  <br>', 'Mặc dù chẳng có gì thay đổi về thiết kế. Nhưng ThinkPad X1 Carbon Gen 8 vẫn chiếm được cảm tỉnh của người dùng vì sự bền bì cổ điển nhưng chững chạc. Điều này được thể hiện thông qua việc luôn giữ vững lập trường của sự hoàn hảo mà bao nhiêu năm nay Lenovo đã làm với chiếc máy này', 59990000, 'laptop_afthumb25.jpg', 1, 'laptop_af185.jpg', 'laptop_af249.jpg', 'laptop_af310.jpg'),
(65, 'Laptop Apple MacBook Air 2018', 1, 1, 'Laptop Apple MacBook Air 2018 13\" MRE82 (13.3\"/Core i5/8GB/128GB SSD/UHD 617/macOS/1.2 kg)\r\nBy\r\nAPPLE', '- CPU: Core i5 ( 1.6 GHz - 3.6 GHz / 4MB <br>\r\n- Màn hình: 13.3\" IPS ( 2560 x 1600 ) , không cảm ứng<br>\r\n- RAM: 1 x 8GB Onboard LPDDR3 2133MHz<br>\r\n- Đồ họa: Intel UHD Graphics 617<br>\r\n- Lưu trữ: 128GB SSD<br>\r\n- Hệ điều hành: macOS<br>\r\n- Pin: Pin liền , khối lượng: 1.2 kg     <br>', 'Macbook Air MRE82 2018 đã thay đổi hoàn toàn so với những thế hệ Macbook Air trước đây mà Apple đã bỏ qua trong suốt nhiều năm.\r\n\r\nBản nâng cấp này cũng cho thấy Apple đã chịu khó lắng nghe người dùng hơn khi cuối cùng độ phân giải màn hình cũng đã được nâng lên theo chuẩn Retina và viền màn hình không còn quá dày nữa. Thêm nữa toàn bộ cổng kết nối đã được loại bỏ để lại 2 cổng Type-C và cũng có bàn phím cánh bướm mới nhất. Vậy với mức giá cao cấp, MacBook Air 2018 có xứng đáng \"đồng tiền bát gạo\"?\r\n\r\nSau nhiều năm đi theo nguyên lí thiết kế đã làm nên trấn động thế giới laptop một thời thì giờ đây Apple đã quyết định thay đổi theo những triết lí mới ở những mẫu Macbook Pro và Macbook 12 inch của hãng. Toàn bộ cổng kết nối cũ đã được loại bỏ hoàn toàn và chuyển thành 2 cổng USB Type-C đều được tích hợp Thunderbolt 3 tuy nhiên chỉ 1 trong 2 cổng được kích hoạt 1 lúc. Có nghĩa là nếu bạn đang sử dụng băng thông Thunderbolt 3 ở một cổng thì cổng còn lại sẽ tự động không nhận chuẩn Thunderbolt 3 nữa. Đây cũng chính là dấu chấm hết cho cổng sạc Magsafe làm nên tên tuổi của Macbook 1 thời.', 31900000, 'laptop_agthumb81.jpg', 1, 'laptop_ag111.jpg', 'laptop_ag258.jpg', 'laptop_ag326.jpg'),
(66, 'Laptop Apple MacBook Pro 16\" 2019', 1, 1, 'Laptop Apple MacBook Pro 16\" 2019 (MVVL2SA/A) (Core i7/16GB/512GB SSD/Radeon Pro 5300M/macOS/2kg)\r\nBy\r\nAPPLE', '- CPU: Intel Core i7 <br>\r\n- Màn hình: 16\" IPS (3072 x 1920)<br>\r\n- RAM: 16GB Onboard<br>\r\n- Đồ họa: AMD Radeon Pro 5300M 4GB GDDR6 / Intel UHD Graphics 630<br>\r\n- Lưu trữ: 512GB SSD <br>\r\n- Hệ điều hành: macOS<br>\r\n- 100 Wh Pin liền<br>\r\n- Khối lượng: 2 kg           <br>', 'MacBook Pro mới có màn hình Retina 16 inch tuyệt đẹp - màn hình Retina lớn nhất từng được trang bị trên một máy tính xách tay Mac. Màn hình có độ sáng 500 nits và tỷ lệ tương phản cao khiến cho các điểm ảnh hiển thị nổi bật và mang lại màu trắng sáng, đồng thời mang lại màu đen sâu nhờ sự căn chỉnh hình ảnh chính xác của các phân tử tinh thể lỏng. Và với gam màu rộng P3 cho phép hình ảnh và video luôn chân thực, rực rỡ, sống động. Vì vậy, bất kể bạn ở đâu, bạn sẽ giải quyết công việc của mình dưới ánh sáng tốt nhất có thể.', 55900000, 'laptop_ahthumb62.jpg', 1, 'laptop_ah197.jpg', 'laptop_ah269.jpg', 'laptop_ah390.jpg'),
(67, 'Laptop Macbook air 2020 13\'\'', 1, 1, 'Laptop Apple MacBook Air 2020 i5 1.1GHz/8GB/256GB (Z0YL)', 'Thông số kỹ thuật <br>\r\nCPU:	Intel Core i5 Thế hệ 10, 1.10 GHz<br>\r\nRAM:	8 GB, LPDDR4X (On board), 3733 MHz<br>\r\nỔ cứng:	SSD: 256 GB<br>\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel Iris Plus Graphics<br>\r\nCổng kết nối:	2 x Thunderbolt 3 (USB-C)<br>\r\nHệ điều hành:	Mac OS<br>\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền<br>\r\nKích thước:	Dày 4.1 mm đến 16.1 mm, 1.29 kg<br>\r\nThời điểm ra mắt:	2020      <br>', 'Đặc điểm nổi bật của Apple MacBook Air 2020 i5 1.1GHz/8GB/256GB (Z0YL)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc, Cáp ( Type C )\r\n\r\nMacBook Air 2020 là phiên bản có nhiều nâng cấp vượt trội về cấu hình và thiết kế bàn phím, hứa hẹn đem tới trải nghiệm mượt mà, thoải mái hơn tới người dùng. Chiếc máy vẫn là lựa chọn số 1 dành cho các anh em văn phòng muốn sở hữu chiếc laptop mỏng nhẹ, mượt mà và pin lâu.\r\nHiệu năng vượt trội với CPU đời mới\r\nCó thể nói, hiệu năng là điểm nâng cấp mạnh mẽ nhất của MacBook Air 2020 khi lần đầu tiên một chiếc MacBook Air được trang bị con chip 4 nhân - Intel Core i5 thế hệ 10 (mới nhất đầu năm 2020), đi kèm cùng thanh RAM 8 GB đáp ứng tốt tác vụ đa nhiệm.', 31200000, 'laptop_aithumb73.jpg', 1, 'laptop_ai159.jpg', 'laptop_ai248.jpg', 'laptop_ai362.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipper`
--

DROP TABLE IF EXISTS `tbl_shipper`;
CREATE TABLE IF NOT EXISTS `tbl_shipper` (
  `shipper_id` int(10) UNSIGNED NOT NULL,
  `shipper_name` varchar(100) NOT NULL,
  `shipper_email` varchar(100) NOT NULL,
  `shipper_notes` varchar(100) NOT NULL,
  `shipper_address` varchar(100) NOT NULL,
  `shipper_phone` varchar(100) NOT NULL,
  PRIMARY KEY (`shipper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipper`
--

INSERT INTO `tbl_shipper` (`shipper_id`, `shipper_name`, `shipper_email`, `shipper_notes`, `shipper_address`, `shipper_phone`) VALUES
(1, 'Lê Trọng Hiếu', 'Hieuletrong@gmail.com', 'Nhân viên kĩ thuật', 'Hai Bà Trưng - Hà Nội', '0936474488'),
(2, 'Vũ Văn Võ', 'Vovuvan@gmail.com', 'Đối tác giao hàng ', 'Hai Bà Trưng- Hà Nội', '0971720099');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

DROP TABLE IF EXISTS `tbl_shipping`;
CREATE TABLE IF NOT EXISTS `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipping_notes` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `shipper_id` int(10) UNSIGNED DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`shipping_id`),
  KEY `shipper_id` (`shipper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customers` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`shipping_id`) REFERENCES `tbl_shipping` (`shipping_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_order_ibfk_3` FOREIGN KEY (`payment_id`) REFERENCES `tbl_payment` (`payment_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category_product` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand_product` (`brand_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD CONSTRAINT `tbl_shipping_ibfk_1` FOREIGN KEY (`shipper_id`) REFERENCES `tbl_shipper` (`shipper_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
