CREATE DATABASE QLCT_LIZARD
GO
USE [QLCT_LIZARD]
GO
/****** Object:  Table [dbo].[CHITIETCHITIEU]    Script Date: 5/9/2024 10:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETCHITIEU](
	[MaCT] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NULL,
	[MaLoaiCT] [int] NULL,
	[MaTaiKhoan] [int] NULL,
	[SoTienCT] [float] NULL,
	[NgayChi] [date] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETTHUNHAP]    Script Date: 5/9/2024 10:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETTHUNHAP](
	[MaTN] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NULL,
	[MaLoaiTN] [int] NULL,
	[MaTaiKhoan] [int] NULL,
	[SoTienTN] [float] NULL,
	[NgayThu] [date] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOANNO]    Script Date: 5/9/2024 10:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOANNO](
	[MaKN] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NULL,
	[MaTaiKhoan] [int] NULL,
	[SoTienNo] [float] NULL,
	[NgayMuonNo] [date] NULL,
	[NgayTra] [date] NULL,
	[NguoiVay] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOANVAY]    Script Date: 5/9/2024 10:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOANVAY](
	[MaKV] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NULL,
	[MaTaiKhoan] [int] NULL,
	[SoTienVay] [float] NULL,
	[NgayChoVay] [date] NULL,
	[NgayTra] [date] NULL,
	[NguoiNo] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAICHITIEU]    Script Date: 5/9/2024 10:05:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAICHITIEU](
	[MaLoaiCT] [int] IDENTITY(1,1) NOT NULL,
	[TenChiTieu] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHUNHAP]    Script Date: 5/9/2024 10:05:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHUNHAP](
	[MaLoaiTN] [int] IDENTITY(1,1) NOT NULL,
	[TenThuNhap] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 5/9/2024 10:05:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](30) NULL,
	[MaPin] [char](8) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANHOI]    Script Date: 5/9/2024 10:05:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANHOI](
	[MaPH] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NULL,
	[TenNguoiDung] [nvarchar](50) NULL,
	[LienLac] [varchar](30) NULL,
	[YKien] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 5/9/2024 10:05:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[ID] [int] NOT NULL,
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[SoTien] [float] NULL,
	[TenTaiKhoan] [nvarchar](30) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHITIETCHITIEU] ON 

INSERT [dbo].[CHITIETCHITIEU] ([MaCT], [ID], [MaLoaiCT], [MaTaiKhoan], [SoTienCT], [NgayChi], [GhiChu], [TrangThai]) VALUES (1, 4, 1, 1, 10000, CAST(N'2024-01-05' AS Date), N'tiền mua bánh mì', 1)
INSERT [dbo].[CHITIETCHITIEU] ([MaCT], [ID], [MaLoaiCT], [MaTaiKhoan], [SoTienCT], [NgayChi], [GhiChu], [TrangThai]) VALUES (2, 4, 2, 3, 20000, CAST(N'2024-06-05' AS Date), N'mua quần áo', 1)
INSERT [dbo].[CHITIETCHITIEU] ([MaCT], [ID], [MaLoaiCT], [MaTaiKhoan], [SoTienCT], [NgayChi], [GhiChu], [TrangThai]) VALUES (3, 4, 5, 3, 150000, CAST(N'2024-07-05' AS Date), N'đóng tiền trọ', 1)
INSERT [dbo].[CHITIETCHITIEU] ([MaCT], [ID], [MaLoaiCT], [MaTaiKhoan], [SoTienCT], [NgayChi], [GhiChu], [TrangThai]) VALUES (4, 4, 7, 1, 30000, CAST(N'2024-09-05' AS Date), N'khám bệnh', 1)
INSERT [dbo].[CHITIETCHITIEU] ([MaCT], [ID], [MaLoaiCT], [MaTaiKhoan], [SoTienCT], [NgayChi], [GhiChu], [TrangThai]) VALUES (5, 4, 8, 1, 5000, CAST(N'2024-05-09' AS Date), N'thức ăn cho cá', 1)
INSERT [dbo].[CHITIETCHITIEU] ([MaCT], [ID], [MaLoaiCT], [MaTaiKhoan], [SoTienCT], [NgayChi], [GhiChu], [TrangThai]) VALUES (6, 4, 1, 1, 10000, CAST(N'2024-04-30' AS Date), N'bánh', 1)
INSERT [dbo].[CHITIETCHITIEU] ([MaCT], [ID], [MaLoaiCT], [MaTaiKhoan], [SoTienCT], [NgayChi], [GhiChu], [TrangThai]) VALUES (7, 4, 8, 1, 5000, CAST(N'2024-04-29' AS Date), N'tiền thuốc', 1)
SET IDENTITY_INSERT [dbo].[CHITIETCHITIEU] OFF
GO
SET IDENTITY_INSERT [dbo].[CHITIETTHUNHAP] ON 

INSERT [dbo].[CHITIETTHUNHAP] ([MaTN], [ID], [MaLoaiTN], [MaTaiKhoan], [SoTienTN], [NgayThu], [GhiChu], [TrangThai]) VALUES (1, 4, 1, 1, 1000000, CAST(N'2024-05-09' AS Date), N'làm gì có ghi chú', 1)
INSERT [dbo].[CHITIETTHUNHAP] ([MaTN], [ID], [MaLoaiTN], [MaTaiKhoan], [SoTienTN], [NgayThu], [GhiChu], [TrangThai]) VALUES (2, 4, 2, 1, 150000000, CAST(N'2024-05-09' AS Date), N'dưỡng già', 1)
INSERT [dbo].[CHITIETTHUNHAP] ([MaTN], [ID], [MaLoaiTN], [MaTaiKhoan], [SoTienTN], [NgayThu], [GhiChu], [TrangThai]) VALUES (3, 4, 3, 2, 150000, CAST(N'2024-05-09' AS Date), N'mua quần áo', 1)
INSERT [dbo].[CHITIETTHUNHAP] ([MaTN], [ID], [MaLoaiTN], [MaTaiKhoan], [SoTienTN], [NgayThu], [GhiChu], [TrangThai]) VALUES (4, 4, 4, 3, 500000, CAST(N'2024-05-09' AS Date), N'quỹ đen', 1)
INSERT [dbo].[CHITIETTHUNHAP] ([MaTN], [ID], [MaLoaiTN], [MaTaiKhoan], [SoTienTN], [NgayThu], [GhiChu], [TrangThai]) VALUES (5, 4, 1, 1, 20000, CAST(N'2024-05-02' AS Date), N'hẻng', 1)
SET IDENTITY_INSERT [dbo].[CHITIETTHUNHAP] OFF
GO
SET IDENTITY_INSERT [dbo].[KHOANNO] ON 

INSERT [dbo].[KHOANNO] ([MaKN], [ID], [MaTaiKhoan], [SoTienNo], [NgayMuonNo], [NgayTra], [NguoiVay], [GhiChu], [TrangThai]) VALUES (1, 4, 1, 7000, CAST(N'2024-05-09' AS Date), CAST(N'2024-06-08' AS Date), N'Phan Thảo', N'tiền nước', 1)
SET IDENTITY_INSERT [dbo].[KHOANNO] OFF
GO
SET IDENTITY_INSERT [dbo].[KHOANVAY] ON 

INSERT [dbo].[KHOANVAY] ([MaKV], [ID], [MaTaiKhoan], [SoTienVay], [NgayChoVay], [NgayTra], [NguoiNo], [GhiChu], [TrangThai]) VALUES (1, 4, 1, 4000, CAST(N'2024-05-09' AS Date), CAST(N'2024-05-31' AS Date), N'trúc linh', N'tiền gửi xe', 1)
INSERT [dbo].[KHOANVAY] ([MaKV], [ID], [MaTaiKhoan], [SoTienVay], [NgayChoVay], [NgayTra], [NguoiNo], [GhiChu], [TrangThai]) VALUES (2, 4, 2, 7000, CAST(N'2024-05-02' AS Date), CAST(N'2024-05-09' AS Date), N'hải trường', N'tiền nước', 1)
SET IDENTITY_INSERT [dbo].[KHOANVAY] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAICHITIEU] ON 

INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (1, N'Ăn uống', 1)
INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (2, N'Mua sắm', 1)
INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (3, N'Vận chuyển', 1)
INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (4, N'Giải trí', 1)
INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (5, N'Nhà cửa', 1)
INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (6, N'Gia đình', 1)
INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (7, N'Sức khỏe', 1)
INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (8, N'Thú nuôi', 1)
INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (9, N'Du lịch', 1)
INSERT [dbo].[LOAICHITIEU] ([MaLoaiCT], [TenChiTieu], [TrangThai]) VALUES (10, N'Khác', 1)
SET IDENTITY_INSERT [dbo].[LOAICHITIEU] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAITHUNHAP] ON 

INSERT [dbo].[LOAITHUNHAP] ([MaLoaiTN], [TenThuNhap], [TrangThai]) VALUES (1, N'Tiền Lương', 1)
INSERT [dbo].[LOAITHUNHAP] ([MaLoaiTN], [TenThuNhap], [TrangThai]) VALUES (2, N'Tiền trợ cấp', 1)
INSERT [dbo].[LOAITHUNHAP] ([MaLoaiTN], [TenThuNhap], [TrangThai]) VALUES (3, N'Tiền tiết kiệm', 1)
INSERT [dbo].[LOAITHUNHAP] ([MaLoaiTN], [TenThuNhap], [TrangThai]) VALUES (4, N'Khác', 1)
SET IDENTITY_INSERT [dbo].[LOAITHUNHAP] OFF
GO
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] ON 

INSERT [dbo].[NGUOIDUNG] ([ID], [TenDangNhap], [AnhDaiDien], [MatKhau], [HoTen], [Email], [MaPin], [TrangThai]) VALUES (1, N'naruto', N'0306221433@caothang.edu.vn.jpg', N'202cb962ac59075b964b07152d234b70', N'uzumaki naruto', N'0306221433@caothang.edu.vn', NULL, 1)
INSERT [dbo].[NGUOIDUNG] ([ID], [TenDangNhap], [AnhDaiDien], [MatKhau], [HoTen], [Email], [MaPin], [TrangThai]) VALUES (2, N'haitruong', N'0306221495@gmail.com.jpg', N'202cb962ac59075b964b07152d234b70', N'truong', N'0306221495@gmail.com', NULL, 1)
INSERT [dbo].[NGUOIDUNG] ([ID], [TenDangNhap], [AnhDaiDien], [MatKhau], [HoTen], [Email], [MaPin], [TrangThai]) VALUES (3, N'haitruong2', N'0306221495@caothang.edu.vn.jpg', N'202cb962ac59075b964b07152d234b70', N'truong', N'0306221495@caothang.edu.vn', NULL, 1)
INSERT [dbo].[NGUOIDUNG] ([ID], [TenDangNhap], [AnhDaiDien], [MatKhau], [HoTen], [Email], [MaPin], [TrangThai]) VALUES (4, N'lizard', N'lizardMoney@gmail.com.jpg', N'fae0b27c451c728867a567e8c1bb4e53', N'Lizard Money User', N'lizardMoney@gmail.com', NULL, 1)
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([ID], [MaTaiKhoan], [SoTien], [TenTaiKhoan], [GhiChu], [TrangThai]) VALUES (4, 1, 150000, N'Tiền mặt', N'Tiền má cho é', 1)
INSERT [dbo].[TAIKHOAN] ([ID], [MaTaiKhoan], [SoTien], [TenTaiKhoan], [GhiChu], [TrangThai]) VALUES (4, 2, 1500000, N'MB Bank', N'Tiền trọ', 1)
INSERT [dbo].[TAIKHOAN] ([ID], [MaTaiKhoan], [SoTien], [TenTaiKhoan], [GhiChu], [TrangThai]) VALUES (4, 3, 2000000, N'VCB', N'... tiền sinh hoạt', 1)
INSERT [dbo].[TAIKHOAN] ([ID], [MaTaiKhoan], [SoTien], [TenTaiKhoan], [GhiChu], [TrangThai]) VALUES (4, 4, 2500000, N'VietTinBank', N'Tiết kiệm', 1)
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
ALTER TABLE [dbo].[CHITIETCHITIEU]  WITH CHECK ADD  CONSTRAINT [PK_CTCT_LOAICHITIEU] FOREIGN KEY([MaLoaiCT])
REFERENCES [dbo].[LOAICHITIEU] ([MaLoaiCT])
GO
ALTER TABLE [dbo].[CHITIETCHITIEU] CHECK CONSTRAINT [PK_CTCT_LOAICHITIEU]
GO
ALTER TABLE [dbo].[CHITIETCHITIEU]  WITH CHECK ADD  CONSTRAINT [PK_CTCT_NGUOIDUNG] FOREIGN KEY([ID])
REFERENCES [dbo].[NGUOIDUNG] ([ID])
GO
ALTER TABLE [dbo].[CHITIETCHITIEU] CHECK CONSTRAINT [PK_CTCT_NGUOIDUNG]
GO
ALTER TABLE [dbo].[CHITIETCHITIEU]  WITH CHECK ADD  CONSTRAINT [PK_CTCT_TAIKHOAN] FOREIGN KEY([MaTaiKhoan], [ID])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan], [ID])
GO
ALTER TABLE [dbo].[CHITIETCHITIEU] CHECK CONSTRAINT [PK_CTCT_TAIKHOAN]
GO
ALTER TABLE [dbo].[CHITIETTHUNHAP]  WITH CHECK ADD  CONSTRAINT [PK_CTTN_LOAITHUNHAP] FOREIGN KEY([MaLoaiTN])
REFERENCES [dbo].[LOAITHUNHAP] ([MaLoaiTN])
GO
ALTER TABLE [dbo].[CHITIETTHUNHAP] CHECK CONSTRAINT [PK_CTTN_LOAITHUNHAP]
GO
ALTER TABLE [dbo].[CHITIETTHUNHAP]  WITH CHECK ADD  CONSTRAINT [PK_CTTN_NGUOIDUNG] FOREIGN KEY([ID])
REFERENCES [dbo].[NGUOIDUNG] ([ID])
GO
ALTER TABLE [dbo].[CHITIETTHUNHAP] CHECK CONSTRAINT [PK_CTTN_NGUOIDUNG]
GO
ALTER TABLE [dbo].[CHITIETTHUNHAP]  WITH CHECK ADD  CONSTRAINT [PK_CTTN_TAIKHOAN] FOREIGN KEY([MaTaiKhoan], [ID])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan], [ID])
GO
ALTER TABLE [dbo].[CHITIETTHUNHAP] CHECK CONSTRAINT [PK_CTTN_TAIKHOAN]
GO
ALTER TABLE [dbo].[KHOANNO]  WITH CHECK ADD  CONSTRAINT [PK_KHOANNO_NGUOIDUNG] FOREIGN KEY([ID])
REFERENCES [dbo].[NGUOIDUNG] ([ID])
GO
ALTER TABLE [dbo].[KHOANNO] CHECK CONSTRAINT [PK_KHOANNO_NGUOIDUNG]
GO
ALTER TABLE [dbo].[KHOANNO]  WITH CHECK ADD  CONSTRAINT [PK_KHOANNO_TAIKHOAN] FOREIGN KEY([MaTaiKhoan], [ID])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan], [ID])
GO
ALTER TABLE [dbo].[KHOANNO] CHECK CONSTRAINT [PK_KHOANNO_TAIKHOAN]
GO
ALTER TABLE [dbo].[KHOANVAY]  WITH CHECK ADD  CONSTRAINT [PK_KHOANVAY_NGUOIDUNG] FOREIGN KEY([ID])
REFERENCES [dbo].[NGUOIDUNG] ([ID])
GO
ALTER TABLE [dbo].[KHOANVAY] CHECK CONSTRAINT [PK_KHOANVAY_NGUOIDUNG]
GO
ALTER TABLE [dbo].[KHOANVAY]  WITH CHECK ADD  CONSTRAINT [PK_KHOANVAY_TAIKHOAN] FOREIGN KEY([MaTaiKhoan], [ID])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan], [ID])
GO
ALTER TABLE [dbo].[KHOANVAY] CHECK CONSTRAINT [PK_KHOANVAY_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHANHOI]  WITH CHECK ADD  CONSTRAINT [PK_PHANHOI_NGUOIDUNG] FOREIGN KEY([ID])
REFERENCES [dbo].[NGUOIDUNG] ([ID])
GO
ALTER TABLE [dbo].[PHANHOI] CHECK CONSTRAINT [PK_PHANHOI_NGUOIDUNG]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [PK_TAIKHOAN_NGUOIDUNG] FOREIGN KEY([ID])
REFERENCES [dbo].[NGUOIDUNG] ([ID])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [PK_TAIKHOAN_NGUOIDUNG]
GO
