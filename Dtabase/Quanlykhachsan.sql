CREATE DATABASE Quanlikhachsan1
USE Quanlikhachsan1
GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 19/12/2024 11:14:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhang](
	[IDkhachhang] [int] IDENTITY(1,1) NOT NULL,
	[Tenkhachhang] [varchar](250) NOT NULL,
	[Sdt] [bigint] NOT NULL,
	[Quoctich] [varchar](250) NOT NULL,
	[Gioitinh] [varchar](50) NOT NULL,
	[Ngaysinh] [varchar](50) NOT NULL,
	[Cccd] [varchar](250) NOT NULL,
	[Diachi] [varchar](350) NOT NULL,
	[Nhanphong] [varchar](250) NOT NULL,
	[Traphong] [varchar](250) NULL,
	[Thanhtoan] [varchar](250) NULL,
	[IDphong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDkhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 19/12/2024 11:14:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[IDnhanvien] [int] IDENTITY(1,1) NOT NULL,
	[Tennhanvien] [varchar](250) NOT NULL,
	[Sdt] [bigint] NOT NULL,
	[Gioitinh] [varchar](50) NOT NULL,
	[Email] [varchar](120) NOT NULL,
	[Tennguoidung] [varchar](150) NOT NULL,
	[Matkhau] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDnhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 19/12/2024 11:14:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[IDphong] [int] IDENTITY(1,1) NOT NULL,
	[Phongtrong] [varchar](250) NOT NULL,
	[Loaiphong] [varchar](250) NOT NULL,
	[Giuong] [varchar](250) NOT NULL,
	[Gia] [bigint] NOT NULL,
	[Dadat] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Khachhang] ADD  DEFAULT ('NO') FOR [Thanhtoan]
GO
ALTER TABLE [dbo].[Phong] ADD  DEFAULT ('NO') FOR [Dadat]
GO
ALTER TABLE [dbo].[Khachhang]  WITH CHECK ADD FOREIGN KEY([IDphong])
REFERENCES [dbo].[Phong] ([IDphong])
GO
