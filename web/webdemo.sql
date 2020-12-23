-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2020 lúc 04:03 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdemo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `iddm` int(3) NOT NULL,
  `tendm` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `path` varchar(250) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`iddm`, `tendm`, `path`) VALUES
(18, 'C#', 'images/C++.png'),
(19, 'Python', 'images/Python.jpg'),
(20, 'Java', 'images/Java.jpg'),
(21, 'JavaCript', 'images/JavaCript.jpg'),
(23, 'PHP', 'images/PHP.png'),
(24, 'Anroid', 'images/Anroid.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `star`
--

CREATE TABLE `star` (
  `id` int(11) NOT NULL,
  `idtl` int(3) NOT NULL,
  `username` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `dt_rated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `star`
--

INSERT INTO `star` (`id`, `idtl`, `username`, `rate`, `dt_rated`) VALUES
(17, 41, 'admin', 5, '2020-12-22 17:22:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tailieu`
--

CREATE TABLE `tailieu` (
  `idtl` int(3) NOT NULL,
  `username` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL,
  `iddm` int(3) NOT NULL,
  `tentl` varchar(250) COLLATE utf8_vietnamese_ci NOT NULL,
  `path` varchar(250) COLLATE utf8_vietnamese_ci NOT NULL,
  `soluotdl` int(3) DEFAULT 0,
  `luotxemtl` int(3) DEFAULT 0,
  `ngayupload` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tailieu`
--

INSERT INTO `tailieu` (`idtl`, `username`, `iddm`, `tentl`, `path`, `soluotdl`, `luotxemtl`, `ngayupload`) VALUES
(31, 'admin', 18, 'Hướng đối tượng', 'uploads/Hướng đối tượng.pptx', 0, 0, '2020-12-19 13:11:36'),
(32, 'admin', 18, 'Lập trình cơ bản', 'uploads/Lập trình cơ bản.docx', 0, 0, '2020-12-19 13:11:49'),
(33, 'admin', 19, 'Lập trình hướng đối tượng Python - P1', 'uploads/Lập trình hướng đối tượng Python - P1.docx', 0, 0, '2020-12-19 13:12:07'),
(34, 'admin', 19, 'Lập trình hướng đối tượng Python - P2', 'uploads/Lập trình hướng đối tượng Python - P2.docx', 0, 0, '2020-12-19 13:12:31'),
(35, 'admin', 20, 'Giao diện cơ bản', 'uploads/Giao diện cơ bản.docx', 0, 0, '2020-12-19 13:12:48'),
(36, 'admin', 20, 'Lập trình cơ bản', 'uploads/Lập trình cơ bản.docx', 0, 2, '2020-12-19 13:13:02'),
(37, 'admin', 21, 'Hướng dẫn căn bản JavaCript', 'uploads/Hướng dẫn căn bản JavaCript.docx', 0, 1, '2020-12-19 13:13:19'),
(38, 'admin', 21, 'Lập trình cơ bản', 'uploads/Lập trình cơ bản.docx', 0, 6, '2020-12-19 13:13:35'),
(39, 'admin', 23, 'Giao diện PHP', 'uploads/Giao diện PHP.pptx', 0, 0, '2020-12-19 13:13:53'),
(40, 'admin', 23, 'Giới thiệu cơ bản về PHP', 'uploads/Giới thiệu cơ bản về PHP.docx', 0, 6, '2020-12-19 13:14:10'),
(41, 'admin', 24, 'Hướng đối tượng Anroid', 'uploads/Hướng đối tượng Anroid.pptx', 0, 8, '2020-12-19 13:14:31'),
(42, 'admin', 24, 'Lập trình Anroid cơ bản', 'uploads/Lập trình Anroid cơ bản.docx', 0, 2, '2020-12-19 13:14:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `username` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `idtl` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `username`, `date`, `idtl`) VALUES
(127, 0, 'hay qua', 'admin', '2020-12-22 12:05:11', 41),
(128, 127, 'hshvhs', 'admin', '2020-12-22 12:07:18', 41),
(129, 128, 'hshvhs', 'admin', '2020-12-22 12:07:28', 41),
(130, 0, 'hay qua', 'admin', '2020-12-22 12:28:08', 40),
(131, 0, 'sdsg', 'admin', '2020-12-22 12:38:17', 40),
(132, 0, 'hay qua', 'admin', '2020-12-22 19:15:21', 38),
(133, 0, 'hay qua', 'admin', '2020-12-22 19:19:55', 36),
(134, 0, 'hay qua', 'admin', '2020-12-22 20:04:37', 42);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `username` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`username`, `password`, `name`, `email`, `role`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'administrator@gmail.com', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`iddm`);

--
-- Chỉ mục cho bảng `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idtl` (`idtl`,`username`),
  ADD KEY `username` (`username`);

--
-- Chỉ mục cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`idtl`),
  ADD KEY `username` (`username`),
  ADD KEY `iddm` (`iddm`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `username` (`username`,`idtl`),
  ADD KEY `idtl` (`idtl`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `iddm` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `star`
--
ALTER TABLE `star`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  MODIFY `idtl` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `star`
--
ALTER TABLE `star`
  ADD CONSTRAINT `star_ibfk_1` FOREIGN KEY (`idtl`) REFERENCES `tailieu` (`idtl`),
  ADD CONSTRAINT `star_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Các ràng buộc cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD CONSTRAINT `tailieu_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `tailieu_ibfk_2` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`iddm`);

--
-- Các ràng buộc cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `tbl_comment_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `tbl_comment_ibfk_2` FOREIGN KEY (`idtl`) REFERENCES `tailieu` (`idtl`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
