-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2022 lúc 12:51 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sport`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `name`, `url`, `image`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Mùa đông', 'https://maxxsport.com.vn/bst-thu-dong-le-coq-sportif', 'template/images/slider_4.webp', 1, 1, '2022-11-22 23:15:38', '2022-11-22 23:15:38'),
(2, 'Thời trang tốt nhất', 'https://maxxsport.com.vn/le-coq-golf', 'template/images/slider_5.webp', 2, 1, '2022-11-22 23:16:41', '2022-11-22 23:16:41'),
(3, 'Thời trang thu đông', 'https://maxxsport.com.vn/bst-thu-dong', 'template/images/slider_1.webp', 3, 1, '2022-11-22 23:17:32', '2022-11-22 23:55:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_khachhangs`
--

CREATE TABLE `bill_khachhangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_money` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_khachhangs`
--

INSERT INTO `bill_khachhangs` (`id`, `total_money`, `customer_id`, `status`, `created_at`) VALUES
(300001, 675000, 1, 'Đã nhận đơn', '2022-10-31 17:00:00'),
(300002, 675000, 2, 'Đã nhận đơn', '2022-11-01 17:00:00'),
(300003, 675000, 3, 'Đã nhận đơn', '2022-11-02 17:00:00'),
(300004, 585000, 4, 'Đã nhận đơn', '2022-11-03 17:00:00'),
(300005, 690000, 5, 'Đã nhận đơn', '2022-11-04 17:00:00'),
(300006, 900000, 6, 'Đã nhận đơn', '2022-11-05 17:00:00'),
(300007, 2300000, 7, 'Đã nhận đơn', '2022-11-06 17:00:00'),
(300008, 3400000, 8, 'Đã nhận đơn', '2022-11-07 17:00:00'),
(300009, 4890000, 9, 'Đã nhận đơn', '2022-11-08 17:00:00'),
(300010, 11250000, 10, 'Đã nhận đơn', '2022-11-09 17:00:00'),
(300011, 0, 1, 'Chưa nhận đơn', '2022-11-28 15:11:09'),
(300012, 0, 11, 'Chưa nhận đơn', '2022-11-28 15:11:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_vanglais`
--

CREATE TABLE `bill_vanglais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_money` int(11) NOT NULL,
  `customer_phone_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_vanglais`
--

