USE [master]
GO
/****** Object:  Database [webnhatro]    Script Date: 6/1/2023 3:01:44 AM ******/
CREATE DATABASE [webnhatro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'webnhatro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LUONGNV\MSSQL\DATA\webnhatro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'webnhatro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LUONGNV\MSSQL\DATA\webnhatro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [webnhatro] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webnhatro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webnhatro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webnhatro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webnhatro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webnhatro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webnhatro] SET ARITHABORT OFF 
GO
ALTER DATABASE [webnhatro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [webnhatro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webnhatro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webnhatro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webnhatro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webnhatro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webnhatro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webnhatro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webnhatro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webnhatro] SET  ENABLE_BROKER 
GO
ALTER DATABASE [webnhatro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webnhatro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webnhatro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webnhatro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webnhatro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webnhatro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webnhatro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webnhatro] SET RECOVERY FULL 
GO
ALTER DATABASE [webnhatro] SET  MULTI_USER 
GO
ALTER DATABASE [webnhatro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webnhatro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webnhatro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webnhatro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webnhatro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webnhatro] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'webnhatro', N'ON'
GO
ALTER DATABASE [webnhatro] SET QUERY_STORE = OFF
GO
USE [webnhatro]
GO
/****** Object:  Table [dbo].[nhom]    Script Date: 6/1/2023 3:01:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhom](
	[Username] [nchar](10) NOT NULL,
	[Manhom] [int] NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_nhom] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 6/1/2023 3:01:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[Manhom] [int] NOT NULL,
	[TenNhom] [nvarchar](50) NOT NULL,
	[Ghichu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[Manhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tb_DetailNews]    Script Date: 6/1/2023 3:01:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_DetailNews](
	[New_ID] [int] IDENTITY(1,1) NOT NULL,
	[Group_ID] [int] NOT NULL,
	[Title_News] [nvarchar](500) NULL,
	[Shortcut] [nvarchar](1000) NULL,
	[Body] [nvarchar](max) NULL,
	[Picture] [nvarchar](200) NULL,
	[Creatdate] [datetime] NULL,
	[Tags] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tb_DetailNews] PRIMARY KEY CLUSTERED 
(
	[New_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tb_GroupNews]    Script Date: 6/1/2023 3:01:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_GroupNews](
	[Group_ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Note] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Tb_GroupNews] PRIMARY KEY CLUSTERED 
(
	[Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'admin     ', 1, N'Lê Thị Hòa', N'123456', N'Hoa@gmail.com')
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'datmtt    ', 2, N'dat', N'123456', N'ad123@gmail.com')
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'datmtt1   ', 2, N'daon trong dat', N'123456', N'a@gmail.com')
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'datmtt12  ', 2, N'dat', N'123456', N'ad123@gmail.com')
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'kitty     ', 2, N'Mèo con', N'123', N'kitty@yahoo.com')
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'linh      ', 2, N'hoa', N'123', N'dong')
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'ngoc      ', 1, N'hoa', N'123', N'dong tien do')
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'thuy      ', 2, N'vanthuy', N'123', N'acb')
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'vanthuy   ', 1, N'Nguyễn Văn Thùy', N'vanthuy', N'one_love_tb@yahoo.com')
INSERT [dbo].[nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (N'vuthuy    ', 1, N'Vu thu Thủy', N'vuthuy', N'vthuy@gmail.com')
GO
INSERT [dbo].[Quyen] ([Manhom], [TenNhom], [Ghichu]) VALUES (1, N'admin', N'danh cho nguoi quan tri')
INSERT [dbo].[Quyen] ([Manhom], [TenNhom], [Ghichu]) VALUES (2, N'users', N'danh cho nguoi dung')
GO
SET IDENTITY_INSERT [dbo].[Tb_DetailNews] ON 

INSERT [dbo].[Tb_DetailNews] ([New_ID], [Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (1, 2, N'Trọ hồ tùng mậu', N'Hồ tùng mậu 5tr', N'Hồ tùng mậu cầu giấy 1n1k 5tr', N'a1.jpg', CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'SK')
INSERT [dbo].[Tb_DetailNews] ([New_ID], [Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (2, 3, N'Cầu Diễn', N'Cầu Diễn', N'Phòng trọ giá rẻ đại học Thương Mại, đại học Tài Nguyên Môi Trường
📍 Ngay ngõ 29 Cầu Diễn
👉 Khu Sinh viên giá rẻ
👉 Giá chưa đến 4tr
☎️ LH: 0835636690', N'a2.jpg', CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'TT')
INSERT [dbo].[Tb_DetailNews] ([New_ID], [Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (3, 4, N'Cầu Giấy', N'Cầu Giấy', N'Nhà mình có p mới - gác xép vào luôn đc
- tại ngõ 165 Cầu Giấy đẹp lung linh - Nhanh chân mới còn ạ
kiểu gác xép như ảnh Nhìn Hàn quốc Chill mọi góc cạnh
Đồ đạc: Giường, tủ quần áo to, máy giặt riêng, điều hoà, nóng lạnh….
Đồ mới 100% xịn xò
Giá 4,5tr - có duy nhất 1p 4,5tr
Còn lại các p khác', N'a3.jpg', CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'GD-KH')
INSERT [dbo].[Tb_DetailNews] ([New_ID], [Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (4, 5, N'Nhượng phòng', N'Nhượng phòng', N'Nhượng phòng vào ở luôn ngõ 94 hồ tùng mậu 4tr có gác xép siêu rộng, vskk đh nl đầy đủ. Lhe 086 5655492', N'a4.jpg', CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'SMS')
INSERT [dbo].[Tb_DetailNews] ([New_ID], [Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (5, 6, N'Trần Bình', N'Trần Bình', N'🏡 Địa chỉ : Ngõ 58 Phố Trần Bình, Mai Dịch, Cầu Giấy. Liên hệ 0982405550
💰 Giá: 4,9 triệu
👉 Studio khép kín
✅ Nội thất: Full nội thất như hình, Điều hoà, nóng lạnh, giường, tủ quần áo, sofa, tủ bếp, tủ lạnh, vệ sinh khép kín, phòng có cửa sổ to, thoáng, lấy ánh sáng tự nhiên...Phòng có khóa vân tay, không chung chủ, máy giặt, máy sấy chung, thang bộ.', N'a5.jpg', CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'NST')
INSERT [dbo].[Tb_DetailNews] ([New_ID], [Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (6, 7, N'110 Trần Duy Hưng', N'110 Trần Duy Hưng', N'🎉🎉🎉 Cho thuê phòng hoa hậu
Địa chỉ: cuối ngõ 110 Trần Duy Hưng ngay chợ Trung Kinh
✅ Khép kín
✅ Full đồ chỉ cần mang quần áo đến ở
✅ Giờ giấc tự do
✅ Giá: 3.8 tr
Các chi phí dịch vụ:
Nước: 100k/tháng/người.
Dịch vụ: 150k/tháng/người
Điện tính theo công tơ mét: 4000đ/ số
☎️☎️☎️ Lh: 0358138226', N'a6.jpg', CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'SK')
INSERT [dbo].[Tb_DetailNews] ([New_ID], [Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (7, 8, N'Nguyễn Khang', N'Nguyễn Khang', N'PHÒNG ĐƠN CHO SINH VIÊN VÀ NGƯỜI ĐI LÀM KHU VỰC
Nguyễn Khang : 1t2 -1tr5
Cầu Giấy: 1t2 -1tr5
Quan nhân: 2tr9 ( khép kín đủ đồ)
PHÒNG RIÊNG Biệt ko phải Homestay
Nhà không chung giờ giấc thoải mái
Phòng đơn, wc chung, đầy đủ điều hòa nóng lạnh, máy giặt, máy lọc nước, bếp, để xe t1 free.
Ai cần lh : 0559968696', N'a7.jpg', CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'GT')
INSERT [dbo].[Tb_DetailNews] ([New_ID], [Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (8, 9, N'ccmn', N'ccmn', N'Chính chủ cho thuê ccmn : 
1 Phòng giá 3tr ( phòng ngay tầng 1)
💥 Gần big c, royal city, Vincom..
Ngõ to, ô tô đỗ cửa, trong ngõ nhiều hàng quán rất tiện ích.
💥 Điều hòa, nóng lạnh, giường, tủ, tủ lạnh, quạt trần, kệ bếp
🌿 Thang máy, khoá vân tay, giờ giấc thoải mái
🔥Địa chỉ: ngõ 189 Nguyễn Ngọc Vũ', N'a8.jpg', CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'CL')
INSERT [dbo].[Tb_DetailNews] ([New_ID], [Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (10, 2, N'ccmn cầu giấy', N'ccmn cầu giấy', N'CHO THUÊ CCMN CẦU GIẤY MỚI 100%.
- Địa chỉ: ngõ 113 Yên Hoà-Cầu Giấy-Hà Nội. Gần Hoa Bằng, Nguyễn Khang, Trung Kính.
- Full đồ: tủ lạnh, giường, tủ, bàn học, giá sách, bếp từ, hút mùi, điều hoà, nóng lạnh, 2 máy giặt 2 máy sấy chung.
- Có thang máy, cửa khoá từ từng phòng.
- Khu ở an ninh, nhiều tiện ích siêu thị, công viên, trường học.
LH trực tiếp: 0904205022 (imess/zalo).', N'a10.jpg', CAST(N'2023-01-06T00:00:00.000' AS DateTime), N'SK')
SET IDENTITY_INSERT [dbo].[Tb_DetailNews] OFF
GO
SET IDENTITY_INSERT [dbo].[Tb_GroupNews] ON 

INSERT [dbo].[Tb_GroupNews] ([Group_ID], [Title], [Note]) VALUES (1, N'Trang chủ', N'Trang nhất')
INSERT [dbo].[Tb_GroupNews] ([Group_ID], [Title], [Note]) VALUES (2, N'Trọ bình dân', N'Trọ giá rẻ vệ sinh chung')
INSERT [dbo].[Tb_GroupNews] ([Group_ID], [Title], [Note]) VALUES (3, N'Trọ chung chủ', N'Trọ có chủ nhà')
INSERT [dbo].[Tb_GroupNews] ([Group_ID], [Title], [Note]) VALUES (4, N'Trọ ghép', N'Trọ ghép ở chung')
INSERT [dbo].[Tb_GroupNews] ([Group_ID], [Title], [Note]) VALUES (5, N'Chung cư mini', N'chung cư giá rẻ, nhỏ')
INSERT [dbo].[Tb_GroupNews] ([Group_ID], [Title], [Note]) VALUES (6, N'Phòng Studio', N'phòng đẹp, giá cao, khép kín')
INSERT [dbo].[Tb_GroupNews] ([Group_ID], [Title], [Note]) VALUES (7, N'Thuê nhà', N'cho thuê nguyên căn')
SET IDENTITY_INSERT [dbo].[Tb_GroupNews] OFF
GO
ALTER TABLE [dbo].[nhom]  WITH CHECK ADD  CONSTRAINT [FK_nhom_Quyen] FOREIGN KEY([Manhom])
REFERENCES [dbo].[Quyen] ([Manhom])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nhom] CHECK CONSTRAINT [FK_nhom_Quyen]
GO
USE [master]
GO
ALTER DATABASE [webnhatro] SET  READ_WRITE 
GO
