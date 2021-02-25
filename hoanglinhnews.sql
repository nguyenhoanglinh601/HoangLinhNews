-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 24, 2021 lúc 12:50 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoanglinhnews`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `Id` int(255) NOT NULL,
  `Username` char(255) NOT NULL,
  `Password` mediumtext NOT NULL,
  `Name` mediumtext NOT NULL,
  `Role` int(255) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`Id`, `Username`, `Password`, `Name`, `Role`, `Status`) VALUES
(2, 'hoanglinh', '123abc', 'Hoàng Linh', 1, b'1'),
(3, 'hoangphuc', '123abc', 'Hoàng Phúc', 2, b'1'),
(4, 'vantam', '123abc', 'Văn Tâm', 2, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `Id` int(255) NOT NULL,
  `Title` mediumtext NOT NULL,
  `Summary` mediumtext DEFAULT NULL,
  `IdCategory` int(255) NOT NULL,
  `IdTopic` int(255) NOT NULL,
  `IsComment` int(1) NOT NULL,
  `IsPriority` int(1) NOT NULL,
  `StatusDisplay` int(1) NOT NULL,
  `CreateAt` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdateAt` datetime NOT NULL DEFAULT current_timestamp(),
  `IdCensor` int(255) DEFAULT NULL,
  `IdMedia` int(255) NOT NULL,
  `Thumbnail` char(255) NOT NULL,
  `View` int(255) NOT NULL,
  `IdStatusCensor` int(255) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`Id`, `Title`, `Summary`, `IdCategory`, `IdTopic`, `IsComment`, `IsPriority`, `StatusDisplay`, `CreateAt`, `UpdateAt`, `IdCensor`, `IdMedia`, `Thumbnail`, `View`, `IdStatusCensor`) VALUES
(8, 'Những tỉnh nào yêu cầu cách ly người từ vùng dịch về ăn Tết?', 'Hải Phòng, Thừa Thiên - Huế, Nghệ An, Hà Tĩnh, Thanh Hóa và Nam Định là những địa phương đầu tiên yêu cầu cách ly 14-21 ngày với người từ vùng dịch về ăn Tết.', 1, 1, 1, 0, 1, '2021-02-04 15:27:18', '2021-02-11 17:06:39', NULL, 1, '2021-02-04-08-27-17-952.jpg', 0, 1),
(9, 'Quân đội Myanmar cho các nghị sĩ 24 giờ để rời khỏi thủ đô', 'Quân đội Myanmar tuyên bố cho các nghị sĩ dân cử 24 giờ để rời khỏi nhà khách của chính phủ ở thủ đô Naypyitaw. Theo kế hoạch trước đó, họ sẽ ở lại đến ngày 6/2.', 3, 8, 1, 0, 1, '2021-02-04 15:35:51', '2021-02-04 15:35:51', NULL, 1, '2021-02-04-08-35-51-165.jpg', 0, 2),
(10, 'Hà Nội đề nghị người dân hạn chế di chuyển trong dịp Tết', 'Trước nguy cơ của dịch Covid-19, UBND Hà Nội đề nghị người dân hạn chế ra khỏi nhà, nhất là di chuyển trong dịp Tết Nguyên đán.', 1, 1, 1, 0, 1, '2021-02-04 15:39:52', '2021-02-04 15:39:52', NULL, 1, '2021-02-04-08-39-52-169.jpg', 0, 2),
(11, 'Người dân rời tòa Sky City sau lệnh phong tỏa', 'Lực lượng chức năng phong tỏa toàn bộ tòa chung cư số 88 phố Láng Hạ (quận Đống Đa, Hà Nội) do có bệnh nhân mắc Covid-19.', 1, 2, 1, 0, 1, '2021-02-04 21:38:16', '2021-02-04 21:38:16', NULL, 1, '2021-02-04-14-38-16-827.jpg', 0, 2),
(12, 'Gia Lai đề nghị xét nghiệm toàn bộ nhân viên Cảng hàng không Pleiku', 'Tỉnh Gia Lai đề nghị xét nghiệm SARS-CoV-2 cho toàn bộ nhân viên Cảng hàng không Pleiku trước diễn biến phức tạp của dịch Covid-19.', 1, 2, 1, 0, 1, '2021-02-04 21:43:29', '2021-02-04 21:43:29', NULL, 1, '2021-02-04-14-43-29-072.jpg', 0, 2),
(13, 'Phong tỏa tòa nhà có hơn 1.000 dân sau khi phát hiện ca mắc Covid-19', 'Lực lượng chức năng quận Đống Đa phong tỏa, lấy mẫu xét nghiệm hơn 1.000 dân trong tòa nhà 88 Láng Hạ.', 1, 2, 1, 0, 1, '2021-02-04 21:47:52', '2021-02-04 21:47:52', NULL, 1, '2021-02-04-14-47-52-402.jpg', 0, 2),
(14, 'Phong tỏa nơi xảy ra hỏa hoạn làm 4 người chết ngày ông Công, ông Táo', 'Công an dựng rào chắn, phong tỏa 2 đầu ngõ 73 phố Tam Khương để khám nghiệm hiện trường, làm rõ nguyên nhân vụ cháy khiến 4 người tử vong.', 1, 4, 1, 0, 1, '2021-02-04 21:53:06', '2021-02-04 21:53:06', NULL, 1, '2021-02-04-14-53-06-989.jpg', 0, 2),
(15, 'Thủ tướng dâng hương tưởng nhớ các cố lãnh đạo Đảng, Nhà nước', 'Thủ tướng Nguyễn Xuân Phúc đã tới dâng hương tưởng nhớ Chủ tịch Hội đồng Nhà nước Võ Chí Công, Tổng bí thư Nguyễn Văn Linh, Chủ tịch nước Lê Đức Anh, Thủ tướng Võ Văn Kiệt...', 1, 1, 1, 0, 1, '2021-02-04 22:02:48', '2021-02-04 22:02:48', NULL, 1, '2021-02-04-15-02-48-637.jpg', 0, 2),
(16, '5 sân bay tại Việt Nam hoàn tất xét nghiệm Covid-19', 'Các sân bay Tân Sơn Nhất, Cam Ranh, Cần Thơ, Vinh, Liên Khương đã xét nghiệm Covid-19 cho nhân viên và 100% kết quả âm tính. 16 sân bay còn lại sẽ được lấy mẫu những ngày tới.', 1, 2, 1, 0, 1, '2021-02-04 22:08:40', '2021-02-04 22:08:40', NULL, 1, '2021-02-04-15-08-40-948.jpg', 0, 2),
(17, 'Đề nghị cho xe hàng hóa của Hải Dương lưu thông', 'Trước việc xe chở nông sản không được lưu thông vì ảnh hưởng của dịch Covid-19, Hải Dương mong muốn các địa phương tạo điều kiện cho hàng hóa được vận chuyển.', 1, 2, 1, 0, 1, '2021-02-04 22:11:44', '2021-02-04 22:11:44', NULL, 1, '2021-02-04-15-11-44-811.jpg', 0, 2),
(18, 'Bệnh viện Gia Lai mở cửa sau 2 ngày bị phong tỏa', 'Sau 48 giờ phong tỏa để phòng chống dịch Covid-19, Bệnh viện Đa khoa tỉnh Gia Lai hoạt động trở lại nhưng phải đảm bảo an toàn cho người dân.', 1, 2, 1, 0, 1, '2021-02-04 22:14:46', '2021-02-18 12:33:34', NULL, 1, '2021-02-04-15-14-46-715.jpg', 0, 2),
(19, 'VKS Quân sự Trung ương truy tố Đinh Tiến Sử tội lừa đảo', 'VKS Quân sự Trung ương cáo buộc Đinh Tiến Sử cùng đồng phạm đã gian dối, ký hợp đồng bán 164 căn hộ tại Bavico Nha Trang cho 125 khách hàng, chiếm đoạt gần 217 tỷ đồng.', 2, 6, 1, 0, 1, '2021-02-05 08:58:17', '2021-02-05 08:58:17', NULL, 1, '2021-02-05-01-58-17-655.jpg', 0, 2),
(20, 'Cô gái bị cưỡng bức sau buổi hẹn hò', 'Hiệp khai sau cuộc hẹn đầu tiên, bạn gái đòi về nhưng anh ta đánh rồi ép nạn nhân vào nhà nghỉ để quan hệ tình dục.', 2, 6, 1, 0, 1, '2021-02-05 09:04:30', '2021-02-05 09:04:30', NULL, 1, '2021-02-05-02-04-30-566.jpg', 0, 2),
(21, 'Khởi tố phó chi cục Thuế TP Phan Thiết', 'Công an tỉnh Bình Thuận khởi tố 5 cán bộ địa phương vì những sai phạm trong thu tiền sử dụng đất, lệ phí trước bạ.', 2, 6, 1, 0, 1, '2021-02-05 09:07:30', '2021-02-05 09:07:30', NULL, 1, '2021-02-05-02-07-30-193.jpg', 0, 2),
(22, 'Đi khỏi khu vực phong tỏa, người đàn ông bị phạt 25 triệu', 'Biết địa phương đang phong tỏa, ông Quyết đi theo đường rừng để sang xã bên cạnh xem thịt lợn.', 2, 5, 1, 0, 1, '2021-02-05 09:09:59', '2021-02-05 09:09:59', NULL, 1, '2021-02-05-02-09-59-568.jpg', 0, 2),
(23, 'Vướng lao lý khi gặp lại bạn tù', 'Hai người đàn ông vận chuyển thuê 6 bánh heroin và gần một kg ma túy đá qua biên giới đã bị lực lượng biên phòng bắt giữ.', 2, 6, 1, 0, 1, '2021-02-05 09:13:02', '2021-02-05 09:13:02', NULL, 1, '2021-02-05-02-13-02-565.jpg', 0, 2),
(24, 'Vợ Đường \'Nhuệ\' khai bị dụ cung', 'Quá trình điều tra bổ sung vụ án bảo kê dịch vụ hỏa táng, Nguyễn Thị Dương thay đổi lời khai, cho rằng trước đó bị can bị dụ cung.', 2, 6, 1, 0, 1, '2021-02-05 09:18:09', '2021-02-05 09:18:09', NULL, 1, '2021-02-05-02-18-09-952.jpg', 0, 2),
(25, 'Nghi án giết nữ nhân viên rồi tự sát', 'Người đàn ông quốc tịch Trung Quốc đâm chết nữ nhân viên rồi lên xe rời đi. Ông ta dùng dao tự sát nhưng được cảnh sát đưa đi cấp cứu.', 2, 6, 1, 0, 1, '2021-02-05 09:26:12', '2021-02-05 09:26:12', NULL, 1, '2021-02-05-02-26-12-906.jpg', 0, 2),
(26, 'Phạt người đàn ông xúc phạm CSGT trên Facebook', 'Xem hình ảnh CSGT dặm vá mặt đường bị hư hỏng, Được sử dụng tài khoản cá nhân bình luận với nội dung xúc phạm cán bộ làm nhiệm vụ.', 2, 5, 1, 0, 1, '2021-02-05 09:29:07', '2021-02-05 09:29:07', NULL, 1, '2021-02-05-02-29-07-607.jpg', 0, 2),
(27, 'Kẻ cướp nhảy xuống sông sau khi lấy tiền của người bán vé số', 'Sau khi cướp tiền và vé số, Tý nhảy xuống sông trốn cảnh sát nhưng không thoát.', 2, 6, 1, 0, 1, '2021-02-05 09:31:37', '2021-02-05 09:31:37', NULL, 1, '2021-02-05-02-31-37-882.jpg', 0, 2),
(28, 'UBND TP Hà Nội đề nghị sớm điều tra vụ cháy làm chết 4 người', '“TP đã chỉ đạo các quận, huyện chịu trách nhiệm kiểm tra, từ cơ sở sản xuất, nhà dân, hạn chế đốt vàng mã, nguyên nhân gây ra các vụ cháy nổ\", Phó chủ tịch UBND Hà Nội nói.', 2, 6, 1, 0, 1, '2021-02-05 09:36:22', '2021-02-05 09:36:22', NULL, 1, '2021-02-05-02-36-22-771.jpg', 0, 2),
(29, 'Trung Quốc thử tên lửa đánh chặn giữa hành trình', 'Bộ Quốc phòng Trung Quốc thông báo nước này vừa tiến hành vụ thử tên lửa đánh chặn giai đoạn giữa phóng từ mặt đất vào ngày 4/2.', 3, 8, 1, 0, 1, '2021-02-05 10:35:40', '2021-02-05 10:35:40', NULL, 1, '2021-02-05-03-35-40-920.jpeg', 0, 2),
(30, 'Ngoại trưởng Mỹ Blinken điện đàm với Phó thủ tướng Phạm Bình Minh', 'Ngoại trưởng Antony Blinken đã điện đàm với Phó thủ tướng, Bộ trưởng Ngoại giao Phạm Bình Minh vào ngày 4/2 (giờ Mỹ), theo thông cáo của Bộ Ngoại giao Mỹ.', 3, 7, 1, 0, 1, '2021-02-05 10:38:15', '2021-02-05 10:38:15', NULL, 1, '2021-02-05-03-38-15-799.jpg', 0, 2),
(31, 'Ông Trump \'dội gáo nước lạnh\' vào phiên tòa luận tội', 'Cựu Tổng thống Trump từ chối xuất hiện trong phiên tòa luận tội sắp diễn ra sau khi được các công tố viên Hạ viện Mỹ đề nghị cung cấp lời khai.', 3, 8, 1, 0, 1, '2021-02-05 10:41:00', '2021-02-05 10:41:00', NULL, 1, '2021-02-05-03-41-00-783.jpg', 0, 2),
(32, 'Tổng thống Macron cảnh báo về vaccine Covid-19 của Trung Quốc', 'Tổng thống Pháp ngày 4/2 cảnh báo về sự thiếu thông tin về vaccine phòng Covid-19 của Trung Quốc, và nói vaccine này có thể dẫn tới các biến chủng mới nếu không hiệu quả.', 3, 8, 1, 0, 1, '2021-02-05 10:43:27', '2021-02-05 10:43:27', NULL, 1, '2021-02-05-03-43-27-676.jpg', 0, 2),
(33, 'Việt Nam đăng cai nội dung bắn tỉa tại Army Games 2021', 'Quân đội Nhân dân Việt Nam sẽ đăng cai bảng 2 nội dung bắn tỉa và cứu hộ cứu nạn trong khuôn khổ các môn thi của Hội thao Quân sự Quốc tế (Army Games 2021) do Nga tổ chức.', 3, 7, 1, 0, 1, '2021-02-05 10:46:34', '2021-02-05 10:46:34', NULL, 1, '2021-02-05-03-46-34-831.jpg', 0, 2),
(34, 'Lầu Năm Góc tìm cách đối phó chủ nghĩa cực đoan trong quân đội', 'Trước thông tin một số cựu binh tham gia vụ bạo loạn ở Điện Capitol, Bộ trưởng Quốc phòng Lloyd Austin ngày 3/2 yêu cầu tổ chức thảo luận về chủ nghĩa cực đoan trong quân đội.', 3, 8, 1, 0, 1, '2021-02-05 10:48:53', '2021-02-05 10:48:53', NULL, 1, '2021-02-05-03-48-53-291.jpg', 0, 2),
(35, 'Mở quan tài chứa xác ướp gần 2.000 năm tuổi có lưỡi bằng vàng', 'Các xác ướp và cổ vật có niên đại gần 2.000 năm tuổi được tìm thấy bên trong ngôi đền Taposiris Magna ở miền Bắc Ai Cập ở tình trạng được bảo quản tương đối tốt.', 3, 10, 1, 0, 1, '2021-02-05 10:54:32', '2021-02-05 10:54:32', NULL, 1, '2021-02-05-03-54-32-330.jpg', 0, 2),
(36, 'Khách sạn, nhà hàng đóng cửa nghỉ Tết sớm', 'Không chịu được cảnh vắng khách, thua lỗ kéo dài, nhiều khách sạn, nhà hàng ở phố cổ Hà Nội đóng cửa sớm.', 4, 15, 1, 0, 1, '2021-02-05 11:02:36', '2021-02-05 11:02:36', NULL, 1, '2021-02-05-04-02-36-522.jpg', 0, 2),
(37, 'Phú Quốc cảnh báo tình trạng phân lô, tách thửa tự phát', 'UBND TP Phú Quốc đưa ra khuyến cáo các tổ chức, cá nhân trong việc chuyển nhượng quyền sử dụng đất trên địa bàn thành phố.', 4, 11, 1, 0, 1, '2021-02-05 12:26:46', '2021-02-05 12:26:46', NULL, 1, '2021-02-05-05-26-46-124.jpg', 0, 2),
(38, '13.000 đồng một túi pháo hoa không tiếng nổ', 'Năm 2021, Chính phủ cho phép người dân sử dụng pháo hoa vào dịp lễ, Tết. Hiện trên thị trường, các loại pháo hoa không tiếng nổ được rao bán với giá từ 13.000 đến 450.000 đồng.', 4, 13, 1, 0, 1, '2021-02-05 12:30:14', '2021-02-05 12:30:14', NULL, 1, '2021-02-05-05-30-14-386.jpg', 0, 2),
(39, 'Doanh nghiệp gồng mình thưởng Tết', 'Trong bối cảnh nhiều doanh nghiệp phải cắt ngân sách thưởng Tết vì kinh doanh khó khăn, một số đơn vị vẫn nỗ lực duy trì mức thưởng cho người lao động.', 4, 15, 1, 0, 1, '2021-02-05 12:34:07', '2021-02-05 12:34:07', NULL, 1, '2021-02-05-05-34-07-675.jpg', 0, 2),
(40, 'Một hành khách để quên hơn 10.000 USD trên máy bay', 'Đội dịch vụ trên tàu bay của VIAGS đã tìm được số tiền mặt lớn cùng nhiều tài sản giá trị do hành khách bỏ quên trên chuyến bay VN215 từ Hà Nội đi TP.HCM ngày 31/1.', 4, 12, 1, 1, 1, '2021-02-05 12:36:06', '2021-02-18 12:32:22', NULL, 1, '2021-02-05-05-36-06-929.jpg', 0, 2),
(41, 'Tăng chuyến bay đêm tại Tân Sơn Nhất cao điểm Tết 2021', 'Theo Cục Hàng không, Hội đồng điều phối slot vừa quyết định tăng slot (khung giờ cất hạ cánh) đêm tại Cảng hàng không quốc tế Tân Sơn Nhất ngay trước cao điểm Tết.', 4, 12, 1, 0, 1, '2021-02-05 12:38:37', '2021-02-05 12:38:37', NULL, 1, '2021-02-05-05-38-37-892.jpg', 0, 2),
(42, 'Mua cá chép Koi tiễn ông Công ông Táo', 'Năm nay ngoài cá chép đỏ truyền thống, nhiều tiểu thương, cửa hàng cá cảnh cũng rao bán cá chép Koi phục vụ cho lễ cúng ngày 23 tháng Chạp.', 4, 13, 1, 0, 1, '2021-02-05 12:41:58', '2021-02-05 12:41:58', NULL, 1, '2021-02-05-05-41-58-780.jpg', 0, 2),
(43, 'Ông chủ TikTok đệ đơn kiện gã khổng lồ công nghệ Tencent', 'Hai tập đoàn Tencent và ByteDance đã ở trong trạng thái đối đầu từ nhiều năm qua vì các cáo buộc cạnh tranh không lành mạnh.', 4, 14, 1, 0, 1, '2021-02-05 12:45:01', '2021-02-05 12:45:01', NULL, 1, '2021-02-05-05-45-01-298.jpg', 0, 2),
(44, 'Chán Bitcoin, các nhà đầu tư đang theo Elon Musk mua Dogecoin', 'Chỉ với một dòng tweet, Elon Musk đã giúp giá trị của Dogecoin tăng lên 44%. Theo dữ liệu từ Coindesk, trong năm nay, đồng tiền này đã tăng 659%.', 5, 17, 1, 0, 1, '2021-02-05 12:49:46', '2021-02-05 12:49:46', NULL, 1, '2021-02-05-05-49-46-631.png', 0, 2),
(45, 'Dấu ấn năm 2020 của Realme', 'Năm qua, Realme ghi nhiều dấu ấn trong kết quả kinh doanh, tốc độ tăng trưởng cùng việc ra mắt những sản phẩm mới tích hợp công nghệ hiện đại, thiết kế trẻ trung.', 5, 16, 1, 0, 1, '2021-02-05 12:55:26', '2021-02-05 12:55:26', NULL, 1, '2021-02-05-05-55-26-035.jpg', 0, 2),
(46, 'Samsung, Oppo có thể đưa ý tưởng camera pop-up trở lại 2021', 'Tưởng chừng camera pop-up sẽ biến mất trong thời gian tới, nhưng Samsung và Oppo đã mang đến \"làn gió\" mới với hy vọng vực dậy thiết kế độc đáo này.', 5, 16, 1, 0, 1, '2021-02-05 12:58:30', '2021-02-05 12:58:30', NULL, 1, '2021-02-05-05-58-30-925.jpg', 0, 2),
(47, 'Thanh niên kiếm 3.000 USD/tuần nhờ livestream lúc ngủ', 'Không chỉ là một hoạt động thể chất thiết yếu với cơ thể con người, giấc ngủ cũng còn được các streamer tận dụng để hái ra tiền.', 5, 18, 1, 0, 1, '2021-02-05 13:03:52', '2021-02-05 13:03:52', NULL, 1, '2021-02-05-06-03-52-856.jpg', 0, 2),
(48, 'Giải thưởng VinFuture nhận đề cử trên phạm vi toàn cầu', 'Giải thưởng VinFuture chính thức mở cổng nhận đề cử từ hôm nay tới hết ngày 7/6 trên phạm vi toàn cầu.', 5, 17, 1, 0, 1, '2021-02-05 13:07:33', '2021-02-05 13:07:33', NULL, 1, '2021-02-05-06-07-33-445.jpg', 0, 2),
(49, 'Tết là thời điểm hợp lý để ‘lên đời’ thiết bị công nghệ', 'Càng gần cuối năm, các thương hiệu, nhà phân phối đồ công nghệ thường tung các khuyến mãi nhằm đáp ứng nhu cầu nâng cấp thiết bị của người dùng.', 5, 17, 1, 0, 1, '2021-02-05 17:52:41', '2021-02-05 17:52:41', NULL, 1, '2021-02-05-10-52-41-364.jpg', 0, 2),
(50, 'Hàng triệu người Myanmar tải ứng dụng nhắn tin offline', 'Sau cuộc chính biến, mạng Internet tại nhiều nơi ở Myanmar chập chờn, buộc người dân phải tìm ứng dụng liên lạc thay thế.', 5, 16, 1, 1, 1, '2021-02-05 17:56:21', '2021-02-05 17:56:21', NULL, 1, '2021-02-05-10-56-21-344.jpg', 0, 2),
(51, 'Bức thư Jeff Bezos gửi nhân viên Amazon', 'Trong bức thư thông báo rời chức CEO, nhà sáng lập Amazon khuyên các nhân viên “tiếp tục sáng tạo” và “luôn lấy sự tò mò làm kim chỉ nam”.', 5, 17, 1, 0, 1, '2021-02-05 17:59:18', '2021-02-05 17:59:18', NULL, 1, '2021-02-05-10-59-18-169.jpg', 0, 2),
(52, 'Bé trai 7 tuổi được ghép tim', 'Bé trai bị suy tim giai đoạn cuối, vì vậy, ghép tạng là phương pháp cuối cùng giúp em duy trì sự sống.', 6, 19, 1, 0, 1, '2021-02-05 18:02:57', '2021-02-05 18:02:57', NULL, 1, '2021-02-05-11-02-57-283.jpg', 0, 2),
(54, 'Gần 30 F1 của nhân viên ngân hàng tại Hà Nội âm tính lần một với nCoV', 'Những người này là đồng nghiệp, người thân và bảo vệ của tòa nhà Sky City (88 Láng Hạ, Đống Đa, Hà Nội).', 6, 22, 1, 0, 1, '2021-02-05 18:11:02', '2021-02-05 18:11:02', NULL, 1, '2021-02-05-11-11-02-407.jpg', 0, 2),
(55, 'Cứu cô gái bị suy đa tạng do ong đốt', 'Bệnh nhân nhập viện trong tình trạng nguy kịch, nổi mề đay toàn thân, khó thở.', 6, 22, 1, 0, 1, '2021-02-05 18:15:14', '2021-02-05 18:15:14', NULL, 1, '2021-02-05-11-15-14-400.jpg', 0, 2),
(56, 'Lưu ý khi chọn thức uống dinh dưỡng cho người trẻ', 'Ăn uống lành mạnh không phải một trào lưu nhất thời của giới trẻ. Nhiều người chọn ăn uống lành mạnh như một cam kết bền vững với bản thân, tự nhiên và cộng đồng.', 6, 20, 1, 0, 1, '2021-02-05 18:18:40', '2021-02-05 18:18:40', NULL, 1, '2021-02-05-11-18-40-657.jpg', 0, 2),
(57, 'CEO Lê Trường Mạnh: \'Sức khỏe là nền tảng của hạnh phúc\'', 'Theo CEO của tập đoàn Kingsport, cuộc đời sẽ luôn đi đúng hướng khi chúng ta duy trì được những thói quen tốt qua các giai đoạn của cuộc đời, trong đó có rèn luyện sức khỏe.', 6, 19, 1, 0, 1, '2021-02-05 18:47:37', '2021-02-05 18:47:37', NULL, 1, '2021-02-05-11-47-37-100.png', 0, 2),
(58, 'Lập bệnh viện dã chiến đầu tiên tại Điện Biên', 'Cơ sở y tế này có quy mô 200-250 giường bệnh, do các chuyên gia, bác sĩ đầu ngành, có kinh nghiệm chống dịch của Bệnh viện Bạch Mai (Hà Nội) hỗ trợ trang thiết bị và xây dựng.', 6, 22, 1, 0, 1, '2021-02-06 07:57:26', '2021-02-06 07:57:26', NULL, 1, '2021-02-06-00-57-26-039.jpg', 0, 2),
(59, 'Truyền 23 lọ huyết thanh cứu bệnh nhân bị rắn lục cắn', 'Bệnh nhân nhập viện cấp cứu trong tình trạng sưng phù bàn chân trái, xuất huyết nặng vùng mông, đùi trái.', 6, 22, 1, 0, 1, '2021-02-06 08:00:11', '2021-02-06 08:00:11', NULL, 1, '2021-02-06-01-00-11-023.jpg', 0, 2),
(60, 'Phẫu thuật cắt khối u nặng một kg cho bé sơ sinh', 'Thai nhi được chẩn đoán mắc khối u quái bẩm sinh. Tuy nhiên, người mẹ quyết định giữ thai, cho con cơ hội chào đời.', 6, 19, 1, 1, 1, '2021-02-06 08:09:41', '2021-02-06 08:09:41', NULL, 1, '2021-02-06-01-09-41-852.jpg', 0, 2),
(62, 'CLB Thanh Hóa phải đền hơn 4,6 tỷ đồng cho 2 HLV Italy', 'Số tiền mà đội bóng Thanh Hóa phải trả cho HLV Fabio Lopez và trợ lý Salvatore Orofino là 200.000 USD trong vòng 45 ngày.', 7, 23, 1, 0, 1, '2021-02-06 08:13:39', '2021-02-06 08:13:39', NULL, 1, '2021-02-06-01-13-39-326.jpg', 0, 2),
(63, 'Ronaldo được vinh danh', 'Cristiano Ronaldo và Sergio Ramos góp mặt ở top 3 cầu thủ châu Âu hay nhất trong 10 năm qua theo lựa chọn của Liên đoàn Thống kê và Lịch sử Bóng đá Thế giới (IFFHS).', 7, 23, 1, 0, 1, '2021-02-06 08:25:44', '2021-02-06 08:25:44', NULL, 1, '2021-02-06-01-25-44-473.jpg', 0, 2),
(64, 'Tân binh MU chơi thăng hoa ở Premier League 2', 'Amad Diallo ghi 1 bàn, kiến tạo 3 lần trong trận thắng 6-4 của U23 Man Utd trước U23 Blackburn Rovers rạng sáng 6/2.', 7, 24, 1, 0, 1, '2021-02-06 08:28:23', '2021-02-06 08:28:23', NULL, 1, '2021-02-06-01-28-23-779.jpg', 0, 2),
(65, 'Nghiệp dư ở V.League', 'Bê bối của đội Thanh Hóa với HLV Fabio Lopez tiếp tục cho thấy nhiều mặt tối của bóng đá Việt Nam sau hơn 20 năm lên chuyên nghiệp.', 7, 23, 1, 0, 1, '2021-02-06 08:31:10', '2021-02-06 08:31:10', NULL, 1, '2021-02-06-01-31-10-201.jpg', 0, 2),
(66, 'Văn Lâm vắng mặt trong top 6 thủ môn hay nhất Thai League', 'Đặng Văn Lâm không có tên trong nhóm 6 thủ môn cứu thua nhiều nhất lượt đi Thai League 2020/21.', 7, 23, 1, 0, 1, '2021-02-06 08:33:25', '2021-02-06 08:33:25', NULL, 1, '2021-02-06-01-33-25-086.jpg', 0, 2),
(67, 'HLV Park: \'Tôi không dùng tình cảm riêng ở tuyển Việt Nam\'', 'Ông Park Hang-seo tiết lộ tất cả tuyển thủ Việt Nam muốn góp mặt ở vòng loại cuối World Cup 2022 và tạo nên những kỷ lục mới.', 7, 23, 1, 0, 1, '2021-02-06 08:35:18', '2021-02-06 08:35:18', NULL, 1, '2021-02-06-01-35-18-473.jpg', 0, 2),
(68, 'HAGL giữ lại trợ lý người Hàn Quốc', 'Ông Kim Tae-min được HAGL giữ lại để hỗ trợ HLV Kiatisuk Senamuang trong công tác huấn luyện ở mùa giải 2021.', 7, 23, 1, 0, 1, '2021-02-06 08:37:33', '2021-02-06 08:37:33', NULL, 1, '2021-02-06-01-37-33-234.jpg', 0, 2),
(70, 'Mâu thuẫn xuất hiện giữa Bale và Mourinho', 'Gareth Bale và huấn luyện viên Jose Mourinho đang không có tiếng nói chung tại Tottenham.', 7, 24, 1, 1, 1, '2021-02-06 08:39:30', '2021-02-06 08:39:30', NULL, 1, '2021-02-06-01-39-30-532.jpg', 0, 2),
(71, 'Tòa án Trùng Khánh thanh minh sau khi vinh danh Trịnh Sảng', 'Tài khoản mạng xã hội của Tòa án Trùng Khánh và Tế Nam bất ngờ đăng bài giới thiệu Trịnh Sảng là đại sứ từ thiện.', 8, 27, 1, 0, 1, '2021-02-06 08:44:30', '2021-02-06 08:44:30', NULL, 1, '2021-02-06-01-44-30-241.jpeg', 0, 2),
(72, 'Ưng Hoàng Phúc viếng mộ Vân Quang Long ở Đồng Tháp', 'Ca sĩ Ưng Hoàng Phúc cho biết sáng 5/2, anh đến Đồng Tháp để thắp hương trước mộ phần của Vân Quang Long.', 8, 27, 1, 0, 1, '2021-02-06 08:47:03', '2021-02-06 08:47:03', NULL, 1, '2021-02-06-01-47-03-847.jpg', 0, 2),
(73, 'Mâm cỗ cúng Táo quân của các nghệ sĩ Việt', 'Vào ngày 23 tháng Chạp Âm lịch, nhiều nghệ sĩ Việt như Thanh Vân Hugo, Văn Mai Hương, Ngọc Lan... chuẩn bị mâm cỗ cúng ông Công, ông Táo.', 8, 27, 1, 0, 1, '2021-02-06 08:50:13', '2021-02-06 08:50:13', NULL, 1, '2021-02-06-01-50-12-998.jpg', 0, 2),
(74, 'Hình ảnh mới của Son Ye Jin', 'Son Ye Jin vừa xuất hiện với vai trò người mẫu của một thương hiệu thời trang tại Hàn Quốc. Nữ diễn viên trẻ trung, thanh lịch ở tuổi 39.', 8, 27, 1, 0, 1, '2021-02-06 08:54:09', '2021-02-06 08:54:09', NULL, 1, '2021-02-06-01-54-09-281.jpg', 0, 2),
(75, 'Lưu Diệc Phi ê chề khi bị diễn viên đóng thế vượt mặt', 'SAG Award là một trong 4 giải thưởng quan trọng tiền Oscar. Tuy nhiên, đoàn phim \"Mulan\" của Lưu Diệc Phi trượt hết đề cử quan trọng, chỉ được nêu tên ở mục diễn viên đóng thế.', 8, 29, 1, 0, 1, '2021-02-06 08:57:20', '2021-02-06 08:57:20', NULL, 1, '2021-02-06-01-57-20-347.jpg', 0, 2),
(76, 'Vén màn bí mật vụ Kim Kardashian bị uy hiếp, cướp 11 triệu USD', 'Quyển sách \"I Kidnapped Kim Kardashian\" được truyền thông quan tâm vì có lời kể của kẻ đột nhập vào khách sạn uy hiếp, cướp tài sản của Kim Kardashian.', 8, 27, 1, 0, 1, '2021-02-06 09:00:23', '2021-02-06 09:00:23', NULL, 1, '2021-02-06-02-00-23-468.jpg', 0, 2),
(77, 'THẤY GÌ TỪ NHỮNG PHIM VIỆT DOANH THU TRĂM TỶ ĐỒNG?', 'Đến nay, điện ảnh Việt đã có 12 phim vượt qua mốc doanh thu 100 tỷ đồng. Đa số thuộc thể loại phim hài hoặc hài là chất liệu nội dung quan trọng.', 8, 29, 1, 0, 1, '2021-02-06 09:03:20', '2021-02-06 09:03:20', NULL, 1, '2021-02-06-02-03-19-992.jpeg', 0, 2),
(78, 'Diễn viên Kim Bo Kyung qua đời', 'Kim Bo Kyung qua đời ở tuổi 45. Nhiều năm qua, nữ diễn viên chống chọi với căn bệnh ung thư gan.', 8, 27, 1, 0, 1, '2021-02-06 11:07:14', '2021-02-06 11:07:14', NULL, 1, '2021-02-06-04-07-14-538.jpg', 0, 2),
(80, 'Tiệm nail, hàng làm tóc ở Hà Nội kín khách dịp cuối năm', '\"Tết nhất mà!\" là lý do được nhiều bạn trẻ Hà Nội đưa ra khi được hỏi về cảnh đông đúc tại các tiệm làm đẹp những ngày cuối năm.', 9, 31, 1, 1, 1, '2021-02-06 11:10:35', '2021-02-06 11:10:35', NULL, 1, '2021-02-06-04-10-35-853.jpg', 0, 2),
(81, 'Chi trăm triệu đồng làm nhà trên cây ở Hà Nội', 'Sau 15 ngày thi công, anh Lê Ngọc Tú dựng được căn nhà nhỏ trên cây nhãn, rộng 22 m2, cách mặt đất 2,8 m.', 9, 32, 1, 0, 1, '2021-02-06 11:15:34', '2021-02-06 11:15:34', NULL, 1, '2021-02-06-04-15-34-631.jpg', 0, 2),
(83, 'Nữ sinh Mỹ bị đuổi học vì đăng ảnh gợi cảm lên mạng', 'Kimberly Diei khẳng định việc đăng ảnh lên mạng là chuyện cá nhân, còn nhà trường lại coi đó là hành vi thô tục, cần đuổi học.', 9, 34, 1, 0, 1, '2021-02-06 11:19:53', '2021-02-06 11:19:53', NULL, 1, '2021-02-06-04-19-53-825.jpg', 0, 2),
(84, 'Khóa học cách cứu vãn hôn nhân đắt đỏ ở Trung Quốc', 'Khóa học về cứu vãn, quản lý hôn nhân và hàn gắn sau ly hôn có giá 10.000 nhân dân tệ mỗi giờ. Các nhân viên tư vấn được quảng cáo có thể kiếm được hơn 1 triệu nhân dân tệ một năm.', 9, 32, 1, 0, 1, '2021-02-06 11:37:17', '2021-02-06 11:37:17', NULL, 1, '2021-02-06-04-37-17-388.jpeg', 0, 2),
(85, 'Cuộc đại di cư ở Trung Quốc khác lạ vì dịch', 'Dù phải tuân thủ hàng loạt yêu cầu nghiêm ngặt để phòng dịch Covid-19, nhiều người Trung Quốc làm việc xa nhà vẫn quyết về quê bằng mọi giá để đón Tết Nguyên đán cùng gia đình.', 9, 32, 1, 0, 1, '2021-02-06 11:39:47', '2021-02-06 11:39:47', NULL, 1, '2021-02-06-04-39-47-949.jpg', 0, 2),
(86, 'Người đàn ông Trung Quốc 500 ngày chăm sóc bạn gái hôn mê', 'Nhìn người mình yêu hôn mê, tay chân cắm đầy ống thở và kim chuyền, Gia Phong đã đưa ra quyết định ảnh hưởng tới cả cuộc đời, đó là ở lại chăm sóc bạn gái.', 9, 33, 1, 0, 1, '2021-02-06 11:42:32', '2021-02-06 11:42:32', NULL, 1, '2021-02-06-04-42-32-473.jpg', 0, 2),
(87, 'Quán bar vỉa hè, khách uống cocktail trên ghế nhựa tại TP.HCM', 'Bên cạnh việc thưởng thức cocktail tại các quán sang trọng, giới trẻ Sài Gòn còn có thể khám phá và trải nghiệm những quầy bar đường phố.', 9, 32, 1, 0, 1, '2021-02-06 11:45:00', '2021-02-06 11:45:00', NULL, 1, '2021-02-06-04-45-00-620.jpg', 0, 2),
(88, 'Trưởng BTC Olympic Tokyo bị tẩy chay vì nói phụ nữ \'lắm lời\'', 'Phát biểu mang tính miệt thị nữ giới khiến ông Yoshiro Mori nhận về làn sóng chỉ trích dữ dội từ công chúng trong nước và quốc tế.', 9, 34, 1, 0, 1, '2021-02-06 11:47:06', '2021-02-06 11:47:06', NULL, 1, '2021-02-06-04-47-06-758.jpg', 0, 2),
(89, 'Giảng viên đòi tiền để nâng điểm cho sinh viên', 'Một giảng viên ĐH Hoa Sen bị nhà trường yêu cầu hoàn trả toàn bộ số tiền đã nhận, công khai xin lỗi nhà trường, sinh viên, phụ huynh.', 10, 36, 1, 0, 1, '2021-02-06 11:49:26', '2021-02-06 11:49:26', NULL, 1, '2021-02-06-04-49-26-712.jpg', 0, 2),
(90, 'Cuộc sống của học sinh mắc Covid-19 khi không có bố mẹ ở bên', 'Rời vòng tay của bố mẹ, 3 học sinh tiểu học một mình được đưa đến khu cách ly ở Hải Dương. Không có người thân ở bên, các em phải học cách tự làm mọi thứ.', 10, 36, 1, 1, 1, '2021-02-06 12:05:58', '2021-02-06 12:05:58', NULL, 1, '2021-02-06-05-05-58-035.jpg', 0, 2),
(91, '6 quy tắc ứng xử cần dạy trẻ trước thềm năm mới', 'Năm mới là dịp gặp gỡ bạn bè, người thân. Để mọi người có ấn tượng tốt, cha mẹ cần dạy trẻ những điều sau.', 10, 36, 1, 0, 1, '2021-02-06 12:08:27', '2021-02-06 12:08:27', NULL, 1, '2021-02-06-05-08-27-800.jpg', 0, 2),
(92, 'Cô giáo biến lớp học thành rạp chiếu phim', 'Nhìn ánh mắt thích thú, nụ cười rạng rỡ của học trò, cô Đặng Hoàng Hà, giáo viên trường Tiểu học Giáp Bát (Hà Nội) như được tiếp thêm “lửa” để đổi mới, sáng tạo.', 10, 36, 1, 0, 1, '2021-02-06 12:10:45', '2021-02-06 12:10:45', NULL, 1, '2021-02-06-05-10-45-843.jpg', 0, 2),
(93, 'Sinh viên ĐH Sư phạm Hà Nội âm tính với SARS-CoV-2', 'Lần xét nghiệm đầu, sinh viên này dương tính với SARS-CoV-2. Kết quả xét nghiệm lần thứ hai là âm tính.', 10, 36, 1, 0, 1, '2021-02-06 12:12:29', '2021-02-06 12:12:29', NULL, 1, '2021-02-06-05-12-29-327.jpg', 0, 2),
(94, 'Khó tìm người đứng đầu ĐH Tôn Đức Thắng', 'Bộ GD&ĐT nhận định uy tín đối với đội ngũ cán bộ, viên chức, cũng như vai trò và ảnh hưởng đối với sự phát triển ĐH Tôn Đức Thắng của cá nhân ông Lê Vinh Danh là khá lớn.', 10, 36, 1, 0, 1, '2021-02-06 12:15:16', '2021-02-06 12:15:16', NULL, 1, '2021-02-06-05-15-16-037.jpg', 0, 2),
(95, 'Thu nhập 50 triệu đồng/tháng mới đủ cho con học trường tư thục?', 'Trước ý kiến gia đình cần thu nhập 50 triệu đồng/tháng mới nên cho con học trường tư, chị Tố An không đồng tình hay phản bác. Với chị, điều quan trọng nhất, con học ở nơi phù hợp.', 10, 35, 1, 0, 1, '2021-02-06 12:29:39', '2021-02-06 12:29:39', NULL, 1, '2021-02-06-05-29-39-648.jpg', 0, 2),
(96, 'Những cây cầu được xây dựng từ hàng tỷ USD', 'Những cây cầu đắt giá nhất thế giới không chỉ là tuyến giao thông quan trọng mà còn sở hữu thiết kế ngoạn mục, trở thành biểu tượng của các thành phố, quốc gia.', 11, 39, 1, 0, 1, '2021-02-06 14:29:31', '2021-02-06 14:29:31', NULL, 1, '2021-02-06-07-29-31-147.jpg', 0, 2),
(97, 'Khám phá Cà Mau khác lạ qua lăng kính nhiếp ảnh', 'Cuộc thi ảnh “Cà Mau đổi mới” do Công ty CIT tổ chức đã mang đến hình ảnh một Cà Mau đầy sức sống, hiện đại cùng những câu chuyện hấp dẫn về nhịp sống, con người Đất Mũi.', 11, 39, 1, 0, 1, '2021-02-06 14:39:16', '2021-02-06 14:39:16', NULL, 1, '2021-02-06-07-39-16-838.jpg', 0, 2),
(98, 'Mây Lang Thang - điểm đến dành cho người yêu nhạc', 'Tại Mây Lang Thang, du khách vừa được hòa mình vào không gian âm nhạc lãng mạn, vừa được ngắm cảnh sắc thơ mộng của Đà Lạt từ trên cao.', 11, 40, 1, 0, 1, '2021-02-06 14:43:16', '2021-02-06 14:43:16', NULL, 1, '2021-02-06-07-43-16-401.jpg', 0, 2),
(99, 'Bằng Lăng mong cùng mẹ khám phá Singapore', 'Để khán giả yêu mến hiểu hơn về cuộc sống của mình và gia đình tại Singapore, siêu mẫu Bằng Lăng chia sẻ series video cô hợp tác thực hiện cùng Tổng cục Du lịch Singapore (STB).', 11, 39, 1, 0, 1, '2021-02-06 14:46:49', '2021-02-06 14:46:49', NULL, 1, '2021-02-06-07-46-49-019.jpg', 0, 2),
(100, '4 con đường kỳ lạ bậc nhất thế giới', 'Đường ngắn, hẹp hay dốc nhất thế giới là danh xưng dành cho các điểm đến kỳ quặc, thu hút du khách tại Mỹ, Scotland, Đức...', 11, 39, 1, 1, 1, '2021-02-06 14:50:07', '2021-02-23 16:23:03', NULL, 1, '2021-02-06-07-50-07-167.jpg', 0, 2),
(101, 'Khách dọa đánh bom sân bay vì trễ chuyến', 'Vì sự bực tức khi phải chờ đợi chuyến bay, một hành khách đã khiến sân bay Oakland (Mỹ) náo loạn.', 11, 40, 1, 0, 1, '2021-02-06 14:51:59', '2021-02-06 14:51:59', NULL, 1, '2021-02-06-07-51-59-958.jpg', 0, 2),
(102, 'Hủy bắn pháo hoa, chọi trâu vì dịch bệnh', 'Những hoạt động tập trung đông người, không thiết yếu ở nhiều địa phương có thể bị hủy, hoãn vì vấn đề an toàn.', 11, 43, 1, 0, 1, '2021-02-06 14:54:21', '2021-02-06 14:54:21', NULL, 1, '2021-02-06-07-54-21-965.jpg', 0, 2),
(103, 'Mercedes-Benz Việt Nam nói gì về việc giảm trang bị, tăng giá bán', 'Một vài mẫu xe Mercedes-Benz tại Việt Nam bị cắt giảm trang bị từ đầu năm 2021 dù giá bán được điều chỉnh cao hơn trước.', 12, 44, 1, 0, 1, '2021-02-06 14:57:34', '2021-02-06 14:57:34', NULL, 1, '2021-02-06-07-57-34-280.jpg', 0, 2),
(105, 'Chi tiết Suzuki Hayabusa 2022 vừa được ra mắt, giá từ 18.599 USD', 'Thiết kế của Hayabusa thế hệ thứ 3 được thay đổi đôi chút, giúp chiếc xe trông góc cạnh hơn so với đời cũ.', 12, 45, 1, 0, 1, '2021-02-06 15:02:46', '2021-02-06 15:02:46', NULL, 1, '2021-02-06-08-02-46-849.jpg', 0, 2),
(106, 'Nissan 400Z có thể mạnh 400 mã lực', 'Thông số động cơ cụ thể của Nissan 400Z sẽ có khi xe được ra mắt chính thức vào năm 2022.', 12, 47, 1, 0, 1, '2021-02-06 15:05:15', '2021-02-06 15:05:15', NULL, 1, '2021-02-06-08-05-15-554.jpg', 0, 2),
(107, 'Yamaha Exciter 155 VVA đạt tốc độ tối đa 150 km/h', 'Một tay lái Việt vừa thử nghiệm Yamaha Exciter 155 VVA trên đường băng sân bay Cam Ly cũ ở Đà Lạt (Lâm Đồng) và ghi nhận tốc độ tối đa đạt được là 150 km/h (theo đồng hồ xe).', 12, 46, 1, 0, 1, '2021-02-06 15:08:21', '2021-02-06 15:08:21', NULL, 1, '2021-02-06-08-08-21-408.jpg', 0, 2),
(108, 'Ba mẫu xe điện VinFast trong mắt truyền thông Thái Lan', 'Theo truyền thông Thái Lan, VinFast đã tạo nên một bước tiến đáng ghi nhận trong lĩnh vực xe điện toàn cầu.', 12, 44, 1, 0, 1, '2021-02-06 15:10:56', '2021-02-06 15:10:56', NULL, 1, '2021-02-06-08-10-56-386.jpg', 0, 2),
(109, 'Đi xe máy về quê dịp Tết cần chuẩn bị gì?', 'Khác với di chuyển hàng ngày trong phố, điều khiển xe máy về quê yêu cầu người lái phải chuẩn bị kỹ từ phương tiện cho đến bản thân để đảm bảo chuyến đi diễn ra an toàn.', 12, 46, 1, 1, 1, '2021-02-06 15:14:49', '2021-02-06 15:14:49', NULL, 1, '2021-02-06-08-14-49-373.jpg', 0, 2),
(110, 'Ford hợp tác với Google phát triển hệ thống kết nối mới', 'Ford sẽ sử dụng hệ thống thông tin giải trí ôtô dựa trên hệ điều hành Android Automotive của Google.', 12, 46, 1, 1, 1, '2021-02-06 15:19:03', '2021-02-06 15:19:03', NULL, 1, '2021-02-06-08-19-03-466.jpg', 0, 2),
(111, '\'Người dân sẽ được tiêm vaccine ngừa Covid-19 miễn phí\'', 'Ban Chỉ đạo quốc gia cho biết về lâu dài, người dân sẽ được tiêm vaccine ngừa Covid-19 miễn phí. Một phần nhỏ vaccine dịch vụ sẽ dành cho những người có khả năng chi trả cao hơn.', 6, 22, 1, 1, 1, '2021-02-23 16:27:54', '2021-02-23 16:27:54', NULL, 1, '2021-02-23-09-27-54-417.jpg', 0, 1),
(112, '\'Người dân sẽ được tiêm vaccine ngừa Covid-19 miễn phí\'', 'Ban Chỉ đạo quốc gia cho biết về lâu dài, người dân sẽ được tiêm vaccine ngừa Covid-19 miễn phí. Một phần nhỏ vaccine dịch vụ sẽ dành cho những người có khả năng chi trả cao hơn.', 6, 22, 1, 0, 1, '2021-02-23 16:39:07', '2021-02-23 16:39:07', NULL, 1, '2021-02-23-09-39-07-393.jpg', 0, 1),
(113, 'Thêm hai F1 ở Hải Dương mắc Covid-19', 'Hiện họ được cách ly, điều trị tại Bệnh viện dã chiến số 1 - Trung tâm Y tế TP Chí Linh.', 6, 22, 1, 1, 1, '2021-02-24 07:47:09', '2021-02-24 07:47:09', NULL, 1, '2021-02-24-00-47-09-307.jpg', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articleauthor`
--

CREATE TABLE `articleauthor` (
  `IdArticle` int(255) NOT NULL,
  `IdAuthor` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `articleauthor`
--

INSERT INTO `articleauthor` (`IdArticle`, `IdAuthor`) VALUES
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 4),
(13, 3),
(14, 4),
(15, 3),
(16, 4),
(17, 3),
(18, 4),
(19, 3),
(20, 4),
(21, 3),
(22, 4),
(23, 3),
(24, 4),
(25, 3),
(26, 4),
(27, 3),
(28, 4),
(29, 3),
(30, 4),
(31, 4),
(32, 3),
(33, 4),
(34, 3),
(35, 3),
(36, 3),
(37, 4),
(38, 3),
(39, 4),
(40, 4),
(41, 3),
(42, 4),
(43, 4),
(44, 3),
(45, 4),
(46, 3),
(47, 4),
(48, 3),
(49, 4),
(50, 3),
(51, 3),
(52, 4),
(54, 4),
(55, 3),
(56, 4),
(57, 4),
(58, 3),
(59, 4),
(60, 4),
(62, 3),
(63, 4),
(64, 3),
(65, 3),
(66, 3),
(67, 4),
(68, 4),
(70, 3),
(71, 3),
(72, 3),
(73, 4),
(74, 4),
(75, 3),
(76, 4),
(77, 3),
(78, 4),
(80, 3),
(81, 4),
(83, 3),
(84, 4),
(85, 3),
(86, 3),
(87, 4),
(88, 3),
(89, 3),
(90, 4),
(91, 3),
(92, 4),
(93, 3),
(94, 4),
(95, 3),
(96, 3),
(97, 4),
(98, 3),
(99, 4),
(100, 3),
(101, 4),
(102, 3),
(103, 3),
(105, 4),
(106, 4),
(107, 4),
(108, 3),
(109, 4),
(110, 3),
(113, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articlecensor`
--

CREATE TABLE `articlecensor` (
  `IdArticle` int(255) NOT NULL,
  `IdCensor` int(255) NOT NULL,
  `IdAccount` int(255) NOT NULL,
  `Note` mediumtext DEFAULT NULL,
  `Time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `articlecensor`
--

INSERT INTO `articlecensor` (`IdArticle`, `IdCensor`, `IdAccount`, `Note`, `Time`) VALUES
(8, 1, 2, NULL, '2021-02-23 14:34:53'),
(8, 2, 2, NULL, '2021-02-23 11:32:51'),
(9, 1, 2, NULL, '2021-02-23 11:31:48'),
(9, 2, 2, NULL, '2021-02-23 11:32:51'),
(10, 1, 2, NULL, '2021-02-23 11:31:48'),
(10, 2, 2, NULL, '2021-02-23 11:32:51'),
(11, 1, 2, NULL, '2021-02-23 11:31:48'),
(11, 2, 2, NULL, '2021-02-23 11:32:51'),
(12, 1, 2, NULL, '2021-02-23 11:31:48'),
(12, 2, 2, NULL, '2021-02-23 11:32:51'),
(13, 1, 2, NULL, '2021-02-23 11:31:48'),
(13, 2, 2, NULL, '2021-02-23 11:32:51'),
(14, 1, 2, NULL, '2021-02-23 11:31:48'),
(14, 2, 2, NULL, '2021-02-23 11:32:51'),
(15, 1, 2, NULL, '2021-02-23 11:31:48'),
(15, 2, 2, NULL, '2021-02-23 11:32:51'),
(16, 1, 2, NULL, '2021-02-23 11:31:48'),
(16, 2, 2, NULL, '2021-02-23 11:32:51'),
(17, 1, 2, NULL, '2021-02-23 11:31:48'),
(17, 2, 2, NULL, '2021-02-23 11:32:51'),
(18, 1, 2, NULL, '2021-02-23 11:31:48'),
(18, 2, 2, NULL, '2021-02-23 11:32:51'),
(19, 1, 2, NULL, '2021-02-23 11:31:48'),
(19, 2, 2, NULL, '2021-02-23 11:32:51'),
(20, 1, 2, NULL, '2021-02-23 11:31:48'),
(20, 2, 2, NULL, '2021-02-23 11:32:51'),
(21, 1, 2, NULL, '2021-02-23 11:31:48'),
(21, 2, 2, NULL, '2021-02-23 11:32:51'),
(22, 1, 2, NULL, '2021-02-23 11:31:48'),
(22, 2, 2, NULL, '2021-02-23 11:32:51'),
(23, 1, 2, NULL, '2021-02-23 11:31:48'),
(23, 2, 2, NULL, '2021-02-23 11:32:51'),
(24, 1, 2, NULL, '2021-02-23 11:31:48'),
(24, 2, 2, NULL, '2021-02-23 11:32:51'),
(25, 1, 2, NULL, '2021-02-23 11:31:48'),
(25, 2, 2, NULL, '2021-02-23 11:32:51'),
(26, 1, 2, NULL, '2021-02-23 11:31:48'),
(26, 2, 2, NULL, '2021-02-23 11:32:51'),
(27, 1, 2, NULL, '2021-02-23 11:31:48'),
(27, 2, 2, NULL, '2021-02-23 11:32:51'),
(28, 1, 2, NULL, '2021-02-23 11:31:48'),
(28, 2, 2, NULL, '2021-02-23 11:32:51'),
(29, 1, 2, NULL, '2021-02-23 11:31:48'),
(29, 2, 2, NULL, '2021-02-23 11:32:51'),
(30, 1, 2, NULL, '2021-02-23 11:31:48'),
(30, 2, 2, NULL, '2021-02-23 11:32:51'),
(31, 1, 2, NULL, '2021-02-23 11:31:48'),
(31, 2, 2, NULL, '2021-02-23 11:32:51'),
(32, 1, 2, NULL, '2021-02-23 11:31:48'),
(32, 2, 2, NULL, '2021-02-23 11:32:51'),
(33, 1, 2, NULL, '2021-02-23 11:31:48'),
(33, 2, 2, NULL, '2021-02-23 11:32:51'),
(34, 1, 2, NULL, '2021-02-23 11:31:48'),
(34, 2, 2, NULL, '2021-02-23 11:32:51'),
(35, 1, 2, NULL, '2021-02-23 11:31:48'),
(35, 2, 2, NULL, '2021-02-23 11:32:51'),
(36, 1, 2, NULL, '2021-02-23 11:31:48'),
(36, 2, 2, NULL, '2021-02-23 11:32:51'),
(37, 1, 2, NULL, '2021-02-23 11:31:48'),
(37, 2, 2, NULL, '2021-02-23 11:32:51'),
(38, 1, 2, NULL, '2021-02-23 11:31:48'),
(38, 2, 2, NULL, '2021-02-23 11:32:51'),
(39, 1, 2, NULL, '2021-02-23 11:31:48'),
(39, 2, 2, NULL, '2021-02-23 11:32:51'),
(40, 1, 2, NULL, '2021-02-23 11:31:48'),
(40, 2, 2, NULL, '2021-02-23 11:32:51'),
(41, 1, 2, NULL, '2021-02-23 11:31:48'),
(41, 2, 2, NULL, '2021-02-23 11:32:51'),
(42, 1, 2, NULL, '2021-02-23 11:31:48'),
(42, 2, 2, NULL, '2021-02-23 11:32:51'),
(43, 1, 2, NULL, '2021-02-23 11:31:48'),
(43, 2, 2, NULL, '2021-02-23 11:32:51'),
(44, 1, 2, NULL, '2021-02-23 11:31:48'),
(44, 2, 2, NULL, '2021-02-23 11:32:51'),
(45, 1, 2, NULL, '2021-02-23 11:31:48'),
(45, 2, 2, NULL, '2021-02-23 11:32:51'),
(46, 1, 2, NULL, '2021-02-23 11:31:48'),
(46, 2, 2, NULL, '2021-02-23 11:32:51'),
(47, 1, 2, NULL, '2021-02-23 11:31:48'),
(47, 2, 2, NULL, '2021-02-23 11:32:51'),
(48, 1, 2, NULL, '2021-02-23 11:31:48'),
(48, 2, 2, NULL, '2021-02-23 11:32:51'),
(49, 1, 2, NULL, '2021-02-23 11:31:48'),
(49, 2, 2, NULL, '2021-02-23 11:32:51'),
(50, 1, 2, NULL, '2021-02-23 11:31:48'),
(50, 2, 2, NULL, '2021-02-23 11:32:51'),
(51, 1, 2, NULL, '2021-02-23 11:31:48'),
(51, 2, 2, NULL, '2021-02-23 11:32:51'),
(52, 1, 2, NULL, '2021-02-23 11:31:48'),
(52, 2, 2, NULL, '2021-02-23 11:32:51'),
(54, 1, 2, NULL, '2021-02-23 11:31:48'),
(54, 2, 2, NULL, '2021-02-23 11:32:51'),
(55, 1, 2, NULL, '2021-02-23 11:31:48'),
(55, 2, 2, NULL, '2021-02-23 11:32:51'),
(56, 1, 2, NULL, '2021-02-23 11:31:48'),
(56, 2, 2, NULL, '2021-02-23 11:32:51'),
(57, 1, 2, NULL, '2021-02-23 11:31:48'),
(57, 2, 2, NULL, '2021-02-23 11:32:51'),
(58, 1, 2, NULL, '2021-02-23 11:31:48'),
(58, 2, 2, NULL, '2021-02-23 11:32:51'),
(59, 1, 2, NULL, '2021-02-23 11:31:48'),
(59, 2, 2, NULL, '2021-02-23 11:32:51'),
(60, 1, 2, NULL, '2021-02-23 11:31:48'),
(60, 2, 2, NULL, '2021-02-23 11:32:51'),
(62, 1, 2, NULL, '2021-02-23 11:31:48'),
(62, 2, 2, NULL, '2021-02-23 11:32:51'),
(63, 1, 2, NULL, '2021-02-23 11:31:48'),
(63, 2, 2, NULL, '2021-02-23 11:32:51'),
(64, 1, 2, NULL, '2021-02-23 11:31:48'),
(64, 2, 2, NULL, '2021-02-23 11:32:51'),
(65, 1, 2, NULL, '2021-02-23 11:31:48'),
(65, 2, 2, NULL, '2021-02-23 11:32:51'),
(66, 1, 2, NULL, '2021-02-23 11:31:48'),
(66, 2, 2, NULL, '2021-02-23 11:32:51'),
(67, 1, 2, NULL, '2021-02-23 11:31:48'),
(67, 2, 2, NULL, '2021-02-23 11:32:51'),
(68, 1, 2, NULL, '2021-02-23 11:31:48'),
(68, 2, 2, NULL, '2021-02-23 11:32:51'),
(70, 1, 2, NULL, '2021-02-23 11:31:48'),
(70, 2, 2, NULL, '2021-02-23 11:32:51'),
(71, 1, 2, NULL, '2021-02-23 11:31:48'),
(71, 2, 2, NULL, '2021-02-23 11:32:51'),
(72, 1, 2, NULL, '2021-02-23 11:31:48'),
(72, 2, 2, NULL, '2021-02-23 11:32:51'),
(73, 1, 2, NULL, '2021-02-23 11:31:48'),
(73, 2, 2, NULL, '2021-02-23 11:32:51'),
(74, 1, 2, NULL, '2021-02-23 11:31:48'),
(74, 2, 2, NULL, '2021-02-23 11:32:51'),
(75, 1, 2, NULL, '2021-02-23 11:31:48'),
(75, 2, 2, NULL, '2021-02-23 11:32:51'),
(76, 1, 2, NULL, '2021-02-23 11:31:48'),
(76, 2, 2, NULL, '2021-02-23 11:32:51'),
(77, 1, 2, NULL, '2021-02-23 11:31:48'),
(77, 2, 2, NULL, '2021-02-23 11:32:51'),
(78, 1, 2, NULL, '2021-02-23 11:31:48'),
(78, 2, 2, NULL, '2021-02-23 11:32:51'),
(80, 1, 2, NULL, '2021-02-23 11:31:48'),
(80, 2, 2, NULL, '2021-02-23 11:32:51'),
(81, 1, 2, NULL, '2021-02-23 11:31:48'),
(81, 2, 2, NULL, '2021-02-23 11:32:51'),
(83, 1, 2, NULL, '2021-02-23 11:31:48'),
(83, 2, 2, NULL, '2021-02-23 11:32:51'),
(84, 1, 2, NULL, '2021-02-23 11:31:48'),
(84, 2, 2, NULL, '2021-02-23 11:32:51'),
(85, 1, 2, NULL, '2021-02-23 11:31:48'),
(85, 2, 2, NULL, '2021-02-23 11:32:51'),
(86, 1, 2, NULL, '2021-02-23 11:31:48'),
(86, 2, 2, NULL, '2021-02-23 11:32:51'),
(87, 1, 2, NULL, '2021-02-23 11:31:48'),
(87, 2, 2, NULL, '2021-02-23 11:32:51'),
(88, 1, 2, NULL, '2021-02-23 11:31:48'),
(88, 2, 2, NULL, '2021-02-23 11:32:51'),
(89, 1, 2, NULL, '2021-02-23 11:31:48'),
(89, 2, 2, NULL, '2021-02-23 11:32:51'),
(90, 1, 2, NULL, '2021-02-23 11:31:48'),
(90, 2, 2, NULL, '2021-02-23 11:32:51'),
(91, 1, 2, NULL, '2021-02-23 11:31:48'),
(91, 2, 2, NULL, '2021-02-23 11:32:51'),
(92, 1, 2, NULL, '2021-02-23 11:31:48'),
(92, 2, 2, NULL, '2021-02-23 11:32:51'),
(93, 1, 2, NULL, '2021-02-23 11:31:48'),
(93, 2, 2, NULL, '2021-02-23 11:32:51'),
(94, 1, 2, NULL, '2021-02-23 11:31:48'),
(94, 2, 2, NULL, '2021-02-23 11:32:51'),
(95, 1, 2, NULL, '2021-02-23 11:31:48'),
(95, 2, 2, NULL, '2021-02-23 11:32:51'),
(96, 1, 2, NULL, '2021-02-23 11:31:48'),
(96, 2, 2, NULL, '2021-02-23 11:32:51'),
(97, 1, 2, NULL, '2021-02-23 11:31:48'),
(97, 2, 2, NULL, '2021-02-23 11:32:51'),
(98, 1, 2, NULL, '2021-02-23 11:31:48'),
(98, 2, 2, NULL, '2021-02-23 11:32:51'),
(99, 1, 2, NULL, '2021-02-23 11:31:48'),
(99, 2, 2, NULL, '2021-02-23 11:32:51'),
(100, 1, 2, 'temporary lock', '2021-02-23 16:17:11'),
(100, 2, 2, NULL, '2021-02-23 16:17:52'),
(101, 1, 2, NULL, '2021-02-23 11:31:48'),
(101, 2, 2, NULL, '2021-02-23 11:32:51'),
(102, 1, 2, NULL, '2021-02-23 11:31:48'),
(102, 2, 2, NULL, '2021-02-23 11:32:51'),
(103, 1, 2, NULL, '2021-02-23 11:31:48'),
(103, 2, 2, NULL, '2021-02-23 11:32:51'),
(105, 1, 2, NULL, '2021-02-23 11:31:48'),
(105, 2, 2, NULL, '2021-02-23 11:32:51'),
(106, 1, 2, NULL, '2021-02-23 11:31:48'),
(106, 2, 2, NULL, '2021-02-23 11:32:51'),
(107, 1, 2, NULL, '2021-02-23 11:31:48'),
(107, 2, 2, NULL, '2021-02-23 11:32:51'),
(108, 1, 2, NULL, '2021-02-23 11:31:48'),
(108, 2, 2, NULL, '2021-02-23 11:32:51'),
(109, 1, 2, NULL, '2021-02-23 11:31:48'),
(109, 2, 2, NULL, '2021-02-23 11:32:51'),
(110, 1, 2, NULL, '2021-02-23 11:31:48'),
(110, 2, 2, NULL, '2021-02-23 11:32:51'),
(113, 1, 2, NULL, '2021-02-24 07:50:30'),
(113, 2, 2, NULL, '2021-02-24 07:50:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articlecomment`
--

CREATE TABLE `articlecomment` (
  `IdArticle` int(255) NOT NULL,
  `IdComment` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `articlecomment`
--

INSERT INTO `articlecomment` (`IdArticle`, `IdComment`) VALUES
(16, 115),
(40, 98),
(40, 99),
(45, 100),
(45, 101),
(46, 102),
(46, 103),
(47, 104),
(47, 105),
(48, 106),
(48, 107),
(49, 108),
(49, 109),
(50, 97),
(50, 110),
(51, 111),
(60, 95),
(60, 96),
(80, 94),
(90, 92),
(90, 93),
(94, 116),
(94, 117),
(100, 1),
(100, 2),
(100, 3),
(100, 87),
(100, 88),
(100, 89),
(100, 112),
(103, 113),
(113, 114);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articletitile`
--

CREATE TABLE `articletitile` (
  `IdArticle` int(255) NOT NULL,
  `IdTag` int(255) NOT NULL,
  `Status` bit(1) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `Id` int(255) NOT NULL,
  `Name` mediumtext NOT NULL,
  `NumberPhone` char(255) NOT NULL,
  `ReviewScore` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`Id`, `Name`, `NumberPhone`, `ReviewScore`) VALUES
(3, 'Hoàng Phúc', '0969076447', 0),
(4, 'Văn Tâm', '0977407123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `Id` int(255) NOT NULL,
  `Name` mediumtext NOT NULL,
  `NameUnsigned` char(255) NOT NULL,
  `CreateAt` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdateAt` datetime NOT NULL DEFAULT current_timestamp(),
  `Description` mediumtext NOT NULL,
  `ResponsibilityUnit` mediumtext NOT NULL,
  `Director` mediumtext NOT NULL,
  `View` int(255) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`Id`, `Name`, `NameUnsigned`, `CreateAt`, `UpdateAt`, `Description`, `ResponsibilityUnit`, `Director`, `View`, `Status`) VALUES
(1, 'Xã hội', 'xa-hoi', '2021-01-31 13:52:50', '2021-01-31 13:52:50', '', '', '', 0, b'1'),
(2, 'Pháp luật', 'phap-luat', '2021-01-31 13:56:50', '2021-01-31 13:56:50', '', '', '', 0, b'1'),
(3, 'Thế giới', 'the-gioi', '2021-01-31 13:57:22', '2021-01-31 13:57:22', '', '', '', 0, b'1'),
(4, 'Kinh doanh', 'kinh-doanh', '2021-01-31 13:57:37', '2021-01-31 13:57:37', '', '', '', 0, b'1'),
(5, 'Công nghệ', 'cong-nghe', '2021-01-31 13:59:38', '2021-01-31 13:59:38', '', '', '', 0, b'1'),
(6, 'Sức khỏe', 'suc-khoe', '2021-01-31 14:02:32', '2021-01-31 14:02:32', '', '', '', 0, b'1'),
(7, 'Thể thao', 'the-thao', '2021-01-31 14:02:52', '2021-01-31 14:02:52', '', '', '', 0, b'1'),
(8, 'Giải trí', 'giai-tri', '2021-01-31 14:03:09', '2021-01-31 14:03:09', '', '', '', 0, b'1'),
(9, 'Đời sống', 'doi-song', '2021-01-31 14:03:43', '2021-01-31 14:03:43', '', '', '', 0, b'1'),
(10, 'Giáo dục', 'giao-duc', '2021-01-31 14:04:00', '2021-01-31 14:04:00', '', '', '', 0, b'1'),
(11, 'Du lịch', 'du-lich', '2021-01-31 14:04:16', '2021-01-31 14:04:16', '', '', '', 0, b'1'),
(12, 'Xe', 'xe', '2021-01-31 14:04:29', '2021-01-31 14:04:29', '', '', '', 0, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `Id` int(255) NOT NULL,
  `Commentator` mediumtext NOT NULL,
  `Content` mediumtext NOT NULL,
  `ReportTimes` int(255) NOT NULL DEFAULT 0,
  `LikeTimes` int(255) NOT NULL DEFAULT 0,
  `IdCommentOrigin` int(255) DEFAULT 0,
  `Status` bit(1) NOT NULL DEFAULT b'1',
  `CreateAt` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdateAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`Id`, `Commentator`, `Content`, `ReportTimes`, `LikeTimes`, `IdCommentOrigin`, `Status`, `CreateAt`, `UpdateAt`) VALUES
(1, 'Hoàng Linh', 'Bài viết hay', 0, 3, 0, b'1', '2021-02-18 13:53:02', '2021-02-18 13:53:02'),
(2, 'Hoàng Phúc', 'nội dung bài viết hay', 0, 1, 1, b'1', '2021-02-20 09:23:34', '2021-02-20 09:23:34'),
(3, 'Văn Vũ', 'bài viết ấn tượng', 0, 0, 1, b'1', '2021-02-20 09:25:00', '2021-02-20 09:25:00'),
(87, 'Người dùng', 'địa điểm du lịch tuyệt vời', 0, 0, 0, b'1', '2021-02-21 11:47:04', '2021-02-21 11:47:04'),
(88, 'Người dùng', 'đẹp quá', 0, 0, 0, b'1', '2021-02-21 11:47:15', '2021-02-21 11:47:15'),
(89, 'Người dùng', 'hay', 0, 0, 0, b'1', '2021-02-21 12:49:32', '2021-02-21 12:49:32'),
(92, 'Hoàng Linh', 'chúc các em có nhiều sức khỏe', 0, 0, 0, b'1', '2021-02-21 13:58:42', '2021-02-21 13:58:42'),
(93, 'hoàng linh', 'tội các bé', 0, 0, 0, b'1', '2021-02-21 14:02:52', '2021-02-21 14:02:52'),
(94, 'Linh', 'nguy hiểm quá', 0, 0, 0, b'1', '2021-02-21 14:05:07', '2021-02-21 14:05:07'),
(95, 'Hoàng Linh', 'bác sĩ giỏi quá', 0, 0, 0, b'1', '2021-02-21 14:06:12', '2021-02-21 14:06:12'),
(96, 'người dùng', 'hay quá', 0, 0, 0, b'1', '2021-02-21 14:07:13', '2021-02-21 14:07:13'),
(97, 'Hoàng Linh', 'đảo chính mà', 0, 0, 0, b'1', '2021-02-21 14:09:17', '2021-02-21 14:09:17'),
(98, 'Hoàng Linh', 'trời ơi! tiền mà quên luôn', 0, 0, 0, b'1', '2021-02-21 14:14:27', '2021-02-21 14:14:27'),
(99, 'Phúc', 'tiền nhiều thế', 0, 0, 0, b'1', '2021-02-21 14:16:13', '2021-02-21 14:16:13'),
(100, 'Hoàng Linh', 'rẻ mà ngon', 0, 0, 0, b'1', '2021-02-21 14:18:25', '2021-02-21 14:18:25'),
(101, 'phúc', 'cũng được đấy', 0, 0, 0, b'1', '2021-02-21 14:18:38', '2021-02-21 14:18:38'),
(102, 'Linh', 'ý tưởng hay', 0, 0, 0, b'1', '2021-02-22 08:37:17', '2021-02-22 08:37:17'),
(103, 'Phúc', 'đẹp', 0, 0, 0, b'1', '2021-02-22 08:37:38', '2021-02-22 08:37:38'),
(104, 'Hoàng Linh', 'nhàn nhỉ', 0, 0, 0, b'1', '2021-02-22 08:41:53', '2021-02-22 08:41:53'),
(105, 'Phúc', 'sướng thật', 0, 0, 0, b'1', '2021-02-22 08:48:02', '2021-02-22 08:48:02'),
(106, 'Hoàng Linh', 'Tự hào quá', 0, 0, 0, b'1', '2021-02-22 08:54:42', '2021-02-22 08:54:42'),
(107, 'Hoàng Phúc', 'Hay quá', 0, 0, 0, b'1', '2021-02-22 08:55:08', '2021-02-22 08:55:08'),
(108, 'Hoàng Linh', 'điện thoại đẹp', 0, 0, 0, b'1', '2021-02-22 09:01:04', '2021-02-22 09:01:04'),
(109, 'Phúc', 'Tết này nghèo rồi :(((', 0, 0, 0, b'1', '2021-02-22 09:01:49', '2021-02-22 09:01:49'),
(110, 'Phúc nè', 'nội chiến rồi', 0, 0, 0, b'1', '2021-02-22 09:24:26', '2021-02-22 09:24:26'),
(111, 'Hoàng Linh', 'Người giàu có khác', 0, 0, 0, b'1', '2021-02-22 09:30:03', '2021-02-22 09:30:03'),
(112, 'Vương', 'ước gì được đến đây', 0, 0, 0, b'1', '2021-02-22 10:47:34', '2021-02-22 10:47:34'),
(113, 'Hoàng Linh', 'xe sang mà', 0, 0, 0, b'1', '2021-02-22 11:43:25', '2021-02-22 11:43:25'),
(114, 'Linh', 'co len Hai Duong', 0, 0, 0, b'1', '2021-02-24 07:57:31', '2021-02-24 07:57:31'),
(115, 'Hoàng Linh', 'bài viết hay', 0, 0, 0, b'1', '2021-02-24 09:45:34', '2021-02-24 09:45:34'),
(116, 'Hoàng Linh', 'bài viết hay', 0, 0, 0, b'1', '2021-02-24 17:01:34', '2021-02-24 17:01:34'),
(117, 'Phúc', 'hay', 0, 0, 0, b'1', '2021-02-24 17:03:58', '2021-02-24 17:03:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `commentstatuscensor`
--

CREATE TABLE `commentstatuscensor` (
  `IdComment` int(255) NOT NULL,
  `IdStatus` int(255) NOT NULL,
  `IdCensor` int(255) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `debug`
--

CREATE TABLE `debug` (
  `Id` int(255) NOT NULL,
  `Name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `debug`
--

INSERT INTO `debug` (`Id`, `Name`) VALUES
(1, 'test2'),
(2, 'test2'),
(3, 'test2'),
(4, 'test2'),
(5, 'test2'),
(6, 'test2'),
(7, 'test2'),
(8, 'test2'),
(9, 'test2'),
(10, 'test2'),
(11, 'linh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media`
--

CREATE TABLE `media` (
  `Id` int(255) NOT NULL,
  `Name` mediumtext NOT NULL,
  `Description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `media`
--

INSERT INTO `media` (`Id`, `Name`, `Description`) VALUES
(1, 'Article', ''),
(2, 'Video', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paragraph`
--

CREATE TABLE `paragraph` (
  `IdArticle` int(255) NOT NULL,
  `IdParagraph` int(255) NOT NULL,
  `Content` mediumtext DEFAULT NULL,
  `Image` char(255) DEFAULT NULL,
  `TitleImage` mediumtext DEFAULT NULL,
  `DescriptionImage` mediumtext DEFAULT NULL,
  `Video` char(255) DEFAULT NULL,
  `TitleVideo` mediumtext DEFAULT NULL,
  `DescriptionVideo` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `paragraph`
--

INSERT INTO `paragraph` (`IdArticle`, `IdParagraph`, `Content`, `Image`, `TitleImage`, `DescriptionImage`, `Video`, `TitleVideo`, `DescriptionVideo`) VALUES
(8, 1, 'Ban chỉ đạo Phòng chống dịch Hải Phòng vừa có hướng dẫn tạm thời về biện pháp chống dịch Covid-19, trong đó đưa ra cụ thể những người thuộc quận, huyện, vùng của tỉnh, thành khi về Hải Phòng phải cách ly y tế.', '', '', '', '', '', ''),
(8, 2, 'Theo nội dung hướng dẫn, những người từ Hải Dương, Quảng Ninh về Hải Phòng sẽ buộc phải cách ly tập trung.', '', '', '', '', '', ''),
(8, 3, 'Ngoài ra, người từ các khu vực sau của Hà Nội cũng phải cách ly tập trung, gồm: Xã Tiến Thắng (huyện Mê Linh); phường Quan Hoa, Dịch Vọng, Dịch Vọng Hậu (quận Cầu Giấy); phường Xuân Phương, Uy Nỗ, Mỹ Đình 2 (quận Nam Từ Liêm); thị trấn Đông Anh; phường Phú Diễn, Vĩnh Tuy (quận Bắc Từ Liêm).', '', '', '', '', '', ''),
(8, 4, 'Bên cạnh đó, Hải Phòng cũng yêu cầu người đi từ các tỉnh Bắc Giang, Hòa Bình, Bắc Ninh phải thực hiện khai báo y tế, giám sát y tế; trừ các huyện Lâm Thao, Đồng Tiến, Mãn Đức, Cẩm Lý phải cách ly tập trung.', '2021-02-04-08-27-18-329.jpg', 'Nhiều tỉnh, thành ra yêu cầu cách ly với một số trường hợp về từ vùng dịch. Ảnh: Thảo Linh.', NULL, '', '', ''),
(8, 5, 'Ban Chỉ đạo phòng chống dịch Hải Phòng cũng có yêu cầu với người về từ tỉnh Gia Lai (đặc biệt huyện La Pa và Krông Pa) cách ly y tế tại nhà. Riêng người về từ các huyện La Trok, Ia Mrơn, Kim Tân, Chư Rcăm buộc phải cách ly y tế tập trung khi về tới Hải Phòng.', '', '', '', '', '', ''),
(8, 6, 'Đối với người từ TP.HCM ra Hải Phòng, nếu ở quận 11 hay Thủ Dầu Một sẽ cách ly tại nhà; người ở phường 4, quận 11 bị buộc cách ly y tế tập trung.', '', '', '', '', '', ''),
(8, 7, 'Tương tự, khu vực Bình Dương nếu về Hải Phòng, những người ở Phú Hòa (Thủ Dầu Một), An Bình (Phú Giáo) phải đưa đi cách ly tập trung. Theo Sở Y tế Hải Phòng, các biện pháp có thể thay đổi trong các hướng dẫn tiếp theo, căn cứ vào tình hình dịch bệnh.', '', '', '', '', '', ''),
(8, 8, 'Ngoài Hải Phòng, nhiều địa phương cũng ra quyết định yêu cầu cách ly tại nhà và tập trung với một số người về quê ăn Tết từ các vùng đã có ca mắc Covid-19.', '', '', '', '', '', ''),
(8, 9, 'Nam Định sẽ lập danh sách những người trở về từ các địa điểm có ca mắc Covid-19 để cách ly, quản lý theo quy định. Người đi qua hoặc trở về từ các điểm có dịch khai báo y tế, cách ly tại nhà 14 ngày.', '', '', '', '', '', ''),
(8, 10, 'Nếu xuất hiện triệu chứng ho, khó thở, người dân được khuyến cáo đến ngay cơ sở y tế. Trung tâm kiểm soát bệnh tật tỉnh sẽ truy vết, cách ly những người tiếp xúc gần hoặc có liên quan với ca nhiễm Covid-19.', '', '', '', '', '', ''),
(8, 11, 'Tỉnh Thái Bình cho kích hoạt trở lại 7 tổ công tác liên ngành tại 7 khu vực cầu, cửa ngõ vào tỉnh, gồm: Cầu Tân Đệ (nối Thái Bình với Nam Định), cầu Nghìn, cầu Sông Hoá (nối Thái Bình với Hải Phòng), cầu Hiệp (nối Thái Bình với Hải Dương), cầu Thái Hà (nối Thái Bình với Hà Nam), cầu Triều Dương, cầu La Tiến (nối Thái Bình với Hưng Yên) để kiểm soát phòng, chống dịch Covid-19.', '', '', '', '', '', ''),
(8, 12, 'Các tổ công tác liên ngành có nhiệm vụ kiểm tra, hướng dẫn người dân từ vùng dịch (theo thông báo và cập nhật của Bộ Y tế) nếu trở về địa phương thì thực hiện việc cách ly tập trung theo quy định, trường hợp không thực hiện thì kiên quyết yêu cầu quay đầu.', '', '', '', '', '', ''),
(8, 13, 'Ngoài ra, UBND tỉnh Thái Bình cũng khẳng định người dân về quê từ các địa phương không ở trong vùng dịch thì chỉ cần khai báo y tế, lịch trình di chuyển, không phải cách ly. Vùng dịch (theo cập nhật của Bộ Y tế) phải là những nơi mà dịch bùng phát nhanh, tạo thành ổ dịch. Những người đi từ một thôn, làng hay xã, phường, thành phố, thị xã đang bị phong toả vì có nhiều ca mắc Covid-19 lây lan trong cộng đồng, thì khi về Thái Bình mới phải đi cách ly tập trung, hoặc là quay đầu xe.', '', '', '', '', '', ''),
(9, 1, 'Các nghị sĩ Myanmar đến thủ đô Naypyitaw để tham dự phiên họp đầu tiên của quốc hội mới hôm 1/2.', '', '', '', '', '', ''),
(9, 2, 'Tuy nhiên đúng ngày này, quân đội tiến hành cuộc chính biến, chỉ vài giờ trước khi phiên họp bắt đầu. Họ giam giữ các nghị sĩ trong nhà khách chính phủ.', '', '', '', '', '', ''),
(9, 3, 'U Aung Kyi Nyunt , Thượng nghị sĩ đảng Liên minh Quốc gia vì Dân chủ (NLD) vừa tái đắc cử, cho biết họ có 24 giờ để rời đi bằng xe quân đội.', '', '', '', '', '', ''),
(9, 4, 'Trước đó, đảng NLD sắp xếp cho các nghị sĩ ở lại đến ngày 6/2.', '2021-02-04-08-35-51-181.jpg', 'Các binh sĩ tuần tra gần khu vực tòa nhà quốc hội ở Naypyitaw vào ngày 2/2. Ảnh: Reuters.', NULL, '', '', ''),
(9, 5, 'Sau khi chính biến nổ ra, một số bài viết đăng tải trên Facebook yêu cầu các nghị sĩ triệu tập phiên họp quốc hội ngay trong nhà khách, vì số nghị sĩ tại đây đã vượt quá yêu cầu tối thiểu để tổ chức phiên họp hợp lệ của quốc hội.', '', '', '', '', '', ''),
(9, 6, 'Sau đó, quân đội ra lệnh cho họ phải đi khỏi thủ đô Naypyitaw.', '', '', '', '', '', ''),
(9, 7, 'Ông U Aung Kyi Nyunt cho biết các nghị sĩ đang chuẩn bị rời đi.', '', '', '', '', '', ''),
(9, 8, 'Theo tờ Irrawaddy, Hạ nghị sĩ Sai Thiha Kyaw đã rời khỏi nhà khách chính phủ.', '', '', '', '', '', ''),
(9, 9, 'Nói với tờ Irrawaddy chiều 3/2, ông Sai Thiha Kyaw cho biết đảng của ông sẽ họp để quyết định các bước tiếp theo.', '', '', '', '', '', ''),
(9, 10, '\"Với tư cách là một hạ nghị sĩ dân cử, tôi sẽ làm theo nguyện vọng của các cử tri của tôi\", ông Sai Thiha Kyaw nói.', '', '', '', '', '', ''),
(9, 11, 'Trong vụ chính biến ngày 1/2, quân đội Myanamar bắt giữ các nhà lãnh đạo đảng NLD, bao gồm Cố vấn nhà nước Aung San Suu Kyi, Tổng thống U Win Myint và các bộ trưởng trong chính phủ. Nhiều người vẫn đang bị giam giữ.', '', '', '', '', '', ''),
(10, 1, 'Chủ tịch UBND Hà Nội Chu Ngọc Anh vừa ký ban hành Chỉ thị hỏa tốc về việc tăng cường các hoạt động phòng, chống dịch Covid-19. Theo đó, lãnh đạo TP yêu cầu các đơn vị tuyên truyền, vận động người dân không ra khỏi nhà khi không cần thiết và thực hiện các biện pháp phòng, chống dịch: Bắt buộc đeo khẩu trang khi ra ngoài; không tập trung đông người tại nơi công cộng, ngoài phạm vi công sở, trường học, bệnh viện; giữ khoảng cách tối thiểu 1 m khi tiếp xúc.', '', '', '', '', '', ''),
(10, 2, 'Các địa phương dừng toàn bộ hoạt động lễ hội, nghi lễ tôn giáo, giải đấu thể thao, sự kiện có tập trung đông người tại nơi công cộng, sân vận động và các sự kiện lớn chưa cần thiết.', '', '', '', '', '', ''),
(10, 3, 'TP cũng đề nghị người dân hạn chế di chuyển, nhất là trong dịp tết Nguyên đán Tân Sửu 2021; thực hiện các biện pháp phòng, chống dịch trong vận chuyển hành khách công cộng như đeo khẩu trang, khai báo y tế, có dung dịch sát khuẩn tay; lập danh sách hành khách đi liên tỉnh; sắp xếp chỗ ngồi giãn cách.', '2021-02-04-08-39-52-179.jpeg', 'Hà Nội đã có 21 trường hợp mắc Covid-19 liên quan đến các ổ dịch ở Hải Dương, Quảng Ninh. Ảnh: Duy Hiệu.', NULL, '', '', ''),
(10, 4, 'TP cũng yêu cầu không tổ chức liên hoan tất niên, gặp mặt đầu xuân; thực hiện việc hiếu, hỷ văn minh, hạn chế tối đa tập trung đông người và đảm bảo thực hiện nghiêm các biện pháp phòng, chống dịch, tránh lây lan dịch bệnh.', '', '', '', '', '', ''),
(10, 5, 'Đối với các cơ sở dịch vụ, kinh doanh, UBND Hà Nội yêu cầu tạm dừng hoạt động quán karaoke, quán bar, vũ trường, game, Internet cho đến khi có chỉ đạo cho phép tiếp tục hoạt động của TP.', '', '', '', '', '', ''),
(10, 6, 'Cơ sở kinh doanh ăn uống, cà phê giải khát đảm bảo giãn cách tối thiểu 2 m giữa người với người hoặc giữ khoảng cách tối thiểu 1 m và có tấm chắn giữa các vị trí ngồi, không sử dụng đồ chung, khuyến khích bán hàng mang về nhà.', '', '', '', '', '', ''),
(10, 7, 'Các sở, ban, ngành, quận huyện xác định nhiệm vụ phòng, chống dịch Covid-19 là nhiệm vụ quan trọng, cấp bách hàng đầu. Người đứng đầu cơ quan, đơn vị chịu trách nhiệm thực hiện công tác phòng, chống dịch; khuyến khích họp trực tuyến không để đình trệ công việc.', '', '', '', '', '', ''),
(10, 8, 'UBND TP yêu cầu căn cứ vào đặc điểm, tính chất, cơ chế lây bệnh của chủng virus trên địa bàn, quận, huyện để có chỉ đạo phương án khoanh vùng, cách ly, xét nghiệm theo ưu tiên mức độ cấp thiết phù hợp với từng đối tượng, khu vực.', '', '', '', '', '', ''),
(10, 9, 'Ngành y tế tăng cường kiểm tra các bệnh viện, cơ sở khám chữa bệnh trên địa bàn, xây dựng và tổ chức thực hiện phương án phân luồng, khám sàng lọc, tăng cường xét nghiệm theo hướng dẫn của Bộ Y tế. Một bệnh nhân nặng chỉ cho phép một người chăm sóc, không thăm bệnh nhân tại các bệnh viện trên địa bàn.', '', '', '', '', '', ''),
(10, 10, 'Sở Giáo dục và Đào tạo chuẩn bị phương án dạy học trực tuyến khi cần thiết để đảm bảo công tác phòng, chống dịch theo chỉ đạo của Bộ Giáo dục và Đào tạo và Thành phố. Đáng chú ý, Hà Nội yêu cầu lực lượng an ninh trật tự giải tỏa ngay quán nước lấn chiếm vỉa hè, tụ tập đông người.', '', '', '', '', '', ''),
(10, 11, 'Đến nay, TP đã xác định được 21 trường hợp dương tính với SARS-CoV-2. Những ca này đều liên quan đến ổ dịch tại Hải Dương, Quảng Ninh. Các đơn vị đã xác định được 757 trường hợp F1, 711 mẫu xét nghiệm đã cho âm tính lần 1; 29 mẫu đang chờ kết quả và 17 mẫu dương tính.', '', '', '', '', '', ''),
(11, 1, NULL, '2021-02-04-14-38-16-848.jpg', 'Chiều 4/2, sau khi có thông tin phát hiện thêm một ca mắc Covid-19, lực lượng chức năng quận Đống Đa đã phong tỏa toàn bộ chung cư Sky City Tower - 88 Láng Hạ (quận Đống Đa, Hà Nội) nơi bệnh nhân này sinh sống.', NULL, '', '', ''),
(11, 2, NULL, '2021-02-04-14-38-17-209.jpg', 'Theo thông tin từ Sở Y tế Hà Nội, bệnh nhân là bà V.H.H., 46 tuổi, ở chung cư 88 Láng Hạ, phường Láng Hạ, quận Đống Đa, là nhân viên Ngân hàng Public Bank ở phố Trần Huy Liệu (Giảng Võ, Ba Đình). Bà này đã có tiếp xúc với ông S. (bệnh nhân 1883, công chứng viên Phòng công chứng số 3 Duy Tân, quận Cầu Giấy) tại cổng Trường THCS Giảng Võ vào trưa 27/1 (không nhớ chính xác thời gian gặp, cả 2 không đeo khẩu trang).', NULL, '', '', ''),
(11, 3, NULL, '2021-02-04-14-38-17-264.jpg', 'Đây là tòa văn phòng kết hợp nhà ở, nên trong chiều 4/2 rất đông người đi làm ra về. Những người ra vào, làm việc tại tòa A của khu chung cư được yêu cầu khai báo y tế mới được phép ra khỏi tòa nhà.', NULL, '', '', ''),
(11, 4, NULL, '2021-02-04-14-38-17-271.jpg', 'Đối với những trường hợp làm việc tại tòa B của khu chung cư hoặc có biểu hiện ho, sốt sẽ được yêu cầu ở lại tòa nhà để khám sàng lọc.', NULL, '', '', ''),
(11, 5, NULL, '2021-02-04-14-38-17-278.jpg', 'Đối với những trường hợp là người dân sinh sống trong tòa nhà hoặc có ra vào tòa B đều được lực lượng chức năng yêu cầu ở lại.', NULL, '', '', ''),
(11, 6, NULL, '2021-02-04-14-38-17-304.jpg', 'Lực lượng chức năng sử dụng loa công suất lớn yêu cầu người dân bình tĩnh và giữ khoảng cách an toàn khi xếp hàng ra khỏi tòa nhà.', NULL, '', '', ''),
(11, 7, NULL, '2021-02-04-14-38-17-308.jpg', 'Sau khi khai báo y tế và để lại thông tin cá nhân cũng như số điện thoại, người dân vội vã rời khỏi tòa chung cư.', NULL, '', '', ''),
(11, 8, NULL, '2021-02-04-14-38-17-314.jpg', 'Cư dân sống trong chung cư, được yêu cầu tự cách ly tại nhà.', NULL, '', '', ''),
(11, 9, NULL, '2021-02-04-14-38-17-318.jpg', 'Khoảng 18h50, một xe cứu thương di chuyển vào phía trong tòa nhà, trên xe có lực lượng y tế mặc đồ bảo hộ.', NULL, '', '', ''),
(11, 10, NULL, '2021-02-04-14-38-17-329.jpg', 'Khoảng 20h45, công tác phun khử khuẩn tiến hành bắt đầu từ khu vực sân chơi.', NULL, '', '', ''),
(11, 11, NULL, '2021-02-04-14-38-17-333.jpg', 'Chi nhánh ngân hàng Public Bank ở phố Trần Huy Liệu (Giảng Võ, Ba Đình) nơi bà H. làm việc cũng đã được yêu cầu đóng cửa từ chiều 4/2. Toàn bộ khu vực xung quanh được lực lượng chức năng phun khử khuẩn. Tính đến 15h30 ngày 4/2, Hà Nội ghi nhận 22 ca mắc Covid-19, trong đó, Cầu Giấy (3), Nam Từ Liêm (10), Hai Bà Trưng (2), huyện Mê Linh (3), Đông Anh (3), Đống Đa (1). Hiện thành phố phong tỏa nhiều địa điểm liên quan tới các ca mắc Covid-19 trên.', NULL, '', '', ''),
(12, 1, 'Chiều 4/2, Phó thủ tướng Vũ Đức Đam, Trưởng ban Chỉ đạo quốc gia phòng chống dịch Covid-19, chủ trì cuộc họp trực tuyến với tỉnh Gia Lai.', '', '', '', '', '', ''),
(12, 2, 'Gia Lai là địa phương xuất hiện dịch sau nhưng đến nay đã ghi nhận 18 ca dương tính, 5 ca đang nghi ngờ.', '', '', '', '', '', ''),
(12, 3, 'Chủ tịch UBND tỉnh Gia Lai Võ Ngọc Thành khẳng định địa phương này cơ bản kiểm soát được dịch bệnh tại hai ổ dịch ở huyện Ayun Pa và huyện Ia Pa. Gia Lai đã cách ly 1.401 F1, 7.414 F2; xét nghiệm 2.514 mẫu và đang tăng tốc xét nghiệm. Tỉnh này tiếp tục truy vết, khoanh vùng đặc biệt tại hai huyện Ayun Pa và Ia Pa.', '', '', '', '', '', ''),
(12, 4, '“Tôi lo nhất là ở thành phố Pleiku nhưng chỉ có một ca và hiện đã kiểm soát được. Tỉnh sẽ mở rộng khu vực cách ly liên quan đến ca nhiễm này để làm sạch địa bàn, đảm bảo người dân có một cái Tết an toàn”, ông Thành cho biết.', '2021-02-04-14-43-29-103.jpg', 'Lãnh đạo tỉnh Gia Lai báo cáo trực tuyến với Phó thủ tướng Vũ Đức Đam về tình hình chống dịch Covid-19 tại địa bàn. Ảnh: VGP.', NULL, '', '', ''),
(12, 5, 'Đáng chú ý, tỉnh Gia Lai cũng đề nghị xét nghiệm toàn bộ nhân viên Cảng hàng không Pleiku.', '', '', '', '', '', ''),
(12, 6, 'TS. Đặng Quang Tấn (Cục trưởng Cục Y tế dự phòng, Bộ Y tế) cho biết ngày 3/2, Bộ Y tế đã cử đoàn công tác vào hỗ trợ Gia Lai. Ngoài ra, đoàn của Bệnh viện Bạch Mai, Bệnh viện Chợ Rẫy, Viện Pasteur, Viện Vệ sinh dịch tễ Tây Nguyên, đã vào hỗ trợ tỉnh.', '', '', '', '', '', ''),
(12, 7, 'Làm việc với tỉnh và khảo sát thực tế, Thứ trưởng Bộ Y tế Đỗ Xuân Tuyên đề xuất nhiều giải pháp.', '', '', '', '', '', ''),
(12, 8, 'Bộ Y tế nhận định Gia Lai cần đẩy nhanh tốc độ truy vết và xét nghiệm. Các đơn vị thuộc Bộ Y tế đã vận chuyển hệ thống tách chiết, 3 máy xét nghiệm PCR vào hỗ trợ để nâng cao năng lực xét nghiệm đáp ứng yêu cầu thực tế. Thời điểm này quan trọng nhất vẫn là tăng tốc truy vết và tổ chức cách ly.', '', '', '', '', '', ''),
(12, 9, 'Tại cuộc họp, Bộ Y tế cho biết đã xuất cấp cho Gia Lai khẩu trang y tế, quần áo chuyên dụng và một số trang thiết bị điều trị.', '', '', '', '', '', ''),
(12, 10, 'Phó thủ tướng Vũ Đức Đam biểu dương tỉnh Gia Lai trong thời gian rất ngắn đã đưa toàn bộ guồng máy vào hoạt động rất tốt.', '', '', '', '', '', ''),
(12, 11, 'Phó thủ tướng đề nghị tỉnh Gia Lai tiếp tục quyết liệt, thần tốc hơn nữa trong công tác truy vết.', '', '', '', '', '', ''),
(12, 12, 'Qua thực tiễn, phó thủ tướng cho rằng năng lực xét nghiệm, truy vết là rất quan trọng. Bộ Y tế cần tiếp tục quan tâm, giúp nâng cao năng lực xét nghiệm cho Gia Lai và các tỉnh trong khu vực Tây Nguyên. “Chúng ta phải luôn luôn cảnh giác”, ông nói.', '', '', '', '', '', ''),
(12, 13, 'Theo phó thủ tướng, ổ dịch ở Vân Đồn (Quảng Ninh) coi như đã dập xong. Ổ dịch TP Chí Linh (Hải Dương) cơ bản được kiểm soát rất tốt. Thị xã Đông Triều (Quảng Ninh) tiếp giáp TP Chí Linh đã xin chủ trương, xét nghiệm diện rộng các đối tượng nguy cơ thì sẽ kiểm soát được. Tình hình dịch bệnh ở Hà Nội cũng được kiểm soát tốt.', '', '', '', '', '', ''),
(12, 14, '\"Với tình hình Gia Lai vừa báo cáo, có thể nói đến giờ phút này chúng ta cơ bản không chế được dịch bệnh. Niềm mong mỏi, hy vọng của người dân có một cái Tết yên bình ngày càng đến gần”, phó thủ tướng nhấn mạnh.', '', '', '', '', '', ''),
(13, 1, 'Liên quan đến ca bệnh 1956 mắc Covid-19 tại Hà Nội, Chủ tịch UBND quận Đống Đa Đặng Việt Quân cho biết địa phương đã tổ chức các biện pháp khoanh vùng, cách ly khẩn cấp.', '', '', '', '', '', ''),
(13, 2, '\"Ngay sau khi nắm thông tin ca bệnh từ CDC Hà Nội, quận đã triển khai lực lượng rào chắn, phun khử khuẩn toàn bộ tòa nhà 88 Láng Hạ, nơi cư trú của trường hợp F0. Quận cũng ra thông báo phong tỏa và lấy mẫu xét nghiệm toàn bộ cư dân của tòa nhà\", ông Quân thông tin cho Zing.', '', '', '', '', '', ''),
(13, 3, 'Theo lãnh đạo quận, tòa nhà có khoảng 1.000 dân. Phòng Y tế quận và CDC Hà Nội sẽ phối hợp, cố gắng lấy mẫu, xét nghiệm toàn bộ trong 1-2 ngày tới. Sau khi có kết quả xét nghiệm, quận sẽ xem xét, cân nhắc việc tiếp tục phong tỏa cả tòa nhà hay chỉ một tầng.', '', '', '', '', '', ''),
(13, 4, 'Chiều 4/2, Sở Y tế Hà Nội thông tin về một trường hợp mới mắc Covid-19 ở quận Đống Đa. Ca dương tính mới là F1 của bệnh nhân 1883. Người này là nữ, tên V.H.H., 46 tuổi. Chị H. sống tại chung cư 88 Láng Hạ, phường Láng Hạ, Đống Đa.', '2021-02-04-14-47-52-414.jpg', 'Tòa nhà 88 Láng Hạ được cách ly. Ảnh: KTĐT.', NULL, '', '', ''),
(13, 5, 'H. là nhân viên Ngân hàng Public Bank tại D8, Trần Huy Liệu, Giảng Võ, Ba Đình. Theo điều tra dịch tễ của CDC Hà Nội, bệnh nhân có tiếp xúc với N.A.S. (bệnh nhân 1883) tại cổng trường THCS Giảng Võ vào trưa ngày 27/1 (không nhớ chính xác thời gian gặp, cả 2 không đeo khẩu trang).', '', '', '', '', '', ''),
(13, 6, 'Ngày 27/1-2/2, bệnh nhân có đi làm tại ngân hàng. Ngày 3/2, bệnh nhân được TTYT Đống Đa lấy mẫu xét nghiệm; chuyển cách ly tại Tứ Hiệp, Thanh Trì, Hoàng Mai. Mẫu xét nghiệm do CDC Hà Nội thực hiện khẳng định dương tính ngày 4/2.', '', '', '', '', '', ''),
(13, 7, 'Đây là ca nhiễm thứ 22 được ghi nhận tại Hà Nội kể từ khi đợt dịch lần thứ 3 bùng phát đến nay. 21 ca bệnh mắc Covid-19 trước đó tại 5 quận, huyện: Nam Từ Liêm, Cầu Giấy, Hai Bà Trưng, Đông Anh, Mê Linh.', '', '', '', '', '', ''),
(13, 8, 'Ca bệnh 1883 tên N.A.S., sinh năm 1976, công chứng viên Phòng công chứng số 3 Duy Tân, quận Cầu Giấy.', '', '', '', '', '', ''),
(13, 9, 'Cơ quan chức năng TP Hà Nội đã xác minh được 122 trường hợp tiếp xúc gần với bệnh nhân này. Đến nay, 105 mẫu có kết quả âm tính.', '', '', '', '', '', ''),
(14, 1, NULL, '2021-02-04-14-53-06-999.jpg', 'Khoảng 17h15 ngày 4/2, lực lượng chức năng dựng rào, phong tỏa hai đầu ngõ 73 phố Tam Khương (quận Đống Đa, Hà Nội). Đây là khu vực xảy ra vụ hỏa hoạn khiến 4 người tử vong.', NULL, '', '', ''),
(14, 2, NULL, '2021-02-04-14-53-07-371.jpg', 'Nhân chứng cho biết ngọn lửa bùng lên vào khoảng 13h15 tại một ngôi nhà cấp 4 trong ngõ. Lúc xảy ra sự việc, trong nhà có 4 người đang ngủ.', NULL, '', '', ''),
(14, 3, NULL, '2021-02-04-14-53-07-391.jpg', 'Trao đổi với Zing, thượng tá Trần Đình Nghĩa, Chánh văn phòng Công an Hà Nội, cho biết sáng 4/2, nhóm này rủ thêm một người đến ăn uống trong ngày ông Công, ông Táo. Sau đó, nhóm người này hóa vàng mã. Sau khi hóa vàng mã, một người đi ra ngoài và khóa cổng. Những người còn lại ngủ trong nhà và tử vong', NULL, '', '', ''),
(14, 4, NULL, '2021-02-04-14-53-07-395.jpg', 'Khoảng 14h, lực lượng chức năng có mặt tại hiện trường để dập lửa, đưa các nạn nhân ra ngoài. Theo xác nhận của Bí thư Đảng ủy phường Khương Thượng, cả 4 người này đã tử vong.', NULL, '', '', ''),
(14, 5, NULL, '2021-02-04-14-53-07-400.jpg', 'Lực lượng chức năng sau đó căng bạt, phong tỏa ngôi nhà cũng như con ngõ nơi xảy ra hỏa hoạn và lấy lời khai của nhân chứng.', NULL, '', '', ''),
(14, 6, NULL, '2021-02-04-14-53-07-429.jpg', 'Công nhân ngắt điện khu vực.', NULL, '', '', ''),
(14, 7, NULL, '2021-02-04-14-53-07-438.jpg', 'Bốn người tử vong gồm: L.B.T. (24 tuổi, ở Thanh Hóa), G.V.N. (24 tuổi, ở Bắc Giang), T.D.H. (24 tuổi, ở Nam Định, cùng là sinh viên Đại học Thủy Lợi) và L.B.Đ. (anh trai của L.B.T.).', NULL, '', '', ''),
(14, 8, NULL, '2021-02-04-14-53-07-445.jpg', 'Trao đổi với Zing, ông Lê Hồng Sơn, Phó chủ tịch UBND Hà Nội, cho biết thành phố đã giao Sở Lao động Thương binh và Xã hội, quận Đống Đa, công an thành phố thăm hỏi, hỗ trợ mỗi gia đình có người tử vong 10 triệu đồng.', NULL, '', '', ''),
(15, 1, 'Nhân dịp Tết Nguyên đán Tân Sửu 2021, Thủ tướng Nguyễn Xuân Phúc và Phó thủ tướng thường trực Trương Hòa Bình đã tới dâng hương tưởng nhớ các lãnh đạo Đảng và Nhà nước đã từ trần.', '', '', '', '', '', ''),
(15, 2, 'Thủ tướng Nguyễn Xuân Phúc đã tới dâng hương tưởng nhớ Chủ tịch Hội đồng Nhà nước Võ Chí Công, nhà cách mạng đã tham gia hoạt động thanh niên cộng sản từ năm 1930 và chỉ huy cướp chính quyền ở Quảng Nam - Đà Nẵng vào tháng 3/1945.', '2021-02-04-15-02-48-659.jpg', 'Thủ tướng Nguyễn Xuân Phúc dâng hương tưởng nhớ Chủ tịch Hội đồng Nhà nước Võ Chí Công.', NULL, '', '', ''),
(15, 3, 'Trên cương vị Phó thủ tướng, rồi Phó chủ tịch Hội đồng Bộ trưởng từ năm 1976 đến 1986 và Trưởng tiểu ban nghiên cứu đổi mới cơ chế quản lý kinh tế, đồng chí là người đề xuất dùng danh từ \"Đổi mới\" để làm chủ đề xây dựng nội dung đổi mới cơ chế quản lý, phát triển các thành phần kinh tế từ đầu những năm 80.', '', '', '', '', '', ''),
(15, 4, 'Sau Ðại hội VI, ông giữ cương vị Chủ tịch Hội đồng Nhà nước, đồng thời là Chủ tịch Ủy ban sửa đổi Hiến pháp chỉ đạo việc xây dựng bản Hiến pháp của thời kỳ Đổi mới.', '', '', '', '', '', ''),
(15, 5, 'Tới dâng hương Tổng bí thư của Đảng từ năm 1986 đến năm 1991 - Nguyễn Văn Linh - Thủ tướng nhắc lại những đóng góp to lớn của ông, một trong những nhà lãnh đạo đã đi đầu trong xóa bỏ cơ chế tập trung quan liêu bao cấp, mở ra công cuộc Đổi mới - bước ngoặt có ý nghĩa lịch sử - để sau 35 năm, đất nước ta có được cơ đồ, tiềm lực, vị thế và uy tín quốc tế như ngày nay.', '', '', '', '', '', ''),
(15, 6, 'Thủ tướng Nguyễn Xuân Phúc cũng ân cần thăm hỏi phu nhân Ngô Thị Huệ, lão thành cách mạng, năm nay 103 tuổi, vừa được trao tặng Huy hiệu 85 năm tuổi Đảng.', '', '', '', '', '', ''),
(15, 7, 'Thủ tướng Nguyễn Xuân Phúc cũng đã tới dâng hương tưởng nhớ Chủ tịch nước Lê Đức Anh. Trên cương vị chủ tịch nước từ năm 1992-1997, ông đã cùng tập thể lãnh đạo Đảng, Nhà nước có nhiều quyết sách quan trọng để tái thiết đất nước, khởi xướng công cuộc đổi mới, phá thế bao vây cấm vận và mở rộng quan hệ đối ngoại của đất nước.', '', '', '', '', '', ''),
(15, 8, 'Trước đó, Thủ tướng Nguyễn Xuân Phúc đã tới dâng hương tưởng nhớ ông Phạm Hùng, đảng viên Đảng cộng sản Đông Dương từ năm 1930.', '', '', '', '', '', ''),
(15, 9, 'Giữ trọng trách Chủ tịch Hội đồng Bộ trưởng từ tháng 6/1987 đến tháng 3/1988, ông là vị Thủ tướng thứ ba của Việt Nam sau Chủ tịch Hồ Chí Minh và đồng chí Phạm Văn Đồng, đồng thời là vị Chủ tịch Hội đồng Bộ trưởng đầu tiên của thời kỳ đổi mới và là người rất quan tâm đến đổi mới hoạt động hành pháp của Chính phủ, nhằm xây dựng một Chính phủ năng động, vững mạnh.', '', '', '', '', '', ''),
(15, 10, 'Tới dâng hương tưởng nhớ Thủ tướng Võ Văn Kiệt, Thủ tướng Nguyễn Xuân Phúc nhấn mạnh với tầm tư duy chiến lược, với quyết tâm đổi mới, quyết đoán, ông đã đóng góp xứng đáng vào quá trình hoạch định và tổ chức thực hiện đường lối đổi mới đất nước.', '2021-02-04-15-02-48-691.jpg', 'Thủ tướng Nguyễn Xuân Phúc dâng hương tưởng nhớ Thủ tướng Võ Văn Kiệt.', NULL, '', '', ''),
(15, 11, 'Trên cương vị người đứng đầu Chính phủ từ năm 1991 đến năm 1997, ông đã có tầm nhìn tầm chiến lược về phát triển Đồng bằng sông Cửu Long. Chính phủ nhiệm kỳ này đang tiếp tục theo đuổi bằng Nghị quyết 120 và đẩy mạnh phát triển giao thông, để vùng đồng bằng giàu tiềm năng, không gian sinh sống của hơn 20 triệu người này phát triển bền vững trong điều kiện biến đổi khí hậu đang xảy ra nhanh hơn.', '', '', '', '', '', ''),
(15, 12, 'Tới dâng hương tưởng nhớ Thủ tướng Phan Văn Khải, Thủ tướng Nguyễn Xuân Phúc nhấn mạnh trong gần 9 năm đảm nhận cương vị người đứng đầu Chính phủ từ năm 1997 đến năm 2006, ông Phan Văn Khải là nhà lãnh đạo đã có nhiều đóng góp quan trọng trong đổi mới thể chế pháp luật và hội nhập của đất nước.', '', '', '', '', '', ''),
(15, 13, 'Dấu ấn quan trọng nhất của Chính phủ giai đoạn này là sự ra đời của Luật doanh nghiệp năm 1999, được đánh giá là bước tiến làm thay đổi đất nước, xóa bỏ những rào cản đối với quyền tự do kinh doanh của người dân, mở đường cho khu vực doanh nghiệp tư nhân tìm được chỗ đứng xứng đáng trong nền kinh tế.', '', '', '', '', '', ''),
(15, 14, 'Thủ tướng cũng tới thăm Nhà lưu niệm và dâng hương tưởng nhớ luật sư Nguyễn Hữu Thọ, quyền Chủ tịch nước từ tháng 4/1980 đến tháng 7/1981; Chủ tịch Quốc hội từ năm 1981 đến năm 1987.', '', '', '', '', '', ''),
(15, 15, 'Ông cũng từng là Chủ tịch đầu tiên của Uỷ ban Trung ương Mặt trận Dân tộc giải phóng miền Nam Việt Nam, sau này là Phó chủ tịch nước đầu tiên của nước Việt Nam thống nhất. Đến năm 1988, ông là Chủ tịch Uỷ ban Trung ương Mặt trận Tổ quốc Việt Nam.', '', '', '', '', '', ''),
(16, 1, 'Tổng công ty Cảng hàng không Việt Nam (ACV) vừa thông báo kết quả lấy mẫu xét nghiệm Covid-19 cho cán bộ nhân viên tại các sân bay.', '', '', '', '', '', ''),
(16, 2, 'Tính đến ngày 4/2, ACV ghi nhận 100% cán bộ, công nhân viên được xét nghiệm tại các sân bay Tân Sơn Nhất, Cam Ranh, Cần Thơ, Vinh và Liên Khương âm tính với SARS-CoV-2.', '2021-02-04-15-08-40-962.jpg', 'Tổ chức lấy mẫu xét nghiệm tại sân bay Tân Sơn Nhất. Ảnh: Phú Khánh.', NULL, '', '', ''),
(16, 3, 'Những ngày qua, ACV đã chỉ đạo các Cảng hàng không trực thuộc chủ động liên hệ và đề nghị UBND các tỉnh, thành phố chỉ đạo Trung tâm kiểm soát bệnh tật (CDC) lấy mẫu xét nghiệm Covid-19 đối với toàn thể cán bộ, nhân viên đang làm việc tại các sân bay.', '', '', '', '', '', ''),
(16, 4, 'Những ngày tới, nhân viên tại 16 sân bay gồm Nội Bài, Đà Nẵng, Phú Quốc, Cát Bi, Phú Bài, Buôn Ma Thuột, Phù Cát, Pleiku, Chu Lai, Thọ Xuân, Đồng Hới, Tuy Hòa, Côn Đảo, Điện Biên, Rạch Giá, Cà Mau sẽ được CDC địa phương lấy mẫu xét nghiệm Covid-19.', '', '', '', '', '', ''),
(16, 5, 'ACV cho biết các Cảng hàng không trực thuộc đang quyết liệt triển khai công tác phòng chống dịch theo đúng chỉ đạo của Chính phủ, bảo đảm chất lượng phục vụ hành khách đi lại bằng đường hàng không trong dịp cao điểm Tết Nguyên đán Tân Sửu 2021.', '', '', '', '', '', ''),
(17, 1, 'Ngày 4/2, UBND tỉnh Hải Dương có công văn gửi các tỉnh, thành phố, đề nghị tạo điều kiện cho các xe chở hàng hóa, vật tư, nhu yếu phẩm và các sản phẩm nông nghiệp được lưu thông.', '', '', '', '', '', ''),
(17, 2, 'Văn bản này được gửi đến Hà Nội, Hải Phòng, Quảng Ninh, Bắc Giang, Bắc Ninh, Hưng Yên và Thái Bình.', '2021-02-04-15-11-44-826.jpg', 'Người dân Chí Linh chở cà chua xin được đi qua chốt kiểm dịch. Ảnh: Nguyễn Dương.', NULL, '', '', ''),
(17, 3, 'Hải Dương mong muốn các địa phương tạo điều kiện cho xe chở hàng hóa nói trên của doanh nghiệp trên địa bàn tỉnh này được lưu thông, đặc biệt đến các cảng, cửa khẩu trong thời gian phòng chống dịch Covid-19.', '', '', '', '', '', ''),
(17, 4, '“Với điều kiện lái xe được xét nghiệm Covid-19 và có giấy xác nhận của CDC Hải Dương”, văn bản nêu.', '', '', '', '', '', ''),
(17, 5, 'Theo Sở NN&PTNT Hải Dương, hiện tỉnh này có trên 90.000 con lợn, 2,4 triệu con gà, trên 1,1 triệu vật nuôi khác trong giai đoạn chuẩn bị xuất chuồng.', '', '', '', '', '', ''),
(17, 6, 'Riêng TP Chí Linh có khoảng 1,2 triệu con gà đồi dự kiến bán dịp Tết. Tỉnh này còn có khoảng 7.800 ha rau vụ đông chưa thu hoạch. Trong đó, khó khăn nhất là tiêu thụ cà rốt ở Chí Linh, với khoảng 150 ha.', '', '', '', '', '', ''),
(17, 7, 'Những ngày qua, việc tiêu thụ các mặt hàng nông sản đang chịu tác động do dịch Covid-19. Nhiều tỉnh, thành phố ban hành quy định không tiếp nhận người từ Hải Dương tới hoặc không cho người và phương tiện qua lại địa bàn TP Chí Linh.', '', '', '', '', '', ''),
(17, 8, 'Theo Trung tâm Kiểm soát bệnh tật CDC Hải Dương, đến 15h ngày 4/2, tỉnh này ghi nhận 278 ca mắc Covid-19.', '', '', '', '', '', ''),
(18, 1, 'Chiều 4/2, Bệnh viện Đa khoa tỉnh Gia Lai hoạt động trở lại sau 2 ngày tạm đóng cửa để khử khuẩn, truy vết liên quan đến ca mắc Covid-19.', '', '', '', '', '', ''),
(18, 2, 'Khi bệnh viện hoạt động trở lại, Sở Y tế Gia Lai chịu trách nhiệm hướng dẫn, giám sát các hoạt động an toàn và báo cáo về Ban Chỉ đạo phòng chống dịch Covid-19 kết quả triển khai cũng như các tình huống mới phát sinh. Các đơn vị đảm bảo an toàn cho người bệnh và thân nhân khi có nhu cầu đến khám, chữa bệnh tại bệnh viện.', '', '', '', '', '', ''),
(18, 3, 'Sở Y tế tiếp tục chỉ đạo Trung tâm Kiểm soát bệnh tật tỉnh Gia Lai và các đơn vị liên quan truy vết, xét nghiệm; cách ly tập trung đối với F1, cách ly tại nhà đối với F2; thông báo các địa phương phối hợp kiểm soát, theo dõi chặt việc cách ly phòng, chống dịch.', '', '', '', '', '', ''),
(18, 4, 'Sở Y tế thực hiện xét nghiệm toàn bộ nhân viên của bệnh viện, xét nghiệm F1, F2 và mở rộng cho toàn bộ người trong bệnh viện.', '2021-02-04-15-14-46-733.jpg', 'Bệnh viện Đa khoa tỉnh Gia Lai hoạt động trở lại sau 48 giờ bị phong tỏa. Ảnh: L.T.', NULL, '', '', ''),
(18, 5, 'Sở Y tế Gia Lai cũng tiếp tục chấn chỉnh hệ thống y tế toàn tỉnh, thực hiện nghiêm quy trình phòng chống dịch; làm đầu mối thông tin đến toàn hệ thống y tế để thống nhất thông tin, chỉ đạo.', '', '', '', '', '', ''),
(18, 6, 'Giám đốc Bệnh viện Đa khoa tỉnh Gia Lai phải chịu trách nhiệm triển khai các phương án, kế hoạch chi tiết để đảm bảo an toàn bệnh viện sau khi hoạt động trở lại, tuyệt đối đảm bảo công tác phòng chống dịch.', '', '', '', '', '', ''),
(18, 7, 'Bệnh viện rà soát lại toàn bộ quy trình sàng lọc bệnh nhân để thực hiện theo quy định; phân luồng, chọn lọc, sắp xếp bệnh nhân điều trị phù hợp tại bệnh viện; tăng cường các hoạt động kiểm soát nhiễm khuẩn, phòng lây nhiễm chéo.', '', '', '', '', '', ''),
(18, 8, 'Đến ngày 4/2, tỉnh Gia Lai ghi nhận 14 ca mắc Covid-19. Các ca dương tính chưa có biểu hiện lâm sàng.', '', '', '', '', '', ''),
(19, 1, 'VKS Quân sự Trung ương vừa ban hành cáo trạng truy tố bị can Đinh Tiến Sử (Giám đốc Công ty TNHH Sản xuất, thương mại, dịch vụ Bạch Việt - Bavico), Nguyễn Văn Đạt (Phó giám đốc Bavico kiêm Giám đốc Chi nhánh Bavico Nha Trang) và Bùi Tiến Dũng (phụ trách bộ phận bán hàng bất động sản của Bavico), cùng về tội Lừa đảo chiếm đoạt tài sản.', '2021-02-05-01-58-17-696.jpg', 'Bị can Đinh Tiến Sử. Ảnh: N.V.', NULL, '', '', ''),
(19, 2, 'Cơ quan tố tụng Quân sự Trung ương cáo buộc cả 3 bị can trên đã lừa bán 164 căn hộ tại Bavico Nha Trang cho 125 khách hàng, chiếm đoạt gần 217 tỷ đồng.', '', '', '', '', '', ''),
(19, 3, 'Theo cáo trạng, cuối năm 2013, Công ty Bạch Việt và Bộ Tư lệnh Quân khu 5 thỏa thuận hợp tác đầu tư xây dựng, kinh doanh tại khách sạn Bavico Nha Trang trên đất quốc phòng có địa chỉ ở số 2, đường Phan Bội Châu, TP Nha Trang, Khánh Hòa. Dự án có tổng diện tích đất hơn 3.400 m2.', '', '', '', '', '', ''),
(19, 4, 'Theo các hợp đồng hợp tác đã ký kết giữa Đinh Tiến Sử với Bộ Tư lệnh Quân khu 5, dự án Bavico Nha Trang sẽ thành khu nhà ăn, nhà khách và tổ hợp thương mại, nhà hàng, khách sạn, văn phòng. Và, dự án này thuộc diện không được phép mua bán, chuyển nhượng trong tương lai.', '', '', '', '', '', ''),
(19, 5, 'Sau khi có dự án, Đinh Tiến Sử đã đem thế chấp cho Ngân hàng TMCP Quân đội (MB) toàn bộ tài sản đã, đang và sẽ hình thành tại dự án khách sạn Bavico Nha Trang để vay 185 tỷ đồng.', '', '', '', '', '', ''),
(19, 6, 'Tháng 1/2014, dự án khách sạn Bavico Nha Trang được Sở Xây dựng tỉnh Khánh cấp giấy phép xây dựng 22 tầng nổi và một tầng hầm. Tuy nhiên, Đinh Tiến Sử sau đó đã cho xây dựng 24 tầng nổi và một tầng hầm với tổng cộng 317 phòng.', '', '', '', '', '', ''),
(19, 7, 'Tháng 3/2015, trong khi dự án chưa hoàn thành Đinh Tiến Sử có văn bản gửi Tỉnh ủy, UBND tỉnh Khánh Hòa đề nghị đều chỉnh mục tiêu đầu tư sang khu tổ hợp, gồm: Khách sạn lưu trú, các căn hộ du lịch để bán hoặc cho thuê dài hạn và các dịch vụ phụ trợ đi kèm.', '', '', '', '', '', ''),
(19, 8, 'Dù chưa được UBND tỉnh Khánh Hòa đồng ý, nhưng Đinh Tiến Sử đã cho điều chỉnh dự án và chuyển 126 phòng khách sạn thành 90 căn hộ du lịch. Đồng thời, lập bộ phận bán bất động sản tại dự án Bavico Nha Trang.', '', '', '', '', '', ''),
(19, 9, 'Đến tháng 4/2015, UBND tỉnh Khánh Hòa đã cấp giấy chứng nhận đầu tư điều chỉnh với mục tiêu dự án như kiến nghị của Công ty Bạch Việt.', '2021-02-05-01-58-17-736.jpg', 'Khách sạn Bavico Nha Trang đóng cửa sau khi ông Sử bị bắt. Ảnh: An Bình.', NULL, '', '', ''),
(19, 10, 'Cũng trong thời gian này, Đinh Tiến Sử đã tuyển dụng và bổ nhiệm Bùi Tiến Dũng (ngụ TP Nha Trang) vào chức vụ phụ trách xậy dựng dự án khách sạn Bavico và sau đó là phụ trách bộ phận bán hàng bất động sản của dự án.', '', '', '', '', '', ''),
(19, 11, 'Còn Nguyễn Văn Đạt là bạn học của Đinh Tiến Sử, sau khi dự án Bavico Nha Trang hoàn thành bị can được bổ nhiệm chức Phó giám đốc Công ty Bạch Việt.', '', '', '', '', '', ''),
(19, 12, 'VKS Quân sự Trung ương cáo buộc, dù dự án được xây dựng trên đất quốc phòng và đã thế chấp ngân hàng nên không được mua bán, chuyển nhượng nhưng Đinh Tiến Sử vẫn chỉ đạo cấp dưới liên hệ để ký hợp đồng, tiếp thị để bán căn hộ.', '', '', '', '', '', ''),
(19, 13, 'Theo đó, từ năm 2015-2017, Đinh Tiến Sử, Nguyễn Văn Đạt và Bùi Tiến Dũng đã cung cấp nhiều thông tin gian dối để tạo lòng tin cho người dân, ký hợp đồng bán 164 căn hộ tại Bavico Nha Trang cho 125 khách hàng, chiếm đoạt gần 217 tỷ đồng.', '', '', '', '', '', ''),
(20, 1, 'Ngày 4/2, Công an quận Thanh Xuân, Hà Nội, cho biết cơ quan điều tra đã khởi tố, bắt tạm giam Đào Trọng Hiệp (24 tuổi, quê Thái Nguyên) về tội Hiếp dâm.', '', '', '', '', '', ''),
(20, 2, 'Theo cảnh sát, tối 2/11/2020, Hiệp chở bạn gái cùng quê tên T.N.M. (24 tuổi) đi chơi và ăn uống. Khuya hôm đó, M. đề nghị Hiệp đưa về nhà nhưng anh ta lái xe đi lòng vòng.', '2021-02-05-02-04-30-584.jpg', 'Bị can bị tạm giữ 4 tháng để điều tra. Ảnh: N.T.', NULL, '', '', ''),
(20, 3, 'Đến một nhà nghỉ ở quận Thanh Xuân, Hiệp muốn quan hệ tình dục nên rủ cô gái thuê phòng. Thấy M. từ chối, nam thanh niên đánh rồi ép nạn nhân đi vào bên trong.', '', '', '', '', '', ''),
(20, 4, 'Phát hiện M. nhắn tin cầu cứu người thân, Hiệp giật lấy điện thoại và tắt nguồn.', '', '', '', '', '', ''),
(20, 5, 'Sau khi gây án, anh ta thuê tài xế chở M. về nhà. Ngày 3/11, bị hại trình báo cảnh sát.', '', '', '', '', '', ''),
(20, 6, 'Khi bị công an triệu tập, Hiệp thừa nhận hành vi và khai quen M. qua mạng xã hội.', '', '', '', '', '', ''),
(20, 7, 'Theo Điều 141 Bộ luật hình sự, người nào dùng vũ lực, đe dọa dùng vũ lực hoặc lợi dụng tình trạng không thể tự vệ được của nạn nhân hoặc thủ đoạn khác giao cấu hoặc thực hiện hành vi quan hệ tình dục khác trái với ý muốn của nạn nhân, thì bị phạt 2-15 năm tù.', '', '', '', '', '', ''),
(21, 1, 'Cơ quan Cảnh sát điều tra Công an tỉnh Bình Thuận vừa ra quyết định khởi tố bị can, cấm đi khỏi nơi cư trú đối với 5 cán bộ ở TP Phan Thiết để điều tra về tội Thiếu trách nhiệm gây hậu quả nghiêm trọng.', '2021-02-05-02-07-30-211.jpg', 'Bị can Nguyễn Hữu Hoành, nguyên Phó giám đốc Chi nhánh Văn phòng Đăng ký đất đai TP Phan Thiết, bị bắt ngày 7/1. Ảnh: N.T.', NULL, '', '', ''),
(21, 2, 'Các bị can bị khởi tố gồm: Bạch Dân Vinh (Phó chi cục Thuế TP Phan Thiết), Đỗ Lễ (nhân viên Chi cục Thuế TP Phan Thiết) cùng 3 nhân viên Chi nhánh Văn phòng đăng ký đất đai TP Phan Thiết gồm Lê Thị Thanh Hạnh, Tạ Thị Thanh Huyền, Nguyễn Hồ Luân.', '', '', '', '', '', ''),
(21, 3, 'Theo cơ quan điều tra, bị can Bạch Dân Vinh đã thiếu kiểm tra, kiểm soát trong việc thu tiền sử dụng đất, lệ phí trước bạ gây thiệt hại cho Nhà nước số tiền hơn 3,4 tỷ đồng.', '', '', '', '', '', ''),
(21, 4, 'Bị can Đỗ Lễ đã tự xác định sai thông tin hồ sơ đất ở TP Phan Thiết, gây thiệt hại cho Nhà nước số tiền hơn 310 triệu đồng.', '', '', '', '', '', ''),
(21, 5, 'Còn các nhân viên chi nhánh Văn phòng đăng ký đất đai chi nhánh TP Phan Thiết đã thiếu trách nhiệm tham mưu xác định khu vực, vị trí thửa đất gây thiệt hại cho ngân sách Nhà nước trên 2 tỷ đồng.', '', '', '', '', '', ''),
(21, 6, 'Trước đó, ngày 7/1, Công an Bình Thuận đã bắt giam Nguyễn Hữu Hoành (nguyên Phó giám đốc Chi nhánh Văn phòng Đăng ký đất đai TP Phan Thiết), Trần Văn Đông và Nguyễn Ngọc Quang (các cán bộ Chi cục thuế TP Phan Thiết) về tội Thiếu trách nhiệm gây hậu quả nghiêm trọng.', '', '', '', '', '', ''),
(21, 7, 'Cơ quan điều tra cũng khởi tố, cấm đi khỏi nơi cư trú đối với Nguyễn Ngọc Hải (nguyên Giám đốc Chi nhánh Văn phòng đăng ký đất đai TP Phan Thiết) và dưới quyền Nguyễn Thị Hoàng Oanh.', '', '', '', '', '', ''),
(22, 1, 'Cơ quan chức năng thị xã Đông Triều, tỉnh Quản Ninh vừa tống đạt quyết định xử phạt hành chính 25 triệu đồng đối với ông Đặng Văn Quyết (45 tuổi, trú xã Bình Dương) về hành vi Không thực hiện quyết định, kiểm tra, giám sát, xử lý y tế trước khi ra vào vùng có dịch thuộc nhóm A, theo Nghị định 117 của Chính phủ.', '2021-02-05-02-09-59-588.jpg', 'Công an lập biên bản ông Đặng Văn Quyết. Ảnh: CACC.', NULL, '', '', ''),
(22, 2, 'Sáng 4/2, ông Đặng Văn Quyết sang nhà ông Đoàn Văn Thắng (ở xã An Sinh) để xem mổ lợn. Ông Quyết đi lối đường rừng để tránh sự kiểm tra của chốt kiểm soát của 2 xã.', '', '', '', '', '', ''),
(22, 3, 'Cơ quan chức năng cho biết ông Quyết không khai báo y tế, không đăng ký tạm vắng tạm trú, không thực hiện nghiêm chỉ đạo của chính quyền thị xã về việc thực hiện giãn cách xã hội và lệnh cấm đi lại giữa các vùng đang có dịch.', '', '', '', '', '', ''),
(22, 4, 'Trước đó, thị xã Đông Triều đã ra quyết định phong tỏa 14 phường, xã (trong đó có Bình Dương và An Sinh) để phòng ngừa dịch Covid-19 lây lan. Người đứng đầu thị xã yêu cầu người dân trong vùng phong tỏa nghiêm chỉnh chấp hành các biện pháp phòng chống dịch.', '', '', '', '', '', ''),
(22, 5, 'Lực lượng tại các chốt không cho người ra vào, trừ trường hợp cần thiết như cấp cứu, khám chữa bệnh nhưng phải có ý kiến của Ban Chỉ đạo phòng, chống dịch Covid-19 cấp huyện.', '', '', '', '', '', ''),
(23, 1, 'Ngày 4/2, Công an tỉnh An Giang kết thúc điều tra vụ án, chuyển hồ sơ sang VKSND cùng cấp đề nghị truy tố Hồ Minh Nhật (44 tuổi, ngụ TP.HCM) và Trần Văn Giang (41 tuổi, ngụ Tiền Giang) về tội Vận chuyển trái phép chất ma túy.', '', '', '', '', '', ''),
(23, 2, 'Kết quả điều tra xác định tối 4/7/2020, lực lượng của Đồn Biên phòng cửa khẩu Long Bình đóng tại huyện An Phú (An Giang) bắt quả tang Nhật và Giang vận chuyển từ Camphuchia vào Việt Nam 6 bánh heroin (trọng lượng trên 2 kg) và túi nylon chứa 995 gram ma túy đá.', '2021-02-05-02-13-02-971.jpg', 'Hồ Minh Nhật và Trần Văn Giang. Ảnh: Nhật Linh.', NULL, '', '', ''),
(23, 3, 'Hai bị can khai rằng trước 10 ngày bị bắt, Nhật tình cờ gặp lại bạn tù cùng thụ án tại Trại giam Châu Bình ở Bến Tre. Người này sau đó đưa Nhật, Giang sang Campuchia tìm việc làm.', '', '', '', '', '', ''),
(23, 4, 'Ngày 4/7/2020, một người đàn ông tên Bảy thuê Nhật và Giang mang ma túy về TP.HCM với tiền công 21 triệu đồng. Khi 2 người về đến trạm xe khách Hùng Cường ở thị trấn Long Bình thì bị lực lượng biên phòng phát hiện.', '', '', '', '', '', ''),
(24, 1, 'Cơ quan Cảnh sát điều tra Công an tỉnh Thái Bình mới đây đã hoàn tất kết luận điều tra, đề nghị truy tố vợ chồng Nguyễn Xuân Đường (tức Đường \"Nhuệ\") cùng đồng phạm về tội Cưỡng đoạt tài sản.', '', '', '', '', '', ''),
(24, 2, 'Trước đó, VKSND tỉnh Thái Bình đã trả hồ sơ, yêu cầu điều tra bổ sung vì Nguyễn Thị Dương (vợ Đường \"Nhuệ\") và một số bị can không đồng tình với bản kết luận điều tra trước đó, đồng thời thay đổi toàn bộ lời khai.', '', '', '', '', '', ''),
(24, 3, 'Theo kết luận điều tra, sau khi Đường bắt nộp 500.000 đồng/ca, các đơn vị kinh doanh dịch vụ hỏa táng tỏ thái độ không đồng ý.', '', '', '', '', '', ''),
(24, 4, 'Lúc này, Ninh Đức Lợi (phụ trách thu tiền hỏa táng cho Đường) đã yêu cầu Công ty Hoàng Long (đơn vị quản lý Đài hóa thân Thanh Bình) giảm giá hỏa táng để bù vào số tiền doanh nghiệp phải nộp cho Đường. Tuy nhiên, đề xuất này không được chấp thuận.', '', '', '', '', '', ''),
(24, 5, 'Sau đó, Lợi yêu cầu các đơn vị tại Thái Bình đồng loạt chuyển sang Hải Phòng hỏa táng nhằm tạo sức ép, buộc Công ty Hoàng Long phải giảm giá dịch vụ.', '2021-02-05-02-18-09-990.jpg', 'Theo cơ quan điều tra, Đường \"Nhuệ\" thu phí dịch vụ hỏa táng tại Thái Bình. Ảnh: H.L.', NULL, '', '', ''),
(24, 6, 'Cơ quan điều tra nhận định Đường cùng đàn em \"không có hành vi khách quan đe dọa sẽ dùng vũ lực\" nhưng đã sử dụng thủ đoạn khác để uy hiếp tinh thần của các bên liên quan.', '', '', '', '', '', ''),
(24, 7, 'Cụ thể, Đường thể hiện ý định chiếm lĩnh thế độc quyền của Công ty Thành Phát nhằm thu tiền tang lễ bằng cách tự xưng là chủ tịch hiệp hội tang lễ Thái Bình và yêu cầu đơn vị kinh doanh nộp 500.000 đồng/ca hỏa táng.', '', '', '', '', '', ''),
(24, 8, 'Ngoài ra, bị can còn cùng đàn em trực tiếp tới văn phòng, đe dọa người đại diện Công ty Thành Phát để buộc đơn vị này phải ngưng hoạt động tại Thái Bình.', '', '', '', '', '', ''),
(24, 9, 'Đối với Ninh Đức Lợi, Phạm Văn Úy và Nguyễn Khắc Nin, cơ quan điều tra đánh giá các bị can biết rõ việc Công ty Đường Dương không có chức năng, không đăng ký kinh doanh về lĩnh vực tang lễ và cũng không đầu tư gì cho các cơ sở dịch vụ tang lễ Thái Bình. Tuy nhiên, họ vẫn cùng Đường ăn chặn tiền hỏa táng, cưỡng đoạt tài sản của các đơn vị liên quan.', '', '', '', '', '', ''),
(24, 10, 'Do đó, cơ quan điều tra xác định hành vi của Nguyễn Xuân Đường đủ yếu tố cấu thành tội Cưỡng đoạt tài sản. Những bị can khác là đồng phạm, tham gia vụ án với vai trò người giúp sức.', '', '', '', '', '', ''),
(24, 11, 'Theo cơ quan điều tra, trong giai đoạn truy tố, điều tra bổ sung, Nguyễn Thị Dương đã thay đổi lời khai.', '', '', '', '', '', ''),
(24, 12, 'Bị can khai do bị dụ cung nên khai bản thân ý thức được Đường sẽ dùng những bản hợp đồng có chữ ký, đóng dấu của Dương để áp đặt các đơn vị kinh doanh dịch vụ tại Thái Bình. Sau đó, Dương khai không biết Đường dùng hợp đồng để làm gì và luôn khuyên chồng không sử dụng hợp đồng vào việc vi phạm pháp luật.', '', '', '', '', '', ''),
(24, 13, 'Tuy nhiên, cơ quan điều tra cho biết trong suốt quá trình điều tra, sức khỏe của Dương luôn ổn định. Dương làm việc với cơ quan điều tra mà không bị ai ép buộc, đánh đập. Những lời khai, bản cung của Dương đều được đọc lại, viết tự khai và ký xác nhận.', '', '', '', '', '', ''),
(24, 14, 'Ngoài ra, công an đánh giá Dương là Giám đốc Công ty Đường Dương nên bị can phải nhận thức đầy đủ về các hành động của Nguyễn Xuân Đường.', '', '', '', '', '', ''),
(24, 15, 'Do đó, cơ quan điều tra bác bỏ việc thay đổi lời khai của Dương và kết luận Dương là đồng phạm với Đường với tư cách người giúp sức.', '2021-02-05-02-18-10-024.jpg', 'Cơ quan điều tra bác bỏ việc thay đổi lời khai trong quá trình điều tra bổ sung của Dương. Ảnh: Facebook.', NULL, '', '', ''),
(24, 16, 'Cũng trong quá tình điều tra bổ sung, Quách Việt Cường (người thay thế Lợi đứng ra thu tiền hỏa táng) đã làm đơn kêu oan. Bị can cho rằng chỉ làm theo chỉ đạo, không biết cách thức hoạt động như thế nào và chỉ đi cầm tiền về cho Nguyễn Xuân Đường.', '', '', '', '', '', ''),
(24, 17, 'Tuy nhiên, căn cứ vào các tài liệu điều tra, công an kết luận Cường đồng phạm với Đường trong vụ án. Số tiền bị can thu về cho Đường là hơn 288 triệu đồng.', '', '', '', '', '', ''),
(24, 18, 'Trong quá trình điều tra, Lợi, Nin và Úy thành khẩn khai báo, ăn năn hối cải nên cơ quan điều tra đánh giá các bị can được hưởng tình tiết giảm nhẹ theo quy định tại Khoản 1, Điều 51 Bộ luật hình sự 2015. Còn Đường, Dương và Cường không thành khẩn, bao che đồng phạm nên không được hưởng tình tiết này.', '', '', '', '', '', ''),
(24, 19, 'Từ cuối năm 2017 tới tháng 4/2020, nhóm của Đường chiếm đoạt tổng cộng gần 2,5 tỷ đồng từ 25 bị hại.\r\n\r\nNguyễn Xuân Đường, Nguyễn Thị Dương, Ninh Văn Lợi, Nguyễn Khắc Nin và Phạm Văn Úy bị đề nghị truy tố với khung hình phạt 12-20 năm tù giam. Khung hình phạt được đề nghị với Quách Văn Cường là 7-15 năm tù.\r\n\r\nTrước đó, Đường đang lĩnh 6 năm tù còn Dương lĩnh 4 năm 6 tháng tù do liên quan tới các vụ án xảy ra tại Thái Bình.', '', '', '', '', '', ''),
(25, 1, 'Tối 3/2, Công an tỉnh Bình Dương phối hợp cùng Công an thị xã Bến Cát đang làm rõ vụ án mạng khiến chị T. (27 tuổi, quê ở An Giang) tử vong.', '2021-02-05-02-26-12-926.jpg', 'Người đàn ông Trung Quốc tự sát trên quốc lộ 13. Ảnh: Thanh Kiều.', NULL, '', '', ''),
(25, 2, 'Theo thông tin ban đầu, khoảng 17h cùng ngày, Chang Chao Ching (57 tuổi, quốc tịch Trung Quốc) làm việc tại Công ty TNHH Super Metar ở xã An Tây, thị xã Bến Cát, xảy ra mâu thuẫn với nhân viên công ty là chị T.', '', '', '', '', '', ''),
(25, 3, 'Người đàn ông này đập phá phòng làm việc rồi dùng dao đâm vào cổ nữ nhân viên. Chị T. mất nhiều máu nằm bất tỉnh trong phòng làm việc. Nhân viên trong công ty đưa chị này đi cấp cứu nhưng nạn nhân không qua khỏi.', '', '', '', '', '', ''),
(25, 4, 'Sau khi gây án, ông Chang lên ôtô rời khỏi hiện trường. Nhận được tin báo, Công an thị xã Bến Cát đã truy đuổi và tổ chức chặn xe của nghi phạm.', '', '', '', '', '', ''),
(25, 5, 'Lúc này, ông Chang đã dùng dao tự sát trên quốc lộ 13, đoạn qua phường Mỹ Phước, thị xã Bến Cát. Cảnh sát đã đập cửa kính, đưa nghi phạm đi cấp cứu.', '', '', '', '', '', ''),
(25, 6, 'Nghi phạm đang được cấp cứu tại Bệnh viện Đa khoa Bình Dương dưới sự giám sát của cảnh sát.', '', '', '', '', '', ''),
(26, 1, 'Ngày 4/2, Công an tỉnh Bạc Liêu quyết định xử phạt hành chính Bùi Văn Được (36 tuổi, ngụ xã Minh Diệu, huyện Hòa Bình) 5 triệu đồng vì đã thông tin sai sự thật, xuyên tạc, vu khống, xúc phạm uy tín của cơ quan, tổ chức.', '', '', '', '', '', ''),
(26, 2, 'Được mắc lỗi vi phạm theo quy định tại Điều 101, Nghị định 15 của Chính phủ về xử phạt vi phạm hành chính trong lĩnh vực bưu chính, viễn thông.', '2021-02-05-02-29-07-621.jpg', 'Được ký nhận quyết định xử phạt hành chính. Ảnh: Nhật Tân.', NULL, '', '', ''),
(26, 3, '\"Do Được thành khẩn khai báo, ăn năn hối cải và xin lỗi lực lượng CSGT Công an huyện Hòa Bình nên được xem xét phạt mức thấp nhất\", lãnh đạo Công an Bạc Liêu nói với Zing.', '', '', '', '', '', ''),
(26, 4, 'Giữa tháng 1, lực lượng CSGT Công an huyện Hòa Bình phối hợp với Ban An toàn giao thông xã Minh Diệu tổ chức vá mặt đường hư hỏng trên tuyến đường nông thôn từ xã Minh Diệu đến thị trấn Hòa Bình. Hình ảnh hoạt động này được đăng tải lên mạng xã hội.', '', '', '', '', '', ''),
(26, 5, 'Được lại dùng tài khoản cá nhân của mình để bình luận với nội dung xuyên tạc, sai sự thật.', '2021-02-05-02-29-07-645.jpg', 'Xã Minh Diệu (khoanh đỏ) ở huyện Hòa Bình, tỉnh Bạc Liêu. Ảnh: Google Maps.', NULL, '', '', ''),
(27, 1, 'Ngày 4/2, Công an huyện U Minh Thượng, tỉnh Kiên Giang, tạm giữ hình sự Nguyễn Văn Tý (50 tuổi, ngụ tỉnh Hậu Giang) để điều tra về hành vi cướp giật tài sản.', '2021-02-05-02-31-37-900.jpg', 'Nguyễn Văn Tý. Ảnh: Văn Vũ.', NULL, '', '', ''),
(27, 2, 'Trưa 3/2, Tý gặp ông Trương Văn Huệ (66 tuổi), bán vé số dạo ở xã Hòa Chánh, huyện U Minh Thượng. Sau khi hỏi mua 2 tờ vé số, Tý giật lấy 480.000 đồng của ông Huệ rồi lên xe máy bỏ chạy.', '', '', '', '', '', ''),
(27, 3, 'Nhận được tin báo của người dân, Công an xã Hòa Chánh chặn đường để bắt Tý. Thấy cảnh sát, kẻ cướp nhảy xuống sông nhưng không thoát được.', '2021-02-05-02-31-37-923.jpg', 'Xã Hòa Chánh (khoanh đỏ) ở huyện U Minh Thượng, Kiên Giang. Ảnh: Google Maps.', NULL, '', '', ''),
(28, 1, 'Phó chủ tịch UBND Hà Nội Lê Hồng Sơn cho biết đã chỉ đạo đơn vị TP thăm hỏi, hỗ trợ gia đình các nạn nhân vụ hỏa hoạn làm 4 người chết do đốt vàng mã trên phố Tam Khương, phường Khương Thượng, quận Đống Đa.', '', '', '', '', '', ''),
(28, 2, '\"UBND TP đã giao Sở Lao động Thương binh và Xã hội, quận Đống Đa, công an TP thăm hỏi, hỗ trợ mỗi gia đình có người tử vong 10 triệu đồng\", ông Sơn nói với Zing.', '', '', '', '', '', ''),
(28, 3, 'Sau vụ việc rất thương tâm, UBND TP đã chỉ đạo công an tăng cường tuyên truyền, kiểm tra, phòng chống cháy nổ trên toàn TP dịp Tết Tân Sửu 2021.', '2021-02-05-02-36-22-800.jpg', 'Cảnh sát PCCC đưa thi thể các nạn nhân ra khỏi hiện trường. Ảnh: Hải Nam.', NULL, '', '', ''),
(28, 4, 'UBND TP cũng yêu cầu quận Đống Đa khẩn trương báo cáo về sự việc và đơn vị chức năng xác định sớm nguyên nhân hỏa hoạn.', '', '', '', '', '', ''),
(28, 5, '“TP đã chỉ đạo các quận, huyện chịu trách nhiệm kiểm tra, từ cơ sở sản xuất, nhà dân, hạn chế việc đốt vàng mã, nguyên nhân gây ra các vụ cháy nổ. TP cũng giao các đơn vị mở đợt tuyên truyền cao điểm, trước, trong và sau Tết”, ông Sơn nói.', '', '', '', '', '', ''),
(28, 6, 'Chiều tối 4/2, người quen của 4 nạn nhân tập trung tại Nhà tang lễ Bệnh viện Đống Đa. Tại đây, bộ phận pháp y cùng với người nhà tiến hành nhận dạng các nạn nhân và khám nghiệm tử thi.', '', '', '', '', '', ''),
(28, 7, 'Một nhân viên nhà tang lễ cho biết các nạn nhân không bị bỏng nặng, khả năng tử vong do ngạt khí.', '', '', '', '', '', ''),
(28, 8, 'Trong số các nạn nhân, L.B.Đ. (sinh năm 1993) và L.B.T. (sinh năm 1997) là 2 anh em cùng quê Thanh Hóa, phụ huynh đang trên đường đến Hà Nội. Bên cạnh thân nhân, rất đông bạn bè của các nạn nhân cũng có mặt tại hiện trường. Họ cho biết các nạn nhân là sinh viên.', '', '', '', '', '', ''),
(28, 9, 'Vụ hỏa hoạn xảy ra lúc 14h ngày 4/2, tại ngôi nhà trên phố Tam Khương, phường Khương Thượng, quận Đống Đa, Hà Nội.', '', '', '', '', '', ''),
(28, 10, 'Thượng tá Trần Đình Nghĩa, Chánh văn phòng Công an Hà Nội, cho biết theo điều tra sơ bộ, sáng 4/2, nhóm người ăn uống trong ngày ông Công, ông Táo và hóa vàng mã.', '', '', '', '', '', ''),
(28, 11, '“Sau khi hóa vàng, một người đi ra ngoài và khóa cổng. Những người còn lại ngủ trong nhà và tử vong”, thượng tá Nghĩa cho biết. Phòng Cảnh sát hình sự cùng nhiều lực lượng nghiệp vụ thuộc Công an Hà Nội đã vào cuộc điều tra nguyên nhân hỏa hoạn.', '', '', '', '', '', ''),
(29, 1, 'Thông báo của Bộ Quốc phòng Trung Quốc cho biết tên lửa đã tấn công trúng mục tiêu. Cơ quan này khẳng định vụ thử nghiệm chỉ mang tính phòng vệ, không nhằm vào bất kỳ quốc gia nào.', '', '', '', '', '', ''),
(29, 2, 'Tân Hoa xã cho biết đây là vụ thử thứ năm đối với tên lửa đánh chặn phóng từ mặt đất. Trước đó, nước này từng tuyên bố thử nghiệm thành công trong các năm 2010, 2013, 2014 và 2018.', '2021-02-05-03-35-40-945.jpg', 'Trung Quốc từng tuyên bố thử nghiệm thành công trong các năm 2010, 2013, 2014 và 2018. Ảnh: The Diplomat.', NULL, '', '', ''),
(29, 3, 'Một tên lửa có ba giai đoạn bay: khởi động, giai đoạn giữa và giai đoạn cuối. Tên lửa mà Trung Quốc thử nghiệm có khả năng đánh chặn đối phương trong giai đoạn giữa hành trình.', '', '', '', '', '', ''),
(29, 4, 'Song Zhongping, chuyên gia quân sự Trung Quốc, giữa hành trình là giai đoạn quan trọng nhất để đánh chặn một tên lửa đạn đạo, theo Global Times. Tên lửa mà Trung Quốc thử nghiệm có khả năng nhắm vào tên lửa đối phương khi nó đang trong giai đoạn bay tự do ngoài khí quyển.', '', '', '', '', '', ''),
(29, 5, 'Dù giai đoạn giữa hành trình kéo dài khá lâu, khả năng tấn công một tên lửa ở quỹ đạo cao là rất khó. Do đó, ông Song cho biết mục tiêu của các tên lửa đánh chặn thường là những tên lửa đạn đạo tầm trung hoặc tên lửa đạn đạo xuyên lục địa.', '', '', '', '', '', '');
INSERT INTO `paragraph` (`IdArticle`, `IdParagraph`, `Content`, `Image`, `TitleImage`, `DescriptionImage`, `Video`, `TitleVideo`, `DescriptionVideo`) VALUES
(29, 6, 'Việc đánh chặn tên lửa ở giai đoạn phóng, về mặt kỹ thuật, là dễ hơn, vì khi đó tên lửa vẫn ở gần mặt đất và đang tăng tốc độ. Nhưng việc tiếp cận cơ sở phóng là rất khó khăn, và thường được bảo vệ nghiêm ngặt. Ở giai đoạn cuối, việc đánh chặn cũng khó khăn, vì tốc độ của tên lửa đối phương lúc này rất cao.', '', '', '', '', '', ''),
(29, 7, 'Ông Song khẳng định Trung Quốc đã đạt mức hoàn chỉnh trong việc phát triển hệ thống đánh chặn tên lửa giữa giai đoạn, và vụ thử nghiệm mới nhất cho thấy tỷ lệ thành công cao.', '', '', '', '', '', ''),
(29, 8, 'Theo The Diplomat, lần gần nhất Trung Quốc thử tên lửa đánh chặn giữa hành trình là vào tháng 2/2018. Loại tên lửa được sử dụng khi đó là Dong Neng-3. Nó đã tấn công chính xác mục tiêu là tên lửa đạn đạo tầm trung DF-21.', '', '', '', '', '', ''),
(30, 1, '“Ngoại trưởng Blinken và Phó thủ tướng Phạm Bình Minh tái khẳng định sự tốt đẹp của Quan hệ Đối tác Toàn diện Mỹ - Việt Nam, và thảo luận cam kết chung đối với hòa bình và ổn định ở khu vực Ấn Độ Dương - Thái Bình Dương tự do và mở, cũng như với việc bảo vệ, duy trì khu vực Biển Đông dựa trên luật lệ”, phát ngôn viên Bộ Ngoại giao Mỹ Ned Price cho biết trong thông cáo.', '', '', '', '', '', ''),
(30, 2, 'Ngoại trưởng Blinken và Phó thủ tướng, Bộ trưởng Ngoại giao Phạm Bình Minh cũng ca ngợi thành tựu đáng kể trong quan hệ song phương suốt 25 năm qua, theo thông cáo.', '', '', '', '', '', ''),
(30, 3, 'Hai bộ trưởng cũng thể hiện nguyện vọng \"tiếp tục hợp tác chặt chẽ trong ứng phó với dịch Covid-19\", và thảo luận về diễn biến gần đây ở Myanmar, ông Price cho biết thêm.', '2021-02-05-03-38-15-814.jpg', 'Ngoại trưởng Mỹ Antony Blinken. Ảnh: Getty Images.', NULL, '', '', ''),
(30, 4, 'Trước đó, ngày 27/1, Phó thủ tướng Phạm Bình Minh gửi thư chúc mừng ông Antony Blinken được bổ nhiệm làm Ngoại trưởng Mỹ.', '', '', '', '', '', ''),
(30, 5, 'Theo thông cáo của Bộ Ngoại giao, ông Phạm Bình Minh trong thư đánh giá cao những đóng góp của ông Blinken đối với quan hệ Việt - Mỹ những năm qua.', '', '', '', '', '', ''),
(30, 6, 'Phó thủ tướng khẳng định Việt Nam coi trọng và mong muốn tăng cường quan hệ hai nước theo hướng thực chất, ổn định, lâu dài, dựa trên nguyên tắc tôn trọng luật pháp quốc tế, độc lập, chủ quyền, toàn vẹn lãnh thổ và thể chế chính trị của nhau.', '', '', '', '', '', ''),
(31, 1, 'Trong một bức thư, công tố viên chính của Hạ viện tại phiên tòa, Jamie Raskin, đề nghị ông Trump xuất hiện và trả lời các câu hỏi về vụ tấn công Điện Capitol hôm 6/1. Các luật sư của ông Trump cho rằng đề nghị này là \"chiêu trò PR\", theo AFP.', '', '', '', '', '', ''),
(31, 2, '\"Bức thư của ông chỉ xác nhận những gì mọi người biết: Các vị không thể chứng minh những cáo buộc\" chống lại ông Trump, hai luật sư Bruce Castor và David Schoen cho biết trong thư trả lời hôm 4/2.', '2021-02-05-03-41-00-805.jpg', 'Cựu Tổng thống Donad Trump. Ảnh: AFP.', NULL, '', '', ''),
(31, 3, 'Trong khi các luật sư không cho biết liệu ông Trump có xuất hiện tại tòa hay không, một cố vấn cấp cao của cựu tổng thống, Jason Miller, nói chắc chắn rằng ông Trump sẽ không có mặt.', '', '', '', '', '', ''),
(31, 4, '\"Tổng thống sẽ không tham dự một phiên tòa vi hiến\", ông Miller nói với AFP.', '', '', '', '', '', ''),
(31, 5, 'Phiên tòa xét xử cựu tổng thống Mỹ tại Thượng viện dự kiến diễn ra vào ngày 9/2. Ông Trump đã bị Hạ viện truy tố với cáo buộc \"kích động nổi dậy\" liên quan đến vụ bạo loạn làm 5 người chết tại trụ sở Quốc hội Mỹ cách đây một tháng.', '', '', '', '', '', ''),
(31, 6, 'Ông Raskin đã đề nghị ông Trump xuất hiện và đưa ra lời khai vào tuần tới, trước hoặc trong phiên tòa.', '', '', '', '', '', ''),
(31, 7, 'Ông cho rằng cựu tổng thống, người đang sống tại khu nghỉ dưỡng Mar-a-Lago ở Florida, có rất ít lý do để tránh né việc này. Ông Trump cũng không thể tuyên bố rằng ông quá bận rộn với việc điều hành đất nước như khi ông còn ở Nhà Trắng, theo ông Raskin.', '', '', '', '', '', ''),
(31, 8, 'Ông Raskin cũng cảnh báo rằng nếu ông Trump từ chối, việc này sẽ được coi là củng cố bằng chứng chống lại ông.', '', '', '', '', '', ''),
(31, 9, 'Ông Trump là tổng thống duy nhất bị luận tội hai lần trong lịch sử Mỹ, cũng là tổng thống Mỹ đầu tiên bị xét xử sau khi rời nhiệm sở.', '', '', '', '', '', ''),
(31, 10, 'Trong khi các công tố viên của Hạ viện nói ông phải chịu trách nhiệm về vụ tấn công Điện Capitol, các luật sư của ông cho rằng bất cứ điều gì ông nói trước khi vụ tấn công diễn ra đều là tự do ngôn luận được hiến pháp bảo vệ.', '', '', '', '', '', ''),
(32, 1, 'Phát biểu tại Atlantic Council, một viện chính sách, ông Emmanuel Macron nói chưa thể biết mức độ hiệu quả của vaccine phòng Covid-19 từ Sinopharma hoặc Sinovac, vì “không có chút thông tin nào” được chia sẻ về quá trình thử nghiệm.', '', '', '', '', '', ''),
(32, 2, '“Điều đó có nghĩa là trong trung hạn và dài hạn, gần như chắc chắn rằng nếu vaccine này không hiệu quả, sẽ dẫn đến sự hình thành các biến chủng mới”, ông nói.', '', '', '', '', '', ''),
(32, 3, 'Chỉ một ngày trước đó, Chủ tịch Hội đồng châu Âu Ursula von der Leyen cũng kêu gọi Nga và Trung Quốc “công bố toàn bộ dữ liệu” nếu hai nước này muốn vaccine của mình được Liên minh châu Âu chấp thuận.', '2021-02-05-03-43-27-705.jpg', 'Tổng thống Pháp Emmanuel Macron. Ảnh: AFP.', NULL, '', '', ''),
(32, 4, 'Ngày 29/1, ông Macron cũng ngỏ ý hoài nghi về vaccine do hãng AstraZeneca (của Anh và Thụy Điển) phát triển. Ông nói vaccine của hãng này dường như không hiệu quả với người trên 65 tuổi, dù rằng các nhà quản lý EU đã chấp thuận cho người trưởng thành ở mọi lứa tuổi.', '', '', '', '', '', ''),
(32, 5, 'Ở Pháp, vaccine được phát triển bởi Sanofi, hãng dược hàng đầu nước này, và Viện Pasteur, trung tâm nghiên cứu hàng đầu, đã gặp một số trở ngại.', '', '', '', '', '', ''),
(32, 6, 'Trong cuộc đua tìm kiếm, phát triển vaccine phòng Covid-19, các nước đang cạnh tranh để nghiên cứu và bán vaccine cho các nước khác, như một cách tăng cường ảnh hưởng ngoại giao, kinh tế và uy tín.', '', '', '', '', '', ''),
(32, 7, 'Lãnh đạo Pháp cũng kêu gọi NATO, vốn luôn tập trung vào mối đe dọa từ Nga, thảo luận “cách đối phó các vấn đề mới ở Thái Bình Dương”, cụ thể là Trung Quốc.', '', '', '', '', '', ''),
(33, 1, 'Chiều 3/2, phái đoàn Bộ Quốc phòng Việt Nam và Nga đã có buổi làm việc trực tuyến về các môn thi mà Việt Nam đăng cai trong khuôn khổ Army Games 2021.', '', '', '', '', '', ''),
(33, 2, 'Phía Việt Nam do Thiếu tướng Trần Văn Ba, Phó cục trưởng Cục Quân huấn, Bộ Tổng Tham mưu làm trưởng đoàn. Về phía Bộ Quốc phòng Nga do Chuẩn Đô đốc Subbotin Andrey Nikolaevich, Phó tổng cục trưởng Tổng cục 12 làm trưởng đoàn phụ trách môn thi cứu hộ cứu nạn (CHCN) và Đại tá Radchenko Andrey Vladimirovich, Phó cục trưởng Cục Quân huấn, Lực lượng Lục quân Nga làm trưởng đoàn phụ trách môn thi bắn tỉa.', '', '', '', '', '', ''),
(33, 3, 'Tại buổi làm việc, Thiếu tướng Trần Văn Ba cho biết Việt Nam đăng cai tổ chức 2 môn thi là cứu hộ cứu nạn (CHCN) và bảng 2 môn bắn tỉa dành cho các nước thuộc châu Á - Thái Bình Dương trong khuôn khổ Army Games 2021. Việt Nam cơ bản nhất trí với nội dung 2 môn thi do phía Nga cung cấp.', '2021-02-05-03-46-34-859.jpg', 'Quang cảnh buổi làm việc trực tuyến tại đầu cầu Hà Nội. Ảnh: Báo QĐND.', NULL, '', '', ''),
(33, 4, 'Thiếu tướng Trần Văn Ba đề nghị Bộ Quốc phòng Nga sớm cử chuyên gia sang khảo sát địa điểm để tư vấn hỗ trợ kỹ thuật về chuẩn bị thao trường; đề nghị Bộ Quốc phòng Nga chủ trì thông báo mời các nước tham gia và thường xuyên phối hợp chặt chẽ với Việt Nam làm công tác chuẩn bị và tổ chức cuộc thi.', '', '', '', '', '', ''),
(33, 5, 'Nhất trí với đề nghị của Thiếu tướng Trần Văn Ba, Chuẩn Đô đốc Subbotin Andrei Nikolaievich và Đại tá Radchenko khẳng định, Nga sẽ phối hợp chặt chẽ với Việt Nam để tổ chức hai môn thi CHCN và bắn tỉa. Bộ Quốc phòng Nga tin tưởng Việt Nam tổ chức thành công 2 môn thi trên trong khuôn khổ Army Games 2021, góp phần thúc đẩy quan hệ hợp tác quốc phòng giữa hai nước.', '', '', '', '', '', ''),
(34, 1, 'Người phát ngôn Bộ Quốc phòng Mỹ John Kirby cho biết Bộ trưởng Austin yêu cầu các đơn vị quân đội phải tìm hiểu và thảo luận về chủ nghĩa cực đoan trong 60 ngày tới, AFP cho biết.', '', '', '', '', '', ''),
(34, 2, '\"Mục đích là để củng cố chính sách và giá trị của Lầu Năm Góc đối với hành vi này, đối thoại với các quân nhân để nghe quan điểm của họ, để hiểu về góc nhìn từ quan điểm của họ\", ông Kirby nói.', '', '', '', '', '', ''),
(34, 3, 'Lầu Năm Góc có chính sách không khoan nhượng đối với bất kỳ thành viên tham gia vào hoạt động cực đoan.', '', '', '', '', '', ''),
(34, 4, 'Tuy nhiên, một số quan chức quốc phòng và nhà lập pháp lâu nay chỉ trích nỗ lực của Lầu Năm Góc trong việc sàng lọc và loại bỏ các phần tử cực đoan khỏi hàng ngũ.', '2021-02-05-03-48-53-317.jpg', 'Bộ trưởng Quốc phòng Austin thăm các Vệ binh Quốc gia làm nhiệm vụ bên ngoài Điện Capitol. Ảnh: AFP.', NULL, '', '', ''),
(34, 5, 'Người phát ngôn Kirby cho biết vụ bạo loạn ở Điện Capitol là “một hồi chuông cảnh tỉnh”. Tuy nhiên, ông thừa nhận Lầu Năm Góc vẫn chưa cặn kẽ quy mô của vấn đề mà họ chưa thể giải quyết được.', '', '', '', '', '', ''),
(34, 6, 'Lầu Năm Góc đình chỉ 12 Vệ binh Quốc gia làm nhiệm vụ bảo vệ an ninh cho lễ nhậm chức của Tổng thống Joe Biden, như một phần của chiến dịch sàng lọc chủ nghĩa cực đoan.', '', '', '', '', '', ''),
(34, 7, 'Hôm 1/2, Tổng thống Biden đã dự lễ tang của cảnh sát Brian Sicknick, người tử nạn trong cuộc bạo loạn ở Điện Capitol ngày 6/1. Khi đó, đám đông ủng hộ cựu Tổng thống Donald Trump xông vào tòa nhà quốc hội nhằm cản trở các nhà lập pháp chứng nhận chiến thắng của ông Biden.', '', '', '', '', '', ''),
(35, 1, NULL, '2021-02-05-03-54-32-342.jpg', 'Nhóm nghiên cứu - gồm các chuyên gia Ai Cập và Dominica làm việc tại ngôi đền Taposiris Magna nằm ở miền Bắc Ai Cập bên bờ Địa Trung Hải - đã phát hiện 16 quan tài được chôn cất trong những ngôi mộ bằng đá phổ biến trong thời đại Hy Lạp và La Mã. Bên trong các quan tài chứa xác ướp và một số cổ vật, BBC đưa tin hôm 2/2. Ảnh: Arrow Media.', NULL, '', '', ''),
(35, 2, NULL, '2021-02-05-03-54-32-351.jpg', 'Người Ai Cập cổ đại tin rằng người chết được ban cho những lá bùa bằng vàng có hình dạng giống như chiếc lưỡi để họ có thể nói chuyện trước tòa của thần Osiris ở thế giới bên kia. Theo truyền thuyết, thần Osiris là chúa tể của thế giới bên kia và có quyền năng phán xét người chết. Việc các xác ướp ngậm lưỡi vàng được cho là giúp người chết có thể cầu xin sự nhân từ của thần Osiris ở thế giới bên kia. Ảnh: Arrow Media.', NULL, '', '', ''),
(35, 3, NULL, '2021-02-05-03-54-32-357.jpg', 'Bên trong các ngôi mộ là nhiều xác ướp. Dù các xác ướp đã bị phân hủy, lớp mặt nạ bằng đá bên ngoài phần nhiều vẫn còn nguyên vẹn, giúp nhóm nghiên cứu hình dung người được ướp xác từng có hình dáng như thế nào. Ảnh: Arrow Media.', NULL, '', '', ''),
(35, 4, NULL, '2021-02-05-03-54-32-773.jpg', 'Các vị thần được tạo hình trong các đồ trang trí mạ vàng trên mặt nạ của xác ướp - một vật liệu được làm từ nhiều lớp thạch cao, vải lanh và keo dán - nhà khảo cổ học Kathleen Martinez thuộc Đại học Santo Domingo được Bộ Cổ vật cho biết. Ảnh: Arrow Media.', NULL, '', '', ''),
(35, 5, NULL, '2021-02-05-03-54-32-793.jpg', 'Bà Martinez cho biết thêm các trang trí mạ vàng trên mặt nạ xung quanh đầu của một xác ướp mô tả vương miện, sừng và một con rắn hổ mang. Trên ngực, các trang trí mô tả một chiếc vòng cổ được treo đầu của một con chim ưng - biểu tượng của thần Horus. Các xác ướp và cổ vật được chôn cất có niên đại khoảng 2.000 tuổi. Ảnh: Arrow Media.', NULL, '', '', ''),
(35, 6, NULL, '2021-02-05-03-54-32-803.jpg', 'Khaled Abo El Hamd, tổng giám đốc cơ quan quản lý cổ vật ở Alexandria, cho biết phái đoàn khảo cổ tại Taposiris Magna cũng khai quật được mặt nạ tang lễ của một phụ nữ. Trên mặt nạ có tám vòng hoa bằng vàng và tám mặt nạ bằng đá cẩm thạch khác có từ thời Hy Lạp và La Mã. Ảnh: Stephanie Zesch.', NULL, '', '', ''),
(35, 7, NULL, '2021-02-05-03-54-32-814.jpg', 'Bộ Cổ vật Ấn Độ cho biết một số đồng xu mang tên và chân dung của Nữ hoàng Cleopatra VII cũng đã được tìm thấy bên trong ngôi đền. Cleopatra VII là nữ hoàng cuối cùng của triều đại Ptolemaic. Bà cai trị Ai Cập từ năm 51-30 trước Công nguyên. Sau khi bà qua đời, Ai Cập rơi vào sự thống trị của La Mã. Ảnh: Arrow Media.', NULL, '', '', ''),
(35, 8, NULL, '2021-02-05-03-54-32-838.jpg', 'Taposiris Magna là thành phố cổ đại ở Ai Cập được Pharaoh Ptolemy II Philadelphus thành lập vào khoảng năm 280-270 trước Công nguyên. Taposiris Magna có nghĩa là \"ngôi mộ vĩ đại của Osiris\". Nơi đây được cho là từng đóng vai trò quan trọng trong tuyến thông thương đường thủy giữa Ai Cập và Lybia. Đồ họa: Daily Mail.', NULL, '', '', ''),
(36, 1, NULL, '2021-02-05-04-02-36-535.jpg', 'Do ảnh hưởng của dịch Covid-19, lượng khách du lịch giảm mạnh, người dân hạn chế ăn uống bên ngoài khiến nhiều cửa hàng tại trung tâm Hà Nội rơi vào cảnh ế ẩm. Trong ảnh là một góc phố Hàng Gai, nơi từng có nhiều cửa hàng bán đồ cho khách du lịch.', NULL, '', '', ''),
(36, 2, NULL, '2021-02-05-04-02-36-541.jpg', 'Trên phố Hàng Trống, một khách sạn lớn đã đóng cửa từ tháng 2/2020 và chưa biết khi nào mới có thể mở cửa trở lại.', NULL, '', '', ''),
(36, 3, NULL, '2021-02-05-04-02-36-566.jpg', 'Bên trong, đồ đạc, bàn ghế phủ bụi vì lâu không có người sử dụng. Cửa khách sạn này được gia cố bằng nhiều chiếc khoá lớn.', NULL, '', '', ''),
(36, 4, NULL, '2021-02-05-04-02-36-578.jpg', 'Ngay bên cạnh, một khách sạn cũng quyết định đóng cửa nghỉ Tết sớm. Anh Hà Quang Giang, chủ khách sạn cho biết nhà anh có 15 phòng nhưng thường chỉ 2-3 phòng có khách. Giá phòng cũng giảm xuống mức 300.000-400.000 đồng nên không đủ bù các chi phí vận hành. Hiện, khách sạn của anh không có khách nào.', NULL, '', '', ''),
(36, 5, NULL, '2021-02-05-04-02-36-589.jpg', 'Giá thuê nhà tại đây là 200 triệu đồng/tháng, phải đặt cọc 3 tháng. Trong thời điểm dịch bệnh, chủ nhà giảm giá xuống còn 100 triệu đồng nhưng anh vẫn lỗ lớn. Anh Giang đã đầu tư vào đây vài tỷ đồng làm nội thất nên nếu bỏ, anh sẽ mất hết. Vì thế, anh phải cố gắng cầm cự chờ ngày hết dịch. Hôm nay, anh cùng nhân viên làm lễ cúng ông Công, ông Táo rồi đóng cửa nghỉ Tết sớm.', NULL, '', '', ''),
(36, 6, NULL, '2021-02-05-04-02-36-595.jpg', 'Phố Tạ Hiện vốn nổi tiếng với nhiều cửa hàng đông đúc cũng trở nên vắng vẻ. Nhiều cửa hàng đã đóng cửa sớm vì doanh thu không đủ bù chi phí.', NULL, '', '', ''),
(36, 7, NULL, '2021-02-05-04-02-36-603.jpg', 'Các quán bar mới mở cửa lại được hơn 4 tháng đã đồng loạt phải đóng cửa từ ngày 1/2 theo quyết định của UBND Hà Nội.', NULL, '', '', ''),
(36, 8, NULL, '2021-02-05-04-02-36-609.jpg', 'Nhiều cửa hàng đóng cửa đã trở thành nơi đỗ xe, bán hàng rong. Cá biệt, có người còn ngủ luôn trên vỉa hè các cửa hàng đã đóng.', NULL, '', '', ''),
(36, 9, NULL, '2021-02-05-04-02-36-624.jpg', 'Giấy báo thanh toán tiền điện, nước dán ở nhiều cửa hàng. Tuy nhiên, hầu hết họ đã đóng cửa hoặc chuyển đi nơi khác.', NULL, '', '', ''),
(36, 10, NULL, '2021-02-05-04-02-36-635.jpg', 'Mặt bằng phố Đinh Tiên Hoàng, nơi được coi là trung tâm của trung tâm khi nhìn thẳng ra hồ Gươm, cũng rơi vào trạng thái ế ẩm. Nhiều nơi phải đóng cửa vì không có khách trong khi giá thuê nhà cao.', NULL, '', '', ''),
(37, 1, 'Trong văn bản số 271/TB-UBND, UBND TP Phú Quốc (Kiên Giang) cho biết trong thời gian qua, tình hình vi phạm trong quản lý, sử dụng đất đai trên địa bàn thành phố diễn biến phức tạp, nhất là tình trạng lấn chiếm đất Nhà nước quản lý và đất rừng.', '', '', '', '', '', ''),
(37, 2, 'Bên cạnh đó, ngoài những dự án được cơ quan Nhà nước phê duyệt, vẫn còn một số tổ chức, cá nhân tự ý phân lô, tách thửa, tự chuyển đổi mục đích sử dụng đất, san lấp, làm đường, kéo điện lưới và dây dựng nhà không pháp, nguy cơ hình thành các khu dân cư tự phát không được cấp thẩm quyền phê duyệt.', '', '', '', '', '', ''),
(37, 3, 'UBND TP khẳng định việc chuyển nhượng quyền sử dụng đất trái quy định gây khó khăn cho công tác quản lý Nhà nước về đất đai trên địa bàn thành phố.', '', '', '', '', '', ''),
(37, 4, 'Đặc biệt, sau khi Ủy ban Thường vụ Quốc hội ban hành nghị quyết thành lập TP Phú Quốc và các phường trực thuộc, tình hình giao dịch biến động về quyền sử dụng đất có chiều hướng tăng cao.', '2021-02-05-05-26-46-149.jpg', 'Thị trường bất động sản Phú Quốc nóng trở lại sau thông tin Phú Quốc lên thành phố. Ảnh: Quỳnh Danh.', NULL, '', '', ''),
(37, 5, 'Việc chuyển nhượng, nhận chuyển nhượng quyền sử dụng đất đối với các thửa đất trong các khu vực tiềm ẩn nhiều rủi ro cho người sử dụng đất như điều kiện chuyển mục đích sử dụng đất từ đất nông nghiệp sang đất ở, điều kiện phát triển hạ tầng, quy hoạch phát triển đô thị, quy hoạch và kế hoạch sử dụng đất của khu vực.', '', '', '', '', '', ''),
(37, 6, 'Trước tình hình trên, UBND TP Phú Quốc yêu cầu Chủ tịch UBND các xã, phường trên địa bàn tăng cường lãnh đạo, quản lý đất đai, xây dựng trên địa bàn. Đặc biệt tăng cường công tác kiểm tra, kịp thời ngăn chăn và xử lý dứt điểm các trường hợp vi phạm pháp luật về đất đai, xây dựng và lâm nghiệp, nhất là các hành vi lấn, chiếm đất Nhà nước quản lý và đất rừng, sử dụng đất không đúng mục đích cũng như các hành vi vi phạm trong lĩnh vực đất đai khác.', '', '', '', '', '', ''),
(37, 7, 'Đồng thời, các cơ quan quản lý cần thông báo, tuyên truyền, vận động và hỗ trợ người dân có nhu cầu giao dịch quyền sử dụng đất cần tìm hiểu kỹ các yêu cầu về tính pháp lý của đất, quy hoạch, kế hoạch sử dụng đất và các yêu cầu khác có liên quan, tránh tình trạng tranh chấp, khiếu nại về sau.', '', '', '', '', '', ''),
(37, 8, 'Đối với các tổ chức, cá nhân có nhu cầu nhận chuyển nhượng quyền sử dụng đất cần tìm hiểu thông tin về tính pháp lý của thửa đất, mục đích sử dụng, quy hoạch, kế hoạch sử dụng đất để xác định có phù hợp với nhu cầu sử dụng của mình hay không.', '', '', '', '', '', ''),
(37, 9, 'Đối với trường hợp các tổ chức, cá nhân nhận chuyển nhượng quyền sử dụng đất không có giấy tờ, đất không rõ nguồn gốc, đất chưa được Nhà nước cấp giấy chứng nhận, đất chưa đủ điều kiện thực hiện các quyền chuyển đổi, chuyển nhượng, cho thuê, cho thuê lại, thừa kế, tặng cho, thế chấp quyền sử dụng đất, góp vốn bằng quyền sử dụng đất theo Luật Đất đai năm 2013 sẽ bị xử phạt theo quy định.', '', '', '', '', '', ''),
(38, 1, 'Chính phủ vừa ban hành Nghị định 137/2020/NĐ-CP quy định về quản lý, sử dụng pháo. Một trong những điểm mới chú ý của Nghị định 137 so với Nghị định 36 ban hành năm 2009 là phân định rõ pháo hoa nổ và pháo hoa không gây tiếng nổ. Đồng thời, người dân, doanh nghiệp được sử dụng loại pháo hoa không gây tiếng nổ trong một số trường hợp nhất định.', '', '', '', '', '', ''),
(38, 2, 'Như vậy, Tết Nguyên đán Tân Sửu 2021 người dân được phép sử dụng pháo hoa không tiếng nổ. Theo đó, công ty Công ty TNHH MTV Hoá chất 21 (thuộc Bộ Quốc Phòng) là doanh nghiệp duy nhất tại Việt Nam sản xuất các loại pháo hoa đã sản xuất 6 loại pháo hoa không tiếng nổ phục vụ thị trường Tết năm nay.', '', '', '', '', '', ''),
(38, 3, 'Bao gồm: Sản phẩm ống phun nước bạc; nến cầm tay; cánh hoa xoay; cây hoa lửa; vòng xoay hoa lửa; thác nước bạc.', '2021-02-05-05-30-14-402.jpg', 'Sản phẩm cánh hoa xoay được doanh nghiệp của Bộ Quốc phòng sản xuất. Ảnh: Z121.', NULL, '', '', ''),
(38, 4, 'Theo tìm hiểu, khi phát hoả loại pháo hoa này sẽ tạo ra chùm tia sáng bạc lấp lánh có diện tích kiểu dáng phát sáng theo từng loại sản phẩm và khi phát hoả sẽ không gây ra tiếng nổ.', '', '', '', '', '', ''),
(38, 5, 'Mức giá của các sản phẩm dao động 13.000-450.000 đồng, tuỳ loại. Đơn cử, cây hoa lửa có giá 13.000 đồng/túi (10 cây/túi); cánh hoa xoay 55.000 đồng/cái; ống phun nước bạc kiểu đốt ngoài trời giá 250.000 đồng/hộp (10 ống/hộp); thác nước bạc 2 m giá 450.000 đồng/dây....', '', '', '', '', '', ''),
(38, 6, 'Người dân có nhu cầu và đủ 18 tuổi sẽ được phép mua pháo hoa trực tiếp tại cửa hàng bán sản phẩm của nhà máy tại tỉnh Phú Thọ. Khi mua hàng phải xuất trình chứng minh thư nhân dân, điền thông tin của người mua, các sản phẩm chọn mua để lưu trữ thông tin.', '', '', '', '', '', ''),
(38, 7, 'Ngoài ra, hiện trên thị trường đang bán các loại sản phẩm pháo hoa không tiếng nổ như: Pháo bông (pháo que), pháo phụt sinh nhật, pháo điện... có giá dao động 10.000-250.000 đồng, tuỳ loại.', '', '', '', '', '', ''),
(38, 8, 'Chẳng hạn, pháo bông que cầm tay có giá khoảng 10.000 đồng/bịch (10 que); pháo phụt giấy dùng trong đám cưới, lễ hội từ 159.000 đến 250.000 đồng/6 cây. Bên cạnh đó còn có loại pháo điện sử dụng nhiều trên sân khấu khi tổ chức sự kiện giá từ 20.000 đến 60.000 đồng/quả.', '2021-02-05-05-30-14-840.jpg', 'Sản phẩm ống phun nước bạc sẽ tạo ra một chùm ánh sáng có màu trắng bạc, chiều cao phun 2-3 m, thời gian phun từ 20-30 giây. Ảnh: Z121.', NULL, '', '', ''),
(38, 9, 'Theo thông tin từ Nhà máy Z121, tính đến cuối tháng 1/2021 đơn vị đã sản xuất được gần 120.000 sản phẩm pháo hoa không nổ, đảm bảo cung ứng đầy đủ cho nhu cầu của các địa phương và người dân trong dịp Tết Nguyên đán Tân Sửu 2021.', '', '', '', '', '', ''),
(38, 10, 'Trong đó, sản xuất được 75.000 sản phẩm ống nước bạc ngoài trời và trong nhà; 20.000 cây ống phun hoa lửa cầm tay; 20.000 cây hoa lửa cầm tay; gần 3.000 sản phẩm cánh hoa xoay và một số sản phẩm khác như: vòng xoay hoa lửa, thác nước bạc…', '', '', '', '', '', ''),
(38, 11, 'Những loại pháo hoa này được nghiên cứu kỹ về cơ, lý, hóa, khi phát hỏa không gây ra tiếng nổ, bảo đảm an toàn khi sử dụng. Do đó, tổ chức, cá nhân muốn sử dụng pháo hoa cần tìm đúng địa chỉ của doanh nghiệp hoặc các cơ sở kinh doanh được ủy nhiệm cung ứng, tránh mua phải hàng giả, hàng nhái, hàng nhập lậu, hàng không rõ nguồn gốc, xuất xứ…', '', '', '', '', '', ''),
(38, 12, 'Hiện, Nhà máy Z121 đã chính thức giới thiệu và mở bán các sản phẩm pháo hoa mà người dân được phép sử dụng tại cửa hàng trước cổng Nhà máy, đồng thời triển khai thủ tục mở các cửa hàng giới thiệu và bán pháo hoa tại 29 tỉnh, thành phố trên cả nước. Việc mở các cửa hàng bán các sản phẩm pháo hoa đều lấy tư cách pháp nhân của Nhà máy Z121.', '', '', '', '', '', ''),
(39, 1, '\"Thật xúc động và vui mừng khi em nhận được tiền thưởng Tết vào thời điểm mà các doanh nghiệp đang gặp rất nhiều khó khăn... Cảm ơn anh đã đánh giá cao năng lực của chúng em và thấu hiểu nhu cầu, mong muốn của mọi người\", ông Phan Minh Thông - Chủ tịch HĐQT Phúc Sinh Group - hào hứng chia sẻ với Zing về những dòng tin nhắn mới nhận được từ các nhân viên.', '', '', '', '', '', ''),
(39, 2, 'Ông cho biết, dịp Tết Nguyên đán năm nay, mặc dù chính sách thưởng có phần eo hẹp hơn mọi năm do tác động của đại dịch Covid-19, Phúc Sinh vẫn có lương tháng 13, thậm chí tháng 14 cho đội ngũ. \"Đây là cả một sự nỗ lực lớn của chúng tôi\", ông nhấn mạnh.', '', '', '', '', '', ''),
(39, 3, 'Năm 2020, trong bối cảnh thị trường toàn cầu chịu ảnh hưởng nặng nề của đại dịch, các doanh nghiệp sản xuất, xuất khẩu nông sản như Phúc Sinh gặp không ít khó khăn. Từ sự sụt giảm sức mua tại nhiều thị trường trên toàn cầu cho đến khủng hoảng thiếu vỏ container rỗng, ngành xuất nhập khẩu đang trải qua giai đoạn khó khăn trầm trọng.', '', '', '', '', '', ''),
(39, 4, 'Thế nhưng, từ đầu năm đến nay, Phúc Sinh vẫn có lợi nhuận hàng tháng và trả lương đầy đủ cho nhân viên, thậm có thời điểm làm việc đến 3 ca/ngày để kịp vận hành những dự án mới.', '', '', '', '', '', ''),
(39, 5, 'Kết quả thưởng Tết lần này, theo ông Phan Minh Thông, là sự nỗ lực vượt bậc để toàn thể nhân viên cùng có một cái Tết no ấm như mọi năm. Điều làm ông vui nhất chính là những chia sẻ chân thành và đầy cảm thông từ các đồng nghiệp.', '2021-02-05-05-34-07-711.jpg', 'Ông Phan Minh Thông bày tỏ vui mừng khi nhận được những chia sẻ chân thành từ nhân viên sau kỳ thưởng Tết. Ảnh: Chí Hùng.', NULL, '', '', ''),
(39, 6, 'Bà Trần Thị Việt Hương, Chủ tịch Công đoàn Vietravel cũng khẳng định phải \"cố gắng duy trì một mức thưởng nào đó trong khả năng có thể của công ty để hỗ trợ nhân viên\".', '', '', '', '', '', ''),
(39, 7, 'Như thông lệ hàng năm, thưởng Tết tại doanh nghiệp này sẽ từ 1-2 tháng lương, kèm quà Tết truyền thống và tiền lì xì đầu năm. Tết Tân Sửu 2021, do tình hình kinh doanh chịu tổn thất nặng nề, Vietravel cố gắng giữ nguyên phần quà Tết truyền thống, tiền lì xì và 1 tháng lương bình quân.', '', '', '', '', '', ''),
(39, 8, 'Trước đó, trong các tháng bị ảnh hưởng lớn nhất từ tháng 4-9, doanh nghiệp đã hỗ trợ 3 triệu đồng/người cho hơn 400 nhân viên phải nghỉ không lương. Đối với những nhân sự chủ động chấm dứt hợp đồng lao động, hãng lữ hành này cũng hỗ trợ 1 tháng lương để họ tiếp tục cuộc sống.', '', '', '', '', '', ''),
(39, 9, 'Các chính sách này suy cho cùng đều là sự tri ân của những người chủ doanh nghiệp gửi đến những người lao động đã cùng gắn bó và đồng hành suốt một năm đầy biến động cùng đại dịch.', '', '', '', '', '', ''),
(39, 10, 'Như ông Phạm Quang Anh, Giám đốc Công ty may mặc Dony từng chia sẻ với Zing vào thời điểm đầu năm mới 2021, đây là thời điểm ý nghĩa nhất để gửi lời tri ân đến mọi người. \"Điều quan trọng bây giờ tập trung tích cóp tiền mặt để đảm bảo một cái Tết yên ấm cho toàn đội ngũ\", ông nói.', '', '', '', '', '', ''),
(39, 11, 'Thậm chí, tại Tôn Đông Á, Chủ tịch Nguyễn Thanh Trung còn cho biết mức thưởng Tết năm nay tăng rất nhiều so với năm ngoái. Trong bối cảnh không ít đơn vị phải cắt giảm lương nhân viên, doanh nghiệp này cũng tiến hành tăng lương trong năm 2020.', '2021-02-05-05-34-07-741.jpg', 'Ông Nguyễn Thanh Trung tự hào chia sẻ về chính sách tăng lương, thưởng Tết trong năm vừa qua. Ảnh: Phương Lâm.', NULL, '', '', ''),
(39, 12, '\"Kết thúc năm 2019, ban giám đốc đánh giá thấy nền tảng công ty đã hoàn thiện, hoạt động sản xuất kinh doanh dần đi vào ổn định, dự kiến biên lợi nhuận tiếp tục tăng lên, nên có kế hoạch tăng lương cho toàn công ty từ tháng 4.', '', '', '', '', '', ''),
(39, 13, 'Nhưng Covid-19 xảy ra, chúng tôi buộc phải rà soát, xem xét lại để cân chỉnh cho chính xác. Đến tháng 6 thì công ty điều chỉnh tăng lương gần 20% cho toàn hệ thống. Đây là điểm nổi bật nhất của Tôn Đông Á trong năm 2020\", ông Nguyễn Thanh Trung chia sẻ.', '', '', '', '', '', ''),
(39, 14, 'Theo vị lãnh đạo doanh nghiệp này, lương thưởng là vấn đề quan trọng tại mỗi doanh nghiệp, cần đảm bảo mức sống tốt hơn mỗi ngày cho người lao động trên cơ sở công bằng, minh bạch.', '', '', '', '', '', ''),
(39, 15, '\"Tất nhiên không thể cân đong đo đếm lương thưởng như dùng cân tiểu ly, nhưng phải cố gắng hài hòa nhất. Như vậy mới thuyết phục được anh em, cho họ niềm tin để tiếp tục cống hiến cùng Tôn Đông Á\", ông nhấn mạnh.', '', '', '', '', '', ''),
(39, 16, 'Quan điểm này cũng được nhiều doanh nghiệp đồng tình, đặc biệt trong giai đoạn kinh doanh còn nhiều rủi ro như hiện tại.', '', '', '', '', '', ''),
(39, 17, '\"Bây giờ mỗi người đi làm là một chiến sỹ, phải làm gấp 2-3 lần những người ở nhà để sớm kéo đồng nghiệp quay trở lại với công việc. Chúng tôi thường xuyên động viên nhân viên như vậy, mong mọi người hiểu và đồng hành cùng Vietravel\", bà Việt Hương chia sẻ.', '', '', '', '', '', ''),
(39, 18, 'Báo cáo về tình hình lương, thưởng Tết cho người lao động năm 2021 của Bộ Lao động Thương binh và Xã hội (LĐTB&XH), cho biết trong tổng số hơn 62.600 doanh nghiệp có báo cáo kế hoạch thưởng Tết, khoảng 55,6% có mức thưởng bình quân gần bằng 1 tháng lương là 6,36 triệu đồng/người, đạt 95% so với thưởng dịp Tết Nguyên đán 2020.', '', '', '', '', '', ''),
(39, 19, 'Mức thưởng cao nhất dịp Tết Tân Sửu 2021 là 1,07 tỷ đồng, thuộc về một doanh nghiệp dân doanh ở TP.HCM. Tại Hà Nội, mức thưởng cao nhất là 400 triệu đồng, Đà Nẵng là 127 triệu đồng, Đồng Nai là 600 triệu đồng và Bình Dương là 497 triệu đồng.', '', '', '', '', '', ''),
(39, 20, 'Đánh giá chung về mức lương năm 2020 và thưởng Tết 2021, Bộ LĐTB&XH cho biết ảnh hưởng của dịch Covid-19 khiến tình hình lao động, việc làm và tiền lương, tiền thưởng của người lao động giảm so với năm 2019. Đến thời điểm khảo sát, vẫn còn khoảng 50% doanh nghiệp chưa có kế hoạch thưởng Tết cho người lao động.', '', '', '', '', '', ''),
(40, 1, 'Ngày 31/1, trong khi vệ sinh máy bay sau chuyến VN215 từ Hà Nội đến TP.HCM, anh Phạm Hữu Tuân, kíp trưởng Đội Dịch vụ trên tàu của Công ty Phục vụ mặt đất sân bay Việt Nam (VIAGS) - đơn vị thành viên của Vietnam Airlines - tại TP.HCM đã phát hiện số tiền mặt lớn cùng nhiều tài sản giá trị giá 260 triệu đồng bị để quên, nên nhanh chóng trao trả lại cho hành khách.', '2021-02-05-05-36-06-945.jpg', 'Lượng tiền mặt và tài sản giá trị 260 triệu đồng được tìm thấy trên chuyến bay VN215 từ Hà Nội đi TP.HCM ngày 31/1. Ảnh: HVN.', NULL, '', '', ''),
(40, 2, 'Đáng chú ý, đây không phải lần đầu tiên anh Phạm Hữu Tuân phát hiện và trả lại tài sản cho khách bỏ quên trên máy bay. Năm 2019, anh Tuân đã 91 lần nhặt và trả lại tài sản cho khách hàng bao gồm 19 chiếc điện thoại di động, 12 chiếc máy tính bảng, 15 USD, 8.898.000 đồng và nhiều vật dụng cá nhân khác.', '', '', '', '', '', ''),
(40, 3, 'Năm 2020, anh Tuân đã 106 lần nhặt và trả lại tài sản gồm 28 chiếc điện thoại di động, 6 chiếc máy tính bảng, 3.322 USD, 10.000 won, 88.778.000 đồng, 145.000 yen cùng nhiều vật dụng khác.', '', '', '', '', '', ''),
(40, 4, 'Trước đó, trên chuyến bay VN266 từ TP.HCM đi Hà Nội ngày 8/1, một nữ hành khách đánh rơi một chiếc nhẫn kim cương trong khoang thương gia. Theo hành khách, chiếc nhẫn có giá trị khoảng 65 triệu đồng.', '', '', '', '', '', ''),
(40, 5, 'Xa hơn nữa, đã có không ít khách bay bỏ quên tiền mặt, hàng hiệu có giá trị trên máy bay. Có trường hợp vào tháng 9/2020, một hành khách bỏ quên gần 300 triệu đồng, bao gồm lượng tiền mặt quy đổi tương đương 285 triệu đồng, 2 chiếc điện thoại iPhone, một điện thoại Nokia và nhiều tài sản khác.', '', '', '', '', '', ''),
(40, 6, 'Các hãng hàng không khuyến cáo hành khách nên kiểm tra lại tư trang tại vị trí ngồi và hành lý xách tay trước khi rời máy bay để tránh trường hợp bỏ quên các vật dụng có giá trị. Theo thống kê, năm 2020 Trung tâm Phục vụ sân đỗ của VIAGS Tân Sơn Nhất đã nhiều lần phát hiện và giao nộp tài sản thất lạc của hành khách, bao gồm 5.320 tài sản và gần 3 tỷ đồng tiền mặt quy đổi.', '', '', '', '', '', ''),
(41, 1, 'Trong dịp cao điểm Tết Nguyên đán năm 2021, từ ngày 1-28/2, sân bay Tân Sơn Nhất (TP.HCM) trong khung giờ đêm (0h - 5h59) sẽ được điều phối ở mức 36 chuyến bay/giờ thay vì 32 chuyến/giờ như công bố trước đó.', '', '', '', '', '', ''),
(41, 2, 'Quyết định này được đưa ra sau khi cơ quan này xem xét các đề xuất của Tổng công ty Quản lý bay Việt Nam (VATM) và Tổng công ty Cảng hàng không Việt Nam (ACV) về thời gian hoạt động tại một số cảng hàng không, sân bay, tạo điều kiện cho hoạt động khai thác của các hãng hàng không, đáp ứng nhu cầu đi lại bằng đường hàng không trong dịp cao điểm Tết Nguyên đán Tân Sửu.', '2021-02-05-05-38-37-941.jpg', 'Sân bay Tân Sơn Nhất sẽ được tăng điều phối bay đêm từ 32 lên 36 chuyến/đêm trước dịp cao điểm Tết Nguyên đán 2020. Ảnh: Khánh Huyền.', NULL, '', '', ''),
(41, 3, 'Cục Hàng không cũng yêu cầu VATM và ACV điều chỉnh thời gian hoạt động tại một số cảng hàng không Thọ Xuân, Phù Cát, Chu Lai Pleiku, Đồng Hới, Tuy Hòa trong dịp cao điểm Tết Nguyên đán năm 2021. Hai doanh nghiệp cũng được yêu cầu chuẩn bị nguồn lực, trang thiết bị để đảm bảo phục vụ các chuyến bay vào các khung giờ đêm của các hãng hàng không Việt Nam trên cơ sở lịch bay của các hãng hàng không.', '', '', '', '', '', ''),
(41, 4, 'ACV cũng được giao giám sát, tổng hợp báo cáo Hội đồng điều phối slot về việc thực hiện khai thác của các hãng hàng không Việt Nam.', '', '', '', '', '', ''),
(41, 5, 'Cũng theo nhà chức trách hàng không, trường hợp hãng hàng không có kế hoạch khai thác nhưng tỷ lệ thực hiện dưới 50%, Hội đồng slot sẽ xem xét, kiến nghị Cục Hàng không không phân bổ thêm slot sau 23 giờ trong lịch bay mùa Đông 2021/2022, đặc biệt trong giai đoạn cao điểm Tết Nguyên đán 2022.', '', '', '', '', '', ''),
(41, 6, 'Theo lãnh đạo Cục Hàng không, trong giai đoạn Tết 2021, các hãng đã lập kế hoạch khai thác trung bình hơn 1.000 chuyến bay nội địa/ngày, tăng 28% so với cùng kỳ Tết năm trước và ngày cao điểm nhất đạt 1.200 chuyến bay/ngày, tăng 25,3% so với cùng kỳ Tết năm trước.', '', '', '', '', '', ''),
(42, 1, 'Ngày 23 tháng Chạp, thị trường cá chép phục vụ Tết ông Công ông Táo khá sôi động. Nhiều tiểu thương cho biết năm nay giá cá chép tăng mạnh, từ 2 tới 3 lần so với mọi năm.', '', '', '', '', '', ''),
(42, 2, 'Theo khảo sát, cá chép đỏ truyền thống được lựa chọn để cúng ông Công ông Táo có giá bán lẻ dao động 15.000-25.000 đồng/con đối với cá nhỏ, loại trung bình dao động 30.000-45.000 đồng/con và loại có kích thước lớn hơn có giá 50.000-55.000 đồng/con.', '', '', '', '', '', ''),
(42, 3, 'Năm nay, bên cạnh cá chép ta, cá chép Koi cũng được được rao bán phục vụ ngày Tết ông Công ông Táo với giá bán từ 200.000 đồng/kg. Anh Khánh Giáp, một tiểu thương bán buôn tại chợ cá Yên Sở (Hoàng Mai, Hà Nội) cho biết năm nay là năm đầu tiên anh bán cá chép Koi ngày Tết ông Công ông Táo.', '', '', '', '', '', ''),
(42, 4, '\"Đến gần trưa nay tôi đã bán hết khoảng 5 tạ cá chép Koi\", anh nói. Tại cửa hàng anh, cá Koi được lai tạo từ vườn nuôi ở Nam Định. Cá Koi cũng thuộc họ nhà cá chép, nên có thể làm lễ cúng trong ngày 23 tháng Chạp.', '', '', '', '', '', ''),
(42, 5, 'Tại quầy cá của anh Giáp, cá chép Koi có trọng lượng phổ biến khoảng 100-200 gram, giá bán buôn khoảng 200.000 đồng/kg. \"Nhiều khách hàng thấy lạ cũng mua về thả trong bể cá\", anh cho biết thêm.', '2021-02-05-05-41-58-825.jpg', 'Ngoài cá chép đỏ, năm nay tại chợ cá lớn nhất Hà Nội có bán cá chép Koi phục vụ ngày Tết ông Công ông Táo. Ảnh: Việt Linh.', NULL, '', '', ''),
(42, 6, 'Tương tự, anh Sáng (Mĩ Lộc, Nam Định) cũng rao bán cá Koi phục vụ cúng ông Công ông Táo. Theo anh, cá chép Việt Nam hay cá Koi của Nhật đều được, tuỳ vào điều kiện và sự thành tâm của gia chủ. \"Bình thường tôi bán cá Koi phục vụ khách chơi Tết, nhưng năm ngoái thấy có nhiều người có nhu cầu mua cá cúng 23 tháng Chạp nên năm nay tôi đăng bán\", anh nói.', '', '', '', '', '', ''),
(42, 7, '“Khách mua nên chọn con cá chép Koi có màu đỏ để cúng ông Công ông Táo. Cá Koi bơi khoẻ, biểu tượng vượt vũ môn, nên nhiều người chọn loại cá này với mong muốn cá nhà mình về đích sớm, nhanh hơn các nhà khác”, anh cho biết thêm.', '', '', '', '', '', ''),
(42, 8, 'Ngoài cá Koi thật, năm nay cá Koi làm từ bột nếp, rau câu cũng rất được ưa chuộng. Chị Yến, kinh doanh online cho biết 2 năm nay đến dịp Tết chị lại nhận đơn đặt làm chè trôi nước cá Koi từ đầu tháng Chạp và trả hàng từ 20-23 âm lịch. Bánh được chị làm sẵn cho vào tủ, cấp đông. \"Khách mua về chỉ cần hấp lên, vớt ra ngâm nước đường là có thể sử dụng. Một khay cá chép gồm 3-5 con có giá 45.000-100.000 đồng\", chị nói.', '2021-02-05-05-41-58-836.jpg', 'Cá Koi làm từ rau câu cũng rất được ưa chuộng trong dịp Tết ông Công, ông Táo năm nay. Ảnh: T.T.', NULL, '', '', ''),
(42, 9, 'Vừa đặt một khay bánh trôi 3 con cá chép Koi chờ ngày 23 đến lấy, chị Mai (Thanh Xuân, Hà Nội) chia sẻ: \"Mọi năm tôi hay ra chợ mua cá về cúng rồi phải đi xa để thả cá. Tuy nhiên, năm nay tôi chọn mua bánh trôi cá Koi về cúng, vừa đỡ mất thời gian, vừa ăn được. Tín ngưỡng thì chỉ cần cúng tượng trưng được rồi, quan trọng là có thành tâm hay không\".', '', '', '', '', '', ''),
(42, 10, 'Theo phong tục cổ truyền của người Việt, ngày 23 tháng Chạp, ông Công và ông Táo sẽ cưỡi cá chép về trời, thưa với Ngọc Hoàng những sự kiện xảy ra dưới trần gian trong một năm qua. Ngoài ra, cá chép còn là biểu tượng của sự an lành, cá chép vượt vũ môn hóa rồng, rồng gọi mưa giúp vạn vật sinh sôi nảy nở.', '', '', '', '', '', ''),
(42, 11, 'Vì vậy, hàng năm vào ngày này, người dân khắp cả nước đều chuẩn bị lễ với các vật phẩm, gồm cá chép sống, giấy tiền vàng mã, hoa tươi để ông Táo về chầu trời.', '', '', '', '', '', ''),
(43, 1, 'Trong bối cảnh Trung Quốc tăng cường kiểm soát chống độc quyền nhằm vào với các gã khổng lồ công nghệ tại nước này, hai ông lớn trong ngành công nghiệp Internet tiếp tục tranh cãi nảy lửa, cho thấy sự cạnh tranh gay gắt giữa các \"con cá voi\" trong ngành.', '', '', '', '', '', ''),
(43, 2, 'Theo CNN, Douyin - phiên bản Trung Quốc của ứng dụng video TikTok - đã đệ đơn kiện tập đoàn Tencent vào ngày 2/2. Trong tuyên bố của mình, Douyin khẳng định gã khổng lồ truyền thông xã hội có trụ sở tại Thâm Quyến đã lạm dụng \"sự độc quyền thị trường\" của mình để cạnh tranh không lành mạnh với các đối thủ.', '', '', '', '', '', ''),
(43, 3, 'Theo đó, Douyin cáo buộc các ứng dụng nhắn tin WeChat và QQ của Tencent cấm người dùng chia sẻ các nội dung từ Douyin trong vòng ba năm. Điều này gây ảnh hưởng đến hoạt động kinh doanh và lan tỏa danh tiếng của Douyin khi WeChat và QQ là hai kênh nhắn tin phổ biến bậc nhất ở Trung Quốc.', '2021-02-05-05-45-01-324.jpg', 'Douyin - ứng dụng video \"song sinh\" của TikTok - kiện Tencent vi phạm các quy định cạnh tranh thương mại. Ảnh: Techinasia.', NULL, '', '', ''),
(43, 4, 'Một số nguồn tin cho biết đơn kiện được đệ trình lên Tòa án Sở hữu Trí tuệ Bắc Kinh. Các hãng truyền thông lớn tại Trung Quốc, bao gồm Nhật báo Bắc Kinh, đưa tin Douyin yêu cầu Tencent dỡ bỏ các hạn chế này và bồi thường thiệt hại kinh tế 90 triệu nhân dân tệ (14 triệu USD) cùng phí tòa án đi kèm.', '', '', '', '', '', ''),
(43, 5, '\"Sự cạnh tranh trong ngành sẽ thúc đẩy sự đổi mới và có nhiều lợi ích hơn cho người tiêu dùng\", người phát ngôn của Douyin nói với CNN Business. \"Douyin đệ đơn kiện này để bảo vệ quyền lợi của riêng chúng tôi và cả những người dùng của chúng tôi\".', '', '', '', '', '', ''),
(43, 6, 'Đáp trả thông tin này, đại diện Tencent phản đối: \"Các cáo buộc ác ý từ ByteDance là hoàn toàn sai sự thật. Douyin đã lấy thông tin người dùng WeChat một cách bất hợp pháp và vi phạm quyền riêng tư người dùng của chúng tôi\". Người phát ngôn của Tencent cũng cho biết trong tuyên bố riêng rằng công ty đang có kế hoạch kiện ngược lại ByteDance - công ty mẹ của Douyin và TikTok.', '', '', '', '', '', ''),
(43, 7, 'ByteDance và Tencent là hai trong số các tập đoàn lớn nhất trong lĩnh vực mạng xã hội tại Trung Quốc. Ứng dụng nhắn tin WeChat của Tencent có hơn 1,2 tỷ người dùng hoạt động hàng tháng, trong khi ứng dụng QQ có gần 700 triệu người dùng. Tháng trước, Douyin của ByteDance cũng cho biết nền tảng có trung bình 600 triệu người dùng hoạt động mỗi ngày.', '', '', '', '', '', ''),
(43, 8, 'Hai công ty bất đầu trạng thái đối đầu từ nhiều năm qua. Từ năm 2018, cả hai thường xuyên cáo buộc nhau hành vi cạnh tranh không lành mạnh, có khi phải đưa nhau lên tòa.', '', '', '', '', '', ''),
(44, 1, 'Ngày 4/2, Elon Musk đã đăng tải những dòng trạng thái lên Twitter thể hiện sự hứng thú của ông với Dogecoin. Ngay sau đó, đồng tiền mã hóa này lại tiếp tục được đẩy giá trị lên.', '2021-02-05-05-49-46-640.jpg', 'Elon Musk đã liên tục làm đồng tiền Dogecoin biến động trong thời gian qua. Ảnh chụp màn hình.', NULL, '', '', ''),
(44, 2, 'Theo Market Watch, chỉ với một dòng tweet \"Doge\", Musk đã giúp giá trị của Dogecoin tăng thêm khoảng 44%. Hiện, đồng tiền này đang ở mức 0.04950567 USD, dữ liệu được lấy từ CoinGecko. Vào lúc đỉnh điểm, Dogecoin đạt 0.057624 USD.', '2021-02-05-05-49-46-644.jpg', 'Dogecoin biến động liên tục khiến việc tích trữ đồng tiền cũng chứa đựng rủi ro. Ảnh chụp màn hình.', NULL, '', '', ''),
(44, 3, 'Trong thời gian qua, Elon Musk đã liên tục giúp giá trị Dogecoin tăng đột biến. Bên cạnh vị CEO của Tesla, đồng tiền này còn được một diễn đàn trên Reddit có tên SatoshiStreetBets thúc đẩy. Cụ thể, nhóm người này đã liên tục kêu gọi nhiều nhà đầu tư ở Ấn Độ và châu Âu hỗ trợ đấy giá trị Dogecoin lên trong nhiều giờ.', '2021-02-05-05-49-46-649.png', 'Vị tỷ phú thể hiện sự hứng thú với Dogecoin. Ảnh chụp màn hình.', NULL, '', '', ''),
(44, 4, 'Dogecoin là đồng tiền mã hóa được lấy cảm hứng thiết kế từ meme nổi tiếng, Doge. Trước đây, nó không quá nổi bật so với Bitcoin với Ethereum. Hiện, Dogecoin đã trở thành đồng tiền mã hóa xếp thứ 9.', '', '', '', '', '', ''),
(44, 5, 'Vào ngày 1/2, Elon Musk từng chia sẻ trên Clubhouse - mạng xã hội trò chuyện bằng âm thanh - rằng \"Bitcoin là đồng tiền tốt\" và ông đã \"chậm chân trong buổi tiệc\". Động thái này đã làm giá trị Bitcoin tăng vọt.', '', '', '', '', '', ''),
(44, 6, 'Cũng tại ứng dụng Clubhouse, Musk cho biết những bình luận của mình về Dogecoin chỉ là nói đùa và \"kết quả của việc đó có thể biến Dogecoin trở thành tiền tệ của Trái Đất trong tương lai\".', '', '', '', '', '', ''),
(44, 7, 'Tuy nhiên, với những dòng trạng thái Elon Musk đăng tải hiện tại, tuyên bố của vị tỷ phú cũng khiến nhiều người hoài nghi ông có thực sự đùa khi nói về Dogecoin.', '', '', '', '', '', ''),
(44, 8, 'Thời gian gần đây, đồng tiền mã hóa liên tục biến động do động thái của những nhà đầu tư cá nhân. Hơn nữa, các diễn đàn như Reddit, Twitter đã góp phần không nhỏ vào việc thay đổi giá trị của một đồng tiền.', '', '', '', '', '', ''),
(44, 9, 'Việc các nhà đầu tư có tác động thế nào đến thị trường chứng khoán vẫn là một dấu hỏi lớn. Tuy nhiên đầu cơ Dogecoin vẫn có thể mang lại nhiều rủi ro nếu nhà đầu tư tích trữ quá lâu và chịu lỗ vì đồng tiền rớt giá.', '', '', '', '', '', ''),
(45, 1, 'Với những gì đạt được, hãng cho thấy tiềm năng phát triển, biến thách thức thành cơ hội để khẳng định vị trí trên thị trường.', '', '', '', '', '', ''),
(45, 2, 'Năm 2020, Realme đạt nhiều giải thưởng lớn, mở rộng nhận diện thương hiệu nhờ các sản phẩm chất lượng và cột mốc kinh doanh. Thành công này cho thấy hãng bước đi vững chắc so với tình hình chung của ngành công nghiệp smartphone. Những yếu tố trẻ trung thể hiện qua khẩu hiệu “Dám thể hiện - Là chính mình” (Dare to Leap), cùng chiến lược kinh doanh bài bản, sản phẩm có cấu hình ổn định, thiết kế bắt kịp xu hướng tạo sự đồng điệu với nhóm người dùng trẻ.', '', '', '', '', '', ''),
(45, 3, '“Tại Realme, chúng tôi đi theo triết lý ‘dám nhảy vọt’ về sáng tạo, thiết kế cũng như giá trị sản phẩm - điều mà người dùng trẻ có thể nhận diện”, Sky Li, CEO của Realme, chia sẻ. Kim chỉ nam kinh doanh này giúp hãng dần khẳng định vị thế, ngày càng được nhiều người dùng lựa chọn.', '', '', '', '', '', ''),
(45, 4, 'Theo Counterpoint, Realme tăng 11% doanh số trong quý II/2020. Đồng thời, thương hiệu smartphone hơn 2 tuổi này phát triển nhanh nhất trong 4 quý liên tục, tính đến hết quý II/2020, đồng thời duy trì vị trí top 7 thương hiệu smartphone toàn cầu.', '2021-02-05-05-55-26-050.jpg', 'Realme 7 là một trong những sản phẩm tầm trung của Realme.', NULL, '', '', ''),
(45, 5, 'Cột mốc lớn trong năm 2020 đáng ghi nhận là Realme trở thành công ty có doanh số đạt 50 triệu thiết bị nhanh nhất vào 10/2020, theo Counterpoint Research. Hãng vượt qua thương hiệu khác khi chỉ cần 9 quý đạt thành tích kinh doanh này. Bên cạnh đó, Realme trở thành thương hiệu smartphone top 4 tại Thái Lan, Ấn Độ, Campuchia và Ai Cập; vào top 5 thị phần trong 12 nước theo nghiên cứu của Counterpoint Research và IDC. Hãng có kết quả kinh doanh nổi bật nửa đầu năm, hướng đến doanh số 100 triệu điện thoại trong 3 năm. Hiện tại, thương hiệu này có mặt ở hơn 61 thị trường trên thế giới.', '', '', '', '', '', ''),
(45, 6, 'Trong năm 2020, Realme triển khai chiến lược kép “Smartphone + AIoT”. Realme nỗ lực trở thành hãng đầu tiên ra mắt hơn 50 sản phẩm AIoT trong năm 2020 và chạm mốc hơn 100 thiết bị trong năm kế tiếp. Tại thị trường Ấn Độ, hãng đã bán ra hơn 1 triệu thiết bị âm thanh thông minh, chiếm vị trí thứ 3 về thị phần trong quý II/2020 cho nhãn hàng mới.', '2021-02-05-05-55-26-063.jpg', 'Sản phẩm AIoT Realme Buds Air Pro.', NULL, '', '', ''),
(45, 7, 'Tốc độ phát triển nhanh cho thấy sự nghiêm túc của thương hiệu trong nhiệm vụ và chiến lược đưa giới trẻ “dám nhảy vọt” khỏi giới hạn. Qua đó, hãng có thêm động lực hướng đến việc nhảy vọt trong năm 2021 nhanh hơn, tạo dấu ấn trong ngành công nghiệp.', '', '', '', '', '', ''),
(45, 8, 'Realme hướng đến giới trẻ độ tuổi 18-25, những người tương đồng với giá trị cốt lõi của thương hiệu. Nhờ sự hỗ trợ từ khách hàng trên toàn cầu, hang nhận 17 giải thương hiệu, 159 giải sản phẩm và 5 giải thiết kế trong năm 2020.', '', '', '', '', '', ''),
(45, 9, 'Hãng giành giải Thương hiệu của năm ở nhiều nước trên thế giới như Indonesia, Ấn Độ, Ai Cập, Ba Lan và Pakistan, được bình chọn bởi các tổ chức và báo giới uy tín. Với hơn 160 giải thưởng cho các sản phẩm trên toàn cầu, một trong những tiêu chí hàng đầu của Realme là tập trung phát triển thiết bị và tinh chỉnh phù hợp nhu cầu, mong muốn người dùng. Điều này minh chứng qua 17 giải thưởng do giới trẻ bình chọn ở 3 châu lục khác nhau.', '2021-02-05-05-55-26-075.jpg', 'Realme Buds Q là thiết kế kết hợp cùng NTK lừng danh Jose Levy.', NULL, '', '', ''),
(45, 10, 'Các thành tựu của Realme được cộng đồng thiết kế và người dùng quan tâm. Dù non trẻ, hãng giành được 5 giải thưởng thiết kế trên thế giới như Good Designed Award 2020 ở 3 sản phẩm, Red Dot Design Award cho Realme X2 Pro Master Edition thiết kế bởi Naoto Fukasawa, Golden Pin Award và nhiều giải khác.', '', '', '', '', '', ''),
(45, 11, 'Các sản phẩm của hãng mang đến lần gió mới, năm qua, studio thiết kế của Realme kết hợp nhà thiết kế hàng đầu Naoto Fukasawa và Jose Levy, với danh tiếng của Hermes cho ra các sản phẩm tiên phong về xu hướng.', '2021-02-05-05-55-26-082.jpg', 'Realme 7 Pro trang bị công nghệ sạc nhanh SuperDart Charge 65W, nạp đầy pin 4.500mAh trong 34 phút.', NULL, '', '', ''),
(45, 12, 'Hãng cũng đầu tư lớn cho công nghệ, trong đó có công nghệ sạc nhanh 125 W. Đồng thời, thương hiệu đầu tiên giới thiệu công nghệ 5G ở nhiều thị trường với mức giá cạnh tranh với sự kiện ra mắt Realme 7 5G dưới 300 USD. Trang tin tổng hợp thiết bị di động nổi tiếng GSM Arena đánh giá, Realme là điện thoại đi dộng tầm trung cân bằng nhất năm 2020.', '', '', '', '', '', ''),
(46, 1, 'Năm 2019, camera pop-up trở thành xu hướng được phát triển mạnh mẽ trên các dòng máy Android. Thiết kế này xuất hiện trong cả những mẫu điện thoại flagship và tầm trung.', '', '', '', '', '', ''),
(46, 2, 'Camera pop-up từng được dự đoán sẽ trở thành trào lưu thay thế những thiết kế truyền thống. Tuy nhiên, công nghệ này dần biến mất trong năm 2020.', '2021-02-05-05-58-30-948.jpg', 'Vivo Nex, mẫu điện thoại với camera pop-up đã đem đến \"làn gió\" mới cho thiết kế điện thoại. Ảnh: GMS.', NULL, '', '', ''),
(46, 3, 'Đến nay, Samsung và Oppo đang nỗ lực để camera pop-up có thể trỗi dậy một lần nữa. Cả 2 công ty đã đề xuất những giải pháp thiết kế mới và đều nhận được bằng sáng chế. Điều này cho thấy ống kính \"thò thụt\" vẫn có tiềm năng tối ưu hơn so với camera đục lỗ thông thường.', '', '', '', '', '', ''),
(46, 4, 'Vào ngày 13/6/2018, chiếc smartphone có camera pop-up đầu tiên, Vivo Nex, được giới thiệu tại Bắc Kinh đã nhận được những đánh giá tích cực. Từ đây, thiết kế điện thoại đã có bước chuyển mới, chứng minh cho sự phát triển không ngừng của công nghệ thế giới.', '', '', '', '', '', ''),
(46, 5, 'Đến năm 2019, camera pop-up trở nên phổ biến với các nhà sản xuất điện thoại Trung Quốc như Oppo, OnePlus và Xiaomi. Những công ty này đều áp dụng thiết kế pop-up vào các dòng điện thoại cao cấp của mình trong năm.', '2021-02-05-05-58-30-959.jpg', 'Chỉ trong vài năm, người dùng đã chứng kiến hàng loạt xu hướng thiết kế camera khác nhau. Ảnh: PhoneArena.', NULL, '', '', ''),
(46, 6, 'Trước đây, các nhà sản xuất luôn phải tính toán làm thế nào để bố trí camera giúp người dùng có được trải nghiệm tràn viền tốt nhất có thể.', '', '', '', '', '', ''),
(46, 7, 'Một trong những trào lưu tiên phong cho màn hình tràn viền chính là kiểu mẫu từ iPhone X đến iPhone 12. Thiết kế khuyết đỉnh này giúp tối ưu diện tích màn hình và có chỗ đặt cảm biến khuôn mặt 3D. Tuy nhiên, tính thẩm mỹ cùng trải nghiệm tràn viền của người dùng vẫn chưa hiệu quả.', '', '', '', '', '', ''),
(46, 8, 'Sau đó, thiết kế camera giọt nước ra đời mang lại cảm giác liền mạch hơn, tỷ lệ tràn viền cũng được cải thiện. Tuy nhiên, điều này lại đánh đổi việc thiếu đi cảm biến khuôn mặt do viền giọt nước chỉ có thể đặt được camera.', '', '', '', '', '', ''),
(46, 9, 'Camera đục lỗ hiện là xu hướng được các nhà sản xuất áp dụng phổ biến vì diện tích màn hình được cải thiện đáng kể. Nhưng nhìn chung, chúng vẫn khiến trải nghiệm màn hình của người dùng không trọn vẹn.', '', '', '', '', '', ''),
(46, 10, 'Camera pop-up nổi lên đem đến một giải pháp tràn viền vừa tối ưu, vừa thẩm mỹ. Thiết kế này đã giải quyết những khuyết điểm mà các phương pháp khác gặp phải.', '', '', '', '', '', ''),
(46, 11, 'Tuy nhiên, các nhà sản xuất không gắn bó được với kiểu camera này quá lâu.', '', '', '', '', '', ''),
(47, 1, 'Sau khi thiết lập micro, máy ảnh, ánh sáng và màn hình, 8 giờ tối thứ bảy, streamer có nickname SuperMainstream, đã khoác lên mình bộ đồ ngủ và bước lên giường. Chỉ một vài phút nữa, anh sẽ phát trực tiếp cảnh mình đang ngủ cho hàng nghìn người xem, đồng thời thu về hàng nghìn USD tiền ủng hộ.', '', '', '', '', '', ''),
(47, 2, 'Về cơ bản, SuperMainstream đang kiếm tiền từ giấc ngủ.', '', '', '', '', '', ''),
(47, 3, 'Không chỉ là một hoạt động thiết yếu đối với cơ thể con người, giấc ngủ còn được các streamer tận dụng để kiếm tiền. Lượng người dùng tìm kiếm những nội dung tương tự cũng theo đó tăng đột biến.', '', '', '', '', '', ''),
(47, 4, 'Trong tuần đầu tiên của tháng 1/2021, số người xem tìm kiếm các video livestream giấc ngủ đã tăng khoảng 426% so với cùng kỳ năm 2020. 170 video livestream giấc ngủ đã được đăng tải chỉ trong 3 tuần đầu của tháng 1. Có vẻ như hành vi trả tiền để xem một ai đó ngủ đang ngày càng trở nên phổ biến.', '2021-02-05-06-03-52-873.png', 'Người xem sẽ phải bỏ ra khoảng 3 USD để dùng loa thông minh Alexa.', NULL, '', '', ''),
(47, 5, 'Đây là một công việc vô cùng đơn giản, tất cả những gì SuperMainstream phải làm là đi ngủ trong khi người xem cố gắng đánh thức anh bằng cách phát tin nhắn, video hay bài hát qua loa thông minh Alexa.', '', '', '', '', '', '');
INSERT INTO `paragraph` (`IdArticle`, `IdParagraph`, `Content`, `Image`, `TitleImage`, `DescriptionImage`, `Video`, `TitleVideo`, `DescriptionVideo`) VALUES
(47, 6, 'Chỉ với 3 USD, người xem đã có thể yêu cầu loa thông minh làm bất cứ điều gì, từ tiết lộ địa chỉ của streamer, mua hàng trên Amazon hay thậm chí gọi cảnh sát. Chia sẻ với Vice, chàng trai 21 tuổi cho biết anh kiếm được gần 3.000 USD nhờ việc livestream giấc ngủ liên tiếp trong 6 giờ, một lần/tuần.', '', '', '', '', '', ''),
(47, 7, '“Tôi làm việc vào tối thứ 7 vì đó là khoảng thời gian mọi người ra ngoài vui chơi. Nhiệm vụ của tôi là trở thành trò giải trí vào tối thứ 7”, SuperMainstream cho biết kênh của anh đã đạt được 2.000 lượt đăng ký trong lần livestream gần nhất.', '', '', '', '', '', ''),
(47, 8, 'Tuy nhiên, SuperMainstream không phải kênh sáng tạo nội dung đầu tiên kiếm tiền từ giấc ngủ. Xu hướng này vốn bắt nguồn từ năm 2017 khi cựu streamer Ice Poseidon kiếm được 5.000 USD nhờ việc tự quay phim qua đêm. Đặc biệt, sau khi Asian Andy – một vlogger có hơn một triệu lượt đăng ký – chọc cười khán giả bằng một tai nạn hy hữu, nội dung này nhanh chóng trở nên phổ biến và được nhiều người đón nhận.', '', '', '', '', '', ''),
(47, 9, '“Tôi ăn thử chiếc kẹo tìm thấy trong hòm thư. Tôi không hề nhận ra đó là thực phẩm làm từ chất cấm. Tôi lập tức ngất đi ngay sau đó và người xem của tôi liên tục gửi tiền ủng hộ để đánh thức tôi. Tôi kiếm được khoảng 800 USD ngày hôm đó, nhiều hơn lúc tôi thức dậy làm việc. Tôi nghĩ chuyện đó rất thú vị”, Asian Andy chia sẻ trên Messenger.', '', '', '', '', '', ''),
(47, 10, 'Chỉ cần có thế, Asian Andy kiếm được hơn 2.000 USD từ buổi phát trực tiếp đầu tiên về giấc ngủ. Buổi livestream của anh nhận được 9,2 triệu lượt xem. Vào năm 2020, Asian Andy kiếm về khoảng 16.000 USD nhờ những video có nội dung tương tự.', '', '', '', '', '', ''),
(47, 11, '“Tôi thực sự bất ngờ khi những nội dung về giấc ngủ lại phổ biến trên YouTube. Việc livestream giấc ngủ có đôi lúc căng thẳng, tôi không biết mình sẽ làm cách nào để việc ngủ trở nên thú vị”, Asian Andy chia sẻ.', '', '', '', '', '', ''),
(48, 1, 'Bộ tiêu chí chung của VinFuture do hội đồng gồm 11 nhà khoa học uy tín trên thế giới biên soạn và thống nhất. Bộ có 9 tiêu chí chính, áp dụng chung cho giải thưởng chính và 3 giải đặc biệt. Cùng với đó, giải thưởng có nhiều tiêu chí bổ sung cho từng hạng mục.', '', '', '', '', '', ''),
(48, 2, 'Với tầm nhìn toàn cầu và hướng đến mục tiêu khoa học phụng sự nhân loại, bộ tiêu chí nêu rõ giải thưởng sẽ vinh danh các tiến bộ trong khoa học công nghệ phù hợp với 17 mục tiêu phát triển bền vững của Liên Hợp Quốc (SDGs), như xóa nghèo, chấm dứt nạn đói, nâng cao sức khỏe và chất lượng cuộc sống, tạo cơ hội hưởng thụ nền giáo dục tiến bộ, nước sạch, năng lượng tái tạo, giảm bất bình đẳng, ứng phó với biến đổi khí hậu...', '', '', '', '', '', ''),
(48, 3, 'Các đề cử phải được chứng minh bằng khoa học về việc đã mang lại lợi ích cho hàng triệu người trong 10 năm qua hoặc 10 năm tới. Đây là yêu cầu cốt lõi, nhất quán với sứ mệnh của VinFuture là \"Tạo ra những thay đổi tích cực trong cuộc sống hàng ngày của hàng triệu người trên Trái Đất bằng việc thúc đẩy nghiên cứu khoa học và đổi mới công nghệ”.', '', '', '', '', '', ''),
(48, 4, 'Các đối tượng tham gia đề cử gồm trường đại học, viện/trung tâm nghiên cứu, viện hàn lâm khoa học và công nghệ quốc gia, mạng lưới, hiệp hội khoa học, các tập đoàn/doanh nghiệp, vườn ươm đổi mới sáng tạo, cá nhân xuất sắc trong các lĩnh vực liên quan.', '2021-02-05-06-07-33-470.jpg', 'Hội đồng giải thưởng tại Việt Nam và thế giới họp sơ khảo thống nhất bộ tiêu chí.', NULL, '', '', ''),
(48, 5, 'Phát biểu về bộ tiêu chí đề cử, GS Richard Henry Friend - Chủ tịch Hội đồng giải thưởng VinFuture cho biết: “Chúng ta cần hợp tác trên phạm vi toàn cầu để giải quyết thách thức mà nhân loại đang đối mặt như dịch bệnh hay biến đổi khí hậu. Khoa học và công nghệ cần mang lại lợi ích cho mọi người và mọi quốc gia. Giải thưởng VinFuture sẽ tôn vinh các công trình, phát minh, sáng chế, giải pháp khoa học mang lại các tác động tích cực đến đời sống của hàng triệu con người”.', '', '', '', '', '', ''),
(48, 6, 'Đồng thời với việc công bố bộ tiêu chí, giải thưởng VinFuture cũng mở cổng nhận đề cử trên toàn cầu, bắt đầu từ ngày 3/2 tới ngày 7/6.', '', '', '', '', '', ''),
(48, 7, 'Nhà sáng lập Quỹ VinFuture, ông Phạm Nhật Vượng - Chủ tịch Tập đoàn Vingroup chia sẻ: “Bên cạnh việc vinh danh các nhà khoa học xuất sắc trên thế giới, VinFuture mong muốn thúc đẩy và sớm đưa vào cuộc sống những công trình, nghiên cứu, phát minh mang lại giá trị tích cực cho nhân loại. Tôi hy vọng giải thưởng VinFuture có thể tìm và phát hiện nhà khoa học, nhà sáng chế xứng đáng, dự án đem lại giá trị tuyệt vời cho hàng triệu người”.', '', '', '', '', '', ''),
(48, 8, 'Quỹ và giải thưởng VinFuture đã ra mắt vào ngày 20/12/2020. Giải thưởng VinFuture được tổ chức hàng năm với tổng trị giá 104,5 tỷ đồng mỗi năm, tương đương 4,5 triệu USD. Trong đó, giải thưởng chính trị giá 70 tỷ đồng, tương đương 3 triệu USD sẽ được trao cho tác giả của các nghiên cứu đột phá, sáng chế công nghệ.', '', '', '', '', '', ''),
(48, 9, 'Ba giải đặc biệt, mỗi giải trị giá 11,5 tỷ đồng, tương đương 500.000 USD được trao cho các nhà nghiên cứu hoặc nhà sáng chế làm việc tại các nước đang phát triển; các nhà nghiên cứu hoặc nhà sáng chế là phụ nữ và các nhà nghiên cứu hoặc nhà sáng chế trong các lĩnh vực mới phát triển.', '', '', '', '', '', ''),
(48, 10, 'Giải thưởng VinFuture được xét chọn bởi hội đồng giải thưởng độc lập bao gồm 11 nhà khoa học, nhà phát minh uy tín quốc tế từng đoạt giải Nobel, giải thưởng Turing, giải thưởng Millenium Technology… đến từ các trường đại học, viện nghiên cứu và các tập đoàn công nghệ hàng đầu.', '', '', '', '', '', ''),
(48, 11, 'Hội đồng giải thưởng đã họp phiên toàn thể lần thứ nhất vào ngày 20/1 và thống nhất các đề cử sẽ được tìm kiếm từ mọi quốc gia. Sau phiên họp, hơn 200 nhà khoa học danh tiếng đến từ các trường đại học, viện nghiên cứu uy tín tại hơn 20 quốc gia, đại diện cho 6 châu lục đã thể hiện sự quan tâm đến giải thưởng.', '', '', '', '', '', ''),
(48, 12, 'Cho tới nay, các nước và vùng lãnh thổ có đại diện tham gia gồm Mỹ, Canada, Anh, Bỉ, Đan Mạch, Đức, Hà Lan, Pháp, Tây Ban Nha, Thụy Sĩ, Ukraine, Australia, Ấn Độ, Hàn Quốc, Indonesia, Israel, Nhật Bản, Singapore, Trung Quốc, An-giê-ri, Ni-giê-ria, Xu-đăng... Các trường như đại học Chicago, Cornell, Harvard, Pennsylvania, Stanford, Toronto, Yale… cũng đều có các nhà khoa học tham gia.', '', '', '', '', '', ''),
(49, 1, '“Tống cựu nghênh tân” là quan điểm truyền thống của người Việt mỗi dịp Tết đến xuân về. Không chỉ tất bật dọn dẹp nhà cửa, mọi người còn tranh thủ mua sắm đồ mới, thay thế những đồ đã cũ. Đây cũng là thời điểm nhiều tín đồ công nghệ tranh thủ “lên đời” những thiết bị phục vụ công việc như smartphone, đồng hồ, máy ảnh… để hưởng mức giá hời.', '', '', '', '', '', ''),
(49, 2, 'Làm việc trong một công ty về điện tử, anh Bảo Lâm (quận 2, TP.HCM) tự nhận mình là tín đồ có niềm đam mê với các thiết bị công nghệ. Các thiết bị phục vụ công việc như máy tính, laptop, tai nghe, chuột, bàn phím và smartphone… của anh Lâm đều cùng một thương hiệu. Anh Lâm còn có thói quen nâng cấp thiết bị theo vòng ra mắt sản phẩm mới của hãng này.', '', '', '', '', '', ''),
(49, 3, '“Một trong những vật dụng tôi thay mới mỗi năm là điện thoại. Thời điểm trình làng thiết bị rơi vào tháng 9. Tuy nhiên, đến cuối tháng 12, tôi mới rục rịch ‘săn hàng’ trên các trang TMĐT để có giá tốt hơn”, anh Lâm chia sẻ.', '2021-02-05-10-52-41-392.jpg', 'Nhiều sản phẩm điện tử đồng loạt giảm giá dịp cận Tết.', NULL, '', '', ''),
(49, 4, 'Giải thích lý do gần Tết mới quyết định lên đời điện thoại, anh Lâm cho biết đối với những người yêu công nghệ như anh thì việc đổi điện thoại nhằm mục đích khám phá, trải nghiệm các tính năng mới. Ngoài ra, dịp cận Tết là khoảng thời gian “vàng” khi các mẫu điện thoại mới nhất vẫn được quan tâm nhưng được bán với giá ổn định hơn.', '', '', '', '', '', ''),
(49, 5, '“Điện thoại vừa được mở bán tại Việt Nam có thể bị thổi giá lên gấp đôi, thậm chí gấp 3. Nếu tôi mua ngay khi còn ‘sốt’, giá sẽ khá cao. Chờ đến thời điểm giá bán ổn định vào cuối năm, thị trường không còn khan hàng, nhiều địa chỉ uy tín mở bán, tôi xuống tiền ngay”, anh nói thêm.', '', '', '', '', '', ''),
(49, 6, 'Sau một năm sử dụng, laptop của chị Hoàng Hoa (quận Bình Thạnh, TP.HCM) đã cũ, thường bị treo máy. Chị Hoàng Hoa cho biết đang đợi đến cận Tết để đổi máy mới.', '2021-02-05-10-52-41-822.png', 'Nhiều người trẻ thường đợi đến thời điểm cận năm mới để săn các sản phẩm điện tử có mức giá giảm sâu.', NULL, '', '', ''),
(49, 7, 'Theo chị Hoa, laptop là đồ điện tử có giá cao. Ngoài lựa chọn chiếc máy tính phù hợp nhu cầu công việc, có thương hiệu uy tín, việc chọn thời điểm mua có nhiều ưu đãi giúp người dùng tiết kiệm được kha khá.', '', '', '', '', '', ''),
(49, 8, 'Đơn cử, chiếc laptop giá 30 triệu có giá tốt hơn vào dịp cận Tết khi thương hiệu áp dụng mức giá giảm sâu. Nhờ vậy, người dùng có thể tiết kiệm một số tiền để trang bị thêm phụ kiện như túi chống sốc, tai nghe, ba lô đựng máy…', '', '', '', '', '', ''),
(50, 1, 'Ứng dụng nhắn tin offline Bridgefy đã nhận được hơn một triệu lượt tải về tại Myanmar, khi dịch vụ Internet tại nước này đang trong tình trạng gián đoạn. App này sử dụng Bluetooth để cùng nhau thiết lập một mạng kết nối lớn, giúp người dùng liên lạc với nhau mà không cần mạng Internet.', '', '', '', '', '', ''),
(50, 2, 'Nhà phát triển Bridgefy chia sẻ trên Twitter rằng họ mong muốn người dân Myanmar sẽ cảm thấy ứng dụng của họ hữu ích trong giai đoạn khó khăn của đất nước.', '2021-02-05-10-56-21-354.jpg', 'Bridgefy đã được người dân Myanmar tìm đến trong bối cảnh mạng Internet bị ngắt sau cuộc chính biến tại quốc gia này. Ảnh: Teknologia', NULL, '', '', ''),
(50, 3, 'Sau khi quân đội bắt giữ bà Aung San Suu Kyi cùng các quan chức chính trị cấp cao khác vào sáng 1/2, các dịch vụ viễn thông đã bị ngắt tại nhiều nơi trong Myanmar bao gồm cả thành phố Yangon và thủ đô Naypyitaw.', '', '', '', '', '', ''),
(50, 4, 'Đến chiều cùng ngày, hệ thống liên lạc đã được khôi phục nhưng các nhà hoạt động tại Myanmar vẫn khuyến khích người dân tải về ứng dụng Bridgefy nhằm đối phó với khả năng hệ thống Internet lại bị ngắt trong tương lai.', '', '', '', '', '', ''),
(50, 5, 'Theo CEO của Bridgefy, ông Jorge Rios, ứng dụng này đã nhận được 1,1 triệu lượt tải trong giai đoạn từ thứ hai đến chiều thứ ba.', '', '', '', '', '', ''),
(50, 6, 'Theo thống kê, tại Myanmar hiện nay có 22 triệu người dùng mạng xã hội.', '', '', '', '', '', ''),
(50, 7, 'Mặc dù đã trở nên phổ biến trên toàn thế giới, nhiều chuyên gia về bảo mật đã bày tỏ quan ngại rằng ứng dụng này có thể bị kẻ xấu xâm nhập và đánh cắp thông tin cá nhân của người dùng.', '', '', '', '', '', ''),
(50, 8, 'Tuy vậy, nhà phát triển Bridgefy tuyên bố rằng họ đã cải thiện quy trình bảo mật cũng như mã hóa tin nhắn được gửi bởi người dùng.', '', '', '', '', '', ''),
(51, 1, 'Trong tuyên bố bất ngờ ngày 3/2, Jeff Bezos cho biết sẽ rời chức CEO Amazon trong năm nay. Theo Business Insider, vị tỷ phú sẽ chuyển sang vai trò chủ tịch hội đồng quản trị để tập trung vào các sản phẩm mới, dành thời gian cho các dự án mà ông tâm huyết như Day 1 Fund, Bezos Earth Fund, Blue Origin và Washington Post.', '', '', '', '', '', ''),
(51, 2, 'Trong bức thư gửi đến 1,3 triệu nhân viên, nhà sáng lập Amazon nói rằng họ là những con người tài năng, tận tâm, và “Amazon được công nhận rộng rãi là một trong những công ty thành công nhất thế giới”.', '2021-02-05-10-59-18-604.jpg', 'Jeff Bezos sẽ thôi giữ chức CEO Amazon từ quý III. Ảnh: Business Insider.', NULL, '', '', ''),
(51, 3, '“Chúng ta cùng nhau làm những điều điên rồ, khiến chúng trở nên bình thường”, Bezos nhấn mạnh sáng tạo là yếu tố mang đến thành công cho Amazon, nhắc đến các sản phẩm nổi bật như hệ thống đánh giá của khách hàng, gợi ý sản phẩm được cá nhân hóa, giao hàng siêu tốc, Kindle, Alexa, điện toán đám mây và hàng loạt dịch vụ khác.', '', '', '', '', '', ''),
(51, 4, '“Tôi không biết có công ty nào sáng tạo tốt như Amazon hay không, nhưng tin rằng chúng ta đang ở thời kỳ sáng tạo đỉnh cao”. Nhà sáng lập Amazon cũng nhấn mạnh chính sách lương tối thiểu 15 USD, cam kết về khí hậu đã giúp công ty đi trước đối thủ.', '', '', '', '', '', ''),
(51, 5, 'Tiếp theo, Bezos nói rằng vị trí CEO là trách nhiệm lớn lao. “Tôi thấy công việc này thật ý nghĩa. Tôi được làm việc với những cộng sự thông minh, tài năng và khéo léo nhất. Khi mọi thứ tốt lên, bạn vẫn khiêm tốn. Khi gặp khó khăn, bạn mạnh mẽ và sẵn lòng trợ giúp… Thật vui khi được làm việc cùng đội ngũ này”.', '', '', '', '', '', ''),
(51, 6, 'Dưới sự lãnh đạo của Bezos, Amazon đã mở rộng ngành thương mại điện tử với cả triệu sản phẩm khác nhau, biến thành một công ty giao vận lớn hàng đầu thế giới trước khi tiến vào những lĩnh vực khác như điện toán đám mây, giải trí và phần cứng.', '', '', '', '', '', ''),
(51, 7, 'Trong vài năm qua, Jeff Bezos dần chuyển giao những công việc quản lý hàng ngày của Amazon cho cấp dưới như Andy Jassy. Sự tập trung của Bezos sẽ dành cho tương lai của Amazon và các dự án cá nhân như Blue Origin - công ty vận tải không gian.', '', '', '', '', '', ''),
(51, 8, '“Chúng ta đang tiến vào mọi lĩnh vực, cũng như thế giới cần chúng ta. Công ty sẽ tiếp tục có những thứ gây kinh ngạc… Chúng ta đang dẫn đầu trong các lĩnh vực như máy học và logistic… Hãy tiếp tục sáng tạo, đừng ngần ngại khi nhận thấy một ý tưởng điên rồ… Hãy để sự tò mò làm kim chỉ nam cho bạn”, CEO Amazon chia sẻ trong phần cuối bức thư.', '', '', '', '', '', ''),
(52, 1, 'Vừa qua, các bác sĩ Bệnh viện Hữu nghị Việt Đức (Hà Nội) đã phẫu thuật ghép tim thành công cho bệnh nhi L.X.H. (7 tuổi, nặng 16 kg, trú tại Hà Nội). Trường hợp này đã xác lập kỷ lục bệnh nhân nhỏ tuổi nhất Việt Nam được ghép tim từ một bệnh nhân chết não.', '', '', '', '', '', ''),
(52, 2, 'Theo Phó giáo sư, tiến sĩ Nguyễn Hữu Ước, Giám đốc Trung tâm Tim mạch và lồng ngực, H. được phát hiện bệnh cơ tim giãn, suy tim giai đoạn cuối cách đây 7 tháng. Các xét nghiệm cho thấy bệnh nhi suy tim nặng, phải dùng thuốc trợ tim liều cao liên tục. Thời gian gần đây, tình trạng bệnh trở nặng, mọi phương pháp điều trị gần như không hiệu quả.', '', '', '', '', '', ''),
(52, 3, 'H. chỉ có một cơ hội sống duy nhất nếu được ghép tim. May mắn, khi sự sống chỉ tính bằng ngày, H được nam thanh niên 19 tuổi, chết não do tai nạn giao thông hiến tạng. Các chỉ số tạng của người hiến và người nhận hoàn toàn phù hợp, bất chấp chỉ số cơ thể chênh lệch 3,5 lần.', '2021-02-05-11-02-57-309.jpg', 'Các bác sĩ thực hiện ca ghép tim cho bệnh nhi nhỏ tuổi nhất Việt Nam. Ảnh: ĐN.', NULL, '', '', ''),
(52, 4, '“Trong danh sách dài bệnh nhân chờ ghép tim, các chuyên gia hàng đầu bệnh viện đã hội chẩn và quyết định ghép tim cho H. vì ưu tiên bệnh nhi, đồng thời, tình trạng tim của bé rất nặng, phải dùng thuốc trợ tim cao, không thể chờ đợi thêm. Trong khi đó, mỗi năm cả nước chỉ có vài trường hợp chết não hiến tạng, cơ hội tìm người phù hợp để ghép tim cho trẻ gần như không tưởng”, Phó giáo sư Ước nói thêm.', '', '', '', '', '', ''),
(52, 5, 'Sau ca phẫu thuật, H. được điều trị tích cực tại khoa Hồi sức, Trung tâm Tim mạch và lồng ngực. Sau 4 ngày phẫu thuật, tình trạng bệnh nhi tỉnh táo, huyết động ổn định, ngồi dậy chơi và đã nhận biết được các nhân viên y tế, người thân, có thể ăn uống được.', '', '', '', '', '', ''),
(52, 6, '​Phó giáo sư, tiến sĩ Nguyễn Quang Nghĩa, Giám đốc Trung tâm Ghép tạng, cho biết: \"Ngay sau khi nhận được thông tin có bệnh nhân chết não và gia đình đồng ý hiến tạng, các bác sĩ đã nhanh chóng lấy tim, gan, 2 thận để ghép cho 4 người bệnh tại Bệnh viện Hữu nghị Việt Đức và 2 giác mạc được chuyển đến ngân hàng mắt. Hiện tình trạng của các bệnh nhân này đều ổn định\".', '', '', '', '', '', ''),
(54, 1, 'Chiều 5/2, theo thông tin từ Sở Y tế Hà Nội, 28 trường hợp tiếp xúc gần bà V.H.H. (46 tuổi, nhân viên ngân hàng) mắc Covid-19 đã có kết quả xét nghiệm âm tính lần một với SARS-CoV-2.', '', '', '', '', '', ''),
(54, 2, 'Những người này là đồng nghiệp tại phòng giao dịch ngân hàng Public Bank (địa chỉ Trần Huy Liệu, phường Giảng Võ, quận Ba Đình); người nhà và bảo vệ tại Chung cư Sky City Tower (địa chỉ 88 Láng Hạ, phường Láng Hạ, quận Đống Đa).', '', '', '', '', '', ''),
(54, 3, 'Ngoài ra, theo thông tin của UBND TP Hà Nội, liên quan ca bệnh này, ngay trong tối và đêm 4/2, cơ quan chức năng đã khoanh vùng xử lý và lấy mẫu xét nghiệm tất cả cư dân ở tòa B chung cư 88 Láng Hạ (934 người). Chiều nay, các mẫu xét nghiệm này sẽ có kết quả.', '2021-02-05-11-11-02-438.jpg', 'Tòa nhà ở Láng Hạ, nơi bệnh nhân 1956 sinh sống, đã bị phong tỏa. Ảnh: Việt Linh.', NULL, '', '', ''),
(54, 4, 'Bệnh nhân V.H.H. được lấy mẫu xét nghiệm vào ngày 3/2 và cách ly tại Tứ Hiệp, Thanh Trì, Hoàng Mai. Kết quả ngày 4/2 của CDC Hà Nội xác định người phụ nữ này dương tính với SARS-CoV-2.', '', '', '', '', '', ''),
(54, 5, 'Đây là ca mắc Covid-19 thứ 22 được ghi nhận tại Hà Nội kể từ khi đợt dịch lần thứ 3 bùng phát đến nay. Như vậy, 6 quận, huyện ở Hà Nội có bệnh nhân Covid-19 gồm Nam Từ Liêm, Cầu Giấy, Hai Bà Trưng, Đông Anh, Mê Linh, Đống Đa.', '', '', '', '', '', ''),
(55, 1, 'Sáng 5/2, bác sĩ Phạm Thanh Phong, Phó giám đốc Bệnh viện Đa khoa Trung ương Cần Thơ, cho biết các bác sĩ của đơn vị vừa cứu sống bệnh nhân N.L.T. (16 tuổi, ở huyện Phong Điền, Cần Thơ) bị sốc phản vệ gây suy đa tạng do ong đốt.', '', '', '', '', '', ''),
(55, 2, 'Thời điểm nhập viện, T. bị nổi mề đay toàn thân, phù mi mắt hai bên, mạch nhanh nhỏ, huyết áp giảm nặng, khó thở, tím tái. Bệnh nhân được hô hấp hỗ trợ và điều trị theo phác đồ sốc phản vệ.', '2021-02-05-11-15-14-805.jpg', 'Sức khỏe của T. đã ổn định. Ảnh: T.P.', NULL, '', '', ''),
(55, 3, 'Khi chuyển đến khoa Hồi sức tích cực - Chống độc, T. hôn mê, thở máy, tụt huyết áp. Các chỉ số xét nghiệm cho thấy bệnh nhân bị suy đa tạng, tổn thương cơ tim và rối loạn đông máu.', '', '', '', '', '', ''),
(55, 4, 'Sau thời gian 56 giờ lọc máu liên tục, T. tỉnh lại, các chỉ số suy tạng dần trở lại giá trị bình thường. Hiện, bệnh nhân tỉnh, sinh hiệu ổn định.', '', '', '', '', '', ''),
(55, 5, 'Bác sĩ Dương Thiện Phước - Trưởng khoa Hồi sức tích cực - Chống độc cho biết trong nhiều loài ong, vò vẽ và bắp cày có độc tính cao.', '', '', '', '', '', ''),
(55, 6, 'Khi bị ong đốt, gia đình cần đưa nạn nhân đến cơ sở y tế gần nhất khi có một trong các dấu hiệu: Ong đốt trên 10 nốt, bị ong vò vẽ hoặc bắp cày đột, ong mật và một số ong chưa rõ loại ở các vùng rừng núi; bị đốt vào các vùng mặt, cổ, miệng, họng; có các biểu hiện khó chịu như đau nhiều, sưng nề nhiều vùng bị đốt, mẩn ngứa, khó thở, mệt nhiều…', '', '', '', '', '', ''),
(55, 7, 'Sốc phản vệ là tai biến dị ứng nghiêm trọng, gây tử vong nếu không được chẩn đoán và xử lý kịp thời. Nếu có biểu hiện bất thường sau khi tiếp xúc với dị nguyên như mẩn ngứa, khó thở, đau bụng, nôn, tiêu chảy, tụt huyết áp, choáng váng..., người bệnh cần đến ngay cơ sở y tế gần nhất để được cấp cứu kịp thời.', '', '', '', '', '', ''),
(56, 1, 'Chế độ ăn uống chiếm 60-70% hiệu quả duy trì sức khỏe và vóc dáng cân đối, trong khi luyện tập thể thao chỉ chiếm 30-40%. Là người tiêu dùng thông minh, bạn trẻ có thể bỏ túi những bí kíp hữu ích để chọn thức uống lành mạnh, bên cạnh luyện tập khoa học, hướng đến sức khỏe từ bên trong.', '', '', '', '', '', ''),
(56, 2, 'Các loại sữa, nước uống giải khát, thực phẩm bổ sung… dù có diện tích vỏ hộp/bịch to, nhỏ khác nhau, người tiêu dùng vẫn dễ dàng nhìn thấy thành phần dinh dưỡng trung bình, trọng lượng, hạn sử dụng, ngày sản xuất, thương hiệu sản xuất sản phẩm, thương hiệu đóng gói bao bì, địa chỉ nơi sản xuất, hướng dẫn bảo quản…', '', '', '', '', '', ''),
(56, 3, 'Thói quen đọc thông tin trên vỏ hộp giúp bạn phát hiện ra nhiều thông tin thú vị về những thứ cơ thể mình thu nạp. Từ đó, bạn có thể ưu tiên chọn lựa thức uống có nguồn gốc từ thiên nhiên, thực phẩm hữu cơ, ít đường, không cholesterol, không chất độc hại, không tồn dư thuốc bảo vệ thực vật, không chất kháng sinh, không hormone tăng trưởng…', '2021-02-05-11-18-40-674.jpg', 'Việc lựa chọn thực phẩm và thức uống dinh dưỡng lành mạnh là ưu tiên hàng đầu của lối sống khỏe mạnh.', NULL, '', '', ''),
(56, 4, 'Nguyên tắc của chế độ ăn lành mạnh là tăng lượng protein, canxi, vitamin, chất xơ, giúp nâng cao tỷ lệ trao đổi chất và thanh lọc cơ thể. Điều quan trọng nhất là sự cân bằng về dinh dưỡng và cung cấp đầy đủ chất cần thiết cho cơ thể, trong đó đặc biệt chú trọng đến các loại chất béo.', '', '', '', '', '', ''),
(56, 5, 'Để “giải oan” cho chất béo, nhiều nhà khoa học chứng minh những chất béo lành mạnh (ví dụ trong sữa) đóng vai trò hỗ trợ cơ thể hấp thu, vận chuyển các vitamin tan trong dầu mỡ và dự trữ năng lượng, cung cấp dưỡng chất, năng lượng và tham gia vào cấu trúc trong cơ thể.', '', '', '', '', '', ''),
(56, 6, 'Đồ uống dù có nhiều giá trị dinh dưỡng, nhưng nếu không ngon miệng cũng không có cơ hội được người tiêu dùng lựa chọn. Một số sản phẩm ngon hơn khi dùng lạnh cần được bảo quản trong môi trường phù hợp để giữ hương vị ngon miệng và dễ uống.', '', '', '', '', '', ''),
(56, 7, 'Hiện nay, khẩu vị ăn uống, khám phá thế giới ẩm thực của thế hệ Y và Z ngày càng phong phú. Thế nhưng, mặc cho làn sóng trà sữa, sữa tươi trân châu đường đen, trà trái cây, trà đào, rau má mix… đến rồi đi, những thức uống cơ bản, thiết yếu như nước, sữa, nước trái cây… lại trường tồn và trở thành hương vị không thể thay thế.', '', '', '', '', '', ''),
(56, 8, 'Một trong những nhân tố giúp sức cho hai yếu tố trên, mang đến chất lượng trọn vẹn đến tay người tiêu dùng chính là quy cách đóng hộp.', '', '', '', '', '', ''),
(56, 9, 'Sản phẩm nước uống đi từ phòng thí nghiệm đến nhà máy sản xuất, đóng hộp, vận chuyển, sau đó trưng bày, bảo quản và sử dụng. Đạt chuẩn kiểm định chất lượng là công cụ then chốt tạo nên trải nghiệm tiêu dùng toàn vẹn của khách hàng.', '2021-02-05-11-18-40-708.jpg', 'Logo của Tetra Pak xuất hiện ở tai hoặc đáy hộp sữa.', NULL, '', '', ''),
(56, 10, 'Các dòng hộp giấy phổ biến tại Việt Nam là dạng vuông với dung tích từ 180 ml đến 1 lít, có thể dễ dàng quan sát logo của nhà sản xuất bao bì ở tai hộp hoặc đáy hộp. Một trong những thương hiệu đảm bảo chất lượng quốc tế trong sản xuất bao bì là Tetra Pak - tập đoàn đến từ Thụy Điển, hiện có mặt tại hơn 170 quốc gia.', '', '', '', '', '', ''),
(56, 11, 'Hộp giấy tiệt trùng Tetra Pak có tác dụng ngăn cản ánh sáng và vi khuẩn có hại xâm nhập. Nhờ đó, sản phẩm sữa được giữ tươi ngon tự nhiên ở nhiệt độ thường trong 6 tháng.', '', '', '', '', '', ''),
(56, 12, 'Ngoài ra, hộp giấy Tetra Pak có thiết kế hiện đại, dễ cầm nắm, đảm bảo bạn trẻ thưởng thức trọn vẹn hương vị và dinh dưỡng của thức uống.', '2021-02-05-11-18-41-073.jpg', 'Bạn trẻ đổi vỏ hộp sữa tái chế trong chương trình thu gom của Tetra Pak.', NULL, '', '', ''),
(56, 13, 'Hộp giấy Tetra Pak được làm chủ yếu từ giấy, khai thác từ nguồn rừng tái sinh được quản lý chặt chẽ và đạt chứng nhận bởi Hội đồng Rừng Thế giới (FSC). Trong năm 2020, hơn 50 tỷ hộp giấy Tetra Pak đã được tái sinh thành sổ tay, thùng carton và giấy ăn.', '', '', '', '', '', ''),
(57, 1, 'Anh Lê Trường Mạnh - CEO kiêm người sáng lập của tập đoàn Kingsport được biết đến là doanh nhân thành công trong lĩnh vực kinh doanh, cũng như diễn giả có sức ảnh hưởng và lan tỏa trong cộng đồng. Trang fanpage nơi anh chia sẻ những góc nhìn đa chiều về cuộc sống, sự nghiệp và con đường phát triển bản thân được nhiều người quan tâm.', '2021-02-05-11-47-37-139.png', 'CEO Lê Trường Mạnh - Tổng giám đốc kiêm nhà sáng lập nhãn hàng Kingsport phát biểu trong buổi lễ Year End Party 2020 của tập đoàn tại khách sạn Reverie Sài Gòn.', NULL, '', '', ''),
(57, 2, '- Nếu dùng một cụm từ để nhắc tới đại dịch Covid-19 thì đó là gì, thưa anh?', '', '', '', '', '', ''),
(57, 3, '- Theo tôi, đó là “sự đào thải”. Dịch Covid-19 đã “đào thải” những doanh nghiệp không có khả năng thích nghi với hoàn cảnh mới. Rất nhiều mô hình kinh doanh buộc phải thu hẹp lại và hàng trăm nghìn doanh nghiệp đã phá sản trên toàn thế giới.', '', '', '', '', '', ''),
(57, 4, 'Việc doanh nghiệp buộc phải tạm dừng, chờ phá sản, hoàn tất thủ tục giải thể gia tăng trong thời điểm hiện nay đã phản ánh sự khó khăn của điều kiện sản xuất, kinh doanh và tổng cầu một số ngành đã và đang giảm sâu do tác động của đại dịch Covid-19.', '', '', '', '', '', ''),
(57, 5, 'Tuy nhiên, nói ra không phải để sợ hãi. Mà là để nhìn lại lỗ hổng và nhiệm vụ của chúng ta là phải trám thật nhanh.', '', '', '', '', '', ''),
(57, 6, '- Vậy anh đã “trám” thế nào để tập đoàn Kingsport không bị đào thải mà vẫn luôn giữ được phong độ vốn có?', '', '', '', '', '', ''),
(57, 7, '- Có thể nói, dù kết quả không đạt được con số kỳ vọng như kế hoạch mục tiêu trước thời điểm bùng dịch, nhưng nhìn chung Kingsport vẫn tăng trưởng đều. Đó là một tín hiệu tốt trong tình hình cả thị trường khó khăn và suy giảm như hiện nay. Tất cả nằm trong chiến lược phát triển tập đoàn theo hướng bền vững và lâu dài mà tôi luôn theo đuổi. Và biến cố xảy ra làm tôi chắc chắn hơn về nhận định của mình trong kinh doanh. Với tôi, kinh doanh là cuộc chơi của sự bền vững.', '', '', '', '', '', ''),
(57, 8, '- Điều gì sẽ tạo nên kỳ tích, thưa anh?', '', '', '', '', '', ''),
(57, 9, '- Với tôi, kỳ tích không phải may mắn mà do chính bản thân mình tạo ra. Đại dịch Covid-19 ảnh hưởng đến mọi người nhưng hành động thiết thực và hữu ích của mỗi người sẽ tạo ra kỳ tích. Ngoài ra cũng phải nói thêm, “có sức khỏe là có tất cả”, một tâm trí sáng suốt chỉ có ở trong một cơ thể khỏe mạnh. Sức khỏe có tốt thì tâm trí mới bình ổn, vững vàng được. Tôi mong mọi người dù trong hoàn cảnh nào cũng lưu ý bảo vệ và nâng cao sức khỏe bản thân.', '2021-02-05-11-47-37-173.png', '\"Sức khỏe có tốt thì tâm trí mới bình ổn, vững vàng được\", CEO Lê Trường Mạnh.', NULL, '', '', ''),
(57, 10, '- Vậy anh làm thế nào để luôn duy trì một sức khỏe tốt và tâm trí minh mẫn?', '', '', '', '', '', ''),
(57, 11, '- Theo tôi, khỏe mạnh cũng là một sự lựa chọn. Tôi lựa chọn không lười biếng và tập luyện thể dục thể thao mỗi ngày. Dù hiểu rất rõ những khó khăn thử thách đang gặp phải, gánh trên vai “cả trọng trách lớn”, tôi vẫn không thay đổi thói quen tập luyện mỗi ngày, quyết không làm việc quá sức hay bỏ bê bản thân.', '', '', '', '', '', ''),
(57, 12, 'Tôi hiểu rằng chỉ có làm việc một cách bình tĩnh và thông minh mới có thể giải quyết vấn đề. Càng trong tình huống nguy cấp càng phải giữ một cái đầu lạnh và tỉnh táo để suy xét toàn bộ sự việc.', '', '', '', '', '', ''),
(57, 13, 'Tôi đã hoạch định chiến lược mới phù hợp với yêu cầu thị trường, xác định chuẩn xác từng mục tiêu trong tình hình hiện nay. Sau đó, với cương vị CEO, tôi lãnh đạo và đưa tập đoàn vượt qua khó khăn nhờ sự quyết đoán, thấu hiểu nhân viên, kiên trì tiến hành từng bước theo kế hoạch đã đặt ra.', '', '', '', '', '', ''),
(57, 14, 'Và thay vì làm việc nhiều giờ hơn, tôi chọn làm việc thông minh hơn và vẫn duy trì thói quen tốt mỗi ngày. Từ kinh nghiệm bản thân, tôi nhận ra cuộc đời sẽ luôn đi đúng hướng khi chúng ta duy trì được những thói quen tốt qua nhiều giai đoạn.', '', '', '', '', '', ''),
(58, 1, 'Thực hiện chỉ đạo của Bộ Y tế, Giáo sư, tiến sĩ Nguyễn Quang Tuấn - Giám đốc Bệnh viện Bạch Mai, Hà Nội, đã cử đoàn công tác hỗ trợ tỉnh Điện Biên dập dịch Covid-19.', '', '', '', '', '', ''),
(58, 2, 'Ê-kíp gồm 12 cán bộ, do Phó giáo sư, tiến sĩ Đào Xuân Cơ - Phó giám đốc bệnh viện - làm trưởng đoàn cùng các chuyên gia đầu ngành về hồi sức tích cực, kiểm soát nhiễm khuẩn, kỹ thuật y sinh.', '', '', '', '', '', ''),
(58, 3, 'Sau khi làm việc cùng Sở Y tế tỉnh Điện Biên, đoàn đã khảo sát 3 bệnh viện (Bệnh viện Đa khoa tỉnh, Bệnh viện Phổi, Trung tâm Y tế thành phố).', '', '', '', '', '', ''),
(58, 4, 'Dựa trên tình hình thực tế, nhóm chuyên gia từ Bệnh viện Bạch Mai đã chọn Trung tâm Y tế thành phố Điện Biên làm bệnh viện dã chiến với quy mô 200-250 giường bệnh. Trong đó, 15-20 giường bệnh hồi sức với đầy đủ hệ thống oxy, khí nén, máy thở...', '', '', '', '', '', ''),
(58, 5, 'Ê-kíp chuyên gia cũng họp bàn, thống nhất các biện pháp khẩn cấp và kế hoạch, phương án ứng phó với tính huống xấu nhất có thể xảy ra tại tỉnh Điện Biên. Ngoài ra, xe trang thiết bị cùng 5-6 kỹ sư y sinh đang chuẩn bị lên đường tới Điện Biên để xây dựng bệnh viện dã chiến.', '2021-02-06-00-57-26-529.jpg', 'Ê-kíp chuyên gia từ Bệnh viện Bạch Mai, Hà Nội, kiểm tra, khảo sát trang thiết bị, cơ sở y tế tại Điện Biên trong ngày 5/2. Ảnh: Ngọc Khanh.', NULL, '', '', ''),
(58, 6, 'Tối 5/2, Bộ Y tế công bố Điện Biên có 3 ca mắc Covid-19 đầu tiên (BN1970-BN1972). Trong đó, 2 ca là F1 liên quan ổ dịch huyện Cẩm Giàng, tỉnh Hải Dương và trường hợp còn lại đang điều tra dịch tễ.', '', '', '', '', '', ''),
(58, 7, 'Trong cuộc họp trực tuyến với các tỉnh, thành phố có dịch vào sáng 5/2, Bộ trưởng Y tế Nguyễn Thanh Long chỉ đạo ngành y tế Điện Biên tăng cường truy vết kỹ hơn, tránh bỏ sót bệnh nhân.', '', '', '', '', '', ''),
(58, 8, '\"Điện Biên cần đẩy nhanh xét nghiệm với tất cả F1. Trong khi đó, F2 phải tự cách ly tại nhà. Bộ Y tế sẽ cử ngay chi viện về xét nghiệm và điều trị từ Bệnh viện Bạch Mai và Viện Vệ sinh Dịch tễ Trung ương cho Điện Biên\", ông Long cho biết.', '', '', '', '', '', ''),
(58, 9, 'Về tình hình điều trị, xét nghiệm, tỉnh có 88 máy thở, một máy xét nghiệm có công suất 250 mẫu mỗi ngày. Sở Y tế dự đoán số lượng sinh phẩm còn lại của Điện Biên không đủ để tiếp tục xét nghiệm các ca nghi ngờ.', '', '', '', '', '', ''),
(59, 1, 'Ngày 5/2, các bác sĩ Bệnh viện Đa khoa Trung ương Quảng Nam cho biết bệnh nhân bị rắn lục cắn là ông P.V.T. (92 tuổi, ở huyện Ba Tơ, tỉnh Quảng Ngãi). Sau khi gặp nạn, ông T. tự chữa bằng cách dùng lá đắp vào vết thương và điều trị tại y tế địa phương.', '2021-02-06-01-00-11-037.jpg', 'Bàn chân trái của ông T. bị sưng phù do rắn cắn. Ảnh: Bệnh viện cung cấp.', NULL, '', '', ''),
(59, 2, 'Do tình trạng xuất huyết diễn tiến nặng, bệnh nhân đã đến Bệnh viện Đa khoa Trung ương Quảng Nam.Bệnh nhân nhập viện cấp cứu trong tình trạng sưng phù bàn chân trái, xuất huyết nặng vùng mông, đùi trái.\r\n\r\nBác sĩ xác định bệnh nhân bị xuất huyết nặng do rối loạn đông máu nặng dẫn đến suy thận cấp, tính mạng nguy kịch.', '', '', '', '', '', ''),
(59, 3, 'Bác sĩ đã dùng huyết thanh kháng nọc độc rắn để điều trị cho bệnh nhân. Ông T. được truyền 3 đơn vị hồng cầu khối và 23 lọ huyết thanh kháng nọc độc rắn kết hợp cùng các biện pháp chống suy thận cấp.', '', '', '', '', '', ''),
(59, 4, 'Hiện tình trạng rối loạn đông máu của bệnh nhân dần ổn định, giảm xuất huyết, tình trạng thiếu máu được phục hồi.', '', '', '', '', '', ''),
(60, 1, 'Tuần 27 thai kỳ, sản phụ L.Đ.B.T. (30 tuổi, ngụ tại Đồng Nai) được chẩn đoán thai có khối u quái khổng lồ vùng cùng cụt. Suốt thai kỳ, chị T. luôn tuân thủ hướng dẫn dưỡng thai, hy vọng y học hiện đại có thể giúp được bé.', '', '', '', '', '', ''),
(60, 2, 'Tuần thứ 36, sản phụ T. sinh non. Bé gái nặng 3,6 kg chào đời an toàn tại Bệnh viện Từ Dũ (TP.HCM). Sau sinh, trẻ được chuyển về khoa Hồi sức sơ sinh, Bệnh viện Nhi đồng Thành phố (TP.HCM) để chăm sóc và chờ can thiệp khối u.', '2021-02-06-01-09-41-864.jpg', 'Khối u nặng một kg được các bác sĩ bóc thành công. Ảnh: Phương Vũ.', NULL, '', '', ''),
(60, 3, 'Sau gần một tuần chăm sóc, các bác sĩ quyết định phẫu thuật cắt bỏ khối u cho bé. Ca mổ diễn ra thuận lợi dưới sự dẫn dắt của bác sĩ chuyên khoa 2 Tạ Huy Cần, Trưởng khoa Ngoại Tổng hợp và ê-kíp gây mê.', '', '', '', '', '', ''),
(60, 4, 'Khối u nặng nặng một kg chứa các nang nước da, lông, tóc, móng, các chi, xương và ruột... Các bác sĩ nhận định những đặc điểm này phù hợp với u quái trưởng thành.', '', '', '', '', '', ''),
(60, 5, 'Sau phẫu thuật, bé được hồi sức ổn định, mọi sinh hiệu bình thường với hình hài lành lặn.\r\n\r\nU quái cùng cụt có tỷ lệ mắc 1/40.000 trẻ, tỷ lệ trẻ em gái mắc nhiều. U có nguồn gốc từ tế bào phôi thai. Bệnh lý này có thể được chẩn đoán tiền sản bằng siêu âm hoặc MRI kỹ thuật cao để đánh giá tiên lượng và chuẩn bị trước sinh, hồi sức sau sinh cho trẻ.', '', '', '', '', '', ''),
(60, 6, 'Bác sĩ Tạ Huy Cần cho biết may mắn bệnh nhi này mang u quái có nguy cơ ác tính khoảng 10%. Tuy nhiên, bé gái cần được theo dõi, chăm sóc sau mổ lâu dài để phòng nguy cơ di chứng rối loạn tiêu, tiểu, yếu cơ chi dưới.', '', '', '', '', '', ''),
(60, 7, 'Các bác sĩ cho biết hiện nay, sự phát triển của kỹ thuật tiên tiến trong chẩn đoán hình ảnh học và sự hợp tác của bác sĩ sản - nhi đã mang đến nhiều hy vọng hơn cho các bé sơ sinh với bệnh lý bẩm sinh, phức tạp.', '', '', '', '', '', ''),
(60, 8, 'Qua đây, bác sĩ khuyến khích thai phụ nên đi khám định kỳ và tầm soát trước sinh nhằm phát hiện sớm các bệnh lý bất thường của con.', '', '', '', '', '', ''),
(60, 9, 'Việc sử dụng những biện pháp thăm dò đặc hiệu trong thời gian mang thai sẽ giúp chẩn đoán xác định các trường hợp bệnh do rối loạn di truyền nhiễm sắc thể ở giai đoạn sớm. Từ đó, nhân viên y tế sẽ tham vấn cho gia đình chọn hướng xử trí kịp thời và thích hợp. Ngoài ra, sản phụ cũng được tư vấn, hướng dẫn cách chăm sóc sức khỏe thai nhi tốt nhất sau khi trẻ chào đời.', '', '', '', '', '', ''),
(62, 1, 'HLV Fabio tuyên bố thắng kiện CLB Thanh Hóa hôm 3/2. Đến hôm 5/2, công ty luật đại diện SILA ra thông báo chính thức về vụ kiện giữa ông Fabio Lopez và ông Salvatore Orofino với đội bóng V.League Thanh Hóa.', '', '', '', '', '', ''),
(62, 2, 'SILA cho biết đơn phản tố của CLB Thanh Hóa đã bị Ủy ban tư cách cầu thủ của FIFA bác bỏ. \"Fabio và Salvatore giành lợi thế trong vụ tranh chấp hợp đồng với CLB Thanh Hóa (Việt Nam)\", công ty luật ở châu Âu khẳng định.', '2021-02-06-01-13-39-341.jpg', 'Bầu Đệ (phải) đã không còn là chủ tịch CLB Thanh Hóa sau mùa giải 2020. Ảnh: Quang Thịnh.', NULL, '', '', ''),
(62, 3, 'Quyết định của FIFA đã được gửi cho bên nguyên đơn (Fabio và Salvatore) và bên bị đơn (CLB Thanh Hóa) vào hôm 2/2/2021. Trong vòng 45 ngày từ khi ra quyết định, CLB Thanh Hóa phải thanh toán số tiền theo hợp đồng.', '', '', '', '', '', ''),
(62, 4, 'Theo nguyên tắc FIFA, phán quyết phải được giữ bí mật, không bên nào được công bố ra ngoài. Ông Nguyễn Văn Đệ, cựu Chủ tịch CLB Thanh Hóa thời HLV Fabio ký hợp đồng, khẳng định chưa nhận được quyết định của FIFA.', '', '', '', '', '', ''),
(62, 5, 'Theo tìm hiểu của Zing, cũng như yêu cầu mà ông Fabio từng đưa ra trước khi kiện, số tiền này là gần 200.000 USD. Mức lương HLV người Italy nhận được ở đội bóng khoảng 5.000 tới 6.000 USD/tháng, hợp đồng kéo dài 2 năm.', '', '', '', '', '', ''),
(62, 6, 'Nhà cầm quân sinh năm 1973 ký hợp đồng vào tháng 11/2019 và hết hạn vào 11/2021. Tuy nhiên, ông bị sa thải vào tháng 7/2020, tức là đã làm việc được 7 tháng. CLB Thanh Hóa còn nợ 17 tháng lương với riêng ông Fabio.', '', '', '', '', '', ''),
(62, 7, 'Số tiền đền bù riêng của HLV trưởng là khoảng 95.000 USD. Trong khi đó, trợ lý Salvatore hưởng lương thấp hơn ông Fabio nhưng có cùng thời hạn hợp đồng. Đó là chưa tính 5% lãi suất hàng tháng từ ngày hai bên chấm dứt hợp đồng.', '', '', '', '', '', ''),
(62, 8, '\"Sau nhiều tháng chịu đựng những lời xúc phạm về sự chuyên nghiệp của mình cũng như những lời gièm pha, thời khắc này cũng đã đến. FIFA đã trả lại cho tôi những gì mà người ta lấy đi\", ông Fabio chia sẻ với truyền thông Việt Nam.', '', '', '', '', '', ''),
(62, 9, 'Nói với Zing về quyết định của FIFA, ông cho biết: \"Tôi sẽ không thương lượng với CLB Thanh Hóa. Tôi đã cảnh cáo họ trước khi đưa vụ việc này lên FIFA. Họ đã từ chối đàm phán và đây là hậu quả họ phải gánh lấy\".', '', '', '', '', '', ''),
(62, 10, 'Ông còn \"vẽ đường\" để CLB Thanh Hóa có thể kiện lên cấp cao hơn là Tòa án Thể thao Quốc tế (CAS). Tuy nhiên, nếu CLB của Việt Nam thua, CAS sẽ phạt nặng hơn số tiền ban đầu mà FIFA phán quyết.', '', '', '', '', '', ''),
(62, 11, 'CLB Thanh Hóa ở mùa giải 2021 đã đổi chủ. Bầu Đệ (Nguyễn Văn Đệ) không còn làm chủ tịch và quản lý đội bóng. Ông Cao Tiến Đoan đang làm chủ tịch CLB và chịu trách nhiệm pháp lý của đội Thanh Hóa.', '', '', '', '', '', ''),
(63, 1, 'Gương mặt còn lại xuất hiện trong danh sách là thủ thành Manuel Neuer. Việc Ronaldo, Ramos và Neuer được vinh danh không quá bất ngờ khi họ là những ngôi sao gặt hái được nhiều thành công vang dội.', '', '', '', '', '', ''),
(63, 2, 'Ronaldo và Ramos cùng Real Madrid giành 4 chức vô địch Champions League. Sau khi CR7 rời \"Los Blancos\" vào hè 2018 để chuyển tới Juventus, siêu sao người Bồ Đào Nha tiếp tục bội thu danh hiệu. Anh cùng \"Bà đầm già\" thống trị Serie A.', '2021-02-06-01-25-44-486.jpg', 'Ronaldo nằm trong top 3 cầu thủ châu Âu hay nhất một thập niên qua. Ảnh: Getty.', NULL, '', '', ''),
(63, 3, 'Ronaldo vừa kỷ niệm sinh nhật lần thứ 36 hôm 5/2. Dù luống tuổi, thứ bóng đá của cựu sao Real vẫn không hề giảm chất lượng. Trong năm thứ ba khoác áo Juventus, Ronaldo tiếp tục là cầu thủ ghi bàn hàng đầu với 22 bàn sau 23 trận trên mọi đấu trường.', '', '', '', '', '', ''),
(63, 4, 'Ramos cũng là \"cây trường sinh\" ở Real Madrid. Thủ quân người Tây Ban Nha thi đấu chắc chắn và ổn định. \"Los Blancos\" luôn loạng choạng mỗi khi vắng ngôi sao 34 tuổi, người chuẩn bị hết hạn hợp đồng với CLB vào hè 2021.', '', '', '', '', '', ''),
(63, 5, 'Trong khi đó, Neuer có 8 chức vô địch Bundesliga và 2 danh hiệu Champions League cùng Bayern Munich. Ở cấp độ ĐTQG, thủ thành này sở hữu thêm cúp vàng World Cup khi cùng tuyển Đức lên ngôi vào năm 2014. Như Ronaldo và Ramos, Neuer vẫn chưa có biểu hiện xuống phong độ.', '', '', '', '', '', ''),
(63, 6, 'Ở hạng mục top 3 cầu thủ Nam Mỹ hay nhất trong một thập niên qua, Lionel Messi, Neymar và Daniel Alves được vinh danh. Còn Mohamed Salah, Sadio Mane và Riyad Mahrez nằm trong top 3 cầu thủ châu Phi hay nhất giai đoạn 2011-2020.', '', '', '', '', '', ''),
(63, 7, 'Son Heung-min, Keisuke Honda và Salem Al Dawsari cũng được IFFHS vinh danh với tư cách những cầu thủ châu Á hay nhất một thập niên qua.', '', '', '', '', '', ''),
(64, 1, 'Ở trận đấu này, Diallo được bố trí chơi ở vị trí chạy cánh phải trong sơ đồ 4-2-3-1. Tân binh trị giá 21 triệu euro liên tục thực hiện những pha rê dắt ở tốc độ cao, những pha qua người kỹ thuật. Lối chơi của Diallo không chỉ đẹp mắt, mà còn mang đến hiệu quả tối đa.', '', '', '', '', '', ''),
(64, 2, 'MU 2 lần bị vượt lên dẫn trước, nhưng nhờ Diallo đã tỏa sáng với 3 đường kiến tạo, lần lượt ở phút 39,\r\n73 và 78, đều cho Shola Shoretire, đồng đội bên cánh trái lập công. Phút 85, cựu cầu thủ Atalanta ghi tên lên bảng tỷ số, với pha dứt điểm một chạm trong vùng cấm bằng chân trái', '2021-02-06-01-28-23-792.jpg', 'Diallo (trái) cho thấy trình độ nhỉnh hơn so với các đồng đội ở U23 Man Utd. Ảnh: Getty.', NULL, '', '', ''),
(64, 3, 'Chỉ trong 2 trận gần nhất, Diallo đã ghi 3 bàn, và kiến tạo 3 lần. Nếu tiếp tục phong độ hiện tại, ngày cầu thủ người Bờ Biển Ngà được HLV Ole Gunnar Solskjaer trao cơ hội ở đội một không còn xa.', '', '', '', '', '', ''),
(64, 4, 'Ngoài những pha lập công, kiến tạo, Diallo còn chinh phục người hâm mộ bằng khả năng phối hợp ăn ý với đồng đội. Ngoài Shoretire, Hannibal Mejbri, cầu thủ trẻ xuất thân từ lò đào tạo của Monaco cũng là một đối tác ăn ý với Diallo. Bộ đôi này liên tục khuấy đảo hàng thủ Blackburn những pha phối hợp đầy tự tin bên cánh phải.', '', '', '', '', '', ''),
(64, 5, 'Chiến thắng rạng sáng nay giúp U23 MU vươn lên thứ 6 trên bảng xếp hạng Premier League 2. Ở trận đấu tiếp theo gặp U23 Arsenal, Diallo nhiều khả năng sẽ lại ra sân. HLV Solskjaer đang muốn dùng những trận đấu ở giải trẻ để giúp tân binh sinh năm 2002 nâng cao thể lực, và có thêm sự tự tin.', '', '', '', '', '', ''),
(65, 1, 'Chiều 3/2, HLV Fabio Lopez loan báo thông tin mình thắng kiện CLB Thanh Hóa sau thời gian dài theo đuổi vụ việc. Chưa rõ FIFA phán quyết đội bóng xứ Thanh phải đền bù bao nhiêu tiền, nhưng bê bối này thêm một lần nữa vạch trần góc tối trong cách làm bóng đá ở giải đấu đã hơn 20 năm đóng mác chuyên nghiệp.', '2021-02-06-01-31-10-216.jpg', 'HLV Lopez bị sa thải chỉ sau 5 trận dẫn dắt CLB Thanh Hóa hồi 2020. Ảnh: Thế Anh.', NULL, '', '', ''),
(65, 2, 'Tháng 9/2004, CAS (Tòa án Thể thao Quốc tế) phán quyết Liên đoàn Bóng đá Việt Nam phải đền bù hơn 200.000 USD (hơn 3 tỷ đồng) cho cựu HLV trưởng tuyển quốc gia Christian Letard. Để dễ hình dung, số tiền đội tuyển quốc gia nhận tài trợ trong năm 2005 chỉ là 3,7 tỷ đồng.', '', '', '', '', '', ''),
(65, 3, 'Thời điểm xảy ra tranh chấp, bóng đá Việt Nam có nhiều rối ren, từ sa sút lòng tin nơi người hâm mộ đến những vấn đề chuyên môn và cả bất cập trong quản lý. Vụ việc được coi là bài học đắt giá cho những người làm bóng đá Việt Nam trên hành trình bước ra thế giới.', '', '', '', '', '', ''),
(65, 4, '16 năm sau, bóng đá Việt Nam đã có những bước tiến đáng kể, VFF cũng có những thay đổi để dần bắt kịp xu thế chung của thế giới. Các CLB Việt Nam cũng từng bước hội nhập, có mặt, thậm chí chơi tốt ở các giải khu vực và châu lục. Song, từng đó là chưa đủ khi nhiều CLB vẫn phải trả giá trong các cuộc chiến pháp lý.', '', '', '', '', '', ''),
(65, 5, 'Cựu HLV CLB Thanh Hóa Fabio Lopez khẳng định ông được FIFA phán thắng kiện và đội bóng xứ Thanh sẽ phải đền bù cho những thiệt hại mà nhà cầm quân này phải chịu kể từ khi bị thanh lý hợp đồng.', '', '', '', '', '', ''),
(65, 6, 'Tháng 6/2020, HLV Lopez bị sa thải chỉ sau 5 trận dẫn dắt đội bóng xứ Thanh, bằng một cuộc họp kín được tổ chức bởi chủ tịch cũ Nguyễn Văn Đệ. Tranh cãi nảy sinh khi CLB Thanh Hóa không chấp nhận đền bù cho thuyền trưởng người Italy. Họ tin rằng mình có quyền đơn phương chấm dứt hợp đồng bởi thành tích kém cỏi của đội bóng trong thời gian được dẫn dắt bởi HLV Lopez.', '', '', '', '', '', ''),
(65, 7, 'Thời điểm nhận thông tin bị CLB Thanh Hóa sa thải, chiến lược gia sinh năm 1973 bức xúc: \"Tôi không sốc bởi việc bị sa thải. Tôi chỉ ngạc nhiên bởi cách hành xử thiếu chuyên nghiệp của đội Thanh Hóa. Họ vội vã tung tin với giới truyền thông trước khi gặp và thông báo việc sa thải với tôi. Cách làm bóng đá ở CLB Thanh Hóa thực sự có vấn đề\".', '', '', '', '', '', ''),
(65, 8, 'Trước vụ lùm xùm giữa CLB Thanh Hóa và HLV Lopez, một đội bóng khác phải nhận án phạt tương tự từ FIFA. CLB Hải Phòng phải đền bù hơn 200.000 USD (khoảng 5 tỷ đồng) cho Errol Stevens. Theo Stevens, anh bị đội bóng đất cảng nợ lương từ năm 2018 đến thời điểm phán quyết (giữa năm 2020).', '', '', '', '', '', ''),
(65, 9, 'Điểm chung của những vụ tranh chấp trên là đều xuất phát từ cách hành xử không giống ai của các đội bóng mà cụ thể là sự tùy hứng của những ông bầu. Họ đi ngược lại nguyên tắc chung, gần như không tuân theo luật quốc tế.', '2021-02-06-01-31-10-240.jpg', 'Bãi đất trống sau khu vực cầu môn khán đài C sân Lạch Tray được dọn dẹp sau khi những hình ảnh trồng rau, nuôi gà tại đây được lan truyền. Ảnh: Nguyễn Dương.', NULL, '', '', ''),
(65, 10, 'Tối 3/2, bầu Đệ phủ nhận thông tin CLB Thanh Hóa thua kiện. Ông Cao Tiến Đoan, người tiếp quản đội bóng sau khi bầu Đệ rút lui, lại khẳng định mình không liên quan. Ông Đoan cho rằng nếu CLB Thanh Hóa thua kiện, trách nhiệm thuộc về bầu Đệ và tỉnh, còn bản thân hoàn toàn vô can.', '', '', '', '', '', ''),
(65, 11, 'Đặt giả thiết, yêu cầu đền bù của HLV Lopez không được thực hiện đúng hạn, CLB Thanh Hóa đối diện với án phạt nặng hơn, có thể là cấm thi đấu, ai sẽ là người chịu trách nhiệm?', '', '', '', '', '', ''),
(65, 12, 'Đặt giả thiết, yêu cầu đền bù của HLV Lopez không được thực hiện đúng hạn, CLB Thanh Hóa đối diện với án phạt nặng hơn, có thể là cấm thi đấu, ai sẽ là người chịu trách nhiệm?', '', '', '', '', '', ''),
(65, 13, 'Đến khi Stevens ký hợp đồng với CLB Thanh Hóa, ông Hùng lại dọa kiện ngược vì cho rằng đội bóng của mình không sai. Sau tuyên bố hùng hồn đó, mọi việc dần chìm xuống. Stevens ký hợp đồng với CLB Thanh Hóa, đá thêm một mùa trước khi trở về quê nhà và có lẽ không bao giờ trở lại thi đấu ở V.League nữa.', '', '', '', '', '', ''),
(65, 14, 'Điểm chung trong các vụ việc này là đại diện Việt Nam đều thua kiện. Muốn hội nhập và tiến lên chuyên nghiệp, các CLB Việt Nam cần học lại từ những điều nhỏ nhất, ví dụ như thượng tôn pháp luật.', '', '', '', '', '', ''),
(66, 1, 'Hôm 4/2, trang chủ Thai League 1 công bố tốp 6 thủ môn hay nhất lượt đi mùa giải 2020/21. Bản danh sách có 5 người gác đền Thái Lan và một thủ môn người Philippines.', '2021-02-06-01-33-25-104.jpg', 'Văn Lâm không có tên trong nhóm thủ môn cứu thua tốt nhất lượt đi Thai League 2020/21. Ảnh: Quang Thịnh.', NULL, '', '', ''),
(66, 2, 'Peerapong Rueanin của CLB Sukhothai là người chơi ấn tượng nhất với 21 pha cứu thua. Các thủ môn Patrick Dayto (Suphanburi), Prasit Phadungchok (Police Tero), Sintawee Rattanakul (Chonburi) và Tossaporn Sriruang (Trat) lần lượt chia sẻ những vị trí kế tiếp với 15, 13 và 12 pha cứu thua.', '', '', '', '', '', ''),
(66, 3, 'Đứng ở vị trí cuối cùng là Kampon Pathomarkkun của CLB Ratchaburi với 10 lần nỗ lực ngăn cản bàn thắng của đối phương. Ratchaburi là đội duy nhất trong những tên tuổi kể trên kết thúc lượt đi ở vị trí cao hơn Muangthong United trên bảng xếp hạng (hạng 3 so với 7).', '', '', '', '', '', ''),
(66, 4, 'Là thủ môn số một của Muangthong, Đặng Văn Lâm vẫn nằm ngoài danh sách trên sau giai đoạn lượt đi. Trước khi chia tay đội bóng Thái Lan, Lâm \"Tây\" ra sân 12 trong 16 trận, để thủng lưới 18 bàn.', '', '', '', '', '', ''),
(66, 5, 'Sau khi Văn Lâm được xác nhận sẽ chuyển đến thi đấu cho Cerezo Osaka, thủ thành Somporn Yos trở thành lựa chọn số một nơi khung gỗ. Anh nhận được nhiều lời khen sau khi cùng Muangthong Utd giành vé vào tứ kết Cúp Liên đoàn Thái Lan.', '', '', '', '', '', ''),
(67, 1, 'Trước thềm năm mới Tân Sửu, HLV Park Hang-seo đã có những chia sẻ về hai đội tuyển Việt Nam trên kênh mạng xã hội của VFF. Ông nói về mục tiêu và áp lực trong năm 2021, tham vọng bảo vệ thành công chức vô địch AFF Cup và SEA Games. Zing trích đăng một phần cuộc phỏng vấn.', '2021-02-06-01-35-18-483.jpg', 'HLV Park Hang-seo đã trở lại Việt Nam sau kỳ nghỉ ở Hàn Quốc và sẽ bắt đầu công việc vào đầu năm Tân Sửu. Ảnh: Minh Chiến.', NULL, '', '', ''),
(67, 2, '- HLV Park Hang-seo: Sau 3 tuần tập trung, tôi đã rút ra nhiều điều ý nghĩa cho các đội tuyển. Đầu tiên, tất cả cầu thủ cũ của tuyển Việt Nam lâu rồi không được tập trung. Bởi vậy, tôi tập trung để nhắc họ lại về sự nhận thức chiến thuật và phát triển thêm nó. Thứ hai, lần tập trung vừa qua có nhiều cầu thủ mới, 12 người ở 12 vị trí khác nhau trên sân. Điều này sẽ nâng cao sự cạnh tranh tại tuyển quốc gia.', '', '', '', '', '', ''),
(67, 3, 'Điều quan trọng là khi tuyển chọn cầu thủ, tôi tuyệt đối không dùng tình cảm riêng tư. Mỗi người đều có một tiêu chí phù hợp với đội tuyển quốc gia và tôi tuyệt đối không hề có cảm tình riêng với cầu thủ nào. Mỗi lần tập trung U22 hay đội tuyển, tôi luôn có thông điệp khác nhau dành cho mỗi cầu thủ dù tôi không biết họ có hiểu điều đó hay không.', '', '', '', '', '', ''),
(67, 4, '- Ở mức độ nào đó, tôi đã đáp ứng được những kỳ vọng từ người hâm mộ Việt Nam. Nhưng tất cả đã là quá khứ, tôi không nói về quá khứ nữa. Mục tiêu của tôi là đáp ứng những kỳ vọng mới vào năm 2021. Quá khứ chỉ là ký ức, ta hãy để nó là những kỷ niệm. Đáp ứng những kỳ vọng là cuộc đời của một HLV.', '', '', '', '', '', ''),
(67, 5, '- Tuyển Việt Nam có hai trận quan trọng với Malaysia và UAE từ nay tới tháng 6. Thể thức thi đấu chưa được rõ ràng nhưng chúng ta phải chuẩn bị. Ở đợt tập trung vừa qua, chúng tôi đã họp đội và chia nhóm thảo luận về mục tiêu 2021. 100% cầu thủ đều muốn vào vòng loại thứ ba World Cup và chúng tôi sẽ cố gắng tạo ra những kỷ lục. Tôi cũng có mục tiêu riêng của mình nhưng tôi nghĩ mục tiêu của tôi và các cầu thủ là giống nhau.', '', '', '', '', '', ''),
(67, 6, 'Cuối năm 2021 là AFF Cup, giải đấu chúng ta là nhà đương kim vô địch. Công việc của tôi là làm sao để chúng ta giữ được vị trí đó. Các đối thủ tại khu vực Đông Nam Á và vòng loại World Cup đã chuẩn bị rất kỹ, có đội đã nhập tịch từ 3 tới 4 cầu thủ. Năm 2021, chúng tôi sẽ phải chuẩn bị kỹ, làm việc cật lực với tuyển Việt Nam.', '2021-02-06-01-35-18-505.jpg', 'U22 Việt Nam không còn nhiều ngôi sao và đang đứng trước năm 2021 nhiều thử thách. Ảnh: Minh Chiến.', NULL, '', '', ''),
(68, 1, 'Trưởng đoàn Bóng đá HAGL Nguyễn Tấn Anh cho biết: \"Trợ lý Kim đã cho thấy khả năng lĩnh xướng và gắn kết đội bóng trong giai đoạn khó khăn vì ảnh hưởng của dịch Covid-19 năm ngoái\".', '', '', '', '', '', ''),
(68, 2, '\"Ông Kim Tae-min sẽ đóng vai trò quan trọng trong việc tái thiết lại đội bóng dưới sự dẫn dắt của HLV Kiatisuk trong năm 2021\", đại diện đội bóng phố núi nhận xét về năng lực và lý do HAGL giữ lại ông Kim.', '2021-02-06-01-37-33-271.jpg', 'Trợ lý Kim tiếp tục công tác huấn luyện ở HAGL dưới thời HLV Kiatisuk. Ảnh: Quang Thịnh.', NULL, '', '', ''),
(68, 3, 'Trước đó, tương lai của cựu tuyển thủ U23 Hàn Quốc bị đặt dấu hỏi khi HAGL không gia hạn hợp đồng với HLV Lee Tae-hoon. Ông Lee chia tay HAGL để nhường ghế lại cho nhà cầm quân người Thái Lan Kiatisuk.', '', '', '', '', '', ''),
(68, 4, '\"Zico Thái\" không đến một mình. Ông mang theo trợ lý thể lực Bundit Thiabthong. Ông Bundit phụ trách luôn phần khởi động và phục hồi cho các cầu thủ trước và sau mỗi buổi tập.', '', '', '', '', '', ''),
(68, 5, 'Ông Kim sẽ hỗ trợ chuyên môn thay vì công tác thể lực như trước kia. \"Tôi sẽ làm hết sức mình để phát triển đội bóng và đội hình của HAGL. Đây là năm thứ ba của tôi ở V.League và mùa thứ 2 ở HAG\", trợ lý người Hàn Quốc nói.', '', '', '', '', '', ''),
(68, 6, 'Cựu hậu vệ của CLB Busan I\'Park từng có hơn 200 trận thi đấu tại K League 1. Kim sinh năm 1982, chơi ở vị trí tiền vệ phòng ngự và hậu vệ. Ông từng chơi bóng ở Trung Quốc cho Chongqing F.C và Police Unite ở Thái Lan và sau này là Kitchee của Hong Kong.', '', '', '', '', '', ''),
(68, 7, 'Năm 2019, trợ lý Kim đến V.League trong thành phần đội TP.HCM dưới thời HLV Chung Hae-seong. Sau đó, ông chuyển đến HAGL làm việc cho đến thời điểm hiện tại. Ông Kim được mệnh danh là \"Cầu thủ Hàn Quốc nhanh nhất\".', '', '', '', '', '', ''),
(70, 1, 'Theo Daily Mail, Gareth Bale được cho là đang cảm thấy không thoải mái tại Tottenham. Tinh thần của cầu thủ người xứ Wales sa sút do không được ra sân thường xuyên, và không thể thích nghi với lối chơi dưới thời HLV Jose Mourinho.', '', '', '', '', '', '');
INSERT INTO `paragraph` (`IdArticle`, `IdParagraph`, `Content`, `Image`, `TitleImage`, `DescriptionImage`, `Video`, `TitleVideo`, `DescriptionVideo`) VALUES
(70, 2, 'Về phía Mourinho, nhà cầm quân người Bồ Đào Nha cũng không còn kiên nhẫn với Bale. Ông quyết định trừng phạt cậu học trò sinh năm 1989, sau màn thể hiện đáng thất vọng ở trận thua Brighton Albion.', '2021-02-06-01-39-30-557.jpg', 'HLV Mourinho làm ngơ Bale trong trận đấu với Chelsea. Ảnh: Getty.', NULL, '', '', ''),
(70, 3, 'Cựu cầu thủ Real chỉ chơi 61 phút trên sân Amex, sau đó nhường chỗ cho Moura. Trong quãng thời gian trên sân, Bale không có nổi một cú dứt điểm, tỷ lệ chuyền chính xác của anh chỉ đạt 67%. Một số nguồn tin cho biết, ngay cả các cầu thủ của Brighton cũng ngạc nhiên với màn trình diễn tệ của Bale, bởi họ luôn nghĩ anh là một ngôi sao đẳng cấp thế giới.', '', '', '', '', '', ''),
(70, 4, 'Trong trận gặp Chelsea ở vòng 22 giải Ngoại hạng Anh, Bale tỏ rõ sự thất vọng khi anh không được vào sân, dù Spurs vẫn còn quyền thay người. 2 cầu thủ được Mourinho tung vào sân, Lucas Moura và Erik Lamela không thể giúp \"Gà trống\" tìm bàn gỡ. Sau trận, \"Người đặc biệt\" còn tỏ thái độ gay gắt với phóng viên khi nhận câu hỏi về lý do không sử dụng Bale.', '', '', '', '', '', ''),
(70, 5, 'Ngay từ đầu, Bale không phải là mục tiêu chuyển nhượng ưu tiên của HLV Mourinho. Quyết định đưa cầu thủ người xứ Wales trở lại London có sự tác động lớn từ ban lãnh đạo. Họ cho rằng sở hữu Bale dưới dạng cho mượn là cơ hội không thể bỏ lỡ.', '', '', '', '', '', ''),
(70, 6, 'Mùa giải dần trôi đi, sự kiên nhẫn HLV Mourinho dành cho Bale cũng dần cạn. Cầu thủ 32 tuổi mới chỉ có 2 lần đá chính tại Premier League. Tính trên mọi đấu trường, Bale có vỏn vẹn 1 trận thi đấu trọn 90 phút, đó là trong chiến thắng 4-0 trước Wycombe, đối thủ đang đứng cuối tại giải hạng Nhất. Những đóng góp ít ỏi của cầu thủ người xứ Wales không hề tương xứng với mưc lương 250.000 bảng mỗi tuần.', '', '', '', '', '', ''),
(71, 1, 'Ngày 5/2, trang 163 đưa tin tài khoản mạng xã hội của Toà án Tế Nam và Tòa án Trùng Khánh lần lượt đăng bài vinh danh Trịnh Sảng là đại sứ hành động vì thanh niên, tuyên truyền bảo vệ môi trường, dù trước đó, nữ diễn viên đã bị cơ quan quản lý nhà nước về phát thanh, điện ảnh và truyền hình cấm sóng.', '', '', '', '', '', ''),
(71, 2, 'Hành động này gây chấn động mạng xã hội Trung Quốc. Trong khi người hâm mộ của Trịnh Sảng vui mừng, cho rằng thần tượng của họ có cơ hội quay trở lại giới giải trí. Công chúng lại tỏ ra bất bình, tức giận vì các đơn vị tòa án chọn một nghệ sĩ có vết nhơ về đạo đức làm đại sứ từ thiện.', '2021-02-06-01-44-30-256.jpg', 'Trịnh Sảng đột ngột được giới thiệu là đại sứ từ thiện dù bị cấm sóng.', NULL, '', '', ''),
(71, 3, 'Truyền thông đã liên hệ với Tòa án cấp trung Trùng Khánh và nhận được câu trả lời bài đăng là sai sót của nhân viên. Tòa án nhận lỗi vì kiểm tra lỏng lẻo dẫn đến đưa tin sai sự thật, sẽ có hình thức xử lý nghiêm khắc với nhân viên. Phía tòa án Tế Nam không bình luận về sự việc.', '', '', '', '', '', ''),
(71, 4, 'Bên cạnh đó, QQ đưa tin một người bạn của Trương Hằng đứng ra khẳng định thông tin Trịnh Sảng gọi video cho hai con và khóc xin lỗi là giả.', '', '', '', '', '', ''),
(71, 5, 'Theo người này tiết lộ ngoài việc là người mẹ sinh học của hai đứa trẻ, trong một năm qua Trịnh Sảng không liên hệ với hai con. Hiện tại, hai bé do gia đình Trương Hằng chăm sóc, Trịnh Sảng chưa từng hỏi thăm, gọi điện hay chu cấp phí nuôi dưỡng.', '2021-02-06-01-44-30-268.jpg', 'Bạn Trương Hằng phủ nhận việc Trịnh Sảng gọi điện và xin lỗi con.', NULL, '', '', ''),
(71, 6, 'Theo bạn Trương Hằng, Trịnh Sảng cũng không có thái độ nhún nhường, muốn hòa giải với Trương Hằng hay ký giấy để các con về Trung Quốc.', '', '', '', '', '', ''),
(71, 7, 'Hiện tại, Trịnh Sảng và bạn trai cũ Trương Hằng tranh chấp trong hai vụ kiện. Trong đó, tại Trung Quốc, Trịnh Sảng tố Trương Hằng lừa của cô 20 triệu NDT, mặt khác, cả hai cùng giành quyền chăm sóc con. Phiên tòa giải quyết vấn đề nuôi con sẽ diễn ra vào tháng 3 tại Mỹ.', '', '', '', '', '', ''),
(71, 8, 'Cũng trong một diễn biến khác, tài tử Mã Thiên Vũ, bạn thân của Trịnh Sảng đã ra thông báo cảnh cáo các phương tiện truyền thông đưa tin bịa đặt, ảnh hưởng tới quyền lợi của anh.', '2021-02-06-01-44-30-284.jpg', 'Mã Thiên Vũ, bạn thân của Trịnh Sảng cũng không muốn liên quan tới rắc rối của nữ diễn viên.', NULL, '', '', ''),
(71, 9, 'Trước đó, nhiều trang đưa tin Mã Thiên Vũ vẫn liên lạc với Trịnh Sảng và còn cho cô vay tiền để mở quán cafe sau khi bị tẩy chay khỏi giới giải trí. Trong quá khứ, Trịnh Sảng từng tiết lộ vay tiền Mã Thiên Vũ để mua nhà.', '', '', '', '', '', ''),
(72, 1, 'Trao đổi với Zing, cựu thành viên nhóm nhạc 1088 cho biết sáng 5/2, anh cùng bà xã và vài người bạn đã về Đồng Tháp để thăm mộ phần của Vân Quang Long.\r\n\r\nTheo nam ca sĩ, phần mộ Vân Quang Long được xây dựng khang trang trong phần đất của gia đình.', '', '', '', '', '', ''),
(72, 2, '\"Trước đó, vào lễ an táng của anh Long, tôi bận công việc nên không thể đến đưa tiễn anh. Vì thế, vợ chồng tôi đã sắp xếp đến thắp hương cho anh Long vào dịp trước Tết Nguyên đán. Tôi và các đồng nghiệp luôn nhớ đến anh\", Ưng Hoàng Phúc bày tỏ.', '2021-02-06-01-47-03-864.jpg', 'Ưng Hoàng Phúc thăm mộ phần của Vân Quang Long. Ảnh: NVCC.', NULL, '', '', ''),
(72, 3, 'Anh cho biết sức khỏe của cha mẹ Vân Quang Long những ngày qua đã tốt hơn trước. Cha mẹ cố nghệ sĩ cảm thấy xúc động khi đồng nghiệp, bạn bè vẫn nhớ tới Vân Quang Long.', '', '', '', '', '', ''),
(72, 4, 'Vân Quang Long qua đời vào tối 29/12/2020. Vào sáng 1/1, lễ cầu siêu cho nghệ sĩ được tổ chức tại chùa Giác Ngộ, quận 10, TP.HCM. Những người bạn, đồng nghiệp thân thiết với cựu thành viên nhóm 1088 đã đến thắp hương, cầu nguyện như Ưng Hoàng Phúc, Kim Cương, Việt Hương, Lương Gia Huy, Dương Ngọc Thái...', '', '', '', '', '', ''),
(72, 5, 'Ngày 4/1 (giờ địa phương), lễ tang ca sĩ Vân Quang Long diễn ra tại nhà quàn Kutis Funeral Home, thành phố Saint Louis.', '', '', '', '', '', ''),
(72, 6, 'Ngày 20/1, lễ an táng Vân Quang Long diễn ra tại Đồng Tháp. Trong lễ tang, bé Lê Trác Kỳ ôm tro cốt, con trai Lê Trác Hy mang di ảnh cha. Chị Vân Lê - vợ cũ Vân Quang Long thay mặt cha mẹ lo liệu hậu sự.', '', '', '', '', '', ''),
(73, 1, NULL, '2021-02-06-01-50-13-013.jpg', 'Việc chuẩn bị mâm cỗ tiễn Táo quân về trời vào ngày 23 tháng Chạp Âm lịch hàng năm là nét văn hóa lâu đời của người Việt. Tùy vào từng địa phương mà các gia đình có lễ vật khác nhau. Năm nay, nghệ sĩ Tự Long chuẩn bị cỗ cúng Táo quân khá tươm tất, thịnh soạn với mâm ngũ quả, hoa tươi, vàng mã...', NULL, '', '', ''),
(73, 2, NULL, '2021-02-06-01-50-13-017.jpg', 'Thanh Vân Hugo làm mâm cỗ mặn với bánh chưng, gà luộc, giò bê, cơm trắng, cá linh chiên, canh bắp cải, thịt đông, hoa quả... Đây là năm đầu tiên nữ diễn viên cúng Táo quân ở TP.HCM. Những ngày cuối năm, gia đình cô cũng dọn dẹp nhà cửa, trang hoàng để đón Tết Nguyên đán 2021.', NULL, '', '', ''),
(73, 3, NULL, '2021-02-06-01-50-13-022.jpg', 'Ca sĩ Văn Mai Hương chuẩn bị đầy đủ bộ lễ vật, gồm mũ, tiền vàng, cỗ mặn và ba con cá chép đỏ. Theo truyền thuyết dân gian kể lại, cá chép là phương tiện đi lại của ông bà Táo khi về trời.', NULL, '', '', ''),
(73, 4, NULL, '2021-02-06-01-50-13-026.jpg', 'Mâm cỗ cúng đơn giản của diễn viên Ngọc Lan tại khu vực bếp trong ngôi nhà. Cô tranh thủ ngày nghỉ và làm lễ cúng sớm.', NULL, '', '', ''),
(73, 5, NULL, '2021-02-06-01-50-13-039.jpg', 'Mâm cỗ cúng ông Công, ông Táo của người Nam Bộ thường có hoa tươi, nhang, đèn cầy, 3 ly nước lọc, bộ vàng mã cò bay ngựa chạy. Diễn viên Thanh Trúc cũng làm cỗ đơn giản để tiễn Táo quân về trời.', NULL, '', '', ''),
(73, 6, NULL, '2021-02-06-01-50-13-044.jpg', 'Vợ chồng NSND Công Lý làm cỗ cúng ông Công, ông Táo từ sớm. Ngoài những lễ vật truyền thống như trái cây, chả giò, canh rau củ... vợ nam nghệ sĩ còn tự tay chuẩn bị nhiều món ăn khác.', NULL, '', '', ''),
(73, 7, NULL, '2021-02-06-01-50-13-048.jpg', 'Vũ công Phạm Lịch thành tâm trước mâm cúng ông Công, ông Táo. Cô chuẩn bị một số món mặn như gà luộc, xôi, chả giò... \"Tôi cầu mong một năm an lành, hạnh phúc sẽ đến với bản thân, gia đình và bạn bè\", cô chia sẻ với Zing.', NULL, '', '', ''),
(74, 1, NULL, '2021-02-06-01-54-09-290.jpg', 'Ngày 5/2, trang Dizculnews đăng tải loạt ảnh của Son Ye Jin khi làm người mẫu của tập đoàn thời trang lớn ở Hàn Quốc. Nữ diễn viên trông thanh lịch, nữ tính trong những trang phục Xuân Hè 2021. Trong ảnh, ngôi sao Hạ cánh nơi anh mặc đầm đỏ, áo sơ mi hoạ tiết nổi bật phối cùng quần tây ống ôm.', NULL, '', '', ''),
(74, 2, NULL, '2021-02-06-01-54-09-294.jpg', 'Bộ sưu tập mới nhất của hãng có chủ đề \"Provence lãng mạn\" với nhiều thiết kế in hoa, tạo cảm giác lãng mạn, tươi mới. Người đẹp 39 tuổi mặc đầm len phối với áo khoác sọc caro. Cô trang điểm nhẹ nhàng cùng mái tóc xoăn nhẹ mang thương hiệu Son Ye Jin.', NULL, '', '', ''),
(74, 3, NULL, '2021-02-06-01-54-09-298.jpg', 'Ở tuổi U40, nữ diễn viên được nhận xét trẻ trung, xinh đẹp. Cô được mệnh danh là \"chị đẹp\" của showbiz Hàn Quốc. Trong một bài phỏng vấn, minh tinh xứ kim chi chia sẻ 10 năm qua, cô theo đuổi bộ môn pilates để giữ cơ thể khỏe mạnh và điều chỉnh vóc dáng. Ngoài ra, người đẹp cân đối chế độ ăn, uống đủ 2 lít nước mỗi ngày.', NULL, '', '', ''),
(74, 4, NULL, '2021-02-06-01-54-09-303.jpg', 'Son Ye Jin thanh lịch khi kết hợp áo thun cùng quần ống rộng và mặc sơ mi khoác ngoài. Trong 20 năm hoạt động nghệ thuật, nữ diễn viên luôn trung thành với gu thời trang sang trọng, kín đáo cùng lối trang điểm nhẹ nhàng, tự nhiên.', NULL, '', '', ''),
(74, 5, NULL, '2021-02-06-01-54-09-308.jpg', '2020 là năm thành công của Son Ye Jin. Minh tinh 39 tuổi cùng Hyun Bin gây sốt với khán giả châu Á qua bộ phim truyền hình Hạ cánh nơi anh. Theo đó, cái tên Son Ye Jin phủ sóng khắp mặt báo Hàn, mạng xã hội suốt nhiều tháng. Đến đầu năm 2021, nữ diễn viên một lần nữa khiến khán giả xứ kim chi bất ngờ khi công khai mối quan hệ với tài tử Hyun Bin.', NULL, '', '', ''),
(75, 1, 'Ngày 5/2, trang Variety đưa tin giải thưởng danh giá Screen Actors Guild Awards 2021 (SAG Award 2021) công bố danh sách đề cử chính thức. Trong đó, Mulan (Hoa Mộc Lan) do Lưu Diệc Phi đóng chính trượt hết đề mục quan trọng.', '', '', '', '', '', ''),
(75, 2, 'Bộ phim chỉ được đề cử ở hạng mục Outstanding Action Performance by a Stunt Ensemble in a Motion Picture (Hiệu suất hành động xuất sắc của một diễn viên đóng thế trong cảnh phim hành động) dành cho Lưu Á Tây.', '2021-02-06-01-57-20-358.jpg', 'Lưu Diệc Phi trượt đề cử SAG Award 2021 trong khi diễn viên phụ có cơ hội chiến thắng.', NULL, '', '', ''),
(75, 3, 'Việc này khiến nhiều người một lần nữa chê cười diễn xuất của Lưu Diệc Phi. Đồng thời cho thấy khả năng \"Thần tiên tỷ tỷ\" Trung Quốc có thể làm nên chuyện ở Oscar là rất nhỏ bé.', '', '', '', '', '', ''),
(75, 4, 'Tháng 9/2020, khi Disney tung loạt cảnh hậu kỳ thực hiện Mulan, những cảnh hành động mượt mà của Lưu Á Tây đã thu hút khán giả. Người xem cũng ấn tượng với ngoại hình thanh tú, không kém phần mạnh mẽ của cô.', '', '', '', '', '', ''),
(75, 5, '\"Nếu cô ấy đóng Hoa Mộc Lan có thể thành công hơn Lưu Diệc Phi\", \"Khi xem cảnh hậu trường tôi thấy cô ấy có nhiều biểu cảm hơn Lưu Diệc Phi\", \"Người đẹp này mang lại cảm giác tươi mới. Thân hình, khả năng diễn cảnh hành động đều tốt hơn thần tiên tỷ tỷ, chỉ thua ở danh tiếng\", \"Diễn viên đóng thế không nên lộ mặt, như thế này đã đánh gục thần tiên tỷ tỷ rồi\", là bình luận xuất hiện nhiều trên Weibo thời điểm đó.', '', '', '', '', '', ''),
(75, 6, 'Lưu Á Tây vượt qua nhiều ứng viên để xuất hiện ở Mulan trong nhiều phân đoạn đóng thế cho Lưu Diệc Phi. Cô vốn là chuyên gia võ thuật, chuyên đảm nhận các phân cảnh khó thay diễn viên nữ trong nhiều dự án phim cổ trang.', '', '', '', '', '', ''),
(75, 7, 'Lưu Á Tây rất nỗ lực rèn luyện hình thể và luyện tư thế võ. Để trau dồi kỹ năng, cô dành nhiều thời gian trong ngày cho việc tập luyện. Hình thể chuẩn và kỹ năng điêu luyện là lợi thế của Lưu Á Tây.', '2021-02-06-01-57-20-370.jpg', 'Nhan sắc và khả năng võ thuật của Lưu Á Tây gây ấn tượng mạnh cho khán giả.', NULL, '', '', ''),
(75, 8, 'Ngoài Mulan, Lưu Á Tây từng đóng thế trong phim Vũ động càn khôn của Dương Dương, Trương Thiên Ái, Vương Lệ Khôn... Nhiều người cho rằng Lưu Á Tây đủ xinh đẹp để trở thành diễn viên chính trong các bộ phim cổ trang kiếm hiệp thay vì chỉ đóng thế. Tuy nhiên, người đẹp cho biết cô không có ý định lấn sân sang điện ảnh vì không thích diễn xuất và cũng không biết đóng phim.', '', '', '', '', '', ''),
(76, 1, '\"Mọi thứ đang diễn ra theo những gì vốn có\".\r\n\r\nYunice Abbas nói trong lúc chờ đợi xét xử vụ ông cùng đồng bọn đột nhập khách sạn của Kim Kardashian thuê từ năm 2016, thực hiện phi vụ trộm cắp nổi tiếng.', '', '', '', '', '', ''),
(76, 2, 'Người đàn ông 67 tuổi tự gọi mình là \"kẻ lừa đảo bán thời gian\", là một trong 12 người bị bắt vì đột nhập và đánh cắp trang sức của Kim Kardashian trong khách sạn sang trọng mà cô thuê trong thời gian tham gia Tuần lễ thời trang Paris.', '', '', '', '', '', ''),
(76, 3, 'Như tiêu đề quyển sách là I Kidnapped Kim Kardashian (tạm dịch: Tôi đã bắt cóc Kim Kardashian), Abbas không có kế hoạch phản kháng, tranh luận cáo buộc tại phiên tòa mà các công tố viên hy vọng sẽ bắt đầu trong năm nay.', '2021-02-06-02-00-23-486.jpg', 'Quyển sách của Yunice Abbas hé lộ nhiều tình tiết ông và đồng phạm đột nhập, cướp của ngôi sao truyền hình thực tế.', NULL, '', '', ''),
(76, 4, 'Vào khoảng 2h30 sáng ngày 3/10/2016, băng cướp của Yunice Abbas thực hiện phi vụ đột nhập khách sạn Kim Kardashian thuê để nghỉ ngơi trong thời gian cô dự Tuần lễ thời trang Paris. Họ gồm 12 người, độ tuổi từ 60-72. Nhóm này được báo chí gọi là \"băng đảng ông nội\" vì đều trên 60 tuổi.', '', '', '', '', '', ''),
(76, 5, 'Có hơn chục tên trộm đã đột nhập vào nhà Kim, có người ăn mặc như cảnh sát trói cô lại, yêu cầu ngôi sao thực hiện đúng với yêu cầu của chúng, chỉ cần giao ra tài sản là Kim được yên ổn.', '', '', '', '', '', ''),
(76, 6, 'Thời điểm đó, cơ quan chức năng Pháp nói với New York Times rằng Kim bị lấy nhẫn kim cương và một số thứ có giá trị trong túi xách. Ngôi sao truyền hình thực tế thậm chí bị chĩa súng vào đầu, uy hiếp trong nhà vệ sinh.', '2021-02-06-02-00-23-494.jpg', 'Ảnh Kanye West bần thần sau vụ vợ bị kẻ gian uy hiếp, cướp tài sản.', NULL, '', '', ''),
(76, 7, 'Lúc đó, cô lo ngại bị cưỡng hiếp. Kim cũng không biết tiếng Pháp để có thể kháng cự.\r\n\r\nTheo SCMP, tổng thiệt hại của vụ cướp gồm hai vòng tay kim cương Cartier, vòng cổ bằng vàng của Jacob và hoa tai đính kim cương của thương hiệu Loraine Cartier. Tất cả đều không thu lại được.', '', '', '', '', '', ''),
(76, 8, 'Sau khi trở về từ Pháp, Kim ít nói hơn hẳn. Truyền thông lúc ấy ghi lại hình ảnh bà mẹ 4 con dùng khăn trùm kín mặt vì trải qua cú sốc bị cướp uy hiếp. Bà Kris Jenner và ông xã Kim là rapper Kanye West ra sân bay đón vợ. Trong khi West phải hủy show vì lo lắng cho bà xã, Kris Jenner lại túc trực bên cạnh con.', '', '', '', '', '', ''),
(76, 9, 'Lực lượng bảo vệ được tăng cường đến hơn chục người trước nơi ở của Kim tại Manhattan sau cú sốc bị kẻ gian đột nhập, uy hiếp ở Pháp.', '', '', '', '', '', ''),
(77, 1, 'Trung tuần tháng 1, Chị Mười ba: 3 ngày sinh tử cán mốc doanh thu 100 tỷ đồng sau khoảng một tháng trụ ở rạp. Đây là bộ phim thứ 12 của điện ảnh Việt đạt đến mốc này, 11 phim còn lại bao gồm: Để Mai tính 2, Em chưa 18, Em là bà nội của anh, Siêu sao siêu ngố, Lật mặt 4, Trạng Quỳnh, Cua lại vợ bầu, Hai Phượng, Mắt biếc, Gái già lắm chiêu 3 và Tiệc trăng máu.', '', '', '', '', '', ''),
(77, 2, 'Nhìn vào danh sách này có thể thấy một phần diện mạo của nền điện ảnh và lý do làm nên một bộ phim ăn khách. Danh sách cũng mang đến cả những nghịch lý điện ảnh ở thị trường trong nước.', '', '', '', '', '', ''),
(77, 3, 'Phim Việt đầu tiên vượt qua mốc 100 tỷ đồng doanh thu là Để Mai tính 2 (2014) của Charlie Nguyễn. Đây là một bộ phim hài, tâm lý lãng mạn xoay quanh nhân vật “chị Hội” với diễn xuất của Thái Hòa. Phim thu được 101 tỷ đồng tiền bán vé.', '', '', '', '', '', ''),
(77, 4, 'Một năm sau, Em là bà nội của anh – tác phẩm được Phan Gia Nhật Linh “remake” từ kịch bản Hàn Quốc vượt Để Mai tính 2 khi vươn tới 102 tỷ đồng. Trường hợp này cũng khá đặc biệt khi đã phát hành vào tháng 12/2015 nhưng lại bất ngờ trở lại rạp vào Tết Nguyên đán 2016 với phiên bản dài hơn 10 phút, nhờ vậy thu thêm được 5 tỷ đồng và đi qua con số 100 tỷ. Em là bà nội của anh là một bộ phim thuần hài.', '', '', '', '', '', ''),
(77, 5, 'Đến năm 2018, thị trường điện ảnh tiếp tục có một phim hài thắng lớn là Siêu sao siêu ngố của Đức Thịnh. Tác phẩm hài xen với tâm lý lãng mạn này đạt 109 tỷ đồng doanh thu chung cuộc, là phim đầu tiên của Đức Thịnh chạm tới thành tích này.', '', '', '', '', '', ''),
(77, 6, '2019 số lượng phim hài tăng với 3 tác phẩm ăn khách là Trạng Quỳnh, Cua lại vợ bầu và Lật mặt 4: Nhà có khách. Trong đó, Lật mặt 4: Nhà có khách của Lý Hải đậm tính hài hước, giải trí nhưng cũng đan xen với chất kinh dị. Phim thu được 117,5 tỷ đồng, cao nhất trong series Lật mặt.', '', '', '', '', '', ''),
(77, 7, 'Trạng Quỳnh là phim thành công về doanh thu của Đức Thịnh sau Siêu sao siêu ngố. Đây là phim hài, lãng mạn, cổ trang phát hành dịp Tết Nguyên đán và cũng chạm mốc 100 tỷ đồng.', '', '', '', '', '', ''),
(77, 8, 'Còn Cua lại vợ bầu là một tác phẩm hài xen với tâm lý, tình cảm. Phim thắng lớn dịp Tết Nguyên đán và có doanh thu cuối cùng là 191,8 tỷ đồng, cao nhất lịch sử phim Việt ở thời điểm đó trước khi bị Hai phượng vượt mặt.', '2021-02-06-02-03-20-020.jpg', 'Trấn Thành trong phim Cua lại vợ bầu.', NULL, '', '', ''),
(77, 9, 'Sang năm 2020, hai phim thắng là Gái già lắm chiêu 3 và Tiệc trăng máu cũng đều có chất hài. Trong đó, Gái già lắm chiêu 3 là hài pha với tâm lý, phim có doanh thu phòng vé 165 tỷ đồng chung cuộc. Tiệc trăng máu đậm chất thể loại tâm lý nhưng hài cũng là chất liệu quan trọng, phim đạt 175 tỷ đồng doanh thu.', '', '', '', '', '', ''),
(77, 10, 'Phim gần nhất vượt qua mốc 100 tỷ đồng là Chị Mười ba: 3 ngày sinh tử. Đây cũng là phim hài kết hợp thể loại hành động.', '', '', '', '', '', ''),
(77, 11, 'Như vậy, trong danh sách 12 phim với doanh thu trăm tỷ đồng có tới 9 phim thuần hài, hài xen với thể loại khác hoặc hài là chất liệu quan trọng, chiếm tới 75%. Chỉ có 3 phim không thuộc thể loại hài là Hai Phượng (Hành động, Lý Liên Kiệt), Em chưa 18 (Chính kịch, tâm lý lãng mạn, Lê Thanh Sơn) và Mắt biếc (Lãng mạn, Victor Vũ).', '', '', '', '', '', ''),
(78, 1, 'Ngày 5/2, truyền thông Hàn Quốc đưa tin diễn viên Kim Bo Kyung qua đời vì bệnh ung thư gan. Cô trút hơi thở cuối cùng tại bệnh viện hôm 2/2 sau 11 năm điều trị bạo bệnh. Thi thể của nữ diễn viên được an táng tại nghĩa trang ở Busan (Hàn Quốc).', '', '', '', '', '', ''),
(78, 2, 'Sự kiện cuối cùng Kim Bo Kyung xuất hiện là tại lễ khai mạc Liên hoan phim Viễn tưởng quốc tế Bucheon vào tháng 7/2018. Sau đó, nữ diễn viên dừng các hoạt động để điều trị bệnh.', '2021-02-06-04-07-14-555.jpg', 'Diễn viên Kim Bo Kyung qua đời vì ung thư gan.', NULL, '', '', ''),
(78, 3, 'Thông tin diễn viên Cô dâu 15 tuổi qua đời khiến đồng nghiệp và khán giả xứ kim chi bàng hoàng. Trên mạng xã hội, người hâm mộ gửi lời chia buồn tới gia đình Kim Bo Kyung.', '', '', '', '', '', ''),
(78, 4, '\"Bàng hoàng khi nghe tin Kim Bo Kyung qua đời\", \"Mong cô yên nghỉ, chia buồn cùng người thân của nữ diễn viên\"... là những bình luận từ phía khán giả.', '', '', '', '', '', ''),
(78, 5, 'Kim Bo Kyung sinh năm 1976, tại Busan (Hàn Quốc). Cô tốt nghiệp khoa Sân khấu của Đại học Nghệ thuật Quốc gia Seoul.', '', '', '', '', '', ''),
(78, 6, 'Nữ diễn viên bước chân vào nghệ thuật năm 1998 với vai phụ trong phim Naked Being. Tiếp đó, cô góp mặt trong phim điện ảnh Friend, đóng cùng Jang Dong Gun.', '', '', '', '', '', ''),
(78, 7, 'Kim Bo Kyung tham gia nhiều phim truyền hình, điện ảnh, có thể kể đến như Cô dâu 15 tuổi, Đốm sáng, Bí mật tòa tháp trắng, School 4...', '', '', '', '', '', ''),
(78, 8, 'Kim Bo Kyung có năng khiếu về ca hát. Cô từng thể hiện nhạc phim School 3, City Hunter...', '', '', '', '', '', ''),
(78, 9, 'Nữ diễn viên phát hiện bệnh ung thư vào năm 2010. Thời điểm đó, cô đang đóng vai chính trong phim truyền hình của đài KBS 2TV. Bo Kyung vừa hoạt động nghệ thuật, vừa điều trị bệnh.', '', '', '', '', '', ''),
(78, 10, 'Tháng 5/2013, sau khi quay xong bộ phim Maybe I Love You, cô chính thức chấm dứt việc đóng phim để tập trung chữa ung thư gan.', '', '', '', '', '', ''),
(80, 1, NULL, '2021-02-06-04-10-35-869.jpg', 'Do nhu cầu làm đẹp tăng mạnh những ngày cận Tết, nhiều tiệm nail và salon tóc bắt đầu đông đúc từ sáng sớm tới tối muộn, đặc biệt vào các khung giờ 10h-12h và 15h-20h.', NULL, '', '', ''),
(80, 2, NULL, '2021-02-06-04-10-35-875.jpg', 'Nhiều vị khách tại tiệm nail trên phố Đặng Văn Ngữ cho biết phải đặt lịch trước vài ngày, thậm chí vài tuần để được phục vụ chu đáo nhất. \"Mình đặt lịch từ hôm qua nhưng khi tới vẫn phải chờ thêm 30 phút. Tết nhất lúc nào cũng đông nên mình đã thu xếp công việc để dành cả buổi chiều ở đây\", Uyên (25 tuổi, Lạng Sơn) chia sẻ. Không ít người tới mà không hẹn trước phải tiếc nuối quay về vì cửa hàng kín chỗ.', NULL, '', '', ''),
(80, 3, NULL, '2021-02-06-04-10-35-881.jpg', 'Diệp Phụng (20 tuổi, Hà Nội), nhân viên tiệm nail, cho biết lịch hẹn làm móng tới ngày 28 âm lịch đã được khách hàng đặt hết một số khung giờ. \"Mỗi ngày, tiệm tiếp đón khoảng 40-50 người. Mỗi ca làm chỉ có 12 nhân viên nên tụi mình phải luôn tay luôn chân, bố trí nhân sự hợp lý để đáp ứng nhu cầu làm đẹp của khách hàng dịp cuối năm\".', NULL, '', '', ''),
(80, 4, NULL, '2021-02-06-04-10-35-886.jpg', 'Nhằm phòng ngừa dịch Covid-19, các cửa hàng đều yêu cầu toàn bộ nhân viên và khách sát khuẩn tay, đeo khẩu trang suốt quá trình tiếp xúc. Ngoài ra, mỗi bàn làm móng đều được thiết kế kính chắn giọt bắn bằng mica trong suốt để đảm bảo an toàn.', NULL, '', '', ''),
(80, 5, NULL, '2021-02-06-04-10-35-891.jpg', '\"Tầm này năm ngoái không đông như năm nay đâu. Có lẽ do mọi người lo ngại dịch bệnh nên muốn tới làm đẹp sớm hơn thường lệ\", một nam nhân viên sinh năm 1992 tại cửa hàng chia sẻ. Dù có 2 năm kinh nghiệm, anh vẫn ít nhiều cảm thấy áp lực khi tiếp đón lượng khách đông đúc dịp cuối năm: \"Từ 9h sáng tới giờ, mình làm được 8 bộ móng rồi. Tiếp đón nhiều người vậy cũng mệt nhưng mình rất vui khi thấy khách hàng hài lòng với sản phẩm mình làm\".', NULL, '', '', ''),
(80, 6, NULL, '2021-02-06-04-10-35-896.jpg', 'Bên cạnh đó, làm mi cũng là phương pháp làm đẹp được đông đảo bạn nữ ưa chuộng trong vài năm gần đây. Mức giá 50.000-160.000 VND cho các dịch vụ nối, uốn... được nhiều khách hàng trẻ tuổi cho là hợp lý để \"tút tát\" bản thân trước thềm năm mới.', NULL, '', '', ''),
(80, 7, NULL, '2021-02-06-04-10-35-904.jpg', 'Các nhân viên thường mất khoảng 45-90 phút để hoàn thiện một bộ mi theo yêu cầu của khách hàng.', NULL, '', '', ''),
(80, 8, NULL, '2021-02-06-04-10-35-910.jpg', 'Tương tự không khí tại các tiệm nail, nhiều salon tóc trên phố Đặng Văn Ngữ cũng tấp nập người ra vào. Nhiều bạn trẻ phải đặt lịch trước một vài ngày hoặc chọn khung giờ hành chính để không phải chờ lâu. \"Mình vẫn chưa được nghỉ Tết nên chỉ có thể tranh thủ thời gian rảnh rỗi ra ngoài làm tóc. Hôm nay, mình tới đây từ 11h nên được nhân viên tiếp đón ngay\", Vân (28 tuổi, Hà Nội) chia sẻ.', NULL, '', '', ''),
(81, 1, 'Từ nhỏ, anh Lê Ngọc Tú (sinh năm 1983, Hà Nội) luôn mong muốn được sống trong ngôi nhà trên cây. Nhiều lần dự định bắt tay vào làm, nhưng vì công việc bận rộn, anh chưa có cơ hội thực hiện.', '', '', '', '', '', ''),
(81, 2, 'Năm 2020, do ảnh hưởng của dịch Covid-19, có nhiều thời gian nghỉ ngơi ở nhà, anh bàn bạc với vợ về ý tưởng xây dựng ngôi nhà trong mơ.\r\n\r\nKhông chần chừ thêm, anh Tú tìm mua mảnh đất ở ngoại thành Hà Nội. Trên khu đất này, chủ cũ để lại cây nhãn lâu năm.', '2021-02-06-04-15-34-644.jpg', 'Căn nhà trên cây rộng 22 m2, cách mặt đất 2,8 m.', NULL, '', '', ''),
(81, 3, 'Ban đầu, anh chỉ có ý định xây căn nhà nhỏ trên cây để làm nơi vui chơi cho các con.\r\n\r\nĐầu tháng 12/2020, anh Tú chính thức khởi công căn nhà. Khi đó, anh nhờ một số bạn bè là kiến trúc sư thiết kế. Tuy nhiên, đợt cuối năm, mọi người bận rộn nên anh phải tự thi công và chỉ nhờ họ tư vấn.', '', '', '', '', '', ''),
(81, 4, '“Đầu tiên, tôi lên ý tưởng và vẽ phác thảo căn nhà trên giấy. Tôi được vài người bạn tư vấn về bố cục, phương án thi công, đặt thêm cột chịu lực. Vì chưa biết rõ vị trí khoảng cách giữa các cành cây, tôi làm đến đâu, sửa đến đó\", nam chủ nhà nói với Zing.', '', '', '', '', '', ''),
(81, 5, 'Theo anh Tú, căn nhà được xây dựng chủ yếu từ gỗ thông và thép. Ban đầu, anh định treo ngôi nhà trên cây. Tuy nhiên, ý tưởng này không khả thi do cây nhãn nằm ở góc của miếng đất, một bên giáp nhà hàng xóm, một bên sát đường lớn. Ngoài ra, thân cây mọc lệch nên không thể triển khai theo phương án trên.', '', '', '', '', '', ''),
(81, 6, 'Sau đó, anh Tú xây cột chịu lực bằng thép và hàn thêm hệ thống thép ở phía trên.\r\n\r\nĐể căn nhà không bị ngấm nước mưa và chống côn trùng, anh làm sàn 3 lớp - giữa là thép, mặt trên và dưới ốp gỗ. Phần mái, nam chủ nhà sử dụng tôn, xốp, bạt phủ, lá cọ và cây nứa để ốp.', '', '', '', '', '', ''),
(81, 7, 'Về công trình phụ, sau khi tính toán công năng sử dụng, anh Tú thiết kế bồn tắm gỗ. Đặc biệt, trong quá trình xây dựng, anh không chặt bỏ cành cây nào.', '2021-02-06-04-15-34-659.jpg', 'Những hình ảnh bên trong căn nhà được xây dựng trên cây nhãn.', NULL, '', '', ''),
(81, 8, '“Nhiều kiến trúc sư khuyên tôi để thân cây ra ngoài hành lang để không phải xử lý vấn đề nước mưa ngấm vào nhà. Tuy nhiên, tôi vẫn quyết định cho thân cây vào trong để nó đúng nghĩa là nhà trên cây”, anh chia sẻ.', '', '', '', '', '', ''),
(81, 9, 'Để điều này khả thi, anh Tú đã sử dụng loại bạt có độ bền cao quấn từ mái nhà xuống thân cây. Bên cạnh đó, anh để khoảng trống giữa nhà và thân cây ngăn cách bằng cau su non và keo silicon. Điều này giúp làm giảm tiếng ồn cho căn nhà khi cây bị rung lắc bởi gió lớn hoặc bão.', '', '', '', '', '', ''),
(81, 10, 'Khi hoàn thành, căn nhà có diện tích 22 m2, cách mặt đất 2,8 m.\r\n\r\nBan đầu, anh Tú dự định chi khoảng 100 triệu đồng để xây dựng nhà trên cây. Do vừa làm vừa phải tháo ra sửa chữa khá nhiều, chi phí hoàn thiện căn nhà bị đẩy lên cao. Tuy nhiên, anh vẫn cảm thấy rất vui và hài lòng với thành quả.\r\n\r\n“Tôi không có ý định sử dụng căn nhà này để kinh doanh. Đây sẽ là địa điểm để cả gia đình vui chơi, tận hưởng cuộc sống, không khí trong lành vào dịp cuối tuần”.', '', '', '', '', '', ''),
(83, 1, 'Trả lời New York Times, Kimberly Diei, một sinh viên ngành Dược tại Đại học Tennessee (Mỹ), khẳng định các bài đăng của cô ấy trên Twitter và Instagram đều nằm trong giới hạn, không đáng bị coi là thô tục.', '', '', '', '', '', ''),
(83, 2, 'Trong vài hình ảnh chia sẻ, Diei khoe ngực trong chiếc váy có thiết kế bó sát và tạo dáng sexy. Ở một bài đăng khác, cô háp nhép theo lời rap 18+ của nữ rapper Cardi B.', '', '', '', '', '', ''),
(83, 3, 'Tính đến tuần này, Diei có hơn 19.500 người theo dõi trên trang cá nhân.\r\n\r\nNhưng đối với trường học, các nội dung Diel đăng trên mạng xã hội bị coi là thô tục, không phù hợp với ngành nghề mà cô chọn. Tháng 9 năm ngoái, nhà trường ra lệnh đuổi học Diei.', '2021-02-06-04-19-53-839.jpg', 'Kimberly Diei (Mỹ) bị nhà trường đuổi học với lý do đăng tải những nội dung vi phạm đạo đức, chuẩn mực nghề nghiệp lên mạng xã hội. Ảnh: The Fire.', NULL, '', '', ''),
(83, 4, 'Nghe quyết định, Diei không tin vào tai mình. Có 2 ngày để kháng cáo, cô tìm đến một luật sư.\r\n\r\nVề sau, cô đệ đơn kiện lên chính quyền bang với sự giúp đỡ của luật sư chuyên nghiệp, với cáo buộc trường học đã vi phạm quyền tự do ngôn luận của cá nhân.', '', '', '', '', '', ''),
(83, 5, 'Đơn kiện của Kimberly Diei chống lại Đại học Tennessee (Mỹ) đặt ra câu hỏi khi nào các trường có thể kỷ luật sinh viên vì phát ngôn trên mạng của họ.', '', '', '', '', '', ''),
(83, 6, 'Trong khi các nền tảng như Facebook, Twitter và Instagram vẫn đang phải vật lộn với việc kiểm soát nội dung, nhiều trường đại học Mỹ cũng đang ở trong tình thế tương tự.', '', '', '', '', '', ''),
(83, 7, 'Nhiều trường cố đưa ra chính sách xung quanh những gì sinh viên được phép đăng tải và phát biểu trên mạng. Còn lớp người trẻ tuổi lên tiếng phản đối trường không có quyền áp đặt việc sử dụng mạng xã hội của họ.', '', '', '', '', '', ''),
(83, 8, '“Nếu ai đó la hét trong lớp học, nhà trường có quyền kiểm soát thời gian, địa điểm và cách thức. Nhưng khi sinh viên thể hiện sự phẫn nộ trên Twitter, đó là không gian cá nhân hay của trường?”, Peter Lake, giám đốc trung tâm về luật và chính sách giáo dục đại học tại Đại học Luật Stetson, nói.', '2021-02-06-04-19-53-856.jpg', 'Trong khi các trường đại học Mỹ cố kiểm soát nội dung sinh viên đăng tải lên mạng, những người trẻ coi đó là hành động vi phạm quyền tự do ngôn luận của họ. Ảnh: Insider.', NULL, '', '', ''),
(83, 9, 'Thực tế, các trường đại học thường không chủ động kiểm soát nội dung đăng tải trên mạng, trừ khi thành viên trong cộng đồng hay sinh viên, cựu sinh viên phàn nàn về những gì họ đọc được.', '', '', '', '', '', ''),
(83, 10, 'Hồi tháng 1, tòa án bang Pennsylvania xét xử trường hợp nữ sinh một trường trung học đã bị loại khỏi đội cổ vũ sau khi nữ hoạt náo viên này đưa ra nhiều lời phàn nàn khiếm nhã về đội bóng của nhà trường.', '', '', '', '', '', ''),
(84, 1, 'Một trong những hệ quả của đại dịch Covid-19 là tỷ lệ ly hôn gia tăng. Dành nhiều thời gian ở nhà, các cặp vợ chồng thường xuyên tranh cãi, xích mích từ những điều nhỏ nhặt cho đến công việc nhà, chăm sóc con cái.', '', '', '', '', '', ''),
(84, 2, 'Nhiều đôi quyết tâm đường ai nấy đi, trong khi số khác tìm đến bên thứ 3 để tư vấn, giải tỏa khúc mắc trong cuộc sống gia đình.', '', '', '', '', '', ''),
(84, 3, 'Theo Global Times, các tổ chức tư vấn hôn nhân đang ngày càng phổ biến ở Trung Quốc. Những đơn vị này cung cấp từ dịch vụ quản lý, cứu vãn mối quan hệ tình cảm, cho đến thỏa thuận, hòa giải ly hôn.', '', '', '', '', '', ''),
(84, 4, 'Mỗi khóa học có giá 10.000 nhân dân tệ (1.578 USD) mỗi giờ. Một số gói dịch vụ có thể có giá lên đến 19.800-49.800 nhân dân tệ.', '2021-02-06-04-37-17-423.jpeg', 'Các khóa học quản lý hôn nhân nở rộ ở Trung Quốc. Ảnh: Xinhua.', NULL, '', '', ''),
(84, 5, 'Kéo theo đó, nghề tư vấn hôn nhân trở thành nghề \"hot\", hái ra tiền trong mùa dịch. Các công ty quảng cáo một nhân viên tư vấn có thể kiếm được hơn 1 triệu nhân dân tệ một năm.', '', '', '', '', '', ''),
(84, 6, 'Thế nhưng, khi những con số này được công bố, không ít người đã đặt nghi vấn về tính xác thực. Họ thậm chí tỏ ra nghi ngờ về mức độ khả thi, hiệu quả của ngành tư vấn hôn nhân đang ngày một nở rộ.', '', '', '', '', '', ''),
(84, 7, '\"Điều này thật buồn cười. Hôn nhân bất hạnh không phải là vấn đề có thể giải quyết trong ngày một ngày hai. Làm thế nào vấn đề phức tạp như vậy có thể được giải quyết thông qua một khóa học?”, một người viết trên Weibo.', '', '', '', '', '', ''),
(84, 8, '“Tôi cảm thấy tiếc cho những người trải qua tổn thương tình cảm trong hôn nhân và giờ lại bị lừa đảo. Tôi hy vọng ngành công nghiệp mới nổi này có thể trở nên chuyên nghiệp. Sẽ tốt hơn nếu làm điều gì đó có lợi cho xã hội dưới một khuôn khổ pháp lý phù hợp”, một người khác bày tỏ.', '', '', '', '', '', ''),
(84, 9, 'Shen Binti, luật sư ở Bắc Kinh, nói rằng rất khó để giải quyết vấn đề hôn nhân thông qua các khóa học. Bà Shen cho biết các khóa học thường được giới thiệu có những “chuyên gia” đứng lớp và đưa ra một số lời hứa hão huyền.', '', '', '', '', '', ''),
(84, 10, '“Những đơn vị này bị nghi ngờ đang khai thác các kẽ hở của luật pháp. Nếu nó nghiêm trọng, đó có thể liên quan đến gian lận hình sự”, bà Shen nói.', '', '', '', '', '', ''),
(84, 11, 'Xia Yinlan, giáo sư tại Đại học Khoa học Chính trị và Luật Trung Quốc ở Bắc Kinh, nói với Global Times rằng khi gặp vấn đề trong hôn nhân, việc nhờ đến sự giúp đỡ của những người xung quanh như cha mẹ, anh chị em và bạn bè còn hiệu quả hơn các khóa học.', '', '', '', '', '', ''),
(84, 12, '“Khi tìm đến một cơ quan để xin ý kiến, bạn phải chú ý đến sự tuân thủ pháp luật của cơ quan đó. Các tổ chức thông thường như tư vấn tâm lý, luật sư hoặc liên đoàn phụ nữ an toàn và đáng tin cậy hơn nhiều”, Xia gợi ý.', '', '', '', '', '', ''),
(85, 1, 'Về quê hay ở lại? Đó là câu hỏi mà hàng triệu người Trung Quốc phải đối mặt trong kỳ nghỉ Tết Nguyên đán.', '', '', '', '', '', ''),
(85, 2, 'Năm nay, điều ngăn cản nhiều người về nhà ăn Tết không phải là những cuộc trò chuyện căng thẳng về cuộc sống cá nhân hoặc nghề nghiệp - vốn được coi là chủ đề đáng sợ trong bữa tối sum họp gia đình. Đó là hàng loạt quy tắc đi lại nghiêm ngặt mà chính quyền áp dụng nhằm ngăn chặn sự lây lan của dịch Covid-19.', '', '', '', '', '', ''),
(85, 3, 'Đối với những người muốn về nhà, hành trình của họ sẽ bắt đầu với chiếc tăm bông đưa vào lỗ mũi, cổ họng hoặc một số bộ phận khác trên cơ thể một cách khó chịu.', '2021-02-06-04-39-47-963.jpg', 'Người dân Trung Quốc buộc phải xét nghiệm Covid-19 trước khi về quê ăn Tết Nguyên đán. Ảnh: SCMP.', NULL, '', '', ''),
(85, 4, 'Tại ga xe lửa Hongqiao (Thượng Hải), người phụ nữ trung niên họ Tang nói với Sixth Tone rằng cô phải đợi hơn 3 tiếng để làm xét nghiệm, dù đã xếp hàng từ 5h sáng.', '', '', '', '', '', ''),
(85, 5, 'Tang, làm việc tại một nhà hàng địa phương, cho biết gần 1 năm nay, cô không được gặp chồng và con trai ở thành phố Trường Sa, miền Trung Trung Quốc. Vì vậy, cô quyết định về nhà trong dịp Tết Nguyên đán, còn được gọi là chunyun.', '', '', '', '', '', ''),
(85, 6, '“Gia đình nên sum vầy trong dịp Tết âm lịch. Cảm giác sẽ không giống như phải ở lại đây một mình. Hàng dài ở bệnh viện không quan trọng với tôi. Rốt cuộc thì đó chỉ là cách để kiểm soát dịch bệnh”, Tang nói trong lúc chờ tàu.', '', '', '', '', '', ''),
(85, 7, 'Việc gấp rút xét nghiệm Covid-19 trước khi di chuyển - thường được yêu cầu trong vòng 7 ngày trước khi đến, tùy địa phương - dẫn tới nhiều đám đông xuất hiện tại các cơ sở y tế hơn là ở các trung tâm vận chuyển. Cảnh tượng trở nên yên tĩnh hơn vào ngày đầu tiên của chunyun.', '', '', '', '', '', ''),
(85, 8, 'Cách nhà ga nhộn nhịp nhất của thành phố khoảng 20 phút lái xe, hàng chục người đứng thành 3 hàng riêng biệt dưới chiếc lều màu xanh tại Trung tâm Dịch vụ Y tế Cộng đồng Hồng Kiều để chờ được xét nghiệm Covid-19.', '', '', '', '', '', ''),
(85, 9, 'Một số nhân viên bảo vệ túc trực nhằm duy trì trật tự. Nhiều người không giấu được vẻ bồn chồn khi không rõ liệu họ có kịp xét nghiệm trong ngày hay không.', '2021-02-06-04-39-47-981.jpg', 'Hành khách đến ga xe lửa Hongqiao ở Thượng Hải ngày 28/1/2021. Ảnh: People Visual.', NULL, '', '', ''),
(85, 10, 'Shen Aiyue, phó giám đốc trung tâm, nói với Sixth Tone rằng cơ quan đang thực hiện khoảng 700 lượt xét nghiệm/ngày, gấp 4 lần so với trước kỳ nghỉ Tết. Kể từ đầu tháng 1, trung tâm đã xét nghiệm cho 8.231 người - nhiều hơn 6 tháng đầu năm 2020.', '', '', '', '', '', ''),
(85, 11, 'Nhu cầu xét nghiệm Covid-19 tăng vọt trong những ngày gần đây. Thậm chí, “đặt lịch hẹn xét nghiệm axit nucleic để kịp về nhà trong Lễ hội mùa xuân” là cụm từ được tìm kiếm nhiều thứ 2 trên nền tảng thanh toán di động Alipay.', '', '', '', '', '', ''),
(85, 12, 'Theo dự báo của Hua\'an Securities, Trung Quốc có thể tiến hành 1,2 tỷ lượt xét nghiệm trong đợt “đại di dân” hay xuân vận kéo dài 40 ngày, từ 28/1 đến hết 8/3, với chi phí 60 tỷ-120 tỷ NDT (9,3 tỷ-18,5 tỷ USD).', '', '', '', '', '', ''),
(85, 13, '“Số lượng xét nghiệm chúng tôi đang thực hiện đạt mức cao kỷ lục mỗi ngày. Chúng tôi khuyến khích mọi người đặt lịch online trước khi đến đây, nhưng hầu hết vẫn không biết cách thực hiện điều đó”, Shen nói.', '', '', '', '', '', ''),
(86, 1, 'Một buổi tối tháng 5/2009, Trương Gia Phong (sinh năm 1988, quê An Huy, Trung Quốc) nhận được cuộc gọi từ dì của bạn gái, báo tin: “Tiểu Phàm bị hôn mê do não úng thủy và đã được đưa vào phòng chăm sóc đặc biệt”.', '', '', '', '', '', ''),
(86, 2, 'Không kịp suy nghĩ gì, anh vội mua vé và tức tốc đến Giang Tô ngay trong đêm để gặp bạn gái trong bệnh viện. “Lúc đó, người cô ấy sưng tấy và đeo đầy dây nhợ, ống thở và kim chuyền. Tôi gần như không nhận ra bạn gái mình\", anh kể với Sohu.', '', '', '', '', '', ''),
(86, 3, 'Bạn gái Gia Phong, Trương Tiểu Phàm, cũng sống cùng thị trấn với anh. Thời điểm đó Tiểu Phàm vừa tốt nghiệp đại học và hai người đang tính chuyện kết hôn. Qua tấm kính nhìn vào phòng bệnh, chàng trai 21 tuổi khi đó đã đưa ra lựa chọn ảnh hưởng tới cả cuộc đời: quyết định ở lại chăm sóc bạn gái.', '2021-02-06-04-42-32-489.jpg', 'Gia Phong chăm sóc bạn gái từ lúc cô hôn mê và luôn bên cạnh khi cô hồi phục.', NULL, '', '', ''),
(86, 4, 'Suốt 2 tháng trong phòng chăm sóc đặc biệt, bệnh viện liên tục thông báo về tình trạng nguy kịch của Tiểu Phàm, bác sĩ khuyên gia đình nên từ bỏ điều trị. Nhưng Gia Phong và mẹ cô nhất quyết không bỏ cuộc. Cuối cùng cô gái trẻ cũng vượt qua cửa tử.', '', '', '', '', '', ''),
(86, 5, 'Tuy nhiên, Tiểu Phàm vẫn chìm vào trạng thái hôn mê, nằm trên giường bệnh như người thực vật. Gia đình cô đành phải đưa con gái trở lại Trung tâm Y tế thị trấn Wangzhuang để điều trị.', '', '', '', '', '', ''),
(86, 6, 'Xe chở cô khỏi Bệnh viện Nhân dân số 1 tỉnh Giang Tô, khi vừa đi qua cầu sông Dương Tử, thân nhiệt của Tiểu Phàm đã tăng lên hơn 40 độ C. Gia Phong nằm xuống bên cạnh, nắm tay cô và không chịu buông ra. \"Nhìn Tiểu Phàm hôn mê, sốt không ngừng, tôi biết chắc cô ấy đau lắm, trong lòng thật sự rất xót xa\".', '', '', '', '', '', ''),
(86, 7, 'Về đến nhà, không khí gia đình Tiểu Phàm càng trở nên nặng nề. Mẹ cô không thể cầm lòng khi nhìn con gái bà nuôi dưỡng nhiều năm, vừa tốt nghiệp đại học và chuẩn bị đi làm lại phải sống cuộc đời như thực vật.', '', '', '', '', '', ''),
(86, 8, 'Kể từ đó, Gia Phong nhận trách nhiệm chăm sóc bạn gái, từ lúc cô điều trị ở viện đến lúc về nhà. Anh phải bỏ việc học và mất việc, nhưng luôn cảm thấy lựa chọn của mình là đúng.', '2021-02-06-04-42-32-505.png', 'Gia Phong bỏ việc để ở bên chăm sóc cho Tiểu Phàm.', NULL, '', '', ''),
(86, 9, 'Mỗi đêm, để tránh bạn gái bị đau vì nằm lâu trên giường, Gia Phong đặt chuông điện thoại mỗi 2 tiếng để dậy trở người cho cô. Anh dùng tay xoa bóp nhẹ nhàng để tránh những phần cơ thể có thể bị hoại tử.', '', '', '', '', '', ''),
(86, 10, 'Anh rửa mặt, đánh răng, thay tã cho Tiểu Phàm. Để đánh thức bạn gái khỏi cơn hôn mê, Gia Phong đã gọi tên Trương Tiểu Phàm không biết bao nhiêu lần.', '', '', '', '', '', ''),
(86, 11, 'Nhìn cảnh Gia Phong bỏ hết mọi thứ để chăm sóc con mình, mẹ Tiểu Phàm vừa xót xa, áy náy vừa thương anh. Bà từng nói với anh: “Con trai, hay đi đi, rồi con sẽ tìm được một người tốt hơn\".', '', '', '', '', '', ''),
(87, 1, 'Nhắc tới quán bar, nhiều người thường nghĩ đến không gian kín đáo, đắt tiền với các bartender chuyên nghiệp, có khả năng trình diễn điêu luyện với ly, chai, đá, lửa.', '', '', '', '', '', ''),
(87, 2, 'Cũng ở những không gian này, người tới uống phải hiểu văn hóa, mặc trang phục phù hợp, và quan trọng hơn, giá tiền một món đồ không hề rẻ.', '', '', '', '', '', ''),
(87, 3, 'Tại TP.HCM, bên cạnh các chốn ăn chơi đầu tư chỉn chu về không gian lẫn thức uống, tại nhiều góc phố, những quầy bar vỉa hè cũng mang lại làn gió mới khi cung cấp các món nước chuẩn chất lượng hạng sang, nhưng giá cả vô cùng bình dân.', '2021-02-06-04-45-00-636.jpg', 'Bar vỉa hè đang trở thành xu hướng giải trí của giới trẻ TP.HCM.', NULL, '', '', ''),
(87, 4, 'Đi dọc con đường Mạc Đĩnh Chi (quận 1) vào buổi tối, người ta dễ lướt qua City Beer Station. Nằm ở vị trí kín đáo, bài trí đơn giản chỉ với một quầy nước nhỏ (vốn là chiếc xe đẩy), cùng vài chiếc ghế nhựa xếp sát nhau trên vỉa hè, nhiều khách hàng sẽ bất ngờ vì chất lượng đồ uống của nơi này.', '', '', '', '', '', ''),
(87, 5, 'Bartender của quán, Jose Hậu, thường giới thiệu cho khách mới tới nếm thử một ly \"Saigon 1975\" với sự hòa quyện của rum, trà lài, syrup vải cùng nước cốt chanh, được pha trong một ấm trà sứ.', '', '', '', '', '', ''),
(87, 6, 'Ngoài các món có sẵn trong menu, Jose Hậu thường trò chuyện để nắm bắt khẩu vị trước khi pha freestyle (ngẫu hứng) để tạo ra ly cocktail độc nhất.', '', '', '', '', '', ''),
(87, 7, '“Do được pha theo mong muốn của khách nên món nước sẽ không có tên, cũng không có công thức cụ thể và ly nào cũng là duy nhất. Đó là điều làm nên sự hấp dẫn khi uống cocktail tại quán của mình”, anh cho biết.', '', '', '', '', '', ''),
(88, 1, 'Ngày 5/2, SCMP đưa tin Human Rights Watch - tổ chức phi chính phủ quốc tế về nhân quyền - trao \"huy chương Vàng\" cho Trưởng ban tổ chức Olympic Tokyo Yoshiro Mori do tranh cãi kỳ thị phụ nữ.', '', '', '', '', '', ''),
(88, 2, '\"Phụ nữ Nhật Bản hiếm được thừa nhận trên nhiều lĩnh vực, nhất là thể thao. Đáng lẽ hội đồng Ủy ban Olympic Nhật Bản phải đề cao tinh thần bình đẳng giới, đối xử công bằng với các thành viên và vận động viên\", đại diện Human Rights Watch trả lời truyền thông.', '2021-02-06-04-47-06-780.jpg', 'Trưởng ban tổ chức Olympic Tokyo Yoshiro Mori bị tổ chức phi chính phủ quốc tế về nhân quyền và dư luận chỉ trích vì mỉa mai phụ nữ \"lắm lời\". Ảnh: AFP.', NULL, '', '', ''),
(88, 3, 'Ông Yoshiro Mori trở thành tâm điểm chỉ trích sau phát ngôn mang tính miệt thị phụ nữ tại cuộc họp bất thường của hội đồng JOC. Cụ thể, người đứng đầu Ủy ban Olympic Tokyo cho rằng phụ nữ \"thường lắm lời, ưa cạnh tranh\" khi được hỏi về việc gia tăng đa dạng giới trong nội bộ ban tổ chức.', '', '', '', '', '', ''),
(88, 4, '\"Bộ Giáo dục rất kiên quyết trong việc lựa chọn nữ bộ trưởng, nhưng một cuộc họp sẽ phải kéo dài nếu có nhiều phụ nữ\", ông Mori nhấn mạnh.', '', '', '', '', '', ''),
(88, 5, 'Vụ việc lập tức dấy lên làn sóng chỉ trích gay gắt nhắm tới cá nhân trưởng ban tổ chức Olympic Tokyo và hội đồng JOC. Nhằm trấn an dư luận trong nước và quốc tế, ông Yoshiro Mori buộc phải lên tiếng xin lỗi.', '', '', '', '', '', ''),
(88, 6, '\"Tôi xin lỗi vì phát ngôn bất cẩn của mình. Tôi không hề có ý định kỳ thị phụ nữ\", SCMP dẫn lời ông Mori. Ngoài ra, ông khẳng định không có kế hoạch rút khỏi ban tổ chức Thế vận hội.', '', '', '', '', '', ''),
(88, 7, 'Một số ý kiến cho rằng quan điểm của trưởng ban tổ chức Olympic Tokyo đi ngược lại tinh thần thể thao bình đẳng, không phân biệt đối xử dưới mọi hình thức do Ủy ban Olympic Quốc tế (IOC) đặt ra.', '', '', '', '', '', ''),
(88, 8, '\"Ảnh hưởng từ trào lưu #MeToo hé lộ thực trạng quấy rối, lạm dụng mà nhiều nữ vận động viên xứ hoa anh đào phải trải qua. Nhật Bản cần khẩn trương thay đổi thái độ định kiến nhắm tới nữ giới, bắt đầu từ lĩnh vực thể thao\", tổ chức Human Rights Watch nói.', '', '', '', '', '', ''),
(89, 1, 'Trong những ngày qua, trên trang HSU Confessions (trang tự thú của sinh viên ĐH Hoa Sen, TP.HCM), nhiều sinh viên lớp EIC3 (Tiếng Anh giao tiếp) phản ánh giảng viên thỉnh giảng chuyên ngành Ngoại ngữ có hành vi nhũng nhiễu, vòi tiền để nâng điểm học tập của sinh viên.', '', '', '', '', '', ''),
(89, 2, 'Theo phản ánh của sinh viên, giảng viên này liên hệ với từng sinh viên qua mạng. Một số sinh viên đã chấp nhận đưa tiền cho giảng viên này. Sự việc khiến sinh viên bức xúc.', '2021-02-06-04-49-26-724.png', 'Ảnh chụp màn hình trên HSU Confessions.', NULL, '', '', ''),
(89, 3, 'Liên quan sự việc này, PGS.TS Nguyễn Ngọc Điện, Hiệu trưởng nhà trường, đã lên tiếng. Ông cho hay đây là hành động vi phạm pháp luật, trái đạo đức, làm tổn hại đến uy tín nhà trường.', '', '', '', '', '', ''),
(89, 4, 'Sau khi nắm được sự việc, lãnh đạo trường đã chỉ đạo khoa Ngoại ngữ, Phòng Công tác sinh viên - Quan hệ doanh nghiệp, nhanh chóng vào cuộc làm rõ sự việc.', '', '', '', '', '', ''),
(89, 5, 'Qua xác minh từ nhiều nguồn, những phản ánh của sinh viên là có cơ sở. Trước những minh chứng cụ thể và xác đáng, giảng viên có hành vi tiêu cực đã thừa nhận mình có vi phạm.', '', '', '', '', '', ''),
(89, 6, 'Ông Điện cho biết nhà trường đã yêu cầu giảng viên cam kết hoàn trả toàn bộ số tiền đã nhận của sinh viên và công khai xin lỗi nhà trường, phụ huynh, các em sinh viên về việc làm mà mình gây ra, hoặc phải đối mặt cơ quan pháp luật và chịu xử lý theo quy định chung.', '', '', '', '', '', ''),
(89, 7, '“Với vai trò hiệu trưởng và trên hết là cương vị người thầy, tôi lấy làm tiếc về vụ việc này”, ông Điện nhận trách nhiệm lớn nhất vì để cho sự việc diễn ra và chính thức gửi lời xin lỗi đến sinh viên, nạn nhân của vụ sai phạm cũng như gia đình sinh viên.', '', '', '', '', '', ''),
(89, 8, 'Theo ông Điện, cách xử lý của nhà trường nhằm kiên quyết giữ gìn sự tôn nghiêm và liêm chính trong học thuật, không để suy nghĩ của sinh viên bị vấy bẩn bởi những tiêu cực, đặc biệt trong môi trường giáo dục.', '', '', '', '', '', ''),
(89, 9, 'Ông Điện cũng cho rằng sinh viên đang sống trong bối cảnh công nghệ số, việc đưa ra quan điểm cá nhân trên môi trường mạng xã hội trở nên dễ dàng. Vì vậy, sinh viên cần nâng cao khả năng tiếp nhận thông tin thông minh, biết tìm ra lẽ phải, đấu tranh trực diện trước mọi bất công và tiêu cực. Ngoài ra, nếu sinh viên có vấn đề gì khó khăn, vướng mắc thì chia sẻ với phòng công tác sinh viên và Quan hệ doanh nghiệp của nhà trường.', '', '', '', '', '', ''),
(90, 1, 'Trở thành F0, 3 học sinh dương tính với SARS-CoV-2 của trường Tiểu học Hiến Thành (Hải Dương) được đưa đi cách ly, điều trị tại Bệnh viện ĐH Kỹ thuật Y tế Hải Dương.', '', '', '', '', '', ''),
(90, 2, 'Đây là một “chuyến đi đặc biệt”, bởi lẽ trong số 12 bệnh nhi đang được điều trị tại đây, chỉ có 3 học sinh này phải điều trị mà không có người thân bên cạnh. Trong đó, cháu nhỏ nhất mới chỉ 6 tuổi, là học sinh lớp 1.', '', '', '', '', '', ''),
(90, 3, 'Hiện, cả bố và mẹ của các học sinh này đều là F1 và đã đi cách ly tập trung ở địa điểm khác.', '2021-02-06-05-05-58-064.jpg', 'Học sinh lớp 4 một mình đến khu điều trị.', NULL, '', '', ''),
(90, 4, 'Sợ hãi khi nhận ra không khí lạ lẫm trong ngày đầu tiên xa gia đình, có em ngồi im lặng không nói gì, có em thì không kìm được liền oà khóc khi có người hỏi thăm. Những đứa trẻ vốn quen được bố mẹ chăm sóc, giờ sẽ phải tự lập, chủ động nhiều hơn trước.', '', '', '', '', '', ''),
(90, 5, 'Bác sĩ Phạm Thị Cẩm Hưng, Phó giám đốc Bệnh viện ĐH Kỹ thuật Y tế Hải Dương, cho biết đây là lần hiếm hoi bệnh viện đón những bệnh nhân đặc biệt như thế. Khi mới nhập viện, các cháu tỏ ra khá sợ sệt.', '', '', '', '', '', ''),
(90, 6, '“Cả ba cháu nhỏ đều không có người nhà đi cùng. Vì thế, bé gái đã được chúng tôi bố trí ở với một cháu nhỏ khác có mẹ (không nhiễm Covid-19). Còn hai bé trai được bố trí ở cùng phòng với nhau và với 2 bệnh nhân khác”.', '', '', '', '', '', ''),
(90, 7, 'Vì các cháu đang ở độ tuổi nhỏ, bệnh viện cũng đã có những biện pháp kịp thời để chăm sóc tốt nhất cho trẻ, cả về sức khoẻ lẫn tinh thần. Khẩu trang trẻ em đạt chuẩn cũng được trang bị khẩn cấp để phù hợp với những bệnh nhân nhỏ tuổi này.', '', '', '', '', '', ''),
(90, 8, 'Ngày đầu tiên, BS Nguyễn Trọng Khoa, Phó cục trưởng Cục quản lý khám chữa bệnh (Bộ Y tế), đã trực tiếp tới thăm hỏi và động viên tinh thần các cháu.\r\n\r\nĐể tạo sự vui vẻ, thoải mái, đến ngày thứ 2 khi quay trở lại, bác sĩ Khoa còn mang theo rất nhiều sách, truyện để các em đọc trong thời gian ở đây.', '', '', '', '', '', ''),
(90, 9, '“Đội ngũ y, bác sĩ và các bệnh nhân khác đều đặc biệt quan tâm đến các cháu. Đến hôm nay, tâm lý các cháu đã dần ổn định trở lại, tương tác tốt, thậm chí còn hỏi han và chủ động trò chuyện với các nhân viên y tế. Tình trạng sức khỏe của 3 cháu đều ổn định”, bác sĩ Hưng vui mừng chia sẻ.', '', '', '', '', '', ''),
(91, 1, NULL, '2021-02-06-05-08-27-809.jpg', '1. Thái độ lịch sự khi đến nhà người khác: Khi đi chúc Tết, cha mẹ cần hướng dẫn trẻ nói lời chào và cảm ơn. Đặc biệt, khi ở nhà người khác, trẻ không nên nghịch phá đồ đạc, tự ý đi vào các khu vực riêng tư như phòng ngủ. Nếu chưa được chủ nhà cho phép, trẻ không được tự ý sử dụng, di chuyển đồ đạc hay đòi lấy đồ dùng cá nhân của người khác.', NULL, '', '', ''),
(91, 2, NULL, '2021-02-06-05-08-27-819.jpg', '2. Niềm nở với khách đến nhà: Tiếp khách không phải là nhiệm vụ của riêng người lớn. Cha mẹ cần dạy trẻ học tiếp khách từ sớm. Ví dụ, khi có khách đến, trẻ cần lễ phép chào hỏi, chủ động rót nước, pha trà mời khách. Nếu được lì xì, trẻ phải biết nhận bằng hai tay, nói cảm ơn và không được mở lì xì trước mặt khách. Khi người lớn trò chuyện, trẻ không nên ngắt lời hoặc nói leo. Ngoài ra, nếu khách có trẻ em đi cùng, cha mẹ có thể cho các trẻ làm quen và cùng chơi với nhau.', NULL, '', '', ''),
(91, 3, NULL, '2021-02-06-05-08-27-826.jpg', '3. Cư xử đúng mực trên bàn ăn: Dù ăn ở nhà hay ăn ở nhà người khác, trẻ cũng cần ăn uống lịch sự, có thái độ chừng mực. Cha mẹ nên khuyến khích trẻ chủ động giúp người lớn chuẩn bị thức ăn, dọn bát đũa. Khi ăn, trẻ không được phép đảo thức ăn hoặc chỉ ăn những món mình thích. Bữa cơm ngày Tết là dịp để mọi người quây quần, cùng trò chuyện. Trẻ không nên vừa ăn vừa chơi điện thoại, xem tivi. Điều này ảnh hưởng đến việc ăn uống của người khác, đồng thời gây hại cho sức khỏe. Nếu ăn cơm ở nhà người khác, dù bữa ăn hợp khẩu vị hay không, trẻ nên nói lời cảm ơn và dành lời khen cho gia chủ.', NULL, '', '', ''),
(91, 4, NULL, '2021-02-06-05-08-27-833.jpg', '4. Nói chuyện tế nhị, tránh gây hiềm khích: Cha mẹ nên khuyến khích con chủ động trò chuyện với khách khứa, bạn bè. Nếu trẻ ngại, hãy kiên nhẫn hướng dẫn trẻ cách mở đầu một cuộc trò chuyện. Khi nói chuyện với người khác, trẻ cần sử dụng tông giọng vừa phải, chậm rãi, tránh nói tục, chửi bậy. Giao tiếp bằng ánh mắt sẽ là \"điểm cộng\" dành cho trẻ, người đối diện sẽ đánh giá trẻ là một người tự tin, biết làm chủ những cuộc hội thoại.', NULL, '', '', ''),
(91, 5, NULL, '2021-02-06-05-08-27-840.jpg', '5. Sống hòa thuận: Ngày Tết là dịp tốt để dạy trẻ biết cách giao tiếp, sống hòa thuận với mọi người. Cha mẹ nên dạy con làm việc nhà, cùng các bé chuẩn bị các món ngon cho năm mới. Khi cùng vui chơi, làm việc, trẻ sẽ biết cách tương tác với người khác. Những đứa trẻ sống hòa thuận khi lớn lên sẽ biết cách hòa nhập với tập thể, trở thành người hòa đồng, dễ gần.', NULL, '', '', '');
INSERT INTO `paragraph` (`IdArticle`, `IdParagraph`, `Content`, `Image`, `TitleImage`, `DescriptionImage`, `Video`, `TitleVideo`, `DescriptionVideo`) VALUES
(91, 6, NULL, '2021-02-06-05-08-27-846.jpg', '6. Biết chúc Tết mọi người: Ngày Tết kiêng kị cãi vã, người lớn nên dạy trẻ nói lời hay, ý đẹp, trách nói những điều không hay, làm tổn thương người khác. Với trẻ nhỏ, khả năng diễn đạt chưa hoàn chỉnh, cha mẹ có thể dạy trẻ những câu chúc đơn giản như \"Chúc mừng năm mới\", \"Năm mới phát tài\".', NULL, '', '', ''),
(92, 1, 'Cô Hà bộc bạch khi cô giáo bước vào lớp học với nụ cười tươi, ánh mắt trìu mến, ngay lập tức, học sinh cảm thấy được yêu thương, khích lệ nên đón nhận giờ học một cách nhẹ nhàng.', '', '', '', '', '', ''),
(92, 2, 'Và khi được cô “hiểu” tâm lý, sở thích, học trò càng hứng thú học bài. Bản thân người giáo viên không thể không đổi mới, tiếp nhận phương pháp, mô hình dạy học mới để tránh đi vào lối mòn của cách giảng dạy truyền thống.', '2021-02-06-05-10-45-856.jpg', 'Cô Đặng Hoàng Hà tận tâm với học trò. Ảnh: Giáo dục & Thời đại.', NULL, '', '', ''),
(92, 3, 'Gần gũi học sinh, hiểu trẻ lứa tuổi tiểu học thích xem phim hoạt hình, cô Hà mạnh dạn xây dựng những bộ phim hoạt hình đơn giản qua mày mò học hỏi các phần mềm… Trong nhiều giờ học, cô đã biến lớp học thành rạp chiếu phim mini, mỗi học sinh được hóa thành những nhân vật hoạt hình yêu thích. Rạp chiếu phim xuất hiện trong những giờ học Đạo đức, Tự nhiên xã hội và cả giờ kiểm tra, đánh giá của môn Toán, Tiếng Việt…', '', '', '', '', '', ''),
(92, 4, 'Cô Hà cho hay muốn dựng được những bộ phim hoạt hình hấp dẫn, chuyển tải được nội dung bài học đến với học sinh, bên cạnh sự hỗ trợ của các phần mềm, giáo viên phải chủ động nắm bắt, tìm tòi những nhân vật, bộ phim hoạt hình đang “hot”, được nhiều trẻ em yêu thích để dựng thành phim theo nội dung bài học. Có như vậy mới cuốn hút, kéo các em hòa vào bộ phim để “xem mà học”.', '', '', '', '', '', ''),
(92, 5, 'Điều thú vị ở đây chính là việc cô Hà đưa gương mặt của học sinh trong lớp vào các nhân vật hoạt hình thay cho việc sử dụng các con vật.', '', '', '', '', '', ''),
(92, 6, '“Khi nhìn thấy gương mặt của mình và các bạn trong lớp xuất hiện trong đoạn phim , các con trở nên hào hứng tham gia giải quyết các tình huống trong bài học. Thông qua các tình huống đó và sự phân tích, giải đáp của cô giáo, học sinh hiểu được việc mình làm đúng hay sai, từ đó các con tự thay đổi bản thân qua mỗi giờ học Đạo đức, Tự nhiên xã hội và biết được kết quả học tập của mình qua các giờ kiểm tra nhẹ nhàng”, cô Hà chia sẻ.', '', '', '', '', '', ''),
(92, 7, 'Với lợi thế về âm thanh, hình ảnh, màu sắc, những bộ phim hoạt hình của cô Đặng Hoàng Hà đã giúp học trò hiểu sâu sắc hơn bài học và đặc biệt là các em thấy hứng thú, yêu thích và nhớ kiến thức lâu hơn. Học sinh không còn cảm giác gò bó, cứng nhắc khi tiếp nhận những kiến thức mang tính lý thuyết, trừu tượng. Các em không chỉ gắn kết, yêu thương, chia sẻ với nhau nhiều hơn mà đã tự tin và biết cách tự giải quyết các vấn đề cụ thể trong cuộc sống hàng ngày.', '', '', '', '', '', ''),
(92, 8, 'Cô Hà tâm niệm, sáng tạo trong giáo dục không nhất thiết phải là những gì to tát mà nhiều sự thay đổi nhỏ, sẽ cộng hưởng thành giá trị lớn. Cũng như vậy, sáng tạo không phải là cái gì đó quá xa lạ. Đó có thể là những sáng tạo tưởng chừng rất đơn giản, dễ làm, thực tế, nhưng nó có tác động tích cực đến học sinh, đến giáo viên, đến nhà trường và phụ huynh học sinh. Nhiều thay đổi nhỏ sẽ tạo nên một sự thay đổi lớn vững chắc hơn.', '', '', '', '', '', ''),
(93, 1, 'Sáng 5/2, Trung tâm Kiểm soát bệnh tật tỉnh Điện Biên thông báo trên địa bàn có 6 trường hợp dương tính với SARS-CoV-2, nghi nhiễm Covid-19. Trong đó, 2 trường hợp đã dương tính 2 lần, 4 người khác dương tính lần một.', '', '', '', '', '', ''),
(93, 2, 'Sau đó, Trung tâm Kiểm soát bệnh tật tỉnh Điện Biên đã gửi các mẫu bệnh phẩm của 6 bệnh nhân đến Viện Vệ sinh Dịch tễ Trung ương để xác nhận lại.', '', '', '', '', '', ''),
(93, 3, 'Đến 13h chiều cùng ngày, Viện Vệ sinh Dịch tễ Trung ương thông báo trong 6 mẫu bệnh phẩm được gửi từ Trung tâm Kiểm soát bệnh tật tỉnh Điện Biên, 3 mẫu dương tính với SARS-CoV-2 (đã được Bộ Y tế thông báo lúc 18h ngày 5/2). Ba mẫu còn lại âm tính với SARS-CoV-2.', '', '', '', '', '', ''),
(93, 4, 'Hai trong 3 mẫu bệnh phẩm âm tính là trường hợp của sinh viên học tại ĐH sư phạm Hà Nội (số 136 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội) và học sinh trường THPT Trí Đức (ngõ 63 Lê Đức Thọ, Mỹ Đình, Nam Từ Liêm, Hà Nội).', '', '', '', '', '', ''),
(93, 5, 'Trường THPT Trí Đức cũng xác nhận cơ quan y tế đã thông báo cho nhà trường về kết quả âm tính với SARS-CoV-2 của một học sinh ở Điện Biên.', '', '', '', '', '', ''),
(94, 1, 'Ngày 5/2, Bộ GD&ĐT có báo cáo gửi Phó thủ tướng Vũ Đức Đam về tình hình hoạt động và việc thành lập hội đồng trường của ĐH Tôn Đức Thắng, TP.HCM.', '2021-02-06-05-15-16-046.jpg', 'ĐH Tôn Đức Thắng. Ảnh: VietNamNet.', NULL, '', '', ''),
(94, 2, 'Theo Bộ GD&ĐT, Hội đồng trường ĐH Tôn Đức Thắng nhiệm kỳ 2014-2019 được Đoàn chủ tịch Tổng Liên đoàn Lao động Việt Nam (Tổng Liên đoàn) công nhận ngày 3/11/2014 và kết thúc nhiệm kỳ vào ngày 20/7/2019.', '', '', '', '', '', ''),
(94, 3, 'Trong thời gian từ tháng 5/2019 đến tháng 9/2019, ĐH Tôn Đức Thắng đã hai lần thực hiện quy trình thành lập Hội đồng trường nhưng không được Tổng Liên đoàn công nhận.', '', '', '', '', '', ''),
(94, 4, 'Bộ GD&ĐT cũng đã có công văn trao đổi, hướng dẫn và cử cán bộ tham gia tổ công tác do Tổng Liên đoàn Lao động Việt Nam thành lập vào giữa tháng 8 năm 2019. Tuy nhiên, Tổng Liên đoàn đã không nhất trí với tập thể lãnh đạo ĐH Tôn Đức Thắng về quy trình nhân sự hội đồng trường và chủ tịch hội đồng trường.', '', '', '', '', '', ''),
(94, 5, 'Do đó, trường chưa thực hiện được quy trình nhân sự ban giám hiệu nhiệm kỳ mới. Tổng Liên đoàn đã hai lần ra quyết định kéo dài thời gian nhiệm kỳ của hội đồng trường và ban giám hiệu.', '', '', '', '', '', ''),
(94, 6, 'Lần cuối theo quyết định đến khi có hướng dẫn của Chính phủ thực hiện Luật 34/2018/QH14 (Nghị định 99/2019/NĐ-CP có hiệu lực thi hành từ ngày 15/02/2020), Tổng Liên đoàn cũng yêu cầu trong thời gian tối đa 60 ngày làm việc, kể từ khi có hướng dẫn của Chính phủ, ĐH Tôn Đức Thắng có trách nhiệm thực hiện quy trình, thủ tục thành lập Hội đồng trường nhiệm kỳ mới theo đúng quy định.', '', '', '', '', '', ''),
(95, 1, 'Trên mạng xã hội, hàng loạt cuộc bàn luận về việc thu nhập bao nhiêu thì nên cho con theo học trường tư, mức chi trả cho giáo dục của các gia đình ở thành phố chiếm bao nhiêu % tổng thu nhập, thu hút sự quan tâm của nhiều người.', '', '', '', '', '', ''),
(95, 2, 'Thậm chí, thành viên một diễn đàn còn kết luận “thu nhập cỡ 50 triệu đồng/tháng mới nên cho con học trường tư”. Ý kiến này nhận nhiều tranh cãi. Người đồng ý, người không nhưng đa phần đều xác định mức chi cho việc học của con nên nằm ở mức 30% tổng thu nhập của gia đình.', '', '', '', '', '', ''),
(95, 3, 'Từ khi có con, chị Tố An (Hà Nội) là người chi 50% thu nhập cho việc học của con.', '2021-02-06-05-29-39-690.jpg', 'Nhiều phụ huynh cho rằng điều quan trọng nhất là môi trường phù hợp với trẻ. Ảnh: Tiểu học, THCS và THPT Vạn Hạnh.', NULL, '', '', ''),
(95, 4, 'Cũng như nhiều phụ huynh khác, chị Tố An băn khoăn chọn trường khi con đến tuổi đi học. Chị mong muốn con được sống ở môi trường gần gũi thiên nhiên, tự do phát huy khả năng vốn có, không phải học quá nhiều hay áp lực thành tích.', '', '', '', '', '', ''),
(95, 5, 'Ban đầu, chị thậm chí nghiên cứu homeschool nhưng tự thấy mình chưa đủ năng lực để đồng hành cùng con. Vì thế chị chọn một môi trường tư thục phù hợp.\r\n\r\n“Cho con vào học tại đây, với điều kiện hiện tại của tôi, đây là nỗ lực vô cùng lớn và tôi cần có trách nhiệm với quyết định đó”, bà mẹ trẻ tâm sự.', '', '', '', '', '', ''),
(95, 6, 'Chị Tố An một mình nuôi con. Chị từng là nhân viên ngân hàng và vừa “bước ra khỏi vùng an toàn” để theo đuổi ước mơ và sở thích. Thu nhập không ổn định song không vì thế mà chị không ưu tiên việc học của con. Chị xác định chỉ cần 15-17 triệu đồng/tháng, chị có thể lo cho cuộc sống hai mẹ con, đảm bảo con được học ở nơi phù hợp.', '', '', '', '', '', ''),
(95, 7, 'Hàng tháng, chị đóng khoảng 8-9 triệu đồng (5 triệu đồng học phí, tiền xe đưa đón, tiền ăn…) chưa kể đến xây dựng trường, học liệu, sách vở… Đây là mức thu đối với học sinh tiền tiểu học và tiểu học.', '', '', '', '', '', ''),
(95, 8, 'Chị Tố An quan niệm thu nhập nhiều, chi tiêu cũng nhiều. Do đó, với mức thu nhập như hiện tại, để con theo học trường tư phù hợp, chị sống tối giản, quần áo vừa đủ, chỉ 3-4 bộ, không có nhu cầu dùng hàng có thương hiệu. Việc ăn, mặc, ở hợp lý là được.', '', '', '', '', '', ''),
(95, 9, '“Tôi không coi đầu tư cho con là gánh nặng. Nếu có khó khăn, đó cũng là động lực giúp tôi năng động hơn”, chị chia sẻ.\r\n\r\nSong nữ phụ huynh cũng thừa nhận với vị trí, hoàn cảnh tương tự, nhiều người cho con học trường công để tiết kiệm chi phí hoặc con họ hợp với môi trường công lập hơn.', '2021-02-06-05-29-39-719.jpg', 'Với chị Tố An, điều quan trọng là con được học trong môi trường hạnh phúc, phù hợp, không nhất thiết cứ phải gia đình có thu nhập cao mới cho con học trường tư. Ảnh: Anh Tuấn.', NULL, '', '', ''),
(96, 1, NULL, '2021-02-06-07-29-31-163.jpg', 'Cầu Cổng Vàng, Mỹ: Một trong những cây cầu được biết đến nhiều nhất trên thế giới, cầu Cổng Vàng hay Kim Môn, là biểu tượng của thành phố San Francisco nói riêng và nước Mỹ nói chung. Cây cầu treo bắc qua eo biển nối liền vịnh San Francisco và Thái Bình Dương. Chi phí xây dựng tiêu tốn 677 triệu USD (mức giá được điều chỉnh theo giá trị ngày nay).', NULL, '', '', ''),
(96, 2, NULL, '2021-02-06-07-29-31-170.jpg', 'Cầu Arthur Ravenel Jr., Mỹ: Mặc dù không nổi tiếng bằng Cổng Vàng, cầu Arthur Ravenel cũng là một công trình đầy ngoạn mục. Đặc biệt, vào ban đêm, cây cầu trông càng đẹp hơn khi được thắp sáng. Arthur Ravenel có nhịp chính 471 m dài thứ ba trong số các cây cầu dây văng ở Tây Bán cầu. Bắc qua sông Cooper ở Nam Carolina. 902 triệu USD là chi phí để xây dựng cây cầu này.', NULL, '', '', ''),
(96, 3, NULL, '2021-02-06-07-29-31-190.jpg', 'Cầu George Washington, Mỹ: Một cây cầu khác của Mỹ là George Washington được xây dựng để nối Manhattan với New Jersey, có chi phí xây dựng 1 tỷ USD. Cây cầu treo hai tầng bắc qua sông Hudson được khởi công vào đầu năm 1927. Tính đến năm 2015, George Washington có hơn 106 triệu xe lưu thông mỗi năm và trở thành cầu cho xe cơ giới bận rộn nhất thế giới.', NULL, '', '', ''),
(96, 4, NULL, '2021-02-06-07-29-31-199.jpg', 'Cầu Sultan Abdul Halim Muadzam Shah, Malaysia: Cầu Sultan Abdul Halim Muadzam Shah là cây cầu dài nhất ở Malaysia. Công trình được hoàn thành vào năm 2004 và dài 24 km. Tổng chi phí là 1,2 tỷ USD.', NULL, '', '', ''),
(96, 5, NULL, '2021-02-06-07-29-31-205.jpg', 'Đường cao tốc Bang Na, Thái Lan: Bang Na là đường cao tốc 6 làn xe và tiêu tốn 1,5 tỷ USD để xây dựng. Cây cầu dài 54 km nằm ở Thái Lan này giữ danh hiệu cây cầu dài nhất thế giới từ năm 2000 cho đến năm 2008. Ngày nay, cây cầu dài thứ 7 trên thế giới.', NULL, '', '', ''),
(96, 6, NULL, '2021-02-06-07-29-31-209.jpg', 'Cầu Đông Hải, Trung Quốc: Cây cầu này nối Thượng Hải đại lục và cảng nước sâu Dương Sơn. Hơn 2,1 tỷ USD là mức chi phí để xây dựng. Đông Hải được thông xe lần đầu tiên vào năm 2005 và việc sử dụng cầu chỉ giới hạn cho xe tải và ôtô cần vào cảng.', NULL, '', '', ''),
(96, 7, NULL, '2021-02-06-07-29-31-214.jpg', 'Cầu Oresund, Thụy Điển/Đan Mạch: Oresund là cầu kết hợp đường sắt và đường ôtô bắc qua eo biển Oresund giữa Thụy Điển và Đan Mạch. Cây cầu dài 8 km được hoàn thành vào năm 2000 và chi phí tiêu tốn 4,4 tỷ USD.', NULL, '', '', ''),
(97, 1, NULL, '2021-02-06-07-39-16-850.jpg', 'Một ngày mới đã bắt đầu tại vòng xoay thành phố Cà Mau với tượng đài cây đước. Đây là nơi có mật độ giao thông dày đặc, chứng kiến bao nẻo ngược xuôi của người dân phố thị. Ảnh: Bùi Trọng Nghĩa', NULL, '', '', ''),
(97, 2, NULL, '2021-02-06-07-39-16-857.jpg', 'Được mẹ thiên nhiên ưu ái ban tặng nguồn sản vật thiên nhiên phong phú cùng hệ thống kênh rạch chằng chịt, sông nước Cà Mau là nơi sinh sống của các loại thủy sản nước lợ như tôm sú, cua và nhiều loại sinh vật đa dạng khác. Cư dân sinh sống và kiếm thêm thu nhập từ nguồn lợi thủy hải sản phong phú bằng cách lưới cá hoặc lợp cua. Ảnh: Võ Văn Bông', NULL, '', '', ''),
(97, 3, NULL, '2021-02-06-07-39-16-863.jpg', 'Cà Mau được mệnh danh là vùng đất “cá bạc tôm vàng”, “đất cũng sinh sôi” - nơi có nhiều làng làm khô nổi tiếng: Làng tôm khô Rạch Gốc, làng khô biển Sông Đốc, làng khô cá khoai Cái Đôi Vàm, làng khô cá bổi Trần Văn Thời. Sau mỗi buổi ra khơi, lưới được phơi cẩn thận để chuẩn bị cho những chuyến tiếp theo. Mực câu được làm sạch, ướp muối độ một đêm rồi đem phơi. Ảnh: Việt Nguyên', NULL, '', '', ''),
(97, 4, NULL, '2021-02-06-07-39-16-869.jpg', 'Người dân Cà Mau vốn thân thiện, mến khách. Từ buổi đầu khai hoang mở đất, trong đấu tranh gian khổ đến thời kỳ xây dựng và kiến thiết đất nước, con người Cà Mau đã hình thành nên nhiều nét văn hoá độc đáo. Đến với Cà Mau, ngắm nhìn những công trình Khmer và điệu múa Apsara, du khách sẽ hiểu hơn đời sống của người dân Khmer Nam Bộ. Ngoài ra, bạn có thể ghé thăm công trình đền Lạc Long Quân hay cột mốc cuối cùng đường mòn Hồ Chí Minh. Ảnh: Nguyễn Văn Tuấn', NULL, '', '', ''),
(97, 5, NULL, '2021-02-06-07-39-16-877.jpg', 'Phong cảnh Cà Mau như bức tranh quê biển hữu tình, sống động bởi tiếng chim muông gọi bầy. Ngồi trên chiếc tàu vỏ lãi, tiếng máy tàu tạch tạch rẽ sóng trên sông, nước hai bên tung lên trắng xóa, gió ù ù thổi bên tai, mây nước cứ nối tiếp nhau ra xa tít khiến du khách có cảm giác đất trời như bao la vô tận. Bạn sẽ rất thích thú với cảnh sinh hoạt chài lưới, giăng câu… của người dân, ngắm nhìn trời mây biển cả đang chìm dần trong bóng hoàng hôn, cảnh mặt trời đỏ rực dần chìm xuống biển Tây. Ảnh: Trần Nguyên Mỹ', NULL, '', '', ''),
(97, 6, NULL, '2021-02-06-07-39-16-883.jpg', 'Đường phố Cà Mau về đêm trở nên nhộn nhịp nhờ hạ tầng đô thị được nâng cấp, chỉnh trang, tạo điều kiện thuận lợi cho xe cộ lưu thông. Người dân mạnh dạn mở rộng kinh doanh, buôn bán. Chợ đêm Cà Mau, tượng đài vòng xoay và ủy ban nhân dân thành phố là các công trình nổi bật và tiêu biểu của thành phố, thể hiện rõ nét sự đổi mới của Cà Mau khi về đêm. Ảnh: Nguyễn Phát Tài', NULL, '', '', ''),
(97, 7, NULL, '2021-02-06-07-39-16-891.jpg', 'Nhà công vụ khí - điện - đạm sáng lung linh xứng tầm công trình trọng điểm quốc gia. Có thể nói, Cà Mau đang chuyển mình từng ngày, định hình một khu đô thị hiện đại, phát triển năng động, thắp sáng tương lai cho mảnh đất cực nam Tổ quốc. Ảnh: Bùi Trọng Nghĩa', NULL, '', '', ''),
(98, 1, 'Nhắc đến Đà Lạt, nhiều người yêu thường liên tưởng đến những buổi chiều ngồi ngắm hoàng hôn thơ mộng, bên cạnh là khóm hoa rực rỡ, vang bên tai những bản tình ca lãng mạn. Mây Lang Thang là một điểm đến cho những chiều hoàng hôn nghe nhạc mỗi cuối tuần như thế. Đến nay, địa điểm này đã tổ chức gần 100 show diễn, quy tụ 50 ca sĩ được yêu mến.', '', '', '', '', '', ''),
(98, 2, '“Những show nhạc tại Mây được bắt đầu vào lúc 16h30, khi hoàng hôn buông xuống. Các đây một năm, khoảng thời gian trái khoáy này khiến không ít khán giả ngờ vực, vì hiếm nơi nào chọn thời khắc lưng chừng thế này để tổ chức những buổi trình diễn âm nhạc. Nhưng giờ đây, nghe nhạc vào lúc hoàng hôn tại Mây đã trở thành một trải nghiệm thú vị tại thành phố mộng mơ. Mây kỳ vọng 16h30 không chỉ là khung giờ vàng để nghe nhạc ở Đà Lạt, mà còn ở nhiều địa danh khác ở Việt Nam”, đại diện Mây lang thang chia sẻ.', '2021-02-06-07-43-16-423.jpg', 'Trải nghiệm nghe nhạc độc đáo tại “Mây lang thang”.', NULL, '', '', ''),
(98, 3, 'Có thể nói, Mây Lang Thang là một trong những nơi có nhiều show nghe nhạc nhất ở Đà Lạt với 2 buổi trình diễn acoustic mỗi ngày, cùng ít nhất một show diễn của các ca sĩ nổi tiếng vào các ngày thứ sáu, bảy và chủ nhật. Sau show diễn, du khách ra về sẽ mang theo chút dư vị ngọt ngào của âm nhạc.', '', '', '', '', '', ''),
(98, 4, 'Không chỉ được nghe nhạc, du khách có thể ngắm nhìn khung cảnh Đà Lạt tuyệt đẹp từ trên cao, mơ màng trong những làn sương mờ ảo vào buổi chiều se lạnh. Những khóm hoa rực rỡ được bố trí khéo léo xung quanh quán cũng giúp buổi nghe nhạc của du khách thêm thi vị.', '2021-02-06-07-43-16-433.jpg', 'Các show nhạc tại Mây Lang Thang quy tụ nhiều ca sĩ nổi tiếng.', NULL, '', '', ''),
(98, 5, 'Đại diện Mây Lang Thang chia sẻ: “Từ ngày đầu ‘làm nhạc trên Mây’, quán đã tâm niệm mang đến khoảnh khắc đẹp nhất cho du khách vào những chiều hoàng hôn lộng lẫy nào đó. Mây mong rằng những chiều nhạc lộng lẫy đó xứng đáng cho những trái tim, tâm hồn yêu Đà Lạt”.', '2021-02-06-07-43-16-458.jpg', 'Không gian quán cà phê và homestay tại “Mây lang thang”.', NULL, '', '', ''),
(99, 1, NULL, '2021-02-06-07-46-49-042.jpg', 'Từ ngày đầu đặt chân đến Singapore, Bằng Lăng cho biết đã phải lòng đảo quốc xinh đẹp, sôi động và quyết tâm khám phá những địa điểm hấp dẫn. Cô chia sẻ: “Tôi không bao giờ chán khi sống ở Singapore, luôn có hoạt động mới để làm, nơi mới để xem, nhiều điều độc đáo để khám phá”.', NULL, '', '', ''),
(99, 2, NULL, '2021-02-06-07-46-49-055.jpg', 'Khi tình hình dịch bệnh ở đảo quốc sư tử dần trong tầm kiểm soát, cô tiếp tục hành trình thăm thú mọi ngõ ngách, đồng thời đảm bảo an toàn sức khỏe bản thân và gia đình. Nữ siêu mẫu cho biết: “Thời gian qua, tôi ở nhà do dịch bệnh. Thế nhưng tình hình đã khá hơn, các biện pháp phòng chống dịch nghiêm ngặt giúp tôi an tâm tiếp tục khám phá Singapore”.', NULL, '', '', ''),
(99, 3, NULL, '2021-02-06-07-46-49-063.jpg', 'Series video Bằng Lăng chia sẻ gồm 3 tập, xoay quanh nhiều khía cạnh cuộc sống như các biện pháp quản lý an toàn phòng chống dịch đến địa điểm cùng gia đình và bạn bè ghé thăm. Trong tập đầu tiên, cô tiết lộ cách thích nghi biện pháp phòng chống dịch cũng như hai điểm đến yêu thích dự định đưa mẹ đến tham quan gồm Gardens by the Bay và Dempsey Hill. Hai tập tiếp theo của series sẽ ra mắt trên trang Facebook VisitSingapore thời gian tới.', NULL, '', '', ''),
(99, 4, NULL, '2021-02-06-07-46-49-072.jpg', 'Vốn là người mê hoa, cô không thể bỏ qua Gardens by the Bay, đặc biệt vườn hoa trong nhà kính Flower Dome. Cô nhận xét: “Cây cảnh đẹp, nhiều loại khác nhau rất ấn tượng, như trong phim”. Nữ siêu mẫu cảm thấy may mắn khi được chiêm ngưỡng triển lãm sắp đặt hoa nghệ thuật Floral Fantasy đã mở cửa trở lại sau thời gian dừng hoạt động vì dịch. Ảnh: Tổng cục Du lịch Singapore.', NULL, '', '', ''),
(99, 5, NULL, '2021-02-06-07-46-49-081.jpg', 'Tại đây, Bằng Lăng không khỏi ngỡ ngàng trước vẻ đẹp của hơn 3.000 loài thực vật thuộc 150 chủng loài khác nhau. Cô thích thú kể: “Hoa ở đây vừa đẹp, vừa sắp xếp rất nghệ thuật. Những người yêu hoa, thích chụp ảnh đẹp chắc chắn sẽ thích mê nơi này”.', NULL, '', '', ''),
(99, 6, NULL, '2021-02-06-07-46-49-088.jpg', 'Mỗi ngày sau khi đưa hai con đến trường, Bằng Lăng thường ghé khu Dempsey Hill, nơi có nhà hàng ưa thích PS Cafe. Nơi đây có không gian nhiều cây xanh yên tĩnh, cách xa sự náo nhiệt của trung tâm sầm uất, có thể ngồi nhâm nhi tách cà phê, ăn bữa trưa hoặc dạo xem cửa hàng độc đáo. Ảnh: Tổng cục Du lịch Singapore.', NULL, '', '', ''),
(99, 7, NULL, '2021-02-06-07-46-49-095.jpg', '“Tôi đến Dempsey Hill thường xuyên vì các nhà hàng và cửa hàng đa dạng, không khí trong lành, yên tĩnh. Trước dịch, tôi là khách quen của PS Cafe nên thời gian phải ở nhà rất nhớ những món bánh của quán”, Bằng Lăng bộc bạch.', NULL, '', '', ''),
(99, 8, NULL, '2021-02-06-07-46-49-102.jpg', 'Nữ siêu mẫu cho biết từ lúc dịch mới bùng phát, Chính phủ Singapore đã áp dụng nhiều biện pháp chặt chẽ như bắt buộc đăng nhập SafeEntry khi ra vào các địa điểm công cộng, địa điểm tham quan, trung tâm mua sắm và khu ăn uống; tải ứng dụng truy vết TraceTogether để ngăn chặn sự lây lan của virus. Ngoài ra, chiến dịch SG Clean với các biện pháp an toàn và vệ sinh nghiệm ngặt cần được tuân thủ tại nơi công cộng.', NULL, '', '', ''),
(100, 1, NULL, '2021-02-06-07-50-07-180.jpg', 'Lombard (Mỹ): Với 40 ngọn đồi trong thành phố, những con đường ở San Francisco nổi tiếng với độ dốc chóng mặt. Trong đó, Lombard, nằm trên đồi Russian thơ mộng được biết đến là con đường khúc khuỷu bậc nhất nước Mỹ. Con dốc được thiết kế hình zích zắc để giảm độ dốc 27 độ của ngọn đồi, tránh khả năng xảy ra tai nạn khi phương tiện lưu thông. Ở đây, ôtô chỉ được phép lưu thông với vận tốc tối đa 8 km/h. Ảnh: Peter Yan Studio.', NULL, '', '', ''),
(100, 2, NULL, '2021-02-06-07-50-07-201.jpg', 'Con đường dài khoảng 200 m, với 8 đoạn gấp khúc đều nhau, đem đến nguồn lợi lớn cho ngành du lịch địa phương. Nhiều du khách đến đây để check-in tại \"Crooking Street\" (con đường khúc khuỷu) lãng mạn, kỳ lạ. Tuy nhiên, việc thu hút quá nhiều khách kéo theo tình trạng tắc đường, ô nhiễm bởi khói bụi và tiếng ồn. Thành phố đang xem xét việc thu phí đi lại đối với phương tiện lưu thông trên đường Lombard. Ảnh: SFCTA.', NULL, '', '', ''),
(100, 3, NULL, '2021-02-06-07-50-07-208.jpg', 'Baldwin (New Zealand): Nằm tại vùng ngoại ô thành phố Dunedin, phía nam New Zealand, Baldwin giữ kỷ lục là con đường dốc nhất thế giới do Guinness trao tặng. Đường dài khoảng 350 m, độ dốc cao nhất khoảng 1:2,86 (19 độ hay 35%). Trong khi đoạn dưới rải bê tông thì dốc phía trên được lát nhựa để dễ bảo trì, tránh trường hợp nhựa đường chảy xuống khi nắng nóng. Độ dốc bất thường của con đường được tạo ra do quy hoạch đô thị kém, người xây dựng không nắm rõ địa hình thành phố. Ảnh: Insiders Dunedin.', NULL, '', '', ''),
(100, 4, NULL, '2021-02-06-07-50-07-216.jpg', 'Ebenezer Place (Scotland): Ebenezer Place được kỷ lục Guinness công nhận là con đường ngắn nhất thế giới vào tháng 11/2006. Con đường nằm ở Wick, Caithness, dài 2,05 m. Nơi đây có một địa chỉ duy nhất là khách sạn Mackays, du khách có thể tham quan toàn bộ trong vài bước chân. Ảnh: Twitter.', NULL, '', '', ''),
(101, 1, 'Theo Mercury News, hành khách này tỏ ra quá khích khi chuyến bay quốc tế mình đặt bị hoãn. \"Người đàn ông này đã ném chiếc túi xuống và nói có quả bom bên trong\", trung sĩ Ray Kelly, đại diện phòng cảnh sát hạt Alameda, thông tin thêm về vụ việc.', '', '', '', '', '', ''),
(101, 2, 'Ngay sau câu nói mang tính khủng bố của hành khách trên, đội gỡ bom đã xuất hiện ở sân bay. Tuy nhiên, họ nhận ra không có mối nguy hiểm thực sự nào.', '2021-02-06-07-51-59-971.jpg', 'Khách dọa đánh bom sân bay Oakland vì bị trễ chuyến. Ảnh minh họa: News Now.', NULL, '', '', ''),
(101, 3, 'Hành khách trên cũng bị cảnh sát bắt giữ ngay lập tức. Theo trung sĩ Kelly, người đàn ông này có thái độ hung hăng, chống đối khi cảnh sát xuất hiện.', '', '', '', '', '', ''),
(101, 4, 'Người này bị tạm giữ để điều tra thêm các vấn đề liên quan đến chất kích thích như bia, rượu và sức khỏe. Hai tội danh đe dọa đánh bom và chống đối người thi hành công vụ cũng được làm rõ.', '', '', '', '', '', ''),
(101, 5, '\"Các nhân viên hàng không đã làm đúng quy trình và phản ứng nhanh để đảm bảo an toàn cộng đồng. Người đe dọa đánh bom có thể đối mặt với cáo buộc liên bang bổ sung sau khi Cục Điều tra Liên bang làm rõ sự việc\", Kelly cho hay.', '', '', '', '', '', ''),
(101, 6, 'Sau sự cố này, nhà ga sân bay bị đe dọa đánh bom đã phải đóng cửa trong 2 giờ. Các nhà ga khác vẫn tiếp tục hoạt động bình thường.', '', '', '', '', '', ''),
(102, 1, 'Kể từ 28/1, UBND nhiều địa phương đã họp bàn về vấn đề tổ chức các sự kiện chào năm mới sau khi dịch bệnh Covid-19 bùng phát trở lại.', '', '', '', '', '', ''),
(102, 2, 'Tại Sơn La, chương trình chạy marathon quốc tế năm 2021 tại Mộc Châu, dự kiến khai mạc ngày 30-1, bị dừng ngay lập tức. Quyết định được ban tổ chức thông báo cho khoảng 4.300 vận động viên đăng ký tham dự.', '2021-02-06-07-54-21-989.jpeg', 'Giải chạy thu hút hơn 4.000 vận động viên tham gia bị hủy. Ảnh: Tổng cục Thể thao.', NULL, '', '', ''),
(102, 3, 'Tại Vĩnh Phúc, UBND các huyện, xã, phường cũng đã tạm dừng tổ chức những lễ hội có quy mô lớn như: lễ hội cướp phết Bàn Giản, lễ hội chọi trâu Hải Lựu, lễ hội đền Ngự Dội... Các hoạt động văn hóa, thể thao, biểu diễn nghệ thuật, vui chơi giải trí cũng bị tạm dừng để tránh tập trung đông người.', '', '', '', '', '', ''),
(102, 4, 'Ngoài ra, để đảm bảo an toàn, hoạt động pháo hoa cũng không được phép diễn ra trên toàn địa bàn tỉnh.\r\n\r\nSở Văn hóa Thể thao và Du lịch tỉnh cũng yêu cầu các đơn vị kinh doanh lữ hành, du lịch trên địa bàn không tổ chức các đoàn khách du lịch tới các tỉnh, thành phố đang có dịch, người mắc bệnh và không đón khách từ các vùng có dịch về tỉnh...', '', '', '', '', '', ''),
(102, 5, 'Từ 13h ngày 29/1, UBND tỉnh Bắc Ninh cũng ra quyết định tạm dừng hoạt động các nhà hàng, quán ăn, dịch vụ karaoke, quán bar, vũ trường đến khi có chỉ đạo mới. Đồng thời, chính quyền tỉnh tạm dừng tổ chức các lễ hội, hoạt động biểu diễn nghệ thuật, văn hóa, thể thao, mừng thọ thu hút đông người, khuyến cáo người dân hạn chế du xuân.', '', '', '', '', '', ''),
(102, 6, 'Theo thông tin từ Sở Văn hóa Thể thao và Du lịch Đà Nẵng, thành phố cũng hủy chương trình Phiên chợ ngày Tết với nhiều hoạt động văn hóa cổ truyền. Khu du lịch sinh thái Suối Hoa (Hòa Vang, Đà Nẵng) cũng tạm dừng kế hoạch tổ chức chương trình Toom Sara Fet, dự kiến tổ chức từ 14-16/2.', '2021-02-06-07-54-22-003.jpg', 'Hội An cấm phố đi bộ để tránh tập trung đông người.', NULL, '', '', ''),
(102, 7, 'Ngay sát Đà Nẵng, Hội An cũng bắt đầu thực hiện nhiều biện pháp bảo đảm an toàn. Ngày 30/1, ông Nguyễn Văn Sơn - Chủ tịch UBND TP Hội An, đã ký văn bản yêu cầu tạm dừng các hoạt động tập trung đông người chưa cấp thiết trên địa bàn.', '', '', '', '', '', ''),
(102, 8, 'Kế hoạch tổ chức Hội đón Giao thừa (chương trình bắn pháo hoa) vẫn đang được đưa ra thảo luận trước khi quyết định tiếp tục hay hủy.', '', '', '', '', '', ''),
(102, 9, 'Hiện tại, tình hình các điểm du lịch chưa dính đến yếu tố dịch vẫn đang khá căng thẳng. Ở Sa Pa (Lào Cai), tính tới 30/1, khoảng 30% khách đã hủy tour Tết. Dự kiến, con số này sẽ tăng đến 80% nếu tình hình dịch bệnh vẫn diễn biến phức tạp.', '', '', '', '', '', ''),
(103, 1, 'Vào trung tuần tháng 1, Zing ghi nhận phản ánh từ một số người dùng Mercedes-Benz tại Việt Nam về việc các mẫu xe của họ bị cắt giảm trang bị tính năng. Cụ thể là cụm phanh trước bị thay đổi và loại bỏ chức năng hỗ trợ đỗ xe tự động (Active Parking Assist - APA).', '', '', '', '', '', ''),
(103, 2, 'Trước đó, hãng xe Đức tiến hành điều chỉnh giá bán vào đầu năm 2021 với nhiều model có mức tăng 10-100 triệu đồng. Các động thái này khiến khách hàng cảm thấy không hài lòng. Sau khi liên hệ với Mercedes-Benz Việt Nam (MBV), Zing đã nhận được phản hồi từ nhà sản xuất về sự thay đổi trang bị kể trên.', '', '', '', '', '', ''),
(103, 3, 'Đại diện thương hiệu ngôi sao 3 cánh cho biết kể từ năm 2021, các model có gói trang bị ngoại thất AMG Line của Mercedes-Benz được thay đổi thiết kế phanh, từ kiểu đĩa phanh đục lỗ thành không đục lỗ. Đồng thời, kẹp phanh có kích thước nhỏ hơn và không được trang trí sơn màu đỏ như trước.', '', '', '', '', '', ''),
(103, 4, 'Bên cạnh đó, Mercedes-Benz Việt Nam xác nhận rằng hệ thống phanh trên các mẫu xe có gói trang bị AMG Line trước đây vốn là loại phanh thường, không phải là hệ thống phanh hiệu năng cao trên xe thể thao Mercedes-AMG. Khác biệt về thiết kế chỉ là sự thay đổi mẫu mã chứ hiệu năng phanh không bị ảnh hưởng, tính năng vận hành và độ an toàn của xe được giữ nguyên.', '', '', '', '', '', ''),
(103, 5, 'Đây là thay đổi mang tính hệ thống và được áp dụng với tất cả sản phẩm có gói AMG Line trên quy mô toàn cầu. Những mẫu xe Mercedes tại Việt Nam thuộc diện ảnh hưởng gồm có C 300 AMG, E 300 AMG, GLC 300 AMG, GLC 300 Coupe, GLB 200, GLE 450 và GLS 450.', '2021-02-06-07-57-34-299.jpg', 'Mercedes-Benz GLC 300 4MATIC đời mới với kẹp phanh nhỏ hơn và đĩa phanh không đục lỗ. Ảnh: Việt Đức.', NULL, '', '', ''),
(103, 6, 'Như vậy, việc thiết kế phanh thường giống phanh hiệu năng cao AMG trên xe Mercedes nói chung ít nhiều gây nhầm lẫn cho khách hàng. Khi các model Mercedes kể trên chuyển về thiết kế phanh thông thường, người dùng nghĩ rằng hãng “cắt option”.', '', '', '', '', '', ''),
(103, 7, 'Trong khi đó, những mẫu xe mới có gói AMG Line tỏ ra thua thiệt về mặt ngoại hình, trông ít phong cách thể thao và kém bắt mắt hơn so với đời xe cũ. Bên cạnh đó, các mẫu xe thể thao Mercedes-AMG thực sự lâu nay không có được điểm nhấn khác biệt so với những model thông thường như có gói trang trí AMG Line chính hãng.', '2021-02-06-07-57-34-307.jpg', 'Các mẫu xe Mercedes có gói trang bị AMG Line bị thay thế thiết kế phanh bắt đầu từ tháng 1/2021.', NULL, '', '', ''),
(105, 1, NULL, '2021-02-06-08-02-46-860.jpg', 'Suzuki đã chính thức giới thiệu \"thần gió\" Hayabusa thế hệ mới sau những đoạn teaser hé lộ được công bố cách đây vài tuần. Phong cách thiết kế hầm hố vốn đã làm nên tên tuổi của Hayabusa vẫn được giữ nguyên, tuy nhiên Suzuki đã tinh chỉnh đôi chút giúp chiếc xe trông khỏe khoắn và góc cạnh hơn.', NULL, '', '', ''),
(105, 2, NULL, '2021-02-06-08-02-46-867.jpg', 'Suzuki Hayabusa 2022 có số đo dài x rộng x cao lần lượt là 2.180 x 735 x 1.165 mm, chiều dài cơ sở 1.480 mm. Khối lượng khô của xe ở mức 264 kg.', NULL, '', '', ''),
(105, 3, NULL, '2021-02-06-08-02-46-873.jpg', 'Suzuki trang bị cho xe hệ thống phanh Brembo 4 piston cùng đĩa phanh kép 320 mm ở phía trước, phanh sau là loại 1 piston của Nissin.', NULL, '', '', ''),
(105, 4, NULL, '2021-02-06-08-02-46-880.jpg', 'Các chi tiết uốn cong và phình ra trên Hayabusa đời cũ đã biến mất, thay vào đó là những đường gân thẳng và sắc nét. Suzuki cho biết Hayabusa 2022 là một trong những mẫu xe thương mại thuộc nhóm có chỉ số cản gió thấp nhất.', NULL, '', '', ''),
(105, 5, NULL, '2021-02-06-08-02-46-886.jpg', 'Nhìn từ phía trước, Hayabusa nổi bật với 2 khe hút gió SRAD (Suzuki\'s Ram Air Direct) đối xứng, cạnh bên là dãy đèn định vị tích hợp đèn báo rẽ. Cụm đèn chiếu sáng chính trên xe sử dụng bóng LED với công nghệ gương cầu hỗ trợ.', NULL, '', '', ''),
(105, 6, NULL, '2021-02-06-08-02-46-893.jpg', 'Hayabusa 2022 vẫn được trang bị động cơ 1.340 cc, làm mát bằng dung dịch, DOHC. Suzuki không công bố con số cụ thể về công suất và mô-men xoắn cực đại của mẫu xe này, hãng chỉ cho biết động cơ đã được cải tiến giúp tăng thêm 54% lượng dầu bôi trơn cho trục khuỷu.', NULL, '', '', ''),
(106, 1, 'Khi giới thiệu trực tuyến vào tháng 9/2020, Nissan 400Z không được hãng xe Nhật Bản công bố chi tiết về hiệu năng vận hành. Mẫu xe thể thao của Nissan khi đó được đồn đoán sẽ có động cơ V6 và sử dụng hộp số sàn 6 cấp.', '', '', '', '', '', ''),
(106, 2, 'Mới đây, hình ảnh chụp lại chiếc Nissan 400Z được đưa vào một gian trưng bày đã hé lộ chi tiết hơn về động cơ của mẫu coupe này. Dưới nắp ca-pô là động cơ được lắp nắp che có 2 dải sơn trùng màu với ngoại thất. Điều này xác thực rằng Nissan sẽ trang bị cho thế hệ xe Z tiếp theo động cơ V6.', '2021-02-06-08-05-15-566.jpg', NULL, NULL, '', '', ''),
(106, 3, 'Theo nhận định từ Carbuzz, động cơ trên 400Z nhiều khả năng được chia sẻ từ Infiniti Q50. Mẫu xe thể thao của Infiniti hiện sử dụng động cơ tăng áp kép V6 3.0L. Tùy theo phiên bản mà cỗ máy này được tinh chỉnh mức công suất từ 300 mã lực đến 400 mã lực.', '', '', '', '', '', ''),
(106, 4, 'Ở biến thể Q50 Red Sport 400 cao cấp nhất, xe có công suất 400 mã lực và mô-men xoắn 475 Nm, đi cùng với đó là hộp số tự động 7 cấp và tùy chọn cấu hình dẫn động cầu sau hoặc 4 bánh toàn thời gian.', '2021-02-06-08-05-15-576.jpg', NULL, NULL, '', '', ''),
(106, 5, 'Nissan 400Z sẽ đóng vai trò thay thế cho dòng 370Z trước đây ở phân khúc xe thể thao. Các đối thủ đồng hương của Nissan 400Z là Toyota GR Supra hay Subaru BRZ. Các phiên bản thương mại của Nissan 400Z dự kiến được trình làng trong năm sau và bán ra từ 2023.', '', '', '', '', '', ''),
(107, 1, 'Sau hơn một tháng ra mắt thị trường Việt Nam, Yamaha Exciter 155 VVA được mệnh danh là \"tiểu YZF-R1\" tạo dấu ấn lớn trong phân khúc xe côn tay thể thao, thu hút sự quan tâm của mạng xã hội. So với bản 150 cc, mẫu xe này sở hữu thiết kế mới như chiếc môtô cùng nhiều công nghệ hiện đại thừa hưởng từ đàn anh YZF-R1.', '2021-02-06-08-08-21-418.jpg', 'Nhiều người bị thu hút bởi mẫu xe côn tay mới của Yamaha.', NULL, '', '', ''),
(107, 2, 'Yamaha Exciter 155 VVA trang bị khối động cơ 155 VVA, 4 van, SOHC, cho công suất cực đại 17,7 mã lực tại vòng tua 9.500 vòng/phút và mô-men xoắn cực đại 14,4 Nm tại vòng tua 8.000 vòng/phút. Xe sử dụng hộp số 6 cấp. Mức công suất trên mạnh hơn 17% so với phiên bản 150 cc. Ngoài khối động cơ mạnh mẽ, xe thiết kế khí động học, áp dụng công nghệ phủ carbon kim cương, tăng góc phun lẫn số lỗ phun xăng, hệ thống nạp khí và khung sườn mới. Tất cả yếu tố này giúp tối ưu khả năng tăng tốc và vận hành của xe.', '', '', '', '', '', ''),
(107, 3, 'Mẫu xe côn tay này chứng tỏ sức hút khi nhiều người đăng ký lái thử trong sa hình mô phỏng đường đua GP thu nhỏ của Yamaha, đặc biệt các bạn trẻ. Mới đây, một tay lái Việt thử nghiệm tốc độ tối đa của Yamaha Exciter 155 VVA vừa ra mắt. Với khối động cơ mới cùng loạt cải tiến mang tính khí động học giúp xe đạt vận tốc đến 150 km/h trên đường băng sân bay Cam Ly cũ. Đây là tốc độ đáng nể với những chiếc côn tay cỡ nhỏ.', '2021-02-06-08-08-21-440.jpg', 'Ở lần thử thứ 2, biker Kỹ Sư Hẻm đạt tốc độc tối đa 150 km/h. Ảnh chụp màn hình.', NULL, '', '', ''),
(107, 4, 'Theo quá trình tăng tốc của Yamaha Exciter 155 VVA, ở cấp số 1, tốc độ xe có thể đạt khoảng 45km/h, cấp số 2 khoảng 63km/h, cấp số 3 khoảng 90km/h, cấp số 4 khoảng 107km/h, cấp số 5 khoảng 120km/h và vận tốc tối đa cấp số 6 là 150 km/h. Đây được đánh giá là tốc độ đáng gườm trong phân khúc underbone.', '', '', '', '', '', ''),
(108, 1, 'Mới đây, hãng tin Thái Lan ThaiRath đã đưa ra quan điểm thu hút sự chú ý của truyền thông xứ chùa vàng. Hãng này phân tích, Thái Lan tự xưng là “Detroit của Đông Nam Á” (Thành phố Detroit thuộc bang Michigan, Mỹ - nơi được xem là kinh đô sản xuất ôtô của thế giới) nhưng lại không có hãng xe nội địa. Trong khi đó, hãng xe Việt VinFast vừa công bố 3 mẫu xe điện “make in Vietnam” với công nghệ thông minh và hiện đại.', '', '', '', '', '', ''),
(108, 2, '“Thay vì chính phủ khuyến khích tăng cường sản xuất trong nước. Thái Lan lại thúc đẩy nhập khẩu từ Trung Quốc và không đưa ra tầm nhìn xa về lĩnh vực công nghiệp sản xuất cho quốc gia. Dường như người Thái đang đi ngược lại với thế giới”, trích từ bài đăng của ThaiRath.', '2021-02-06-08-10-56-404.jpg', '“VinFast đã tạo nên một bước tiến trong lĩnh vực xe điện toàn cầu”, tờ ThaiRath nhấn mạnh.', NULL, '', '', ''),
(108, 3, 'Hãng tin ThaiRath cũng đưa ra phân tích, trong hàng thập kỷ, ngành công nghiệp ôtô Thái Lan được biết đến với biệt danh cường quốc ôtô, nhưng danh hiệu này cần cân nhắc lại sau khi Việt Nam có thương hiệu xe nội địa, đồng thời vừa ra mắt 3 mẫu xe điện tự hành công nghệ cao - điều mà Thái Lan chưa làm được.', '', '', '', '', '', ''),
(108, 4, 'Chung nhận định, tờ Bangkok Post đánh giá, Thái Lan mang lợi thế lớn so với các quốc gia trong khối ASEAN khi sở hữu hàng loạt nhà máy, chính sách đặc biệt và quy mô sản xuất lên tới 2 triệu xe ôtô mỗi năm. Tuy nhiên, thật đáng buồn khi quốc gia này không có hãng xe “make in Thailand”.', '', '', '', '', '', ''),
(108, 5, '“Việt Nam từng được biết đến với các nhà máy lắp ráp thuê cho các thương hiệu ôtô ngoại, cho đến khi VinFast tung ra những chiếc xe sedan, SUV, hatchback nội địa đầu tiên”, chuyên gia Keshvinder Singh - người theo dõi thị trường ôtô tại Đông Nam Á trong hơn 10 năm, từng chia sẻ trên kênh Discovery.', '', '', '', '', '', ''),
(108, 6, 'Chỉ sau ba năm đi vào hoạt động, VinFast đã mở ra một hệ sinh thái toàn cầu bao gồm hàng loạt viện nghiên cứu công nghệ xe điện tại Mỹ, Australia và châu Âu. Mới đây, hãng xe Việt công bố phát triển thành công ba dòng xe thông minh là VF31, VF32, VF33 và dự kiến xuất khẩu sang 3 thị trường trên vào năm 2022.', '', '', '', '', '', ''),
(108, 7, 'Cụ thể, tại thị trường Mỹ, VinFast VF33 - mẫu SUV thuộc phân khúc E - dự kiến đến tay người tiêu dùng vào quý II/2022.', '', '', '', '', '', ''),
(108, 8, 'Cơ quan Dịch vụ công Hoa Kỳ (GSA) cho biết, tính đến năm 2019, Chính phủ Mỹ sở hữu 645.000 xe, trong đó chỉ có 3.215 là xe điện. Tân Tổng thống Joe Biden đã quyết định thực hiện một cam kết lớn của liên bang là mua các phương tiện sạch cho các hạm đội liên bang, tiểu bang, bưu điện và địa phương. Chính phủ nước này cũng sẽ chi hơn 20 tỷ USD để hỗ trợ \"năng lượng sạch\" và xây lắp 550.000 trạm sạc khắp cả nước với mục tiêu giảm lượng khí thải carbon xuống mức 0 vào năm 2035. Những chính sách này hứa hẹn là cơ hội cho VinFast khi ra mắt xe điện tại xứ cờ hoa.', '2021-02-06-08-10-56-424.jpg', 'VinFast sở hữu dây chuyền sản xuất ôtô hiện đại với tỷ lệ tự động hoá trên 90%.', NULL, '', '', ''),
(108, 9, 'Không dừng lại ở việc làm chủ chuỗi giá trị, giờ đây, hãng xe Việt đã chính thức làm chủ công nghệ khi đưa toàn bộ tính năng tự hành cấp độ 2-3 và trang bị thêm một số tính năng tự hành cấp độ 4 vào ba mẫu xe điện.', '', '', '', '', '', ''),
(108, 10, 'Theo đó, các sản phẩm xe điện vừa ra mắt có các tính năng như tự động thiết lập bản đồ 3 chiều, cho phép tự động tìm chỗ và đỗ xe, triệu hồi xe… cùng khả năng kết nối với hệ thống giao thông và đô thị thông minh. Với nền tảng sản xuất vững chắc, định hướng chiến lược trở thành thương hiệu ôtô công nghệ toàn cầu, VinFast đang góp phần thay đổi định kiến về nền công nghiệp sản xuất ôtô Việt Nam.', '', '', '', '', '', ''),
(109, 1, 'Hầu hết người dân ở cạnh các thành phố lớn như TP.HCM hay Hà Nội thường chọn xe máy là phương tiện di chuyển về nhà dịp Tết. Ưu điểm của việc đi bằng xe máy là chủ động được thời gian, dễ di chuyển khi xảy ra ùn tắc. Đặc biệt, tình hình dịch Covid-19 đang diễn biến phức tạp cũng khiến cho người dân e ngại việc di chuyển về quê bằng phương tiện công cộng.', '2021-02-06-08-14-49-384.jpg', NULL, NULL, '', '', ''),
(109, 2, 'Không giống với việc điều khiển xe máy hàng ngày để đi làm hay đi học, sử dụng xe máy để về quê yêu cầu người lái phải kiểm tra phương tiện kỹ càng hơn cũng như tự trang bị cho bản thân những kỹ năng cần thiết để tránh xảy ra các sự cố ngoài ý muốn.', '', '', '', '', '', ''),
(109, 3, 'Những chuyến hành trình về quê bằng xe máy thường kéo dài nhiều giờ liền, bỏ qua việc kiểm tra phương tiện trước khi di chuyển sẽ tiềm ẩn nhiều nguy cơ mất an toàn. Những hạng mục cần kiểm tra trước khi xuất phát gồm dầu động cơ, hệ thống phanh, đèn, còi và lốp.', '2021-02-06-08-14-49-393.jpg', 'Má phanh mòn quá mức khiến cho lực phanh bị giảm và gây hư hỏng đĩa phanh.', NULL, '', '', ''),
(109, 4, 'Dầu động cơ không chỉ có tác dụng bôi trơn các chi tiết máy, nó còn đóng vai trò là hệ thống giải nhiệt của xe bên cạnh làm mát bằng không khí hoặc dung dịch. Người dùng cần cân nhắc thay thế dầu mới nếu dầu trong xe đã sử dụng quá lâu để đảm bảo động cơ hoạt động ổn định và không bị quá nhiệt.', '', '', '', '', '', ''),
(109, 5, 'Đối với lốp xe, cần thay thế nếu thấy lốp đã mòn đến vạch chỉ thị độ mòn. Ngoài ra, để áp suất lốp theo khuyến cáo của nhà sản xuất cũng giúp cho chuyến đi trở nên thoải mái hơn và hạn chế được tình trạng nổ lốp do quá nhiệt. Mức áp suất lốp khuyến nghị thường được dán ở khu vực yếm trước hoặc bên trong hộc chứa đồ.', '2021-02-06-08-14-49-403.jpg', 'Cần bơm lốp theo đúng áp suất được khuyến nghị.', NULL, '', '', ''),
(109, 6, 'Hệ thống phanh, đèn và còi có thể được kiểm tra bằng cách quan sát. Độ mòn của má phanh có thể quan sát trực tiếp bằng mắt thường nếu là loại phanh đĩa, trong khi phanh đùm có thể được kiểm tra thông qua vạch chỉ thị gắn phía ngoài.', '', '', '', '', '', ''),
(109, 7, 'Hầu hết người Việt chưa thật sự quan tâm đến vấn đề trang bị bảo hộ an toàn cho bản thân khi lưu thông trên đường. Người ngồi trên xe máy khi xảy ra va chạm dễ gặp chấn thương hơn do không có các hệ thống bảo vệ bị động như trên ôtô.', '2021-02-06-08-14-49-413.jpg', NULL, NULL, '', '', ''),
(109, 8, 'Khi di chuyển xa, cần trang bị tối thiểu mũ bảo hiểm 3/4 hoặc fullface. Mũ bảo hiểm nửa đầu chỉ bảo vệ được phần đỉnh đầu, trong khi đó mũ 3/4 hoặc fullface có khả năng bảo vệ toàn bộ phần đầu như mặt hoặc phía sau gáy.', '', '', '', '', '', ''),
(109, 9, 'Bên cạnh mũ bảo hiểm, đeo găng tay và mang giày kín mũi cũng là việc nên làm khi chạy xe. Đối với lưu thông trên đường thông thường, có thể lựa chọn loại găng tay vải để cảm nhận ống ga tốt hơn, đồng thời cho cảm giác dễ chịu. Về phần giày, tốt nhất nên lựa những mẫu giày cao cổ để bảo vệ mắt cá chân tốt hơn.', '', '', '', '', '', ''),
(110, 1, 'Jim Farley, CEO của Ford, cho biết hãng xe Mỹ vừa ký kết kế hoạch hợp tác với Google. Trong đó, nội dung chính được nhắc đến là việc phát triển hệ thống thông tin giải trí và kết nối mới dựa trên hệ điều hành Android Automotive.', '', '', '', '', '', ''),
(110, 2, 'Tất cả dòng ôtô Ford và Lincoln (thương hiệu xe sang thuộc Ford) dự kiến được trang bị hệ thống thông tin giải trí mới vào năm 2023. Ngoài Ford, hiện có General Motors, Volkswagen và Volvo đang cân nhắc sử dụng hệ điều hành Android Automotive cho hệ thống thông tin giải trí trong tương lai.', '2021-02-06-08-19-03-455.jpg', NULL, NULL, '', '', ''),
(110, 3, 'Với cái bắt tay cùng Google, các tiện ích như kho ứng dụng Google Play, Google Maps, trợ lý ảo Google hay chức năng ra lệnh bằng giọng nói gần như chắc chắn sẽ được tích hợp sẵn trên ôtô Ford và Lincoln.', '', '', '', '', '', ''),
(110, 4, 'Bên cạnh đó, 2 công ty còn hứa hẹn phát triển thêm các dịch vụ mới dành cho khách hàng. Chẳng hạn như Ford có thể việc sử dụng nền tảng điện toán đám mây Google Cloud để đồng bộ và quản lý dữ liệu. Từ đó, hệ thống sẽ chủ động thông báo cho chủ xe các thông tin về bảo trì, bảo dưỡng…', '', '', '', '', '', ''),
(110, 5, 'Hiện tại, hệ thống kết nối của Ford là SYNC được phát triển dựa trên hệ điều hành Windows Automotive của Microsoft. SYNC được ra mắt từ năm 2007 và đang ở thế hệ thứ 3. Trả lời Autoblog, đại diện của Ford cho biết hệ thống mới dựa trên Android Automotive vẫn sẽ hỗ trợ kết nối Apple CarPlay tương tự SYNC hiện nay.', '2021-02-06-08-19-03-466.jpg', 'Hệ thống thông tin giải trí SYNC3 trên các mẫu xe Ford hiện hành. Ảnh: Ford.', NULL, '', '', ''),
(110, 6, 'Mặt khác, Jim Farley còn nhắc đến quá trình chuyển đổi sang phát triển xe điện và xe tự lái trong thông cáo hợp tác với Google. Điều này cho thấy khả năng Ford và đối tác có thể chia sẻ công nghệ để đẩy nhanh quá trình phát triển xe tự hành.', '', '', '', '', '', ''),
(110, 7, 'Đây là điều dễ hiểu khi Google vốn có thế mạnh về trí thông minh nhân tạo (AI), máy học (machine learning). Ngoài ra, công ty \"anh em\" với Google là Waymo có nhiều kinh nghiệm trong mảng xe tự lái.', '', '', '', '', '', ''),
(113, 1, 'Sáng 24/12, Bộ Y tế công bố Việt Nam có thêm 2 ca mắc Covid-19. Ca bệnh 2402-2403 là các F1 liên quan ổ dịch tại Công ty TNHH điện tử Poyun (thành phố Chí Linh), đều đã được cách ly tập trung.', '2021-02-24-00-47-09-350.jpg', 'Hải Dương vẫn là địa phương ghi nhận nhiều ca mắc Covid-19 trong những ngày qua. Ảnh: Thạch Thảo.', NULL, '', '', ''),
(113, 2, 'Từ ngày 27/1 đến nay, Việt Nam ghi nhận thêm 811 người mắc Covid-19. Dịch xuất hiện tại 13 tỉnh, thành phố gồm Hải Dương (628 bệnh nhân), Quảng Ninh (61), Hà Nội (35), Gia Lai (27), Bình Dương (6), Bắc Ninh (5), Điện Biên (3), Hòa Bình (2), Hải Phòng (4), TP.HCM (36), Bắc Giang (2), Hà Giang (1), Hưng Yên (2).', '', '', '', '', '', ''),
(113, 3, 'Hải Dương đang là \"điểm nóng\" với 6 cụm dịch lớn, gồm TP Chí Linh, huyện Cẩm Giàng, thị xã Kinh Môn, huyện Nam Sách, TP Hải Dương và mới nhất là huyện Kim Thành. Bí thư Hải Dương, ông Phạm Xuân Thăng, nhận định: “Ổ dịch này phát hiện muộn, yếu tố dịch tễ phức tạp, đã lây lan ra cộng đồng dân cư của xã”. Theo ông Thăng, huyện Kim Thành đang là điểm nóng duy nhất và nguy hiểm nhất trên địa bàn.', '', '', '', '', '', ''),
(113, 4, 'Tại TP.HCM, chiều 23/2, thành phố đã gỡ bỏ điểm phong tỏa cuối cùng của thành phố tại lô F chung cư Carillon, phường 13, quận Tân Bình. Như vậy, toàn bộ địa điểm bị phong tỏa của TP.HCM đã được gỡ bỏ, sau 12 ngày liên tiếp không có ca mắc Covid-19 trong cộng đồng.', '', '', '', '', '', ''),
(113, 5, 'Ngoài ra, vaccine Covid-19 sắp về Việt Nam. Ban Chỉ đạo quốc gia phòng, chống dịch Covid-19 cho biết về lâu dài, người dân sẽ được tiêm vaccine ngừa Covid-19 miễn phí. Một phần nhỏ vaccine dịch vụ sẽ dành cho những người có khả năng chi trả cao hơn.', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roleaccount`
--

CREATE TABLE `roleaccount` (
  `Id` int(255) NOT NULL,
  `Role` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `roleaccount`
--

INSERT INTO `roleaccount` (`Id`, `Role`) VALUES
(1, 'Kiểm duyệt viên'),
(2, 'Tác giả');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statusarticlecensor`
--

CREATE TABLE `statusarticlecensor` (
  `Id` int(255) NOT NULL,
  `Name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `statusarticlecensor`
--

INSERT INTO `statusarticlecensor` (`Id`, `Name`) VALUES
(1, 'Chờ kiểm duyệt'),
(2, 'Đã kiểm duyệt'),
(3, 'Không kiểm duyệt'),
(4, 'Chờ sửa bài');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statuscomment`
--

CREATE TABLE `statuscomment` (
  `Id` int(255) NOT NULL,
  `Name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag`
--

CREATE TABLE `tag` (
  `Id` int(255) NOT NULL,
  `Name` mediumtext NOT NULL,
  `Description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topic`
--

CREATE TABLE `topic` (
  `Id` int(255) NOT NULL,
  `IdCategory` int(255) NOT NULL,
  `Name` mediumtext NOT NULL,
  `NameUnsigned` char(255) NOT NULL,
  `Description` mediumtext NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `topic`
--

INSERT INTO `topic` (`Id`, `IdCategory`, `Name`, `NameUnsigned`, `Description`, `Status`) VALUES
(1, 1, 'Chính trị', 'chinh-tri', '', b'1'),
(2, 1, 'Thời sự', 'thoi-su', '', b'1'),
(3, 1, 'Giao thông', 'giao-thong', '', b'1'),
(4, 1, 'Đô thị', 'do-thi', '', b'1'),
(5, 2, 'Pháp đình', 'phap-dinh', '', b'1'),
(6, 2, 'Vụ án', 'vu-an', '', b'1'),
(7, 3, 'Tư liệu', 'tu-lieu', '', b'1'),
(8, 3, 'Phân tích', 'phan-tich', '', b'1'),
(9, 3, 'Người việt 4 phương', 'nguoi-viet-4-phuong', '', b'1'),
(10, 3, 'Chuyện lạ', 'chuyen-la', '', b'1'),
(11, 4, 'Bất động sản', 'bat-dong-san', '', b'1'),
(12, 4, 'Hàng không', 'hang-khong', '', b'1'),
(13, 4, 'Tiêu dùng', 'tieu-dung', '', b'1'),
(14, 4, 'Thương mại điện tử', 'thuong-mai-dien-tu', '', b'1'),
(15, 4, 'Thông tin doanh nghiệp', 'thong-tin-doanh-nghiep', '', b'1'),
(16, 5, 'Mobile', 'mobile', '', b'1'),
(17, 5, 'Internet', 'internet', '', b'1'),
(18, 5, 'Game', 'game', '', b'1'),
(19, 6, 'Khỏe đẹp', 'khoe-dep', '', b'1'),
(20, 6, 'Dinh dưỡng', 'dinh-duong', '', b'1'),
(21, 6, 'Mẹ bé', 'me-be', '', b'1'),
(22, 6, 'Bệnh thường gặp', 'benh-thuong-gap', '', b'1'),
(23, 7, 'Bóng đá Việt Nam', 'bong-da-viet-nam', '', b'1'),
(24, 7, 'Ngoại hạng Anh', 'ngoai-hang-anh', '', b'1'),
(25, 7, 'Võ thuật', 'vo-thuat', '', b'1'),
(26, 7, 'Esport', 'esport', '', b'1'),
(27, 8, 'Sao', 'sao', '', b'1'),
(28, 8, 'Âm nhạc', 'am-nhac', '', b'1'),
(29, 8, 'Phim ảnh', 'phim-anh', '', b'1'),
(30, 8, 'Thời trang', 'thoi-trang', '', b'1'),
(31, 9, 'Giới trẻ', 'gioi-tre', '', b'1'),
(32, 9, 'Xu hướng', 'xu-huong', '', b'1'),
(33, 9, 'Sống đẹp', 'song-dep', '', b'1'),
(34, 9, 'Sự kiện', 'su-kien', '', b'1'),
(35, 10, 'Tuyển sinh 2021', 'tuyen-sinh-2021', '', b'1'),
(36, 10, 'Tư vấn', 'tu-van', '', b'1'),
(37, 10, 'Du học', 'du-hoc', '', b'1'),
(38, 10, 'Học tiếng Anh', 'hoc-tieng-anh', '', b'1'),
(39, 11, 'Địa điểm du lịch', 'dia-diem-du-lich', '', b'1'),
(40, 11, 'Kinh nghiệm du lịch', 'kinh-nghiem-du-lich', '', b'1'),
(41, 11, 'Ẩm thực', 'am-thuc', '', b'1'),
(42, 11, 'Phượt', 'phuot', '', b'1'),
(43, 11, 'Du lịch theo mùa', 'du-lich-theo-mua', '', b'1'),
(44, 12, 'Ôtô', 'o-to', '', b'1'),
(45, 12, 'Xe máy', 'xe-may', '', b'1'),
(46, 12, 'Đánh giá', 'danh-gia', '', b'1'),
(47, 12, 'Xe thể thao', 'xe-the-thao', '', b'1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Role` (`Role`);

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCategory` (`IdCategory`),
  ADD KEY `IdTopic` (`IdTopic`),
  ADD KEY `IdMedia` (`IdMedia`),
  ADD KEY `IdStatusCensor` (`IdStatusCensor`),
  ADD KEY `IdCensor` (`IdCensor`);

--
-- Chỉ mục cho bảng `articleauthor`
--
ALTER TABLE `articleauthor`
  ADD PRIMARY KEY (`IdArticle`,`IdAuthor`),
  ADD KEY `IdAuthor` (`IdAuthor`);

--
-- Chỉ mục cho bảng `articlecensor`
--
ALTER TABLE `articlecensor`
  ADD PRIMARY KEY (`IdArticle`,`IdCensor`),
  ADD KEY `IdCensor` (`IdCensor`),
  ADD KEY `IdAccount` (`IdAccount`);

--
-- Chỉ mục cho bảng `articlecomment`
--
ALTER TABLE `articlecomment`
  ADD PRIMARY KEY (`IdArticle`,`IdComment`),
  ADD KEY `IdComment` (`IdComment`);

--
-- Chỉ mục cho bảng `articletitile`
--
ALTER TABLE `articletitile`
  ADD PRIMARY KEY (`IdArticle`,`IdTag`),
  ADD KEY `IdTag` (`IdTag`);

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `commentstatuscensor`
--
ALTER TABLE `commentstatuscensor`
  ADD PRIMARY KEY (`IdComment`,`IdStatus`),
  ADD KEY `IdStatus` (`IdStatus`),
  ADD KEY `IdCensor` (`IdCensor`);

--
-- Chỉ mục cho bảng `debug`
--
ALTER TABLE `debug`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `paragraph`
--
ALTER TABLE `paragraph`
  ADD PRIMARY KEY (`IdArticle`,`IdParagraph`);

--
-- Chỉ mục cho bảng `roleaccount`
--
ALTER TABLE `roleaccount`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `statusarticlecensor`
--
ALTER TABLE `statusarticlecensor`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `statuscomment`
--
ALTER TABLE `statuscomment`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCategory` (`IdCategory`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `debug`
--
ALTER TABLE `debug`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `roleaccount`
--
ALTER TABLE `roleaccount`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `statusarticlecensor`
--
ALTER TABLE `statusarticlecensor`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `statuscomment`
--
ALTER TABLE `statuscomment`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tag`
--
ALTER TABLE `tag`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `topic`
--
ALTER TABLE `topic`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`Role`) REFERENCES `roleaccount` (`Id`);

--
-- Các ràng buộc cho bảng `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`IdTopic`) REFERENCES `topic` (`Id`),
  ADD CONSTRAINT `article_ibfk_3` FOREIGN KEY (`IdMedia`) REFERENCES `media` (`Id`),
  ADD CONSTRAINT `article_ibfk_6` FOREIGN KEY (`IdCensor`) REFERENCES `account` (`Id`),
  ADD CONSTRAINT `article_ibfk_7` FOREIGN KEY (`IdCategory`) REFERENCES `category` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `articleauthor`
--
ALTER TABLE `articleauthor`
  ADD CONSTRAINT `articleauthor_ibfk_1` FOREIGN KEY (`IdArticle`) REFERENCES `article` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articleauthor_ibfk_2` FOREIGN KEY (`IdAuthor`) REFERENCES `author` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `articlecensor`
--
ALTER TABLE `articlecensor`
  ADD CONSTRAINT `articlecensor_ibfk_1` FOREIGN KEY (`IdArticle`) REFERENCES `article` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articlecensor_ibfk_2` FOREIGN KEY (`IdCensor`) REFERENCES `statusarticlecensor` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articlecensor_ibfk_3` FOREIGN KEY (`IdAccount`) REFERENCES `account` (`Id`);

--
-- Các ràng buộc cho bảng `articlecomment`
--
ALTER TABLE `articlecomment`
  ADD CONSTRAINT `articlecomment_ibfk_1` FOREIGN KEY (`IdArticle`) REFERENCES `article` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articlecomment_ibfk_2` FOREIGN KEY (`IdComment`) REFERENCES `comment` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `articletitile`
--
ALTER TABLE `articletitile`
  ADD CONSTRAINT `articletitile_ibfk_1` FOREIGN KEY (`IdArticle`) REFERENCES `article` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articletitile_ibfk_2` FOREIGN KEY (`IdTag`) REFERENCES `tag` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `account` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `commentstatuscensor`
--
ALTER TABLE `commentstatuscensor`
  ADD CONSTRAINT `commentstatuscensor_ibfk_1` FOREIGN KEY (`IdComment`) REFERENCES `comment` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commentstatuscensor_ibfk_2` FOREIGN KEY (`IdStatus`) REFERENCES `statuscomment` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commentstatuscensor_ibfk_3` FOREIGN KEY (`IdCensor`) REFERENCES `account` (`Id`);

--
-- Các ràng buộc cho bảng `paragraph`
--
ALTER TABLE `paragraph`
  ADD CONSTRAINT `paragraph_ibfk_1` FOREIGN KEY (`IdArticle`) REFERENCES `article` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`IdCategory`) REFERENCES `category` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