INSERT INTO `bill_vanglais` (`id`, `total_money`, `customer_phone_number`, `created_at`) VALUES
(700001, 0, '0123456789', '2022-11-10 17:00:00'),
(700002, 0, '0123456781', '2022-11-11 17:00:00'),
(700003, 0, '0123456782', '2022-11-12 17:00:00'),
(700004, 0, '0123456783', '2022-11-13 17:00:00'),
(700005, 0, '0123456784', '2022-11-14 17:00:00'),
(700006, 0, '0123456785', '2022-11-15 17:00:00'),
(700007, 0, '0123456786', '2022-11-16 17:00:00'),
(700008, 0, '0123456787', '2022-11-17 17:00:00'),
(700009, 0, '0123456788', '2022-11-18 17:00:00'),
(700010, 0, '0123456779', '2022-11-19 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spend` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_t_h_d_s`
--

CREATE TABLE `c_t_h_d_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `c_t_h_d_s`
--

INSERT INTO `c_t_h_d_s` (`id`, `product_id`, `amount`) VALUES
(300001, 200001, 2),
(300001, 200002, 1),
(300002, 200002, 1),
(300002, 200003, 2),
(300003, 200002, 1),
(300003, 200003, 1),
(300003, 200004, 1),
(300004, 200005, 2),
(300004, 200006, 1),
(300005, 200006, 2),
(300005, 200007, 1),
(300006, 200007, 3),
(300007, 200007, 2),
(300007, 200008, 2),
(300008, 200008, 4),
(300009, 200008, 2),
(300009, 200009, 2),
(300010, 200010, 5),
(700001, 200010, 2),
(700001, 200011, 2),
(700002, 200011, 1),
(700002, 200012, 1),
(700003, 200012, 3),
(700003, 200013, 1),
(700004, 200014, 4),
(700005, 200014, 1),
(700005, 200015, 2),
(700005, 200016, 1),
(700006, 200015, 1),
(700006, 200016, 2),
(700007, 200015, 1),
(700007, 200016, 1),
(700007, 200017, 1),
(700008, 200016, 3),
(700009, 200017, 4),
(700010, 200017, 2),
(700010, 200018, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `active`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Nam', 0, '<p>C&aacute;c sản phẩm d&agrave;nh cho nam</p>', 1, '2022-11-19 01:28:26', '2022-11-19 01:28:26', 'template/images/banner-01.jpg'),
(2, 'Nữ', 0, '<p>C&aacute;c sản phẩm d&agrave;nh cho nữ</p>', 1, '2022-11-19 01:29:43', '2022-11-19 01:29:43', 'template/images/banner-02.jpg'),
(3, 'Áo nam', 1, '<p>Gồm c&aacute;c &aacute;o thể thao d&agrave;nh cho nam</p>', 1, '2022-11-19 01:30:03', '2022-11-19 01:30:03', NULL),
(4, 'Quần nam', 1, '<p>Gồm c&aacute;c quần thể thao d&agrave;nh cho nam</p>', 1, '2022-11-19 01:30:16', '2022-11-19 01:30:16', NULL),
(5, 'Giày nam', 1, '<p>Gồm c&aacute;c gi&agrave;y thể thao d&agrave;nh cho nam</p>', 1, '2022-11-19 01:30:33', '2022-11-19 01:30:33', NULL),
(6, 'Áo nữ', 2, '<p>Gồm c&aacute;c &aacute;o thể thao d&agrave;nh cho nữ</p>', 1, '2022-11-19 01:30:49', '2022-11-19 01:30:49', NULL),
(7, 'Quần nữ', 2, '<p>Gồm c&aacute;c quần thể thao d&agrave;nh cho nữ</p>', 1, '2022-11-19 01:31:00', '2022-11-19 01:31:00', NULL),
(8, 'Giày nữ', 2, '<p>Gồm c&aacute;c gi&agrave;y thể thao d&agrave;nh cho nữ</p>', 1, '2022-11-19 01:31:10', '2022-11-19 01:31:10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_22_145838_create_banners_table', 1),
(6, '2022_11_22_150046_create_bill_khachhangs_table', 1),
(7, '2022_11_22_150127_create_bill_vanglais_table', 1),
(8, '2022_11_22_150238_create_c_t_h_d_s_table', 1),
(10, '2022_11_22_150327_create_menus_table', 1),
(11, '2022_11_22_150352_create_products_table', 1),
(14, '2022_12_07_142008_create_coupons_table', 2),
(15, '2022_12_10_112256_create_customers_table', 2),
(16, '2022_12_10_112307_create_carts_table', 2),
(17, '2022_12_10_112728_create_carts_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `original_price`, `price_sale`, `active`, `image`, `created_at`, `updated_at`) VALUES
(200001, 'Áo thun chạy bộ RUN DRY - Cho Nam - Xanh PETROL', 'Áo thun chạy bộ thoáng mát', 'Áo thun chạy bộ thoáng mát, mau khô dành cho người chạy bộ thường xuyên trong thời tiết nóng (2 -3 lần/ tuần, cự ly tối đa 15km)Sản phẩm được sản xuất từ hạt vật liệu tái chế, thân thiện với môi trường.', 1, NULL, NULL, 1, 'https://contents.mediadecathlon.com/p1813630/89b404e758d8237eb0ae87f8dd19ee1b/p1813630.jpg?f=650x650&format=auto', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200002, 'Áo thun chạy bộ RUN DRY - Cho Nam - Xanh dương', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 1, 195000, 225000, 1, 'https://contents.mediadecathlon.com/p1613716/bc721dadf19968e24143bdebf6de4ed1/p1613716.jpg?f=650x650&format=auto', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200003, 'Áo thun chạy bộ RUN DRY - Cho Nam - Xanh dương đậm', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 1, 195000, 225000, 1, 'https://contents.mediadecathlon.com/p1813621/d8ea54649561e42539df4aab0c816eb3/p1813621.jpg?f=650x650&format=auto', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200004, 'Áo thun chạy bộ RUN DRY - Cho Nam - Màu be có vân', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 1, 195000, 225000, 1, 'https://contents.mediadecathlon.com/p1813610/576baa7ddd7bc015734c4545109149df/p1813610.jpg?f=650x650&format=auto', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200005, 'Áo thun chạy bộ RUN DRY - Cho Nam - Kaki sẫm', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 1, 145000, 195000, 1, 'https://contents.mediadecathlon.com/p2160079/97e71fa416ddb543828f337c5032ff68/p2160079.jpg?f=650x650&format=auto', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200006, 'Áo thun chạy bộ RUN DRY - Cho Nam - Cam', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 1, 159000, 195000, 1, 'https://contents.mediadecathlon.com/p2160073/bef5585db9deb91be6732fc9228835ba/p2160073.jpg?f=650x650&format=auto', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200007, 'Giày chạy bộ Run One cho Nam - Xám', 'Giày này có đế xốp bằng EVA', 'Giày này có đế xốp bằng EVA nên thoải mái và có trọng lượng nhẹ cho người mới bắt đầu chạy bộ.', 2, 275000, 300000, 1, 'https://contents.mediadecathlon.com/p207647/2586dfd49665dd378518222c7093088e/p207647.jpg?f=650x650&format=auto', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200008, 'Giày chạy bộ Run Active Grip cho nam - Xám/Đen\r\n', 'Hỗ trợ và tạo độ bám', 'Hỗ trợ và tạo độ bám khi chạy bộ ngoài trời.Hỗ trợ và tạo độ bám là hai yếu tố giúp bạn tập luyện tốt nhất khi chạy bộ ngoài trời.', 2, 795000, 850000, 1, 'https://contents.mediadecathlon.com/p1292387/0cca6ee02e4291f62e8e1cd79047f21c/p1292387.jpg?f=650x650&format=auto', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200009, 'GIÀY CHẠY BỘ KIPRUN LONG 2 CHO NAM - XANH DƯƠNG', 'Giày chạy bộ cho nam này với khả năng giảm chấn', 'Chúng tôi đã thiết kế giày chạy bộ cho nam này với khả năng giảm chấn và ổn định cho những đường tập và đường đua cho tới đường chạy marathon. Nhờ khả năng giảm chấn và độ ổn định, KIPRUN LONG 2 là sản phẩm lý tưởng để luyện tập và chạy bộ. Giày giúp bạn hoàn toàn yên tâm để hoàn thành nhiều dặm đường và về tới đích.\r\n\r\n', 2, 1199000, 1595000, 1, 'https://contents.mediadecathlon.com/p1599481/d71f3b5d250f65c8c02030364b9f33b0/p1599481.jpg?f=650x650&format=auto', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200010, 'Giày chạy bộ Kiprun KD 800 cho nam - Trắng/Đỏ/Xanh dương', 'Giày chạy bộ siêu nhẹ', 'Giày chạy bộ siêu nhẹ, nhanh và bền này được thiết kế cho nam chạy bộ ngoài trời và thi đấu. Bạn muốn tìm loại giày nhẹ và có lực đẩy? Nhờ thành phần nhẹ, giày chạy bộ này có trọng lượng nhẹ và lực đẩy tốt để dùng khi tập luyện và thi đấu.', 2, 1995000, 2250000, 1, 'https://contents.mediadecathlon.com/p2170484/ab51a9fa1b8a4f5dd040cf2b22af8295/p2170484.jpg?f=650x650&format=auto', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200011, 'GIÀY CHẠY BỘ RUN SUPPORT CHO NAM - TRẮNG', 'giày chạy bộ này để đảm bảo giảm chấn, và nâng đỡ chân', 'Chúng tôi đã thiết kế giày chạy bộ này để đảm bảo giảm chấn, và nâng đỡ chân khi chạy bộ (mỗi tuần 3 lần, lên tới 1 tiếng).Bạn thường xuyên chạy bộ và tìm kiếm đôi giày chạy giảm chấn và nâng đỡ chân tốt? Chọn giày RUN SUPPORT để đảm bảo luôn thoải mái khi chạy bộ!\r\n', 2, 895000, 995000, 1, 'https://contents.mediadecathlon.com/p1609479/4c1e0ac6089d028472b3b81d56b2d238/p1609479.jpg?f=650x650&format=auto', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200012, 'Giày chạy bộ Kiprun KS900 cho nam - Đen/Cam', 'Giày chạy bộ ổn định và thoải mái', 'Giày chạy bộ ổn định và thoải mái có khả năng giảm chấn tốt được thiết kế cho nam sử dụng trên đường tập, đường đua cho tới đường chạy marathon. Nếu độ giảm chấn, sự thoải mái và ổn định là ưu tiên hàng đầu khi bạn chọn giày chạy bộ để có thể chạy hết quãng đường thì KS900 là giải pháp lý tưởng dành cho bạn! Hãy thử ngay!', 2, 2095000, 2500000, 1, 'https://contents.mediadecathlon.com/p2199781/1afcfa64659a5f6c4d995693e7d7c136/p2199781.jpg', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200013, 'Quần short chạy bộ Run Dry cho nam - Đen', 'Quần short chạy bộ nhẹ', 'Quần short chạy bộ nhẹ, mau khô phù hợp với người bắt đầu chạy bộ (1-2 lần/tuần, cự ly tối đa 10km)Sản phẩm được thiết kế có quần lót tam giác may trong, hỗ trợ tốt cho người chạy mà không cần quần lót. Sản phẩm có túi đựng chìa khóa bên trong thắt lưng.\r\n\r\n', 3, 125000, 200000, 1, 'https://contents.mediadecathlon.com/p1974259/d2174179df57faa38558e1b8f7c0a82c/p1974259.jpg?f=650x650&format=auto', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200014, 'Quần short chạy bộ Run Dry cho nam - Xám', 'Quần short nhẹ', 'Quần short nhẹ, thoáng mát phù hợp cho người mới bắt đầu chạy bộ, trong thời tiết nóng bức. (1-2 lần/tuần, cự ly tối đa 10km)Quần short nhẹ, thoáng mát với giá tốt nhất! Sản phẩm được thiết kế có quần lót tam giác may trong, hỗ trợ tốt cho người chạy mà không cần quần lót. Sản phẩm có túi đựng chìa khóa bên trong thắt lưng.', 3, 79000, 99000, 1, 'https://contents.mediadecathlon.com/p1974133/25358b35f57e0b0e7c4dbc8469ee21b0/p1974133.jpg?f=650x650&format=auto', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200015, 'Quần short chạy bộ Run Dry cho nam - Xanh Petrol', 'Quần short nhẹ', 'Quần short nhẹ, thoáng mát phù hợp cho người mới bắt đầu chạy bộ, trong thời tiết nóng bức. (1-2 lần/tuần, cự ly tối đa 10km)Quần short nhẹ, thoáng mát với giá tốt nhất! Sản phẩm được thiết kế có quần lót tam giác may trong, hỗ trợ tốt cho người chạy mà không cần quần lót. Sản phẩm có túi đựng chìa khóa bên trong thắt lưng.\r\n', 3, 89000, 99000, 1, 'https://contents.mediadecathlon.com/p1975680/a1cbca4a1f23332039f1ef59bc7c7d81/p1975680.jpg?f=650x650&format=auto', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200016, 'Quần short chạy bộ thoáng khí KALENJI RUN DRY cho nam - Xám', 'Quần short chạy bộ nhẹ và thoáng khí', 'Quần short chạy bộ nhẹ và thoáng khí, phù hợp để chạy bộ trong thời tiết ấm áp. Quần short nhẹ, thoáng khí giúp mồ hôi khô nhanh. Có sẵn quần lót trong, có thể mặc kèm quần lót riêng hoặc không. Có túi nhỏ để cất chìa khóa.', 3, 125000, 200000, 1, 'https://contents.mediadecathlon.com/p2157097/3bc11b3841bc0ff8e5384e549d8a532f/p2157097.jpg?f=650x650&format=auto', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200017, 'Quần short chạy bộ thoáng khí KALENJI RUN DRY cho nam - Xám navy', 'Quần short chạy bộ nhẹ và thoáng khí', 'Quần short chạy bộ nhẹ và thoáng khí, phù hợp để chạy bộ trong thời tiết ấm áp. Quần short nhẹ, thoáng khí giúp mồ hôi khô nhanh. Có sẵn quần lót trong, có thể mặc kèm quần lót riêng hoặc không. Có túi nhỏ để cất chìa khóa.', 3, 125000, 200000, 1, 'https://contents.mediadecathlon.com/p2157090/6265f4f6ae0389c493719f21a9df1648/p2157090.jpg?f=650x650&format=auto', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200018, 'Quần short chạy bộ Kiprun Light cho nam - Đen', 'Quần short chạy bộ Kiprun Light', '<p>Quần short chạy bộ Kiprun Light c&oacute; trọng lượng nhẹ, ph&ugrave; hợp để chạy bộ trong thời ti&ecirc;́t nóng. Bạn đang t&igrave;m quần short chạy bộ nhẹ? Quần short chạy bộ Kiprun Light cho nam kh&ocirc;ng chỉ nhẹ m&agrave; c&ograve;n được thiết kế &iacute;t đường may nhất c&oacute; thể để mang lại sự thoải m&aacute;i tối đa.</p>', 3, 445000, 500000, 1, 'https://contents.mediadecathlon.com/p2197093/75d389db8ded964a02e1d42cab55e75c/p2197093.jpg?f=650x650&format=auto', '2022-11-16 17:00:00', '2022-11-22 08:54:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Anh Huy', 'ruakeu2002bee@gmail.com', NULL, '$2y$10$tCexWzF8upTj6syLz6ID.esB.MHVaXT.A7wPtgQrdOypRqxdNvc4a', NULL, '2022-11-19 01:26:11', '2022-11-19 01:26:11'),
(2, 'Nguyễn Thị Mỹ Trân', 'admin2@gmail.com', NULL, '$2y$10$BKQnH6NLtJPXoRfuVvAuQ.ZvaaE0TIEteneDGVr7FhjKieN41zlVe', 'io9cuJaQyLDy4l44xH0pjTdE6J9z2yxVZ9MWiHcJhFNiXJ99UYHO1meQl3rR', '2022-11-19 01:26:26', '2022-11-19 01:26:26'),
(3, 'Tôn Nữ Tố Quyên', 'admin3@gmail.com', NULL, '$2y$10$4ggDGjUkPqNi24VbCYHTHO54jb8qI7d3.gOL.cJXxHkiaHAbC3W5O', NULL, '2022-11-19 01:26:40', '2022-11-19 01:26:40'),
(4, 'Thái Tăng Đức', 'admin4@gmail.com', NULL, '$2y$10$4LocJv26hTA4e05523pWhOl0wMQeFYwCs4IkEeeq0rzqud46TIh3a', NULL, '2022-11-19 01:26:55', '2022-11-19 01:26:55');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_khachhangs`
--
ALTER TABLE `bill_khachhangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_vanglais`
--
ALTER TABLE `bill_vanglais`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `c_t_h_d_s`
--
ALTER TABLE `c_t_h_d_s`
  ADD PRIMARY KEY (`id`,`product_id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `bill_khachhangs`
--
ALTER TABLE `bill_khachhangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300013;

--
-- AUTO_INCREMENT cho bảng `bill_vanglais`
--
ALTER TABLE `bill_vanglais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700011;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `c_t_h_d_s`
--
ALTER TABLE `c_t_h_d_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700011;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200020;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
