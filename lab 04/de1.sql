CREATE DATABASE IF NOT EXISTS `de1` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;
USE `de1`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gen` tinyint(1) NOT NULL,
  `age` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`id`, `name`, `gen`, `age`, `id_pro`) VALUES
(1, 'Ho Dinh Kha', 1, 34, 1),
(2, 'Le Trieu Ngoc Duc', 1, 51, 2),
(3, 'Luong An Vinh', 1, 32, 3),
(4, 'Tran Thi Mau', 0, 23, 1),
(5, 'Tran Thi Thuy Trang', 0, 27, 2),
(6, 'Ho Thi Thuy', 0, 45, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `project`
--

INSERT INTO `project` (`id`, `name`, `createDate`) VALUES
(1, 'Xay dung nha tinh yeu', '2018-01-05'),
(2, 'Xoa Cau Khi', '2018-02-15'),
(3, 'An toan Giao Thong', '2018-04-03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pro` (`id_pro`);

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

