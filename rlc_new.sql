-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 05:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rlc_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `ten_danhmuc`) VALUES
(1, 'Văn hóa chính trị'),
(2, 'Kinh tế'),
(3, 'Công nghệ thông tin'),
(4, 'Sinh học'),
(5, 'Ngôn ngữ'),
(6, 'Công nghệ cơ khí'),
(7, 'Thủy sản'),
(8, 'Văn học Việt Nam'),
(9, 'Văn học nước ngoài'),
(10, 'Nông học cây trồng');

-- --------------------------------------------------------

--
-- Table structure for table `muon2`
--

CREATE TABLE `muon2` (
  `id_muon` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_sach` int(11) NOT NULL,
  `ngay_muon` date DEFAULT NULL,
  `han_tra` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `muon2`
--

INSERT INTO `muon2` (`id_muon`, `id_user`, `id_sach`, `ngay_muon`, `han_tra`) VALUES
(5, 'B2004757', 25, '2023-02-13', '2023-02-27'),
(6, 'B2004757', 25, '2023-02-13', '2023-02-27'),
(7, 'B2004757', 12, '2023-02-13', '2023-02-27'),
(8, 'B2004732', 22, '2023-05-13', '2023-05-27'),
(9, 'B2004757', 29, '2023-08-13', '2023-08-27'),
(10, 'B2001234', 44, '2023-08-13', '2023-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `id_sach` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `ten_sach` text NOT NULL,
  `thu_tu_ke` text NOT NULL,
  `thong_tinxb` text NOT NULL,
  `chu_de` text NOT NULL,
  `tac_gia` text NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`id_sach`, `id_danhmuc`, `ten_sach`, `thu_tu_ke`, `thong_tinxb`, `chu_de`, `tac_gia`, `so_luong`) VALUES
(1, 4, 'Handbook of isoelectric focusing and proteomics', '572.6028/ H236', 'San Diego, Calif.: Elsevier Academic Press, 2005', 'Proteomics; Nghiên cứu protein', 'Ahuja, Satinder, Garfin, David Edward ', 100),
(2, 4, 'Handbook of isoelectric focusing and proteomics', '572.6028/ H236', 'San Diego, Calif.: Elsevier Academic Press, 2005', 'Proteomics; Nghiên cứu protein', 'Ahuja, Satinder, Garfin, David Edward ', 100),
(3, 4, 'Lehninger principles of biochemistry I', '572/ L523', 'New York: W.H. Freeman, 2005', 'Biochemistry.; Công nghệ sinh học', 'Lehninger, Albert L.', 100),
(4, 4, 'Lehninger principles of biochemistry = Principles of biochemistry: Chapter 16 - 28', '572/ L523/B.2', 'New York: W.H. Freeman, 2005', 'Biochemistry; Công nghệ sinh học', 'Lehninger, Albert L.', 100),
(5, 4, 'Lehninger principles of biochemistry = Principles of biochemistry: Chapter 1 - 15. Book 1', '572/ L523/B.2', 'New York: W.H. Freeman, 2005', 'Biochemistry; Công nghệ sinh học', 'Lehninger, Albert L.', 100),
(6, 4, 'The role of biotechnology in exploring and protecting agricultural genetic resources', '631.5233/ R745', 'Rome: FAO, 2006', 'Agricultural biotechnology; Plant biotechnology', 'Sonnino, Andrea ', 100),
(7, 4, 'Công nghệ sinh học. Tập 1 - Sinh học phân tử và tế bào- cơ sở khoa học của công nghệ sinh học', '660.6/ H305/T.1', 'Hà Nội: Giáo Dục, 2006', 'Biotechnology; Genetic engineering', 'Nguyễn, Như Hiền', 100),
(8, 4, 'Giáo trình sinh học tế bào : (Dùng cho sinh viên Cao đẳng, Đại học chuyên ngành sinh học, Công nghệ sinh học, Nông - Lâm - Ngư nghiệp và giáo viên, học sinh phổ thông)', '571.6/ H305', 'Hà Nội: Giáo dục, 2006', 'Cytology; Molecular biology', 'Nguyễn, Như Hiền', 100),
(9, 4, 'Ứng dụng công nghệ trong sản xuất lúa', '633.18/ Th463', 'Hà Nội: Lao động, 2006', 'Rice', 'Chu, Thị Thơm', 100),
(10, 4, 'Công nghệ sinh học : (Dùng cho học viên ĐH, CĐ chuyên và không chuyên nghành CNSH, giáo viên và học sinh PTTH). T.2 - Công nghệ sinh học tế bào', '660.6/ C455/T.2', 'Nguyễn, Như Hiền', 'Cytology; Molecular biology', 'Nguyễn, Như Hiền', 100),
(11, 3, 'J2EE avec JBuilder 7 enterprise', '005.133/ D888', 'Duminil, Nicolas', 'Java (Ngôn ngữ lập trình máy tính); Java (Computer program language)', 'Duminil, Nicolas', 100),
(12, 3, 'J2EE best practices Java design patterns, automation, and performance', '006.68/ B865', 'Indianapolis, IN: Wiley, 2003', 'computer graphics; java ( computer program language )', 'Darren Broemmer', 100),
(13, 3, 'Cryptography An introduction', '005.82/ S636', 'Bershire, UK: McGraw-Hill, 2003', 'data encryption ( computer science ); cryptography', 'Nigel Smart', 100),
(14, 3, 'Sun Certified Enterprise Architect for J2EE Study Guide ( Exam 310-051 )', '005.133/ A425', 'New York: McGraw-Hill, 2003', 'java ( computer program language ); computer networks', 'Paul R. Allen', 100),
(15, 3, 'Java enterprise best practices', '005.133/ O.66', 'Beijing, China: O\'Reilly Beijing, 2003', 'java ( computer program language )', 'The O\'Reilly Java Authors', 100),
(16, 3, 'Algorithms in Java. P1-4 - Fundamentals data structures, sorting, searching', '005.133/ S44/P1-4', 'Boston, MA: Addison-Wesley, 2003', 'java ( computer program language ); computer algorithms', 'Robert Sedgewick', 100),
(17, 3, 'Building J2EE applications with the rational unified process', '005.133/ E27', 'Boston, MA: Addison-Wesley, 2003', 'java ( computer program language ); computer software', 'Peter Eeles', 100),
(18, 3, 'Thực hành Javascript (cho Web)', '005.133/ S312', 'Hà Nội: Thống Kê, 2003', 'Java (computer program language); Java (ngôn ngữ chương trình máy tính)', 'Nguyễn, Trường Sinh', 100),
(19, 3, 'Thực hành javascript Dành cho sinh viên', '005.133/ S312', 'Tp. HCM: Thống Kê, 2003', 'world wide web information ( retrieval systems ); java ( computer program language )', 'Nguyễn Trường Sinh', 100),
(20, 3, 'Lập trình hướng đối tượng Java', '005.133/ B105', 'H.: KHKT, 2003', 'object-oriented software programming ( computer science ); java ( computer program language )', 'Đoàn Văn Ban', 100),
(21, 2, 'Modern business analytics : Practical data science for decision-making', '658.403/ T121', 'New York, NY: McGraw Hill Education, 2023', 'Decision making; Ra quyết định', 'Taddy, Matt', 100),
(22, 2, 'Giáo trình kế toán quản trị 1', '658.1511/ H561', 'Cần Thơ: Nxb. Đại học Cần Thơ, 2022', 'Kế toán quản trị; Managerial accounting', 'Lê, Phước Hương', 100),
(23, 2, 'Giáo trình quản trị du lịch và dịch vụ', '338.4791/ Nh513', 'Cần Thơ: Nxb. Đại học Cần Thơ, 2022', 'Du lịch; Tourism', 'Giáo trình quản trị du lịch và dịch vụPhạm, Lê Hồng Nhung', 100),
(24, 2, 'Nghiên cứu năng lực cạnh tranh của các doanh nghiệp xuất khẩu thủy hải sản vùng Đồng bằng sông Cửu Long.', ' 658.83 / L250', 'Cần Thơ: Nxb. Đại học Cần Thơ, 2022', 'Kế toán quản trị; Managerial accounting', 'Nguyễn, Thị Lệ', 100),
(25, 2, 'Nghiên cứu chuỗi cung ứng sản phẩm gạch không nung tại Đồng bằng sông Cửu Long : Luận án Tiến sĩ. Chuyên ngành Quản trị kinh doanh', '658.8/ T527', 'Cần Thơ: Nxb. Đại học Cần Thơ, 2022', 'Tiếp thị; Marketing', 'Hà, Thị Thanh Tuyền', 100),
(26, 2, 'Giải pháp nâng cao kỹ năng mềm cho sinh viên ngành kinh doanh thương mại, đáp ứng nhu cầu của các doanh nghiệp bán lẻ tại Cần Thơ', '302.14/ Tr106', 'Cần Thơ: Trường Đại học Cần Thơ, 2022', 'Life skills; Kỹ năng sống', 'Lê, Thị Thu Trang', 100),
(27, 2, 'Basic statistics for business & economics', '519.5/ L742', 'New York, NY: McGraw-Hill, 2022', 'Kinh tế; Economics', 'Lind, Douglas A.', 100),
(28, 2, 'Principles of macroeconomics', '339/ P957', 'New York, NY: McGraw-Hill, 2022', 'Kinh tế vĩ mô; Macroeconomics', 'New York, NY: McGraw-Hill, 2022', 100),
(29, 2, 'Phương pháp nghiên cứu kinh tế', '330/ Th455', 'Hà Nội: Giáo dục Việt Nam, 2022', 'Kinh tế học; Economics', 'Phạm, Lê Thông', 100),
(30, 2, 'Phân tích chuỗi giá trị sản phẩm đồ gỗ gia dụng sử dụng nguyên liệu gỗ Keo (Acacia) : Luận án Tiến sĩ. Chuyên ngành Kinh tế nông nghiệp', '338.5/ C108', 'Cần Thơ: Trường Đại học Cần Thơ, 2022', 'Kinh tế sản xuất; Production economics', 'Trần, Thanh Cao', 100),
(31, 2, 'Pháp luật về thuế bảo vệ môi trường - thực trạng và giải pháp : Luận văn thạc sĩ Luật học chuyên ngành', '344.597046/ Tr312', 'Cần Thơ: Trường Đại học Cần Thơ, 2020', 'Environmental law; Luật môi trường', 'Trần, Cẩm Trinh', 100),
(32, 2, 'Trách nhiệm của doanh nghiệp trong việc bảo vệ thông tin cá nhân của người tiêu dùng.', '346.597013/ L312', 'Cần Thơ: Trường Đại học Cần Thơ, 2020', 'Information law series; Hệ thống luật thông tin', 'Nguyễn, Thị Chúc Linh', 100),
(33, 2, 'Phân tích các yếu tố ảnh hưởng đến sự bất bình đẳng về cơ hội việc làm ngành du lịch', '338.4791/ Th108', 'Cần Thơ: Trường Đại học Cần Thơ, 2020', 'Hướng dẫn du lịch (Nhân viên); Tour guides (Persons)', 'Nguyễn, Lê Phương Thảo', 100),
(34, 2, 'Tối ưu hóa sơ đồ bố trí cọc trong tính toán móng bè cọc của cống kênh Chợ, xã Nhơn Ái, huyện Phong Điền', '624.1834/ Kh401', 'Cần Thơ: Trường Đại học Cần Thơ, 2020', 'Vật liệu xây dựng; Construction materials', 'Nguyễn, Toàn Khoa', 100),
(35, 3, 'Nghiên cứu cơ chế giao tiếp liên portlet trên hệ nền liferay portal :', 'THE.003469', 'Cần Thơ: Trường Đại học Cần Thơ, 2010', 'Mạng máy tinh, Computer Network', 'Dương, Văn Ngân', 100),
(36, 3, 'Xây dựng quy trình chuyển đổi các ứng dụng từ .NET', 'THE.003760', 'Cần Thơ: Trường Đại học Cần Thơ, 2010', 'Mạng máy tinh, Computer Network', 'Huỳnh, Tiên Hiếu', 100),
(37, 3, 'Phân loại trang web với giải thuật học đa nhãn bằng các thể hiện khác nhau :', 'THE.003771', 'Cần Thơ: Trường Đại học Cần Thơ, 2010', 'Mạng máy tinh, Computer Network', 'Mai, Quốc Trung', 100),
(38, 3, 'Nghiên cứu giải pháp triển khai dịch vụ hội thảo trực tuyến đa điểm trên mạngbăng rộng Man-E :', 'THE.003773', 'Cần Thơ: Trường Đại học Cần Thơ, 2010', 'Mạng máy tinh, Computer Network', 'Kim, Hồng Vi Phúc', 100),
(39, 3, 'Sự điều tra về thái độ của giáo viên và học sinh đối với việc học bằng phương pháp tra cứu qua mạng ở một trường phổ thông vùng sâu ở Vĩnh Long :', 'THE.004200', 'Cần Thơ: Trường Đại học Cần Thơ, 2010', 'Mạng máy tinh, Computer Network', 'Đoàn, Thị Bích Điểm', 100),
(40, 3, 'Đánh giá hiệu năng mạng :', 'THE.000481	', 'Cần Thơ: Đại học Cần Thơ, 2011', 'Mạng máy tinh, Computer Network', 'Lý, Nguyễn Trung Hiếu', 100),
(41, 3, 'Phát hiện tấn công drive by download dựa trên activex :', 'THE.007537', 'Cần Thơ: Trường Đại học Cần Thơ, 2016', 'Mạng máy tinh, Computer Network', 'Tần, Duy Khánh', 100),
(42, 3, 'Phát hiện tấn công heap-spray trong tấn công drive by download :', 'THE.007854	', 'Cần Thơ: Trường Đại học Cần Thơ, 2016', 'Mạng máy tinh, Computer Network', 'Trịnh, Trọng Nghĩa', 100),
(43, 3, 'Tìm kiếm ảnh theo nội dụng sử dụng kỹ thuật học sâu với mạng nơ-ron tích chập :', 'THE.009583	', 'Cần Thơ: Trường Đại học Cần Thơ, 2018', 'Mạng máy tinh, Computer Network', 'Trịnh, Trọng Nghĩa', 100),
(44, 3, 'Hỗ trợ ra quyết định với mạng quyết định không thứ tự :', 'THE.003139	', 'Cần Thơ: Trường Đại học Cần Thơ, 2009', 'Trí tuệ nhân tạo, Artificial Intelligence', 'Nguyễn, Tấn Hoàng', 100),
(45, 3, 'Hỗ trợ ra quyết định với mạng quyết định có thứ tự :', 'THE.003140', 'Cần Thơ: Trường Đại học Cần Thơ, 2009', 'Trí tuệ nhân tạo, Artificial Intelligence', 'Huỳnh, Hán Thanh', 100),
(46, 3, 'Dự báo dịch bệnh trên cá da trơn (cá tra) :', 'THE.003138	', 'Cần Thơ: Trường Đại học Cần Thơ, 2010', 'Trí tuệ nhân tạo, Artificial Intelligence', 'Huỳnh, Tấn Sang', 100),
(47, 3, 'Nhận dạng chữ viết tay :', 'THE.004768', 'Cần Thơ: Đại học Cần Thơ, 2011', 'Trí tuệ nhân tạo, Artificial Intelligence', 'Huỳnh, Quốc Thịnh', 100),
(48, 3, 'Xây dựng công cụ nhận dạng chữ ký online :', 'THE.005329	', 'Trường Đại học Cần Thơ, 2019', 'Trí tuệ nhân tạo, Artificial Intelligence', 'Nguyễn, Tấn Hoàng', 100),
(49, 3, 'Dự báo mực nước tại thành phố Cần Thơ trong bối cảnh biên đổi khí hậu bằng mô hình ANN', 'THE.005325	', 'Trường Đại học Cần Thơ, 2019', 'Trí tuệ nhân tạo, Artificial Intelligence', 'Nguyễn Phú Cường', 100),
(50, 3, 'Sử dụng mạng Neural tích chập để nhận dạng Ký tự viết tay chữ Hoa tiếng Việt : Luận văn thạc sĩ ngành. Công nghệ Thông tin', '006.425/ Ch312', 'Công nghệ Thông tin', 'Trí tuệ nhân tạo, Artificial Intelligence', 'Nguyễn Hoa Lê', 100),
(51, 6, 'ảyed', 'dgfgs', 'vbxc', 'bcv', 'kj', 56);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `namsinh` date NOT NULL,
  `gioitinh` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `hoten`, `namsinh`, `gioitinh`) VALUES
('A0000001', 'vanthanh123', 'Nguyễn Văn Thảnh', '1970-01-12', 'Nam'),
('A0000002', 'camvan123', 'Ngô Thị Cẩm Vân', '1979-12-13', 'Nữ'),
('B2001234', 'trucly123', 'Nguyễn Thị Trúc Ly', '2000-12-22', 'Nữ'),
('B2004732', 'hoanglam123', 'Chương Hoàng Lâm', '2000-01-17', 'Nam'),
('B2004757', 'camtien123', 'Nguyễn Thị Cẩm Tiên', '2002-12-19', 'Nữ');

-- --------------------------------------------------------

--
-- Table structure for table `yeucau`
--

CREATE TABLE `yeucau` (
  `id_yeucau` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `ten_sach` text NOT NULL,
  `chu_de` text NOT NULL,
  `gi_chu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `yeucau`
--

INSERT INTO `yeucau` (`id_yeucau`, `id_user`, `ten_sach`, `chu_de`, `gi_chu`) VALUES
(5, 'B2004757', 'gsdfvkssdfgdsgdfd', 'ssdfggadfvag', 'sfgsvfsdggvb'),
(7, 'B2004757', 'Nhập môn Java mới lạ lắm luoon as', 'Java cho người mới bắt đầu cầu', 'laf ko co ghi chu'),
(8, 'B2004732', 'fhth', 'drddyrt', 'dsvf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `muon2`
--
ALTER TABLE `muon2`
  ADD PRIMARY KEY (`id_muon`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_sach` (`id_sach`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id_sach`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `yeucau`
--
ALTER TABLE `yeucau`
  ADD PRIMARY KEY (`id_yeucau`),
  ADD KEY `id_user3` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `muon2`
--
ALTER TABLE `muon2`
  MODIFY `id_muon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `id_sach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `yeucau`
--
ALTER TABLE `yeucau`
  MODIFY `id_yeucau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `muon2`
--
ALTER TABLE `muon2`
  ADD CONSTRAINT `muon2_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `muon2_ibfk_2` FOREIGN KEY (`id_sach`) REFERENCES `sach` (`id_sach`);

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`);

--
-- Constraints for table `yeucau`
--
ALTER TABLE `yeucau`
  ADD CONSTRAINT `id_user3` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
