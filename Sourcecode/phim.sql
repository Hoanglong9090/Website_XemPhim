-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 25, 2020 lúc 07:01 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `mail` text NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` text NOT NULL,
  `tinhtp` text NOT NULL,
  `sothich` text NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `first_name`, `last_name`, `mail`, `ngaysinh`, `gioitinh`, `tinhtp`, `sothich`, `mota`) VALUES
(1, 'admin', 'admin', 'Hoang Long', 'Le Trung', 'hoanglong@yahoo.com', '2000-09-10', 'nam', 'Da  Nang', 'dulich,khac', 'thang than, trung thuc, it noi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkythongtin`
--

CREATE TABLE `dangkythongtin` (
  `ID` int(5) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `mail` text NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` text NOT NULL,
  `tinhtp` text NOT NULL,
  `sothich` text NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dangkythongtin`
--

INSERT INTO `dangkythongtin` (`ID`, `username`, `password`, `first_name`, `last_name`, `mail`, `ngaysinh`, `gioitinh`, `tinhtp`, `sothich`, `mota`) VALUES
(4, 'NguyenAnh', 'NguyenAnh1234', 'Nguyen', 'Anh', 'nguyenanh@gmail,com', '1991-01-01', 'Nam', 'Da Nang  ', 'thethao,nghenhac,dulich', 'vip pro'),
(5, 'TrucKhue', 'TrucKhue1234', 'Truc', 'Khue', 'truckhue@gmail.com', '2000-01-18', 'Nu', 'Hue', 'thethao,khac', 'hay noi'),
(6, 'Quyen', 'Quyen1234', 'Nguyen', 'Quyen', 'quyquyenvhit@gmail.com', '1992-01-12', 'Nu', 'Da Nang', 'thethao,muasam', 'Cao '),
(7, 'VanDanh', 'VanDanh1234', 'Nguyen Van', 'Danh', 'nguyendanh@gmail.com', '1990-02-02', 'Nam', 'Da Nang  ', 'thethao,nghenhac', 'khong co'),
(8, 'NgocHai', 'NgocHai1234', 'Hoang', 'NgocHai', 'ngochai@gmail.com', '1990-03-03', 'Nam', 'Da Nang', 'thethao,nghenhac', 'ham the thao'),
(11, 'QuocChi', 'QuocChi1234', 'Le', 'QuocChi', 'quocchi@gmail.com', '1991-05-04', 'Nam', 'Da Nang', 'thethao,dulich', 'hoi beo, toc xoan, '),
(12, 'lelinh', 'linh1234', 'Le', 'Linh', 'linh@gmail.com', '1990-02-01', 'Nam', 'Quang Nam', 'thethao,nghenhac', 'khong co');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tenphim`
--

CREATE TABLE `tenphim` (
  `id` int(11) NOT NULL,
  `tenphim` text NOT NULL,
  `mota` text DEFAULT NULL,
  `theloai` text NOT NULL,
  `hinhanh` text NOT NULL,
  `linkplay` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tenphim`
--

INSERT INTO `tenphim` (`id`, `tenphim`, `mota`, `theloai`, `hinhanh`, `linkplay`) VALUES
(8, 'Hoàng Cung', 'Hoàng Cung', 'phimbo', 'hoang-cung.jpeg', 'https://drive.google.com/file/d/1cdV0iWFrKM4rSvsnEbytvq5FQFgxKe5n/view?usp=sharing'),
(10, 'Cuoc Chien Sinh Tu', 'cuoc-chien-sinh-tu', 'xemnhieu', 'cuoc-chien-sinh-tu.jpg', 'https://drive.google.com/file/d/1cdV0iWFrKM4rSvsnEbytvq5FQFgxKe5n/view?usp=sharing'),
(11, 'Nàng Công Chúa Bí An', 'nang-cong-chua-bi-an', 'xemnhieu', 'nang-cong-chua-bi-an.jpg', 'https://drive.google.com/file/d/1cdV0iWFrKM4rSvsnEbytvq5FQFgxKe5n/view?usp=sharing'),
(13, 'Nhiem Vu Cuoi', 'nhiem-vu-cuoi', 'phimbo', 'nhiem-vu-cuoi.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(14, 'Mui Ten Xanh', 'mui-ten-xanh', 'phimle', 'mui-ten-xanh.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(15, 'Nguoi Nhen 3\r\n', 'nguoi-nhen-3', 'xemnhieu', 'nguoi-nhen-3.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(16, 'Nhac Kich', 'nhac-kich-2012', 'phimbo', 'nhac-kich-2012.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(17, 'Phep Thuat', 'phep-thuat', 'phimbo', 'phep-thuat.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(19, 'Phuong An B', 'phuong-an-b', 'xemnhieu', 'phuong-an-B.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(31, 'Quai Thu Vo Hinh', 'quai-thu-vo-hinh', 'phimbo', 'quai-thu-vo-hinh.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(32, 'Sat Thu Nikita 3', 'sat-thu-nikita3', 'phimle', 'sat-thu-nikita3.jpeg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(35, 'Canh sat giet nguoi 7', 'Canh sat giet nguoi 7', 'phimbo', 'canh-sat-giet-nguoi-7.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(36, 'Hoi Phap Su', 'hoi-phap-su', 'phimle', 'hoi-phap-su.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(37, 'Hung Dong Phan 2', 'Hung Dong Phan 2', 'phimbo', 'hung-dong-phan-2.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(38, 'Mat Bac', 'mat-bac', 'xemnhieu', 'mat-bac.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(39, 'Nguoi Doi 3', 'nguoi-doi-3', 'phimbo', 'nguoi-doi-3.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(40, 'Ong Hoang Truyen Hinh Poster', 'Ong Hoang Truyen Hinh Poster', 'phimle', 'onghoangtruyenhinhposte.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(41, 'Tay Sai Mau Lanh', 'Tay Sai Mau Lanh', 'phimle', 'tai-sai-mau-lanh.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(42, 'Tao Hinh Khuon Mat', 'Tao Hinh Khuon Mat', 'phimle', 'tao-hinh khuon mat.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(43, 'Thien Than Khoe Dang Ngoc', 'Thien Than Khoe Dang Ngoc', 'xemnhieu', 'thien-than-khoe-dang-ngoc.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(44, 'Thiet Quyen Thu', 'Thiet Quyen Thu', 'phimbo', 'thiet-quyen-thu.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(45, 'Toc Do Kinh Hoang', 'Toc Do Kinh Hoang', 'phimle', 'toc-do-kinh-hoang.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(46, 'Tu Chien Lien Hanh Tinh', 'Tu Chien Lien Hanh Tinh', 'xemnhieu', 'tu-chien-lien-hanh-tinh.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(47, 'Tuoi Moi Lon', 'Tuoi Moi Lon', 'phimle', 'tuoi-moi-lon.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing'),
(48, 'Vùng Dat Quy Du', 'Vùng Dat Quy Du', 'phimbo', 'vung-dat-quy-du.jpg', 'https://drive.google.com/file/d/1B-7sRz_PgMRyZJWlvGs_ijiJdS9AxZTJ/view?usp=sharing');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `ID` int(11) NOT NULL,
  `theloai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`ID`, `theloai`) VALUES
(1, 'phimbo'),
(2, 'phimle'),
(3, 'xemnhieu'),
(5, 'kinhdi');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dangkythongtin`
--
ALTER TABLE `dangkythongtin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tenphim`
--
ALTER TABLE `tenphim`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dangkythongtin`
--
ALTER TABLE `dangkythongtin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tenphim`
--
ALTER TABLE `tenphim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
