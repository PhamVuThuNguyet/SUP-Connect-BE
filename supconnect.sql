-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 27, 2021 lúc 12:51 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `supconnect`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `username`, `password`) VALUES
(3, 'pvtnguyet.19it1@vku.udn.vn', '25d55ad283aa400af464c76d713c07ad'),
(4, 'nqchung.19it1@vku.udn.vn', '25d55ad283aa400af464c76d713c07ad'),
(5, 'bthuan@vku.udn.vn', '25d55ad283aa400af464c76d713c07ad'),
(6, 'natuan@vku.udn.vn', '25d55ad283aa400af464c76d713c07ad'),
(7, 'nsthin@vku.udn.vn', '25d55ad283aa400af464c76d713c07ad'),
(8, '0982239798', '25d55ad283aa400af464c76d713c07ad'),
(9, 'ttbhoa@vku.udn.vn', '25d55ad283aa400af464c76d713c07ad'),
(10, 'tdson@vku.udn.vn', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_role`
--

CREATE TABLE `account_role` (
  `account_role_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account_role`
--

INSERT INTO `account_role` (`account_role_id`, `account_id`, `role_id`) VALUES
(1, 3, 1),
(2, 4, 1),
(3, 5, 2),
(4, 6, 2),
(5, 7, 2),
(6, 8, 3),
(7, 9, 2),
(8, 10, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `advice_for_target`
--

CREATE TABLE `advice_for_target` (
  `advice_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `grade_recommend` float NOT NULL,
  `grade_type` int(11) NOT NULL,
  `grade_weight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `advice_for_target`
--

INSERT INTO `advice_for_target` (`advice_id`, `target_id`, `grade_recommend`, `grade_type`, `grade_weight`) VALUES
(1, 3, 10, 1, 0.1),
(2, 3, 10, 2, 0.2),
(3, 3, 10, 3, 0.2),
(4, 3, 8, 4, 0.5),
(5, 4, 9.4, 4, 0.5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `announcement_type_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` text DEFAULT NULL,
  `attachment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `announcement`
--

INSERT INTO `announcement` (`announcement_id`, `announcement_type_id`, `title`, `create_date`, `description`, `attachment`) VALUES
(1, 1, 'Thông báo điều chỉnh kế hoạch đào tạo năm 2020-2021- Khóa 2020', '2021-06-10 02:56:35', 'Thông báo điều chỉnh kế hoạch đào tạo năm 2020-2021 - khóa 2020\r\n\r\n- Chuyển kế hoạch học tập và thi kết thúc học phần: từ tuần 49->52 (từ ngày 05/7/2021 đến ngày 01/8/2021) sang tuần 45->48 (từ ngày 07/6/2021 đến ngày 04/7/2021), thời khóa biểu không đổi.\r\n\r\n- Thời khóa biểu cụ thể: Sinh viên đăng nhập tài khoản cá nhân trang http://daotao.vku.udn.vn/sv để xem\r\n\r\n- Đối với kế hoạch học Giáo dục Quốc phòng – An ninh của Khóa tuyển sinh năm 2020 sinh viên theo dõi thông báo của Phòng Đào tạo.\r\n\r\n- Lịch thi kết thúc học phần sinh viên theo dõi thông báo tại http://ktdbcl.vku.udn.vn/ \r\n', 'http://vku.udn.vn/uploads/2021/05/22/1621651685_2.%20Ti%C3%AAu%20ch%C3%AD%20ch%E1%BA%A5m%20%C4%90%E1%BB%93%20%C3%A1n.doc'),
(2, 5, 'Nghi hoc phan tieng anh chuyen nganh', '2021-10-19 17:00:00', 'Cac em nghi hoc t4 tuan sau nha', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `announcement_type`
--

CREATE TABLE `announcement_type` (
  `announcement_type_id` int(11) NOT NULL,
  `announcement_type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `announcement_type`
--

INSERT INTO `announcement_type` (`announcement_type_id`, `announcement_type_name`) VALUES
(1, 'Thông báo về Đào tạo'),
(2, 'Thông báo về Khảo thí'),
(3, 'Thông báo về Công tác sinh viên'),
(4, 'Thông báo về Kế hoạch tài chính'),
(5, 'Báo nghỉ/Báo học bù'),
(6, 'Thông báo Bài tập môn học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `subject_class` varchar(255) NOT NULL,
  `announcement_type` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deadline` datetime NOT NULL,
  `attachment` text DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `subject_class`, `announcement_type`, `description`, `deadline`, `attachment`, `create_date`) VALUES
(1, 'LTDD(1)', 6, 'Các em làm bài thực hành trên elearning, lấy điểm bài tập', '2021-06-30 00:00:00', NULL, '2021-06-06 07:53:39'),
(2, 'TACN1(1)', 6, 'Các em làm slide thuyết trình cho đề tài đã đăng kí. Thứ 4 các nhóm thuyết trình thử.', '2021-06-09 10:00:00', NULL, '2021-06-06 07:54:49'),
(3, 'XSTK(1)', 6, 'Cả lớp làm bài tập chương 3 cô đã đăng lên elearning vào giấy A4. Tiết sau nộp lại cho cô để lấy điểm bài tập nhé.', '2021-06-10 00:00:00', NULL, '2021-06-06 08:00:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `balance_of_account`
--

CREATE TABLE `balance_of_account` (
  `account_balance_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `balance_of_account`
--

INSERT INTO `balance_of_account` (`account_balance_id`, `account_id`, `balance`) VALUES
(1, 3, 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat_history`
--

CREATE TABLE `chat_history` (
  `chat_history_id` int(11) NOT NULL,
  `user_1` varchar(255) NOT NULL,
  `user_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chat_history`
--

INSERT INTO `chat_history` (`chat_history_id`, `user_1`, `user_2`) VALUES
(1, '19IT031', 'GVBA001'),
(2, '19IT031', '19IT003'),
(3, '19IT031', 'GVCS002'),
(4, '19IT031', 'GVCS003'),
(5, '19IT031', 'GVCS004'),
(6, '0', 'GVBA001'),
(7, '0', 'GVCS001'),
(8, '19IT031', 'GVCS001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat_history_detail`
--

CREATE TABLE `chat_history_detail` (
  `chat_history_detail_id` int(11) NOT NULL,
  `chat_history_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(255) NOT NULL DEFAULT 'text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chat_history_detail`
--

INSERT INTO `chat_history_detail` (`chat_history_detail_id`, `chat_history_id`, `sender_id`, `message`, `time`, `type`) VALUES
(1, 1, '19IT031', 'Thầy ơi cho em phúc khảo điểm với ạ ', '2021-06-10 02:12:31', 'text'),
(2, 1, 'GVBA001', 'Ok em để thầy xem lại rồi thầy thông báo', '2021-06-10 02:13:14', 'text'),
(3, 1, '19IT031', 'Thank youuuu', '2021-06-09 20:19:07', 'text'),
(4, 1, '19IT031', 'store/messages/1623340629.jpg', '2021-06-09 20:57:09', 'image'),
(5, 1, '19IT031', 'g', '2021-07-22 04:21:30', 'text'),
(6, 1, '19IT031', 'store/messages/1626927696.jpg', '2021-07-22 04:21:36', 'image'),
(7, 1, 'GVBA001', 'g', '2021-07-22 04:26:10', 'text'),
(8, 1, 'GVBA001', 'store/messages/1626927975.jpg', '2021-07-22 04:26:15', 'image'),
(11, 1, '19IT031', 'ok', '2021-08-13 00:29:27', 'text'),
(12, 1, '19IT031', 'hello', '2021-08-13 00:31:30', 'text'),
(13, 1, '19IT031', 'em chao thay', '2021-08-13 01:46:41', 'text');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class_list`
--

CREATE TABLE `class_list` (
  `class_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `class_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `class_list`
--

INSERT INTO `class_list` (`class_id`, `faculty_id`, `class_name`) VALUES
(1, 1, '19IT1'),
(2, 2, '19CE'),
(3, 3, '20BA1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `department_list`
--

CREATE TABLE `department_list` (
  `department_id` int(11) NOT NULL,
  `department_name` text NOT NULL,
  `department_email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `department_list`
--

INSERT INTO `department_list` (`department_id`, `department_name`, `department_email`) VALUES
(1, 'Phòng Đào Tạo', 'daotao@vku.udn.vn'),
(2, 'Phòng Công tác Sinh viên', 'ctsv@vku.udn.vn'),
(3, 'Phòng Khảo thí và Đảm bảo chất lượng', 'ktcl@vku.udn.vn'),
(4, 'Phòng Kế hoạch Tài chính', 'khtc@vku.udn.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faculty_list`
--

CREATE TABLE `faculty_list` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` text NOT NULL,
  `faculty_email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `faculty_list`
--

INSERT INTO `faculty_list` (`faculty_id`, `faculty_name`, `faculty_email`) VALUES
(1, 'Khoa học Máy tính', 'cs@vku.udn.vn'),
(2, 'Kỹ thuật Máy tính và Điện tử', 'ce@vku.udn.vn'),
(3, 'Kinh tế Số và Thương mại điện tử', 'ba@vku.udn.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grade_book`
--

CREATE TABLE `grade_book` (
  `grade_book_id` int(11) NOT NULL,
  `subject_class` varchar(255) NOT NULL,
  `grade_type` int(11) NOT NULL,
  `grade_weight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `grade_book`
--

INSERT INTO `grade_book` (`grade_book_id`, `subject_class`, `grade_type`, `grade_weight`) VALUES
(1, 'XSTK(1)', 1, 0.3),
(2, 'XSTK(1)', 3, 0.2),
(3, 'XSTK(1)', 4, 0.5),
(4, 'TACN1(1)', 1, 0.2),
(5, 'TACN1(1)', 3, 0.2),
(6, 'TACN1(1)', 4, 0.6),
(7, 'LTDD(1)', 1, 0.1),
(8, 'LTDD(1)', 2, 0.2),
(9, 'LTDD(1)', 3, 0.2),
(10, 'LTDD(1)', 4, 0.5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grade_book_detail`
--

CREATE TABLE `grade_book_detail` (
  `grade_book_detail_id` int(11) NOT NULL,
  `grade_book_id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `grade` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `grade_book_detail`
--

INSERT INTO `grade_book_detail` (`grade_book_detail_id`, `grade_book_id`, `student_id`, `grade`) VALUES
(1, 1, '19IT031', 10),
(2, 2, '19IT031', 9),
(4, 4, '19IT031', 10),
(5, 5, '19IT031', 9),
(6, 6, '19IT031', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grade_type`
--

CREATE TABLE `grade_type` (
  `type_id` int(11) NOT NULL,
  `type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `grade_type`
--

INSERT INTO `grade_type` (`type_id`, `type_name`) VALUES
(1, 'Chuyên cần'),
(2, 'Bài tập/GVHD'),
(3, 'Giữa kì'),
(4, 'Cuối kì');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `leave_notice`
--

CREATE TABLE `leave_notice` (
  `leave_notice_id` int(11) NOT NULL,
  `subject_class` varchar(255) NOT NULL,
  `announcement_type` int(11) NOT NULL,
  `leave_notice_title` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `leave_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `leave_notice`
--

INSERT INTO `leave_notice` (`leave_notice_id`, `subject_class`, `announcement_type`, `leave_notice_title`, `create_date`, `leave_date`) VALUES
(1, 'XSTK(1)', 5, 'Nghỉ Xác suất thống kê (1)', '2021-06-06 15:26:08', '2021-06-11'),
(2, 'TACN1(1)', 5, 'Nghỉ Tiếng Anh Chuyên Ngành 1 (1)', '2021-07-22 01:22:41', '2021-07-28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturer_id` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `first_name_lecturer` text NOT NULL,
  `last_name_lecturer` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number_lecturer` text NOT NULL,
  `degree` int(11) NOT NULL,
  `email` text NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lecturer`
--

INSERT INTO `lecturer` (`lecturer_id`, `account_id`, `faculty_id`, `first_name_lecturer`, `last_name_lecturer`, `date_of_birth`, `phone_number_lecturer`, `degree`, `email`, `avatar`) VALUES
('GVBA001', 5, 3, 'Bùi Trần', 'Huân', '1981-03-09', '0905295989', 1, 'bthuan@vku.udn.vn', 'http://vku.udn.vn/uploads/cocau/bthuan.png'),
('GVCS001', 7, 1, 'Nguyễn Sĩ', 'Thìn', '1981-03-09', '0906561584', 2, 'nsthin@vku.udn.vn', 'http://vku.udn.vn/uploads/cocau/nsthin.png'),
('GVCS002', 6, 1, 'Nguyễn Anh', 'Tuấn', '1981-03-09', '0935727727', 1, 'natuan@vku.udn.vn', 'http://vku.udn.vn/uploads/cocau/natuan.png'),
('GVCS003', 9, 1, 'Trần Thị Bích', 'Hòa', '1981-03-09', '0935444364', 1, 'ttbhoa@vku.udn.vn', 'http://vku.udn.vn/uploads/cocau/ttbhoa.png'),
('GVCS004', 10, 1, 'Trần Đình', 'Sơn', '1981-03-09', '0903591955', 1, 'tdson@vku.udn.vn', 'http://vku.udn.vn/uploads/cocau/tdson.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lecturer_degree_type`
--

CREATE TABLE `lecturer_degree_type` (
  `degree_id_type` int(11) NOT NULL,
  `degree_type_name` varchar(255) NOT NULL,
  `abbreviation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lecturer_degree_type`
--

INSERT INTO `lecturer_degree_type` (`degree_id_type`, `degree_type_name`, `abbreviation`) VALUES
(1, 'Thạc Sĩ', 'ThS.'),
(2, 'Tiến Sĩ', 'TS.'),
(3, 'Phó Giáo sư Tiến sĩ', 'PGS TS.'),
(4, 'Giáo sư Tiến sĩ', 'GS TS.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `parent`
--

CREATE TABLE `parent` (
  `parent_id` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name_parent` text NOT NULL,
  `last_name_parent` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number_parent` text NOT NULL,
  `avatar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `parent`
--

INSERT INTO `parent` (`parent_id`, `account_id`, `first_name_parent`, `last_name_parent`, `date_of_birth`, `phone_number_parent`, `avatar`) VALUES
('PH19IT031', 8, 'Phạm Đình', 'Nguyên', '1959-09-27', '0982239798', 'https://i.pinimg.com/originals/0c/58/d4/0c58d4a56a39a5fee7d2ea0451df2bc5.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `parent_of_student`
--

CREATE TABLE `parent_of_student` (
  `relationship_id` int(11) NOT NULL,
  `parent_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `parent_of_student`
--

INSERT INTO `parent_of_student` (`relationship_id`, `parent_id`, `student_id`) VALUES
(1, 'PH19IT031', '19IT031');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_type`
--

CREATE TABLE `role_type` (
  `role_type_id` int(11) NOT NULL,
  `role_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role_type`
--

INSERT INTO `role_type` (`role_type_id`, `role_name`) VALUES
(1, 'Sinh viên'),
(2, 'Giảng viên'),
(3, 'Phụ huynh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roll_call_record`
--

CREATE TABLE `roll_call_record` (
  `record_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subject_class` varchar(255) NOT NULL,
  `lesson` varchar(255) NOT NULL,
  `number_of_attendants` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roll_call_record`
--

INSERT INTO `roll_call_record` (`record_id`, `date`, `subject_class`, `lesson`, `number_of_attendants`) VALUES
(13, '2021-10-14 17:00:00', 'TACN1(1)', '1', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roll_call_record_detail`
--

CREATE TABLE `roll_call_record_detail` (
  `record_detail_id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `is_attend` tinyint(1) NOT NULL,
  `leave_of_absence_letter` tinyint(1) DEFAULT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roll_call_record_detail`
--

INSERT INTO `roll_call_record_detail` (`record_detail_id`, `record_id`, `student_id`, `is_attend`, `leave_of_absence_letter`, `reason`) VALUES
(17, 13, '19IT031', 0, 0, '0'),
(18, 13, '19IT003', 0, 0, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `student_id` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` text NOT NULL,
  `start_year` int(11) NOT NULL,
  `end_year` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `avatar` text NOT NULL,
  `card_UID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`student_id`, `account_id`, `first_name`, `last_name`, `date_of_birth`, `phone_number`, `start_year`, `end_year`, `class_id`, `email`, `avatar`, `card_UID`) VALUES
('19IT003', 4, 'Nguyễn Quang', 'Chung', '2001-01-10', '0377824995', 2019, 2024, 1, 'nqchung.19it1@vku.udn.vn', 'https://hinhnendephd.com/wp-content/uploads/2019/10/anh-avatar-dep.jpg', '0192635795'),
('19IT031', 3, 'Phạm Vũ Thu', 'Nguyệt', '2001-06-30', '0941257069', 2019, 2024, 1, 'pvtnguyet.19it1@vku.udn.vn', 'https://lazi.vn/uploads/group/1580267431_avatar-dep-nhat-53_112148.jpg', '0192284451');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_of_subject_class`
--

CREATE TABLE `student_of_subject_class` (
  `junction_id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `subject_class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `student_of_subject_class`
--

INSERT INTO `student_of_subject_class` (`junction_id`, `student_id`, `subject_class`) VALUES
(1, '19IT003', 'LTDD(1)'),
(2, '19IT031', 'LTDD(1)'),
(3, '19IT031', 'TACN1(1)'),
(4, '19IT031', 'XSTK(1)'),
(5, '19IT031', 'DISMAT(1)'),
(6, '19IT003', 'TACN1(1)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject_class`
--

CREATE TABLE `subject_class` (
  `subject_class_id` varchar(255) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  `subject_class_name` varchar(255) NOT NULL,
  `lecturer_id` varchar(255) NOT NULL,
  `school_year` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `subject_class`
--

INSERT INTO `subject_class` (`subject_class_id`, `subject_id`, `subject_class_name`, `lecturer_id`, `school_year`, `semester`, `date_start`, `date_end`) VALUES
('CNPM(2)', 'CNPM', 'Công nghệ phần mềm (2)', 'GVCS002', '2020-2021', 2, '2021-01-01', '2021-06-30'),
('DISMAT(1)', 'DISMAT', 'Toán rời rạc (1)', 'GVCS004', '2021-2022', 1, '2021-08-01', '2021-12-31'),
('LTDD(1)', 'LTDD', 'Lập trình di động (1)', 'GVCS002', '2020-2021', 2, '2021-01-01', '2021-06-30'),
('TACN1(1)', 'TACN', 'Tiếng Anh chuyên ngành (1)', 'GVBA001', '2021-2022', 1, '2021-08-01', '2021-12-31'),
('XSTK(1)', 'XSTK', 'Xác suất thống kê (1)', 'GVCS003', '2020-2021', 2, '2021-01-01', '2021-06-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject_list`
--

CREATE TABLE `subject_list` (
  `subject_id` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `subject_name` text NOT NULL,
  `credit` int(11) NOT NULL,
  `subject_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `subject_list`
--

INSERT INTO `subject_list` (`subject_id`, `type_id`, `subject_name`, `credit`, `subject_img`) VALUES
('CNPM', 3, 'Công nghệ phần mềm', 2, NULL),
('DISMAT', 1, 'Toán rời rạc', 2, NULL),
('LTDD', 2, 'Lập trình di động', 3, NULL),
('TACN', 2, 'Tiếng anh chuyên ngành 1', 2, NULL),
('XSTK', 1, 'Xác suất thống kê', 2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject_type`
--

CREATE TABLE `subject_type` (
  `type_id` int(11) NOT NULL,
  `type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `subject_type`
--

INSERT INTO `subject_type` (`type_id`, `type_name`) VALUES
(1, 'Đại cương'),
(2, 'Cơ sở ngành'),
(3, 'Chuyên ngành bắt buộc'),
(4, 'Chuyên ngành tự chọn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `target`
--

CREATE TABLE `target` (
  `target_id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `subject_class_id` varchar(255) NOT NULL,
  `grade_target` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `target`
--

INSERT INTO `target` (`target_id`, `student_id`, `subject_class_id`, `grade_target`) VALUES
(3, '19IT031', 'LTDD(1)', 9),
(4, '19IT031', 'XSTK(1)', 9.5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL,
  `subject_class_id` varchar(255) NOT NULL,
  `day_of_week` int(11) NOT NULL,
  `lesson` varchar(255) NOT NULL,
  `classroom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `timetable`
--

INSERT INTO `timetable` (`timetable_id`, `subject_class_id`, `day_of_week`, `lesson`, `classroom`) VALUES
(1, 'LTDD(1)', 2, '6-7', 'VB401'),
(2, 'TACN1(1)', 4, '3-4', 'KA114'),
(3, 'XSTK(1)', 6, '8-9', 'VB302');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction_category`
--

CREATE TABLE `transaction_category` (
  `transaction_category_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `transaction_category_name` text NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `transaction_category`
--

INSERT INTO `transaction_category` (`transaction_category_id`, `department_id`, `transaction_category_name`, `description`) VALUES
(1, 1, 'Học phí', 'Sinh viên nộp học phí thì chọn mục này');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction_history`
--

CREATE TABLE `transaction_history` (
  `transaction_history_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `transaction_type_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` double NOT NULL,
  `transaction_category` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `transaction_history`
--

INSERT INTO `transaction_history` (`transaction_history_id`, `user_id`, `transaction_type_id`, `date`, `amount`, `transaction_category`, `description`) VALUES
(1, '19IT031', 1, '2021-06-12 07:02:01', 100000, NULL, 'Nạp tiền vào tài khoản');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction_type`
--

CREATE TABLE `transaction_type` (
  `transaction_type_id` int(11) NOT NULL,
  `transaction_type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `transaction_type`
--

INSERT INTO `transaction_type` (`transaction_type_id`, `transaction_type_name`) VALUES
(1, 'Nạp tiền'),
(2, 'Thanh toán');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Chỉ mục cho bảng `account_role`
--
ALTER TABLE `account_role`
  ADD PRIMARY KEY (`account_role_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `advice_for_target`
--
ALTER TABLE `advice_for_target`
  ADD PRIMARY KEY (`advice_id`),
  ADD KEY `target_id` (`target_id`);

--
-- Chỉ mục cho bảng `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `announcement_type_id` (`announcement_type_id`);

--
-- Chỉ mục cho bảng `announcement_type`
--
ALTER TABLE `announcement_type`
  ADD PRIMARY KEY (`announcement_type_id`);

--
-- Chỉ mục cho bảng `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `announcement_type` (`announcement_type`),
  ADD KEY `subject_class` (`subject_class`);

--
-- Chỉ mục cho bảng `balance_of_account`
--
ALTER TABLE `balance_of_account`
  ADD PRIMARY KEY (`account_balance_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `chat_history`
--
ALTER TABLE `chat_history`
  ADD PRIMARY KEY (`chat_history_id`),
  ADD KEY `user_1` (`user_1`),
  ADD KEY `user_2` (`user_2`);

--
-- Chỉ mục cho bảng `chat_history_detail`
--
ALTER TABLE `chat_history_detail`
  ADD PRIMARY KEY (`chat_history_detail_id`),
  ADD KEY `chat_history_id` (`chat_history_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Chỉ mục cho bảng `class_list`
--
ALTER TABLE `class_list`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Chỉ mục cho bảng `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`department_id`);

--
-- Chỉ mục cho bảng `faculty_list`
--
ALTER TABLE `faculty_list`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Chỉ mục cho bảng `grade_book`
--
ALTER TABLE `grade_book`
  ADD PRIMARY KEY (`grade_book_id`),
  ADD KEY `grade_type` (`grade_type`),
  ADD KEY `subject_class` (`subject_class`);

--
-- Chỉ mục cho bảng `grade_book_detail`
--
ALTER TABLE `grade_book_detail`
  ADD PRIMARY KEY (`grade_book_detail_id`),
  ADD KEY `grade_book_id` (`grade_book_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Chỉ mục cho bảng `grade_type`
--
ALTER TABLE `grade_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `leave_notice`
--
ALTER TABLE `leave_notice`
  ADD PRIMARY KEY (`leave_notice_id`),
  ADD KEY `subject_class` (`subject_class`),
  ADD KEY `announcement_type` (`announcement_type`);

--
-- Chỉ mục cho bảng `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecturer_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `degree` (`degree`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `lecturer_degree_type`
--
ALTER TABLE `lecturer_degree_type`
  ADD PRIMARY KEY (`degree_id_type`);

--
-- Chỉ mục cho bảng `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `parent_of_student`
--
ALTER TABLE `parent_of_student`
  ADD PRIMARY KEY (`relationship_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Chỉ mục cho bảng `role_type`
--
ALTER TABLE `role_type`
  ADD PRIMARY KEY (`role_type_id`);

--
-- Chỉ mục cho bảng `roll_call_record`
--
ALTER TABLE `roll_call_record`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `subject_class` (`subject_class`);

--
-- Chỉ mục cho bảng `roll_call_record_detail`
--
ALTER TABLE `roll_call_record_detail`
  ADD PRIMARY KEY (`record_detail_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `student_of_subject_class`
--
ALTER TABLE `student_of_subject_class`
  ADD PRIMARY KEY (`junction_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_class` (`subject_class`);

--
-- Chỉ mục cho bảng `subject_class`
--
ALTER TABLE `subject_class`
  ADD PRIMARY KEY (`subject_class_id`),
  ADD KEY `lecturer_id` (`lecturer_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Chỉ mục cho bảng `subject_list`
--
ALTER TABLE `subject_list`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Chỉ mục cho bảng `subject_type`
--
ALTER TABLE `subject_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`target_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_class_id` (`subject_class_id`);

--
-- Chỉ mục cho bảng `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`timetable_id`),
  ADD KEY `subject_class_id` (`subject_class_id`);

--
-- Chỉ mục cho bảng `transaction_category`
--
ALTER TABLE `transaction_category`
  ADD PRIMARY KEY (`transaction_category_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Chỉ mục cho bảng `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`transaction_history_id`),
  ADD KEY `transaction_type_id` (`transaction_type_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `transaction_category` (`transaction_category`);

--
-- Chỉ mục cho bảng `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD PRIMARY KEY (`transaction_type_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `account_role`
--
ALTER TABLE `account_role`
  MODIFY `account_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `advice_for_target`
--
ALTER TABLE `advice_for_target`
  MODIFY `advice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `announcement_type`
--
ALTER TABLE `announcement_type`
  MODIFY `announcement_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `balance_of_account`
--
ALTER TABLE `balance_of_account`
  MODIFY `account_balance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chat_history`
--
ALTER TABLE `chat_history`
  MODIFY `chat_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chat_history_detail`
--
ALTER TABLE `chat_history_detail`
  MODIFY `chat_history_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `class_list`
--
ALTER TABLE `class_list`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `department_list`
--
ALTER TABLE `department_list`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `faculty_list`
--
ALTER TABLE `faculty_list`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `grade_book`
--
ALTER TABLE `grade_book`
  MODIFY `grade_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `grade_book_detail`
--
ALTER TABLE `grade_book_detail`
  MODIFY `grade_book_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `grade_type`
--
ALTER TABLE `grade_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `leave_notice`
--
ALTER TABLE `leave_notice`
  MODIFY `leave_notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lecturer_degree_type`
--
ALTER TABLE `lecturer_degree_type`
  MODIFY `degree_id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `parent_of_student`
--
ALTER TABLE `parent_of_student`
  MODIFY `relationship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `role_type`
--
ALTER TABLE `role_type`
  MODIFY `role_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `roll_call_record`
--
ALTER TABLE `roll_call_record`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `roll_call_record_detail`
--
ALTER TABLE `roll_call_record_detail`
  MODIFY `record_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `student_of_subject_class`
--
ALTER TABLE `student_of_subject_class`
  MODIFY `junction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `subject_type`
--
ALTER TABLE `subject_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `target`
--
ALTER TABLE `target`
  MODIFY `target_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `timetable`
--
ALTER TABLE `timetable`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `transaction_category`
--
ALTER TABLE `transaction_category`
  MODIFY `transaction_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `transaction_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `transaction_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account_role`
--
ALTER TABLE `account_role`
  ADD CONSTRAINT `account_role_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `account_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role_type` (`role_type_id`);

--
-- Các ràng buộc cho bảng `advice_for_target`
--
ALTER TABLE `advice_for_target`
  ADD CONSTRAINT `advice_for_target_ibfk_1` FOREIGN KEY (`target_id`) REFERENCES `target` (`target_id`);

--
-- Các ràng buộc cho bảng `announcement`
--
ALTER TABLE `announcement`
  ADD CONSTRAINT `announcement_ibfk_1` FOREIGN KEY (`announcement_type_id`) REFERENCES `announcement_type` (`announcement_type_id`);

--
-- Các ràng buộc cho bảng `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`announcement_type`) REFERENCES `announcement_type` (`announcement_type_id`),
  ADD CONSTRAINT `assignment_ibfk_3` FOREIGN KEY (`subject_class`) REFERENCES `subject_class` (`subject_class_id`);

--
-- Các ràng buộc cho bảng `balance_of_account`
--
ALTER TABLE `balance_of_account`
  ADD CONSTRAINT `balance_of_account_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Các ràng buộc cho bảng `chat_history_detail`
--
ALTER TABLE `chat_history_detail`
  ADD CONSTRAINT `chat_history_detail_ibfk_1` FOREIGN KEY (`chat_history_id`) REFERENCES `chat_history` (`chat_history_id`);

--
-- Các ràng buộc cho bảng `class_list`
--
ALTER TABLE `class_list`
  ADD CONSTRAINT `class_list_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_list` (`faculty_id`);

--
-- Các ràng buộc cho bảng `grade_book`
--
ALTER TABLE `grade_book`
  ADD CONSTRAINT `grade_book_ibfk_1` FOREIGN KEY (`grade_type`) REFERENCES `grade_type` (`type_id`),
  ADD CONSTRAINT `grade_book_ibfk_2` FOREIGN KEY (`subject_class`) REFERENCES `subject_class` (`subject_class_id`);

--
-- Các ràng buộc cho bảng `grade_book_detail`
--
ALTER TABLE `grade_book_detail`
  ADD CONSTRAINT `grade_book_detail_ibfk_1` FOREIGN KEY (`grade_book_id`) REFERENCES `grade_book` (`grade_book_id`),
  ADD CONSTRAINT `grade_book_detail_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Các ràng buộc cho bảng `leave_notice`
--
ALTER TABLE `leave_notice`
  ADD CONSTRAINT `leave_notice_ibfk_1` FOREIGN KEY (`subject_class`) REFERENCES `subject_class` (`subject_class_id`),
  ADD CONSTRAINT `leave_notice_ibfk_2` FOREIGN KEY (`announcement_type`) REFERENCES `announcement_type` (`announcement_type_id`);

--
-- Các ràng buộc cho bảng `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_list` (`faculty_id`),
  ADD CONSTRAINT `lecturer_ibfk_2` FOREIGN KEY (`degree`) REFERENCES `lecturer_degree_type` (`degree_id_type`),
  ADD CONSTRAINT `lecturer_ibfk_3` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Các ràng buộc cho bảng `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Các ràng buộc cho bảng `parent_of_student`
--
ALTER TABLE `parent_of_student`
  ADD CONSTRAINT `parent_of_student_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`parent_id`),
  ADD CONSTRAINT `parent_of_student_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Các ràng buộc cho bảng `roll_call_record`
--
ALTER TABLE `roll_call_record`
  ADD CONSTRAINT `roll_call_record_ibfk_1` FOREIGN KEY (`subject_class`) REFERENCES `subject_class` (`subject_class_id`);

--
-- Các ràng buộc cho bảng `roll_call_record_detail`
--
ALTER TABLE `roll_call_record_detail`
  ADD CONSTRAINT `roll_call_record_detail_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `roll_call_record` (`record_id`),
  ADD CONSTRAINT `roll_call_record_detail_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_list` (`class_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Các ràng buộc cho bảng `student_of_subject_class`
--
ALTER TABLE `student_of_subject_class`
  ADD CONSTRAINT `student_of_subject_class_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `student_of_subject_class_ibfk_2` FOREIGN KEY (`subject_class`) REFERENCES `subject_class` (`subject_class_id`);

--
-- Các ràng buộc cho bảng `subject_class`
--
ALTER TABLE `subject_class`
  ADD CONSTRAINT `subject_class_ibfk_2` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`lecturer_id`),
  ADD CONSTRAINT `subject_class_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subject_list` (`subject_id`);

--
-- Các ràng buộc cho bảng `subject_list`
--
ALTER TABLE `subject_list`
  ADD CONSTRAINT `subject_list_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `subject_type` (`type_id`);

--
-- Các ràng buộc cho bảng `target`
--
ALTER TABLE `target`
  ADD CONSTRAINT `target_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `target_ibfk_2` FOREIGN KEY (`subject_class_id`) REFERENCES `subject_class` (`subject_class_id`);

--
-- Các ràng buộc cho bảng `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `timetable_ibfk_1` FOREIGN KEY (`subject_class_id`) REFERENCES `subject_class` (`subject_class_id`);

--
-- Các ràng buộc cho bảng `transaction_category`
--
ALTER TABLE `transaction_category`
  ADD CONSTRAINT `transaction_category_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`department_id`);

--
-- Các ràng buộc cho bảng `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD CONSTRAINT `transaction_history_ibfk_1` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_type` (`transaction_type_id`),
  ADD CONSTRAINT `transaction_history_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `transaction_history_ibfk_5` FOREIGN KEY (`transaction_category`) REFERENCES `transaction_category` (`transaction_category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
