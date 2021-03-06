USE [MyClinic]
GO
/****** Object:  Table [dbo].[BenhNhan]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenhNhan](
	[MaBN] [nchar](20) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[CMND] [text] NOT NULL,
	[SDT] [text] NOT NULL,
	[SDTNguoiThan] [text] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[CanNang] [int] NOT NULL,
	[NgheNghiep] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BenhNhan] PRIMARY KEY CLUSTERED 
(
	[MaBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiDinhDungThuoc]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiDinhDungThuoc](
	[MaPK] [nchar](20) NOT NULL,
	[MaThuoc] [nchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaDV] [nchar](20) NOT NULL,
	[GhiChu] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ChiDinhDungThuoc] PRIMARY KEY CLUSTERED 
(
	[MaPK] ASC,
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_DanhSachKham]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DanhSachKham](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[MaDS] [int] NOT NULL,
	[MaBN] [nchar](20) NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[MaNV] [nchar](20) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_CT_DanhSachKham] PRIMARY KEY CLUSTERED 
(
	[STT] ASC,
	[MaDS] ASC,
	[MaBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_ThongKe]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ThongKe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TongThu] [int] NOT NULL,
	[TongChi] [int] NOT NULL,
	[LuotKham] [int] NOT NULL,
	[SLThuocNhap] [int] NOT NULL,
	[LoaiThoiGian] [nvarchar](50) NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
 CONSTRAINT [PK_CT_ThongKe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhSachKham]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachKham](
	[MaDS] [int] IDENTITY(1,1) NOT NULL,
	[NgayThang] [date] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_DanhSachKham] PRIMARY KEY CLUSTERED 
(
	[MaDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonViThuoc]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViThuoc](
	[MaDV] [nchar](20) NOT NULL,
	[DienGiai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DonViThuoc] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](20) NOT NULL,
	[MaBN] [nchar](20) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[TongTienThanhToan] [int] NOT NULL,
	[TrangThaiThanhToan] [bit] NOT NULL,
	[TrangThaiGiaoThuoc] [bit] NOT NULL,
	[MaNVThanhToan] [nchar](20) NOT NULL,
	[MaNVGiaoThuoc] [nchar](20) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogHeThong]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogHeThong](
	[ThoiGian] [datetime] NOT NULL,
	[MaNV] [nchar](20) NOT NULL,
	[MaDoiTuong] [nchar](20) NOT NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_LogHeThong] PRIMARY KEY CLUSTERED 
(
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](20) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[CMND] [text] NOT NULL,
	[SDT] [text] NOT NULL,
	[Email] [text] NOT NULL,
	[LoaiNhanVien] [nvarchar](50) NOT NULL,
	[UserName] [text] NOT NULL,
	[Password] [text] NOT NULL,
	[MucLuong] [int] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuKham]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuKham](
	[MaPK] [nchar](20) NOT NULL,
	[MaBN] [nchar](20) NOT NULL,
	[MaNV] [nchar](20) NOT NULL,
	[NgayLap] [date] NOT NULL,
	[ChanDoan] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_PhieuKham] PRIMARY KEY CLUSTERED 
(
	[MaPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhapThuoc]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapThuoc](
	[MaThuoc] [nchar](20) NOT NULL,
	[MaNV] [nchar](20) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
 CONSTRAINT [PK_PhieuNhapThuoc] PRIMARY KEY CLUSTERED 
(
	[MaThuoc] ASC,
	[MaNV] ASC,
	[NgayNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuThuChi]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThuChi](
	[MaPhieu] [nchar](20) NOT NULL,
	[MaNV] [nchar](20) NOT NULL,
	[NgayLap] [date] NOT NULL,
	[LoaiPhieu] [int] NOT NULL,
	[GiaTri] [int] NOT NULL,
	[NoiDung] [nvarchar](500) NOT NULL,
	[TinhTrang] [bit] NOT NULL,
 CONSTRAINT [PK_PhieuThuChi] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinh](
	[MaQD] [nchar](20) NOT NULL,
	[TenQD] [nvarchar](50) NOT NULL,
	[KieuGiaTri] [text] NOT NULL,
	[GiaTriLonNhat] [nvarchar](50) NOT NULL,
	[GiaTriNhoNhat] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_QuyDinh] PRIMARY KEY CLUSTERED 
(
	[MaQD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SoKhamBenh]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoKhamBenh](
	[MaBN] [nchar](20) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
 CONSTRAINT [PK_SoKhamBenh] PRIMARY KEY CLUSTERED 
(
	[MaBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 8/21/2020 11:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[MaThuoc] [nchar](20) NOT NULL,
	[TenThuoc] [nvarchar](50) NOT NULL,
	[MaDV] [nchar](20) NOT NULL,
	[TongSoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
	[ThongTin] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Thuoc] PRIMARY KEY CLUSTERED 
(
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'1                   ', N'Nguyễn Thị Thảo', CAST(N'2000-01-01' AS Date), N'TPHCM', N'123456789', N'098765432', N'0977654321', 0, 60, N'Sinh viên')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'10                  ', N'Diệp Giác', CAST(N'1978-09-23' AS Date), N'Ninh Thuận', N'987654321', N'0977123665', N'089866778', 0, 55, N'Bán thức ăn')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'2                   ', N'Đặng Xuân', CAST(N'2009-08-16' AS Date), N'Bà Rịa', N'267535245', N'0986343146', N'0945725146', 1, 70, N'Giáo viên')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'3                   ', N'Lê Thảo', CAST(N'1998-04-03' AS Date), N'Bình Thuận', N'832532111', N'0987678987', N'0793425253', 0, 45, N'Ca sĩ')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'4                   ', N'Nông Kiệt', CAST(N'1962-09-24' AS Date), N'Đà Nẵng', N'234567891', N'0616089555', N'0616089666', 1, 80, N'Nhân viên văn phòng')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'5                   ', N'Kim Anh Tín', CAST(N'1974-07-31' AS Date), N'Nam Định ', N'345678912', N'0292603444', N'0292603345', 1, 65, N'Trông cửa hàng')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'6                   ', N'An Bích', CAST(N'1977-09-07' AS Date), N'Sóc Trăng', N'567891234', N'0954264523', N'0954264545', 0, 52, N'Bán hàng')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'7                   ', N'Tăng Chấn', CAST(N'1994-05-28' AS Date), N'Tây Ninh', N'832532111', N'0987678987', N'0793425253', 1, 63, N'Thợ làm bánh')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'8                   ', N'Tống Lương', CAST(N'1962-10-21' AS Date), N'Cao Bằng', N'12345123', N'0948567387', N'0324782333', 1, 58, N'Người giao hàng')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'9                   ', N'Bạc Ẩn', CAST(N'1966-12-16' AS Date), N'Quảng Bình', N'545119797', N'0987556121', N'0793886750', 1, 75, N'Giáo viên')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN001               ', N'Bệnh Nhân 1', CAST(N'2001-01-01' AS Date), N'5279 Phố Hứa Quế Sinh, Phường Điền, Huyện Nghi Khai Đà Nẵng', N'4532 9557 4861 7986', N'(84)(52)115-3302', N'(84)(52)115-3302', 1, 34, N'Nhân viên')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN002               ', N'Bệnh Nhân 2', CAST(N'2020-02-03' AS Date), N'1437, Ấp Hùng, Xã Ngụy Hợp Chiêu, Quận Ung Nhung Long An', N'6011 0582 9342 9090', N'84)(52)115-3302', N'84)(52)115-3302', 0, 42, N'Công nhân')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN003               ', N'Bệnh Nhân 3', CAST(N'1941-04-01' AS Date), N'26, Thôn 9, Phường Bằng Lều, Quận Duệ Thục Phú Yên', N'4024 0071 6977 9005', N'+84-94-963-2816', N'+84-94-963-2816', 1, 63, N'Ngân hàng')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN004               ', N'Bệnh Nhân 4', CAST(N'2002-01-06' AS Date), N'4 Phố Cái Viên Vượng, Phường Đái, Huyện Nguyễn Thơ Đà Nẵng', N'6011 6941 4703 8966', N'(0710)788-6610', N'(0710)788-6610', 0, 42, N'Tài xế')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN005               ', N'Bệnh Nhân 5', CAST(N'1977-04-06' AS Date), N'6 Phố Giáp, Xã 6, Quận Trang Từ Cần Thơ', N'3731 8151 9028 580', N'(0710)788-6610', N'(0710)788-6610', 1, 54, N'Học sinh')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN006               ', N'Bệnh Nhân 6', CAST(N'1956-01-01' AS Date), N'061, Ấp Diêm Hạ, Phường 6, Huyện Lều Hải Dương', N'5321 9649 0240 0454', N'0651-594-1638', N'0651-594-1638', 1, 76, N'Nội trợ')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN007               ', N'Nguyễn Thị Thảo', CAST(N'2000-01-01' AS Date), N'TPHCM', N'123456789', N'098765432', N'0977654321', 0, 60, N'Sinh viên')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN008               ', N'Diệp Giác', CAST(N'1978-09-23' AS Date), N'Ninh Thuận', N'987654321', N'0977123665', N'089866778', 0, 55, N'Bán thức ăn')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN009               ', N'Đặng Xuân', CAST(N'2009-08-16' AS Date), N'Bà Rịa', N'267535245', N'0986343146', N'0945725146', 1, 70, N'Giáo viên')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN010               ', N'Lê Thảo', CAST(N'1998-04-03' AS Date), N'Bình Thuận', N'832532111', N'0987678987', N'0793425253', 0, 45, N'Ca sĩ')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN011               ', N'Nông Kiệt', CAST(N'1962-09-24' AS Date), N'Đà Nẵng', N'234567891', N'0616089555', N'0616089666', 1, 80, N'Nhân viên văn phòng')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN012               ', N'Kim Anh Tín', CAST(N'1974-07-31' AS Date), N'Nam Định ', N'345678912', N'0292603444', N'0292603345', 1, 65, N'Trông cửa hàng')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN013               ', N'An Bích', CAST(N'1977-09-07' AS Date), N'Sóc Trăng', N'567891234', N'0954264523', N'0954264545', 0, 52, N'Bán hàng')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN014               ', N'Tăng Chấn', CAST(N'1994-05-28' AS Date), N'Tây Ninh', N'832532111', N'0987678987', N'0793425253', 1, 63, N'Thợ làm bánh')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN016               ', N'Bạc Ẩn', CAST(N'1966-12-16' AS Date), N'Quảng Bình', N'545119797', N'0987556121', N'0793886750', 1, 75, N'Giáo viên')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN2108202011        ', N'Bệnh nhân mới 1', CAST(N'0001-01-01' AS Date), N'Quận 12 TP. HCM', N'198591285350172958', N'0125915901861', N'01236991286', 1, 100, N'Lái xe')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN2108202012        ', N'Bệnh nhân mới 0222', CAST(N'0001-01-01' AS Date), N'PHường tân phú quận 9', N'01459572379', N'090909141414', N'0125351230917', 1, 90, N'Học Sinh')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN2108202013        ', N'Bệnh nhân đặc biệt', CAST(N'0001-01-01' AS Date), N'Phường Phú Hữu quận 9', N'012246262832', N'09994119155', N'0196186162', 1, 100, N'Học sinh')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTen], [NgaySinh], [DiaChi], [CMND], [SDT], [SDTNguoiThan], [GioiTinh], [CanNang], [NgheNghiep]) VALUES (N'BN2108202014        ', N'BỆNH NHÂN SIÊU ĐẶC BIỆT', CAST(N'0001-01-01' AS Date), N'ĐỐNG ĐA, HÀ NỘI', N'09120526609', N'014981451982', N'01596959834956', 1, 100, N'Hưu trí')
INSERT [dbo].[ChiDinhDungThuoc] ([MaPK], [MaThuoc], [SoLuong], [MaDV], [GhiChu]) VALUES (N'PK210820200         ', N'T001                ', 10, N'Vien                ', N'Ngày uống 2 lần')
INSERT [dbo].[ChiDinhDungThuoc] ([MaPK], [MaThuoc], [SoLuong], [MaDV], [GhiChu]) VALUES (N'PK210820201         ', N'T001                ', 10, N'Vien                ', N'Ngày uống 3 lần')
INSERT [dbo].[ChiDinhDungThuoc] ([MaPK], [MaThuoc], [SoLuong], [MaDV], [GhiChu]) VALUES (N'PK210820201         ', N'T002                ', 10, N'Vien                ', N'Ngày uống 3 lần')
INSERT [dbo].[ChiDinhDungThuoc] ([MaPK], [MaThuoc], [SoLuong], [MaDV], [GhiChu]) VALUES (N'PK210820202         ', N'T001                ', 10, N'Vien                ', N'Ngày uống 3 lần')
INSERT [dbo].[ChiDinhDungThuoc] ([MaPK], [MaThuoc], [SoLuong], [MaDV], [GhiChu]) VALUES (N'PK210820202         ', N'T002                ', 5, N'Vien                ', N'Ngày uống 2 lần')
INSERT [dbo].[ChiDinhDungThuoc] ([MaPK], [MaThuoc], [SoLuong], [MaDV], [GhiChu]) VALUES (N'PK210820203         ', N'T001                ', 10, N'Vien                ', N'Ngày uống 2 lần sáng chiều')
SET IDENTITY_INSERT [dbo].[CT_DanhSachKham] ON 

INSERT [dbo].[CT_DanhSachKham] ([STT], [MaDS], [MaBN], [ThoiGian], [MaNV], [TrangThai]) VALUES (1, 4, N'6                   ', CAST(N'2020-08-17 00:00:00.000' AS DateTime), N'2                   ', 0)
INSERT [dbo].[CT_DanhSachKham] ([STT], [MaDS], [MaBN], [ThoiGian], [MaNV], [TrangThai]) VALUES (13, 4, N'BN2108202011        ', CAST(N'2020-08-21 21:19:08.077' AS DateTime), N'admin               ', 1)
INSERT [dbo].[CT_DanhSachKham] ([STT], [MaDS], [MaBN], [ThoiGian], [MaNV], [TrangThai]) VALUES (14, 4, N'BN2108202012        ', CAST(N'2020-08-21 21:27:25.943' AS DateTime), N'admin               ', 1)
INSERT [dbo].[CT_DanhSachKham] ([STT], [MaDS], [MaBN], [ThoiGian], [MaNV], [TrangThai]) VALUES (15, 4, N'BN2108202013        ', CAST(N'2020-08-21 21:38:04.447' AS DateTime), N'admin               ', 0)
INSERT [dbo].[CT_DanhSachKham] ([STT], [MaDS], [MaBN], [ThoiGian], [MaNV], [TrangThai]) VALUES (16, 4, N'BN2108202014        ', CAST(N'2020-08-21 21:41:39.890' AS DateTime), N'admin               ', 1)
SET IDENTITY_INSERT [dbo].[CT_DanhSachKham] OFF
SET IDENTITY_INSERT [dbo].[DanhSachKham] ON 

INSERT [dbo].[DanhSachKham] ([MaDS], [NgayThang], [SoLuong]) VALUES (1, CAST(N'2019-01-01' AS Date), 1)
INSERT [dbo].[DanhSachKham] ([MaDS], [NgayThang], [SoLuong]) VALUES (2, CAST(N'2020-03-04' AS Date), 1)
INSERT [dbo].[DanhSachKham] ([MaDS], [NgayThang], [SoLuong]) VALUES (3, CAST(N'2020-08-16' AS Date), 1)
INSERT [dbo].[DanhSachKham] ([MaDS], [NgayThang], [SoLuong]) VALUES (4, CAST(N'2020-08-21' AS Date), 4)
INSERT [dbo].[DanhSachKham] ([MaDS], [NgayThang], [SoLuong]) VALUES (6, CAST(N'2020-08-17' AS Date), 1)
INSERT [dbo].[DanhSachKham] ([MaDS], [NgayThang], [SoLuong]) VALUES (7, CAST(N'2020-08-19' AS Date), 2)
INSERT [dbo].[DanhSachKham] ([MaDS], [NgayThang], [SoLuong]) VALUES (8, CAST(N'2020-08-20' AS Date), 3)
INSERT [dbo].[DanhSachKham] ([MaDS], [NgayThang], [SoLuong]) VALUES (9, CAST(N'2020-08-21' AS Date), 4)
SET IDENTITY_INSERT [dbo].[DanhSachKham] OFF
INSERT [dbo].[DonViThuoc] ([MaDV], [DienGiai]) VALUES (N'Chai                ', N'Chai')
INSERT [dbo].[DonViThuoc] ([MaDV], [DienGiai]) VALUES (N'Goi                 ', N'Thuốc gói')
INSERT [dbo].[DonViThuoc] ([MaDV], [DienGiai]) VALUES (N'Vien                ', N'Thuốc viên')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'1                   ', N'1                   ', CAST(N'2000-01-01 00:00:00.000' AS DateTime), 100000, 1, 1, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'10                  ', N'10                  ', CAST(N'2020-08-21 00:00:00.000' AS DateTime), 1450000, 1, 0, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'11                  ', N'7                   ', CAST(N'2020-08-21 00:00:00.000' AS DateTime), 1245430, 1, 1, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'12                  ', N'4                   ', CAST(N'2020-08-21 00:00:00.000' AS DateTime), 178000, 0, 0, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'2                   ', N'2                   ', CAST(N'2019-01-01 00:00:00.000' AS DateTime), 194000, 1, 1, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'3                   ', N'3                   ', CAST(N'2019-08-16 00:00:00.000' AS DateTime), 200000, 1, 1, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'4                   ', N'4                   ', CAST(N'2020-08-16 00:00:00.000' AS DateTime), 198000, 1, 1, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'5                   ', N'5                   ', CAST(N'2020-08-19 00:00:00.000' AS DateTime), 200000, 1, 1, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'6                   ', N'6                   ', CAST(N'2020-08-19 00:00:00.000' AS DateTime), 193500, 1, 1, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'7                   ', N'7                   ', CAST(N'2020-08-20 00:00:00.000' AS DateTime), 178200, 1, 0, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'8                   ', N'8                   ', CAST(N'2020-08-20 00:00:00.000' AS DateTime), 1254000, 0, 0, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'9                   ', N'9                   ', CAST(N'2020-08-20 00:00:00.000' AS DateTime), 783400, 0, 0, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'HD210820200         ', N'BN2108202011        ', CAST(N'2020-08-21 00:00:00.000' AS DateTime), 100000, 0, 0, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'HD210820201         ', N'BN2108202012        ', CAST(N'2020-08-21 00:00:00.000' AS DateTime), 300000, 0, 0, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'HD210820202         ', N'BN2108202012        ', CAST(N'2020-08-21 00:00:00.000' AS DateTime), 200000, 0, 0, N'admin               ', N'admin               ')
INSERT [dbo].[HoaDon] ([MaHD], [MaBN], [NgayLap], [TongTienThanhToan], [TrangThaiThanhToan], [TrangThaiGiaoThuoc], [MaNVThanhToan], [MaNVGiaoThuoc]) VALUES (N'HD210820203         ', N'BN2108202013        ', CAST(N'2020-08-21 00:00:00.000' AS DateTime), 100000, 1, 1, N'admin               ', N'admin               ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'1                   ', N'Nguyễn A', CAST(N'2000-01-01' AS Date), 1, N'TPHCM', N'1111111', N'0987654321', N'nguyenvana@gmail.com', N'1', N'nguyenvana', N'nguyenvana', 10000000, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'10                  ', N'Trần Hoàng Minh', CAST(N'1996-04-05' AS Date), 1, N'Quảng Ngãi', N'3895723', N'0945234892', N'tranhoangminh@gmail.com', N'1', N'tranhoangminh', N'tranhoangminh', 34289375, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'2                   ', N'Nguyễn B', CAST(N'1999-01-01' AS Date), 0, N'ĐN', N'2222222', N'0986784323', N'nguyenthib@gmail.com', N'2', N'nguyenthib', N'nguyenthib', 13314111, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'3                   ', N'Đặng Thảo', CAST(N'1993-01-01' AS Date), 0, N'Hải Phòng', N'1982325', N'0976472825', N'dangthao@gmail.com', N'1', N'dangthao', N'dangthao', 13535432, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'4                   ', N'Lê Văn Hòa', CAST(N'1995-08-16' AS Date), 1, N'Hội An', N'1434393', N'0329491945', N'levanhoa@gmail.com', N'1', N'levanhoa', N'levanhoa', 43253352, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'5                   ', N'Bùi Thị Trúc', CAST(N'1999-12-12' AS Date), 0, N'Lạng Sơn', N'3452531', N'0974252452', N'buithitruc', N'2', N'buithitruc', N'buithitruc', 35345232, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'6                   ', N'Nguyễn Thị Thu Hương', CAST(N'2000-06-05' AS Date), 0, N'Tiền Giang', N'3464263', N'0482958252', N'nguyenthithuhuong', N'1', N'nguyenthithuhuong', N'nguyenthithuhuong', 24385914, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'7                   ', N'Lê Hà Giang', CAST(N'1993-04-02' AS Date), 1, N'Hậu Giang', N'3245535', N'0938528842', N'lehagiang@gmail.com', N'2', N'lehagiang', N'lehagiang', 24534656, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'8                   ', N'Hoàng Thị Kim Hồng', CAST(N'1998-02-04' AS Date), 0, N'Bình Phước', N'3242348', N'0945721984', N'hoangthikimhong@gmail.com', N'3', N'hoangthikimhong', N'hoangthikimhong', 23823823, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'9                   ', N'Phạm Kim Ngân', CAST(N'1997-04-06' AS Date), 0, N'Lâm Đồng', N'4798532', N'0933225232', N'phamkimngan@gmail.com', N'4', N'phamkimngan', N'phamkimngan', 34834823, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'admin               ', N'admin', CAST(N'2001-01-01' AS Date), 1, N'HCMUS', N'1', N'1', N'1', N'1', N'admin', N'admin', 1, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNhanVien], [UserName], [Password], [MucLuong], [TrangThai]) VALUES (N'TT001               ', N'Tiếp Tân', CAST(N'2001-01-01' AS Date), 1, N'Text', N'1', N'1', N'1', N'1', N'1', N'1', 1, N'1')
INSERT [dbo].[PhieuKham] ([MaPK], [MaBN], [MaNV], [NgayLap], [ChanDoan]) VALUES (N'PK210820200         ', N'BN2108202011        ', N'admin               ', CAST(N'2020-08-21' AS Date), N'Viêm amidam')
INSERT [dbo].[PhieuKham] ([MaPK], [MaBN], [MaNV], [NgayLap], [ChanDoan]) VALUES (N'PK210820201         ', N'BN2108202012        ', N'admin               ', CAST(N'2020-08-21' AS Date), N'U não')
INSERT [dbo].[PhieuKham] ([MaPK], [MaBN], [MaNV], [NgayLap], [ChanDoan]) VALUES (N'PK210820202         ', N'BN2108202012        ', N'admin               ', CAST(N'2020-08-21' AS Date), N'Sốt')
INSERT [dbo].[PhieuKham] ([MaPK], [MaBN], [MaNV], [NgayLap], [ChanDoan]) VALUES (N'PK210820203         ', N'BN2108202013        ', N'admin               ', CAST(N'2020-08-21' AS Date), N'Ho, viêm họng cấp')
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'1                   ', CAST(N'2020-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'10                  ', CAST(N'2020-08-21 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'2                   ', CAST(N'2020-03-04 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'3                   ', CAST(N'2019-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'4                   ', CAST(N'2020-08-17 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'5                   ', CAST(N'2020-08-19 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'6                   ', CAST(N'2020-08-19 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'7                   ', CAST(N'2020-08-20 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'8                   ', CAST(N'2020-08-20 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'9                   ', CAST(N'2020-08-20 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'BN2108202011        ', CAST(N'2020-08-21 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'BN2108202012        ', CAST(N'2020-08-21 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'BN2108202013        ', CAST(N'2020-08-21 00:00:00.000' AS DateTime))
INSERT [dbo].[SoKhamBenh] ([MaBN], [NgayLap]) VALUES (N'BN2108202014        ', CAST(N'2020-08-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaDV], [TongSoLuong], [DonGia], [TinhTrang], [ThongTin]) VALUES (N'T001                ', N'Thuoc1', N'Vien                ', 100, 10000, N'Còn hàng', N'https://drugbank.vn/')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaDV], [TongSoLuong], [DonGia], [TinhTrang], [ThongTin]) VALUES (N'T002                ', N'Thuoc2', N'Vien                ', 120, 20000, N'Còn hàng', N'https://drugbank.vn/')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaDV], [TongSoLuong], [DonGia], [TinhTrang], [ThongTin]) VALUES (N'T003                ', N'Thuoc3', N'Goi                 ', 122, 5000, N'Còn hàng', N'https://drugbank.vn/')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaDV], [TongSoLuong], [DonGia], [TinhTrang], [ThongTin]) VALUES (N'T004                ', N'Thuoc4', N'Vien                ', 50, 11000, N'Còn hàng', N'https://drugbank.vn/')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaDV], [TongSoLuong], [DonGia], [TinhTrang], [ThongTin]) VALUES (N'T005                ', N'Thuốc A', N'Vien                ', 10, 5500, N'Còn hàng', N'https://drugbank.vn/https://drugbank.vn/')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaDV], [TongSoLuong], [DonGia], [TinhTrang], [ThongTin]) VALUES (N'T006                ', N'Thuốc B', N'Vien                ', 23, 12000, N'Còn hàng', N'https://drugbank.vn/')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaDV], [TongSoLuong], [DonGia], [TinhTrang], [ThongTin]) VALUES (N'T007                ', N'Thuốc C', N'Vien                ', 40, 5000, N'Còn hàng', N'https://drugbank.vn/')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaDV], [TongSoLuong], [DonGia], [TinhTrang], [ThongTin]) VALUES (N'T008                ', N'Thuốc D', N'Vien                ', 12, 10000, N'Còn hàng', N'https://drugbank.vn/')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaDV], [TongSoLuong], [DonGia], [TinhTrang], [ThongTin]) VALUES (N'T009                ', N'Thuốc E', N'Vien                ', 15, 14500, N'Còn hàng', N'https://drugbank.vn/')
ALTER TABLE [dbo].[ChiDinhDungThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ChiDinhDungThuoc_PhieuKham] FOREIGN KEY([MaPK])
REFERENCES [dbo].[PhieuKham] ([MaPK])
GO
ALTER TABLE [dbo].[ChiDinhDungThuoc] CHECK CONSTRAINT [FK_ChiDinhDungThuoc_PhieuKham]
GO
ALTER TABLE [dbo].[ChiDinhDungThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ChiDinhDungThuoc_Thuoc] FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc])
GO
ALTER TABLE [dbo].[ChiDinhDungThuoc] CHECK CONSTRAINT [FK_ChiDinhDungThuoc_Thuoc]
GO
ALTER TABLE [dbo].[CT_DanhSachKham]  WITH CHECK ADD  CONSTRAINT [FK_CT_DanhSachKham_BenhNhan] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[CT_DanhSachKham] CHECK CONSTRAINT [FK_CT_DanhSachKham_BenhNhan]
GO
ALTER TABLE [dbo].[CT_DanhSachKham]  WITH CHECK ADD  CONSTRAINT [FK_CT_DanhSachKham_DanhSachKham] FOREIGN KEY([MaDS])
REFERENCES [dbo].[DanhSachKham] ([MaDS])
GO
ALTER TABLE [dbo].[CT_DanhSachKham] CHECK CONSTRAINT [FK_CT_DanhSachKham_DanhSachKham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_BenhNhan] FOREIGN KEY([MaBN])
REFERENCES [dbo].[SoKhamBenh] ([MaBN])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_BenhNhan]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNVGiaoThuoc])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien1] FOREIGN KEY([MaNVThanhToan])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien1]
GO
ALTER TABLE [dbo].[LogHeThong]  WITH CHECK ADD  CONSTRAINT [FK_LogHeThong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[LogHeThong] CHECK CONSTRAINT [FK_LogHeThong_NhanVien]
GO
ALTER TABLE [dbo].[PhieuKham]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKham_BenhNhan] FOREIGN KEY([MaBN])
REFERENCES [dbo].[SoKhamBenh] ([MaBN])
GO
ALTER TABLE [dbo].[PhieuKham] CHECK CONSTRAINT [FK_PhieuKham_BenhNhan]
GO
ALTER TABLE [dbo].[PhieuKham]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKham_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuKham] CHECK CONSTRAINT [FK_PhieuKham_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhapThuoc]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapThuoc_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhapThuoc] CHECK CONSTRAINT [FK_PhieuNhapThuoc_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhapThuoc]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapThuoc_Thuoc] FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc])
GO
ALTER TABLE [dbo].[PhieuNhapThuoc] CHECK CONSTRAINT [FK_PhieuNhapThuoc_Thuoc]
GO
ALTER TABLE [dbo].[PhieuThuChi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuChi_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuThuChi] CHECK CONSTRAINT [FK_PhieuThuChi_NhanVien]
GO
ALTER TABLE [dbo].[SoKhamBenh]  WITH CHECK ADD  CONSTRAINT [FK_SoKhamBenh_BenhNhan] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[SoKhamBenh] CHECK CONSTRAINT [FK_SoKhamBenh_BenhNhan]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_DonViThuoc] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DonViThuoc] ([MaDV])
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [FK_Thuoc_DonViThuoc]
GO
