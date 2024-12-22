-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 03:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `da2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ban`
--

CREATE TABLE `ban` (
  `MaBan` int(11) NOT NULL,
  `TrangThai` bit(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ban`
--

INSERT INTO `ban` (`MaBan`, `TrangThai`) VALUES
(1, b'00'),
(2, b'01'),
(3, b'01'),
(4, b'00'),
(5, b'00'),
(6, b'01'),
(7, b'00'),
(8, b'01'),
(9, b'00'),
(10, b'00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `baocaodoanhthu`
-- (See below for the actual view)
--
CREATE TABLE `baocaodoanhthu` (
`MaHoaDon` int(11)
,`Ten` varchar(50)
,`NgayLap` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `baocaohoadonnhap`
-- (See below for the actual view)
--
CREATE TABLE `baocaohoadonnhap` (
`MaHoaDonNhap` int(11)
,`NgayNhapHang` datetime
,`Ho` varchar(50)
,`Ten` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `MaChiTietSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `TongTienHD` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHoaDon`, `MaChiTietSP`, `SoLuong`, `TongTienHD`) VALUES
(10, 14, 3, 450000),
(11, 21, 5, 75000),
(12, 18, 5, 100000),
(12, 21, 5, 75000),
(34, 1, 1, 500000),
(34, 3, 3, 900000),
(34, 4, 3, 1200000),
(47, 8, 1, 50000),
(68, 8, 3, 150000),
(69, 1, 1, 500000),
(70, 1, 1, 500000),
(70, 2, 1, 250000),
(71, 1, 1, 500000),
(72, 1, 2, 1000000),
(72, 2, 1, 250000),
(73, 1, 1, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadonnhap`
--

CREATE TABLE `chitiethoadonnhap` (
  `MaHoaDonNhap` int(11) NOT NULL,
  `MaNL` int(11) NOT NULL,
  `SoLuongNhap` int(11) NOT NULL,
  `TongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadonnhap`
--

INSERT INTO `chitiethoadonnhap` (`MaHoaDonNhap`, `MaNL`, `SoLuongNhap`, `TongTien`) VALUES
(1, 10, 500, 500000),
(2, 3, 2000, 20000000),
(3, 5, 600, 360000),
(4, 6, 250, 500000),
(5, 9, 300, 900000),
(6, 2, 1000, 2000000),
(7, 8, 250, 5000000),
(8, 7, 100, 1200000),
(14, 1, 10, 50000),
(15, 2, 10, 20000),
(16, 2, 10, 20000),
(17, 2, 15, 30000),
(18, 2, 15, 30000),
(19, 2, 15, 30000),
(20, 1, 10, 50000),
(21, 1, 10, 50000),
(23, 2, 50, 100000),
(23, 6, 1, 2000),
(23, 7, 11, 132000),
(23, 8, 50, 1000000),
(23, 10, 100, 100000),
(24, 1, 2, 10000),
(24, 2, 50, 100000),
(24, 6, 1, 2000),
(24, 7, 11, 132000),
(24, 8, 50, 1000000),
(24, 10, 100, 100000),
(25, 1, 20, 100000),
(25, 2, 50, 100000),
(25, 6, 1, 2000),
(25, 7, 11, 132000),
(25, 8, 50, 1000000),
(25, 10, 100, 100000),
(26, 1, 20, 100000),
(26, 2, 50, 100000),
(26, 6, 1, 2000),
(26, 7, 11, 132000),
(26, 8, 50, 1000000),
(26, 10, 100, 100000),
(27, 1, 1, 5000),
(27, 2, 1, 2000),
(28, 1, 1, 5000),
(29, 1, 1, 5000),
(29, 2, 1, 2000),
(30, 1, 1, 5000),
(31, 1, 1, 5000),
(31, 2, 10, 20000),
(32, 1, 1, 5000),
(32, 4, 10, 15000),
(32, 5, 10, 60000),
(33, 1, 23, 115000),
(33, 3, 1, 10000),
(33, 5, 123, 738000),
(34, 1, 15, 75000),
(34, 2, 50, 100000),
(35, 1, 1, 5000),
(35, 2, 234, 468000),
(36, 1, 10, 50000),
(37, 1, 150, 750000),
(37, 2, 1, 2000),
(37, 3, 1, 10000),
(38, 1, 10, 50000),
(39, 1, 3, 15000),
(39, 2, 1, 2000),
(39, 3, 1, 10000),
(40, 1, 1, 5000),
(41, 1, 1, 5000),
(42, 1, 1, 5000),
(43, 11, 1, 15000),
(44, 1, 1, 5000),
(45, 1, 1, 5000),
(46, 1, 15, 75000);

-- --------------------------------------------------------

--
-- Table structure for table `congthucmon`
--

CREATE TABLE `congthucmon` (
  `MaSP` int(11) NOT NULL,
  `MaNL` int(11) NOT NULL,
  `SoLuongCanDung` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `congthucmon`
--

INSERT INTO `congthucmon` (`MaSP`, `MaNL`, `SoLuongCanDung`) VALUES
(4, 3, 4),
(4, 9, 4),
(8, 9, 0.5),
(9, 4, 1),
(10, 1, 1),
(10, 5, 1),
(11, 8, 1),
(12, 2, 1),
(12, 8, 1),
(13, 7, 1),
(14, 7, 1),
(15, 8, 1),
(16, 1, 0.4),
(16, 2, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(17, 1, 0.2),
(17, 3, 1),
(17, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `MaSP` int(11) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `TenSP` varchar(50) NOT NULL,
  `GiaBan` double NOT NULL,
  `GioiThieuSP` varchar(50) NOT NULL,
  `Anh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmucsp`
--

INSERT INTO `danhmucsp` (`MaSP`, `MaLoai`, `TenSP`, `GiaBan`, `GioiThieuSP`, `Anh`) VALUES
(1, 1, 'Lẩu bò nhúng giấm', 500000, 'Lẩu bò nhúng giấm với hương vị đặc biệt đem tới tr', '1.jpg'),
(2, 1, 'Lẩu gà thuốc bắc', 250000, 'Lẩu gà thuốc bắc là một món ăn truyền thống của Vi', '2.jpg'),
(3, 1, 'Lẩu mắm', 300000, 'Lẩu mắm là một món ăn đặc sản nổi tiếng miền Trung', '3.jpg'),
(4, 1, 'Lẩu ếch', 400000, 'Lẩu ếch là một món ăn đặc trưng trong ẩm thực Việt', '4.jpg'),
(5, 1, 'Lẩu hải sản', 600000, 'Lẩu hải sản là một món ăn phổ biến trong ẩm thực V', '5.jpg'),
(6, 2, 'Nộm chân gà pha lê', 100000, 'Nộm chân gà pha lê là một món ăn độc đáo và hấp dẫ', '1a.jpg'),
(7, 2, 'Salad hoa quả', 80000, 'Salad hoa quả không chỉ ngon miệng mà còn là một l', '2a.jpg'),
(8, 2, 'Khoai lang kén', 50000, 'Khoai lang kén là một món ăn vặt phổ biến và hấp d', '3a.jpg'),
(9, 2, 'Kim chi Hàn Quốc', 40000, 'Kim chi là một món ăn truyền thống và đặc trưng củ', '4a.jpg'),
(10, 2, 'Bánh mỳ bơ tỏi', 100000, 'Bánh mì bơ tỏi là một món ăn nổi tiếng có nguồn gố', '5a.jpg'),
(11, 3, 'Bò tảng tươi nguyên vị', 200000, '', '6a.jpg'),
(12, 2, 'Bò tảng ướp Hàn Quốc', 250000, '', '1b.jpg'),
(13, 3, 'Ba chỉ heo tươi', 120000, '', '2b.jpg'),
(14, 3, 'Nầm heo ướp', 150000, '', '3b.jpg'),
(15, 3, 'Ba chỉ bò Mỹ', 300000, '', '4b.jpg'),
(16, 4, 'Kem tươi ngũ vị', 60000, '', '1c.jpg'),
(17, 4, 'Sữa chua thạch hoa quả', 50000, '', '2c.jpg'),
(18, 5, 'Coca Cola', 20000, '', '1d.jpg'),
(19, 5, 'Bia Sài Gòn', 25000, '', '2d.jpg'),
(20, 5, 'Rượu mơ', 79000, '', '3d.jpg'),
(21, 5, 'Nước suối', 15000, '', '4d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `giamgia`
--

CREATE TABLE `giamgia` (
  `MaGiamGia` int(11) NOT NULL,
  `GiamGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giamgia`
--

INSERT INTO `giamgia` (`MaGiamGia`, `GiamGia`) VALUES
(0, 5),
(25, 25),
(666, 15),
(999, 10),
(14587, 20),
(14588, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hoadonban`
--

CREATE TABLE `hoadonban` (
  `MaHoaDon` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `MaBan` int(11) DEFAULT NULL,
  `GiamGia` int(11) NOT NULL,
  `PhuongThucTT` bit(2) NOT NULL,
  `GhiChu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadonban`
--

INSERT INTO `hoadonban` (`MaHoaDon`, `NgayLap`, `UserName`, `MaBan`, `GiamGia`, `PhuongThucTT`, `GhiChu`) VALUES
(10, '2024-10-20 10:09:23', 'dung', 7, 666, b'00', NULL),
(11, '2024-10-24 17:34:18', 'admin', 2, 14588, b'01', NULL),
(12, '2024-10-26 06:02:43', 'admin', 2, 25, b'01', NULL),
(34, '2024-11-06 13:50:26', 'thienvu', 9, 999, b'00', NULL),
(47, '2024-11-06 14:25:06', 'thienvu', 1, 14588, b'00', NULL),
(68, '2024-11-23 11:17:55', 'thienvu', 1, 0, b'00', NULL),
(69, '2024-12-21 11:00:29', 'tuan', 2, 14588, b'01', NULL),
(70, '2024-12-21 17:33:43', 'tuan', 1, 0, b'01', NULL),
(71, '2024-12-21 18:34:17', 'thienvu', 1, 0, b'00', NULL),
(72, '2024-12-21 19:08:25', 'tuan', 1, 0, b'00', NULL),
(73, '2024-12-21 19:26:45', 'tuan', 1, 0, b'00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoadonnhap`
--

CREATE TABLE `hoadonnhap` (
  `MaHoaDonNhap` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `NgayNhapHang` datetime NOT NULL,
  `GhiChu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadonnhap`
--

INSERT INTO `hoadonnhap` (`MaHoaDonNhap`, `MaNCC`, `UserName`, `NgayNhapHang`, `GhiChu`) VALUES
(1, 1, 'admin', '2023-10-20 09:04:11', NULL),
(2, 2, 'admin2', '2022-10-20 09:05:54', NULL),
(3, 4, 'admin', '2023-10-15 09:06:19', NULL),
(4, 2, 'admin2', '2023-09-20 09:08:49', NULL),
(5, 5, 'admin2', '2023-10-17 09:13:31', NULL),
(6, 1, 'admin', '2023-08-25 09:13:54', NULL),
(7, 4, 'admin2', '2023-09-25 09:14:14', NULL),
(8, 4, 'admin2', '2023-10-01 09:14:32', NULL),
(9, 4, 'admin', '2023-06-10 09:14:42', NULL),
(10, 1, 'admin2', '2023-09-01 09:16:08', NULL),
(11, 1, 'admin', '2023-11-08 14:58:35', NULL),
(12, 1, 'admin', '2023-11-08 14:58:56', NULL),
(13, 1, 'admin', '2023-11-08 14:59:33', NULL),
(14, 1, 'admin', '2023-11-08 15:12:03', NULL),
(15, 1, 'admin', '2023-11-08 15:12:25', NULL),
(16, 1, 'admin', '2023-11-08 15:12:28', NULL),
(17, 1, 'admin', '2023-11-08 15:13:20', NULL),
(18, 1, 'admin', '2023-11-08 15:13:58', NULL),
(19, 1, 'admin', '2023-11-08 15:14:18', NULL),
(20, 1, 'admin', '2023-11-08 15:14:56', NULL),
(21, 1, 'admin', '2023-11-08 15:15:42', NULL),
(22, 1, 'admin', '2023-11-08 17:45:03', NULL),
(23, 1, 'admin', '2023-11-08 17:49:11', NULL),
(24, 1, 'admin', '2023-11-08 17:49:34', NULL),
(25, 1, 'admin', '2023-11-08 17:49:51', NULL),
(26, 1, 'admin', '2023-11-08 17:50:10', NULL),
(27, 1, 'admin', '2023-11-08 21:04:25', NULL),
(28, 1, 'admin', '2023-11-08 21:04:37', NULL),
(29, 1, 'admin', '2023-11-08 21:04:57', NULL),
(30, 1, 'admin', '2023-11-08 21:05:13', NULL),
(31, 1, 'admin', '2023-11-08 21:06:17', NULL),
(32, 1, 'admin', '2023-11-08 21:06:52', NULL),
(33, 1, 'admin', '2023-11-08 21:07:20', NULL),
(34, 1, 'admin', '2023-11-08 21:08:42', NULL),
(35, 1, 'admin', '2023-11-08 21:10:12', NULL),
(36, 3, 'admin', '2023-11-08 21:23:54', NULL),
(37, 3, 'admin', '2023-11-09 09:24:14', NULL),
(38, 1, 'admin', '2024-02-29 14:08:22', NULL),
(39, 1, 'admin', '2024-12-20 22:59:33', NULL),
(40, 1, 'admin', '2024-12-20 23:00:02', NULL),
(41, 1, 'admin', '2024-12-20 23:00:12', NULL),
(42, 1, 'admin', '2024-12-20 23:00:24', NULL),
(43, 1, 'admin', '2024-12-20 23:05:17', NULL),
(44, 1, 'admin1', '2024-12-21 18:26:08', NULL),
(45, 1, 'admin1', '2024-12-21 19:05:54', NULL),
(46, 1, 'admin1', '2024-12-21 19:23:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `LoaiSP` int(11) NOT NULL,
  `TenLoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`LoaiSP`, `TenLoai`) VALUES
(1, 'Lẩu'),
(2, 'Món khai vị'),
(3, 'Món chính'),
(4, 'Món tráng miệng'),
(5, 'Nước uống'),
(6, 'Khác.');

-- --------------------------------------------------------

--
-- Table structure for table `nguyenlieu`
--

CREATE TABLE `nguyenlieu` (
  `MaNL` int(11) NOT NULL,
  `TenNL` varchar(50) NOT NULL,
  `DonGiaNhap` double NOT NULL,
  `SoLuongCon` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguyenlieu`
--

INSERT INTO `nguyenlieu` (`MaNL`, `TenNL`, `DonGiaNhap`, `SoLuongCon`) VALUES
(1, 'Sữa', 5000, 38),
(2, 'Đường', 2000, 513),
(3, 'Cà phê', 10000, 2503),
(4, 'Trà xanh', 1500, 1510),
(5, 'Kem', 6000, 1123),
(6, 'Trứng', 2000, 504),
(7, 'Thịt lợn', 12000, 444),
(8, 'Thịt bò', 20000, 696),
(9, 'Khoai tây', 3000, 584.5),
(10, 'Cà chua', 1000, 1300),
(11, 'Súp lơ', 15000, 11);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) NOT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `GhiChu`) VALUES
(1, 'Thành Nam Food', '12b Nguyễn Huệ, phường Thủ Đức, Hồ Chí Minh', ''),
(2, 'CP Việt Nam', 'Số 2 đường 2A, KCN Biên Hoà II', NULL),
(3, 'CTCP Thực phẩm Thiên Vương', '30 Nguyễn Khang, Yên Hòa, Cầu Giấy, Hà Nội.', ''),
(4, 'Công ty TNHH Thực phẩm Hữu Nghị', '40/2/5 Trần Quốc Hoàn, Cầu Giấy, Hà Nội', NULL),
(5, 'Công ty TNHH Thực phẩm Nguyên Hà', '14/7 Bis Kỳ Đồng, Phường 9, Quận 3, TP. HCM', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `thongtinchitiethoadonban`
-- (See below for the actual view)
--
CREATE TABLE `thongtinchitiethoadonban` (
`MaHoaDon` int(11)
,`TenSP` varchar(50)
,`SoLuong` int(11)
,`TongTienHD` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `thongtinhoadonnhap`
-- (See below for the actual view)
--
CREATE TABLE `thongtinhoadonnhap` (
`MaHoaDonNhap` int(11)
,`Ho` varchar(50)
,`Ten` varchar(50)
,`NgayNhapHang` datetime
,`TongTien` double
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserName` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL,
  `LoaiUser` bit(2) NOT NULL,
  `Ho` varchar(50) DEFAULT NULL,
  `Ten` varchar(50) NOT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `GhiChu` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserName`, `PassWord`, `LoaiUser`, `Ho`, `Ten`, `DiaChi`, `SDT`, `NgaySinh`, `GhiChu`) VALUES
('admin', '123', b'00', 'Phạm', 'Ngọc Tuyền', 'Hà Nội', '0352727002', '2002-01-01 00:00:00', NULL),
('admin1', '123', b'00', 'Nguyễn ', 'Thị Xuyến', 'Nam Định', '0352727002', '2003-02-17 00:00:00', NULL),
('admin2', '123', b'11', 'Nguyễn', 'Nguyên', 'Hà Nội', '0123456789', '2000-10-20 09:00:12', NULL),
('dat', '123', b'10', NULL, '', NULL, NULL, NULL, NULL),
('dung', '123', b'00', 'Nguyễn ', 'Tiến Dũng ', 'Bắc Ninh ', '0145236985', '2002-05-05 09:02:55', NULL),
('manh', '123', b'01', 'Nguyễn ', 'Tiến Mạnh ', 'Hải Phòng ', '0222222', NULL, NULL),
('Nbang', '123', b'00', 'Như', 'Băng ', 'Nam Định', '12345', '2010-03-25 00:00:00', NULL),
('nmtuan', '123', b'00', 'Nguyễn ', 'Minh Tuấn', 'Hà Nội', '012345678', '0000-00-00 00:00:00', NULL),
('thanh', '123', b'10', 'Đặng', 'Tuấn Thành', 'Hà Tĩnh', '0865059355', '2002-09-27 00:00:00', NULL),
('thienvu', '123', b'01', 'Phạm', 'Thiên Vũ', 'Hà Nội', '0865059383', '0000-00-00 00:00:00', NULL),
('tuan', '123', b'01', 'Nguyễn', 'M Tuấn', 'Hà Nội', '0258963145', '2002-01-10 09:02:13', NULL),
('xuyen', '123', b'10', NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `baocaodoanhthu`
--
DROP TABLE IF EXISTS `baocaodoanhthu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `baocaodoanhthu`  AS SELECT `hoadonban`.`MaHoaDon` AS `MaHoaDon`, `user`.`Ten` AS `Ten`, `hoadonban`.`NgayLap` AS `NgayLap` FROM (`user` join `hoadonban` on(`hoadonban`.`UserName` = `user`.`UserName`)) ;

-- --------------------------------------------------------

--
-- Structure for view `baocaohoadonnhap`
--
DROP TABLE IF EXISTS `baocaohoadonnhap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `baocaohoadonnhap`  AS SELECT `hoadonnhap`.`MaHoaDonNhap` AS `MaHoaDonNhap`, `hoadonnhap`.`NgayNhapHang` AS `NgayNhapHang`, `user`.`Ho` AS `Ho`, `user`.`Ten` AS `Ten` FROM (`hoadonnhap` join `user` on(`hoadonnhap`.`UserName` = `user`.`UserName`)) ;

-- --------------------------------------------------------

--
-- Structure for view `thongtinchitiethoadonban`
--
DROP TABLE IF EXISTS `thongtinchitiethoadonban`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `thongtinchitiethoadonban`  AS SELECT `hoadonban`.`MaHoaDon` AS `MaHoaDon`, `danhmucsp`.`TenSP` AS `TenSP`, `chitiethoadon`.`SoLuong` AS `SoLuong`, `chitiethoadon`.`TongTienHD` AS `TongTienHD` FROM ((`hoadonban` join `chitiethoadon` on(`chitiethoadon`.`MaHoaDon` = `hoadonban`.`MaHoaDon`)) join `danhmucsp` on(`danhmucsp`.`MaSP` = `chitiethoadon`.`MaChiTietSP`)) ;

-- --------------------------------------------------------

--
-- Structure for view `thongtinhoadonnhap`
--
DROP TABLE IF EXISTS `thongtinhoadonnhap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `thongtinhoadonnhap`  AS SELECT `hoadonnhap`.`MaHoaDonNhap` AS `MaHoaDonNhap`, `user`.`Ho` AS `Ho`, `user`.`Ten` AS `Ten`, `hoadonnhap`.`NgayNhapHang` AS `NgayNhapHang`, `chitiethoadonnhap`.`TongTien` AS `TongTien` FROM ((`hoadonnhap` join `user` on(`user`.`UserName` = `hoadonnhap`.`UserName`)) join `chitiethoadonnhap` on(`chitiethoadonnhap`.`MaHoaDonNhap` = `hoadonnhap`.`MaHoaDonNhap`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`MaBan`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHoaDon`,`MaChiTietSP`),
  ADD KEY `MaChiTietSP` (`MaChiTietSP`);

--
-- Indexes for table `chitiethoadonnhap`
--
ALTER TABLE `chitiethoadonnhap`
  ADD PRIMARY KEY (`MaHoaDonNhap`,`MaNL`),
  ADD KEY `MaNL` (`MaNL`);

--
-- Indexes for table `congthucmon`
--
ALTER TABLE `congthucmon`
  ADD PRIMARY KEY (`MaSP`,`MaNL`),
  ADD KEY `MaNL` (`MaNL`);

--
-- Indexes for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Indexes for table `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`MaGiamGia`);

--
-- Indexes for table `hoadonban`
--
ALTER TABLE `hoadonban`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaNV` (`UserName`),
  ADD KEY `MaBan` (`MaBan`),
  ADD KEY `GiamGia` (`GiamGia`),
  ADD KEY `UserName` (`UserName`);

--
-- Indexes for table `hoadonnhap`
--
ALTER TABLE `hoadonnhap`
  ADD PRIMARY KEY (`MaHoaDonNhap`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaNV` (`UserName`),
  ADD KEY `UserName` (`UserName`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`LoaiSP`);

--
-- Indexes for table `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  ADD PRIMARY KEY (`MaNL`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserName`,`LoaiUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ban`
--
ALTER TABLE `ban`
  MODIFY `MaBan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `MaGiamGia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14589;

--
-- AUTO_INCREMENT for table `hoadonban`
--
ALTER TABLE `hoadonban`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `hoadonnhap`
--
ALTER TABLE `hoadonnhap`
  MODIFY `MaHoaDonNhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `LoaiSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  MODIFY `MaNL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaChiTietSP`) REFERENCES `danhmucsp` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`MaHoaDon`) REFERENCES `hoadonban` (`MaHoaDon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitiethoadonnhap`
--
ALTER TABLE `chitiethoadonnhap`
  ADD CONSTRAINT `chitiethoadonnhap_ibfk_1` FOREIGN KEY (`MaNL`) REFERENCES `nguyenlieu` (`MaNL`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadonnhap_ibfk_2` FOREIGN KEY (`MaHoaDonNhap`) REFERENCES `hoadonnhap` (`MaHoaDonNhap`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `congthucmon`
--
ALTER TABLE `congthucmon`
  ADD CONSTRAINT `congthucmon_ibfk_1` FOREIGN KEY (`MaNL`) REFERENCES `nguyenlieu` (`MaNL`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `congthucmon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `danhmucsp` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD CONSTRAINT `danhmucsp_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaisp` (`LoaiSP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadonban`
--
ALTER TABLE `hoadonban`
  ADD CONSTRAINT `hoadonban_ibfk_3` FOREIGN KEY (`MaBan`) REFERENCES `ban` (`MaBan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadonban_ibfk_4` FOREIGN KEY (`GiamGia`) REFERENCES `giamgia` (`MaGiamGia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadonban_ibfk_5` FOREIGN KEY (`UserName`) REFERENCES `user` (`UserName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadonnhap`
--
ALTER TABLE `hoadonnhap`
  ADD CONSTRAINT `hoadonnhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadonnhap_ibfk_2` FOREIGN KEY (`UserName`) REFERENCES `user` (`UserName`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
