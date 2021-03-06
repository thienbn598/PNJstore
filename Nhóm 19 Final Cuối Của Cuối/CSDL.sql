CREATE DATABASE QuanLyBanHang
GO 
USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[BaiVietHeThong]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiVietHeThong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cCode] [nvarchar](20) NOT NULL CONSTRAINT [DF_BaiVietHeThong_cCode]  DEFAULT (''),
	[cValue] [ntext] NOT NULL CONSTRAINT [DF_BaiVietHeThong_cValue]  DEFAULT (''),
	[cLangID] [nvarchar](10) NOT NULL CONSTRAINT [DF_BaiVietHeThong_cLangID]  DEFAULT (''),
	[cUpdateTime] [datetime] NOT NULL CONSTRAINT [DF_BaiVietHeThong_cUpdateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_BaiVietHeThong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDonHang] [int] NULL,
	[IdSanPham] [int] NULL,
	[Soluong] [int] NULL,
	[Dongia] [float] NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Donhang_KhachHang]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Donhang_KhachHang](
	[IdDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Idkhachhang] [int] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[Yeucau] [ntext] NULL,
	[Kieuthanhtoan] [nvarchar](100) NULL,
	[Trangthai] [int] NULL,
	[Ngonngu] [char](3) NULL,
	[Duyet] [int] NULL,
	[Tennguoinhan] [nvarchar](50) NULL,
	[DTnguoinhan] [varchar](50) NULL,
	[EmailnguoiNhan] [varchar](50) NULL,
	[Diachinguoinhan] [nvarchar](200) NULL,
 CONSTRAINT [PK_Donhang_KhachHang_IdDonHang] PRIMARY KEY CLUSTERED 
(
	[IdDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupSupport]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupSupport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Ord] [int] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
 CONSTRAINT [PRK_GroupSupport_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangSX]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangSX](
	[IdHang] [int] IDENTITY(1,1) NOT NULL,
	[Mota] [ntext] NULL,
	[Website] [varchar](255) NULL,
	[LienHe] [nvarchar](max) NULL,
	[UTien] [int] NULL,
	[ThucThi] [int] NULL,
	[NgonNgu] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangSX_1] PRIMARY KEY CLUSTERED 
(
	[IdHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IdKhachhang] [int] IDENTITY(1,1) NOT NULL,
	[Tentruynhap] [nvarchar](100) NULL,
	[Matkhau] [nvarchar](200) NULL,
	[Tenkhachhang] [nvarchar](200) NULL,
	[Ngaysinh] [date] NULL,
	[Gioitinh] [smallint] NULL,
	[Diachi] [nvarchar](200) NULL,
	[Dienthoai] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[Cauhoi] [nvarchar](300) NULL,
	[Traloi] [nvarchar](30) NULL,
	[Muc] [smallint] NULL,
	[Ngaytao] [datetime] NULL,
	[TieuDe] [nvarchar](512) NULL,
	[Noidung] [nvarchar](max) NULL,
	[Thucthi] [smallint] NULL,
 CONSTRAINT [PK_KhachHang_IdKhachhang] PRIMARY KEY CLUSTERED 
(
	[IdKhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[IdLoai] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](256) NULL,
	[Tieude] [nvarchar](300) NULL,
	[Mota] [ntext] NULL,
	[Uutien] [smallint] NULL,
	[Hinhanh] [varchar](256) NULL,
	[Tukhoa] [nvarchar](300) NULL,
	[Thucthi] [int] NULL,
	[Vitri] [int] NULL,
	[Ngonngu] [varchar](5) NULL,
 CONSTRAINT [PRK_LoaiDT_IdLoai] PRIMARY KEY CLUSTERED 
(
	[IdLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Media]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NULL,
	[LienKet] [nvarchar](512) NULL,
	[Vitri] [int] NULL,
	[Loai] [int] NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[TieuDe] [nvarchar](50) NULL,
	[MoTa] [ntext] NULL,
	[Thutu] [int] NULL,
	[Trang] [nvarchar](50) NULL,
	[ThuMuc] [nvarchar](50) NULL,
	[Active] [bit] NULL CONSTRAINT [DF_ThucDon_Active]  DEFAULT ((1)),
	[LangID] [nvarchar](10) NULL,
 CONSTRAINT [PK_ThucDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[Username] [nvarchar](32) NOT NULL CONSTRAINT [DF_NguoiDung_Username]  DEFAULT (''),
	[Password] [nvarchar](100) NOT NULL CONSTRAINT [DF_NguoiDung_Password]  DEFAULT (''),
	[Status] [bit] NOT NULL CONSTRAINT [DF_NguoiDung_Status]  DEFAULT ((1)),
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdsName] [nvarchar](150) NOT NULL CONSTRAINT [DF_Ads_AdsName]  DEFAULT (''),
	[AdsUrl] [nvarchar](150) NOT NULL CONSTRAINT [DF_Ads_AdsUrl]  DEFAULT (''),
	[AdsImage] [nvarchar](150) NOT NULL CONSTRAINT [DF_Ads_AdsImage]  DEFAULT (''),
	[LangID] [nvarchar](10) NOT NULL CONSTRAINT [DF_Ads_LangID]  DEFAULT (N'vi-VN'),
	[AdsIndex] [int] NOT NULL CONSTRAINT [DF_Ads_AdsIndex]  DEFAULT ((1)),
	[AdsViewed] [int] NOT NULL CONSTRAINT [DF_Ads_AdsViewed]  DEFAULT ((0)),
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sanpham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [varchar](30) NULL,
	[IdLoai] [int] NOT NULL,
	[Ten] [nvarchar](256) NULL,
	[Model] [nvarchar](30) NULL,
	[MotaNgan] [nvarchar](300) NULL,
	[MotaChiTiet] [ntext] NULL,
	[TSKyThuat] [ntext] NULL,
	[Tukhoa] [nvarchar](300) NULL,
	[IdHang] [int] NULL,
	[NgayNhap] [date] NULL,
	[NgayCapNhatCuoi] [date] NULL,
	[GiaCu] [float] NULL,
	[GiaMoi] [float] NULL,
	[Uutien] [smallint] NULL,
	[ThucThi] [int] NULL,
	[HinhAnh] [nvarchar](300) NULL,
	[HinhAnh1] [nvarchar](300) NULL,
	[HinhAnh3] [nvarchar](300) NULL,
	[HinhAnh4] [nvarchar](300) NULL,
	[TieuBieu] [bit] NULL,
	[Ngonngu] [nvarchar](50) NULL,
 CONSTRAINT [PRK_DienThoai_IdDienThoai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Support]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Support](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Tel] [nvarchar](256) NULL,
	[Type] [int] NULL,
	[Nick] [varchar](128) NULL,
	[Ord] [int] NULL,
	[Active] [int] NULL,
	[GroupSupportId] [int] NULL,
	[Lang] [varchar](5) NULL,
	[Location] [int] NULL,
 CONSTRAINT [PRK_Support_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbvisistor]    Script Date: 5/24/2021 4:46:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbvisistor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[iuseronline] [int] NULL,
	[ivisistor] [bigint] NULL,
	[iuseronlinedate] [int] NULL,
	[dateonline] [datetime] NULL,
 CONSTRAINT [PRK_tbvisistor_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BaiVietHeThong] ON 

INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (2, N'SupportOnline', N'<p>Đường d&acirc;y n&oacute;ng :&nbsp;<br />
<strong>+84 977358269</strong></p>
', N'vi-VN', CAST(N'2017-04-14 19:19:10.000' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (3, N'SupportOnline', N'<p>HotLine :&nbsp; <strong>+84&nbsp;<span id="ctl03_GridView1_ctl02_Label2"> 0977358269</span></strong></p>
<p>&nbsp;</p>', N'en-US', CAST(N'2011-04-11 17:10:33.200' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (4, N'AboutOne', N'<p style="text-align: center;"><embed height="303" width="418" type="application/x-shockwave-flash" menu="true" loop="true" play="true" src="/Images/flash/Nagar879_2.swf" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed></p>
<p>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="Word.Document" name="ProgId" />
<meta content="Microsoft Word 12" name="Generator" />
<meta content="Microsoft Word 12" name="Originator" />
<link href="file:///C:\DOCUME~1\NTB\LOCALS~1\Temp\msohtmlclip1\01\clip_filelist.xml" rel="File-List" />
<link href="file:///C:\DOCUME~1\NTB\LOCALS~1\Temp\msohtmlclip1\01\clip_themedata.thmx" rel="themeData" />
<link href="file:///C:\DOCUME~1\NTB\LOCALS~1\Temp\msohtmlclip1\01\clip_colorschememapping.xml" rel="colorSchemeMapping" /><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><style type="text/css">
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:-1610611985 1107304683 0 0 159 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-font-family:"Times New Roman";}
p
	{mso-style-priority:99;
	mso-style-unhide:no;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-font-family:"Times New Roman";}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-size:10.0pt;
	mso-ansi-font-size:10.0pt;
	mso-bidi-font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin:0in;
mso-para-margin-bottom:.0001pt;
mso-pagination:widow-orphan;
font-size:11.0pt;
font-family:"Calibri","sans-serif";
mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:"Times New Roman";
mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:"Times New Roman";
mso-bidi-theme-font:minor-bidi;}
</style>
<![endif]--></p>
<p>In the past, Nam Ha Garment Joint Stock Company was a State Company , has been established since 1969 with main function is doing domestic garment. We started export oversea since 1989. Our company has changed to joint stock company in 1999.</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp; With 45 years experience in garment field since 1969 , our company have&nbsp;been trusted and admired by domestic and international customers.&nbsp;</p>
<p style="vertical-align: top;" class="MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cover an area of 11,500 square meters, we have 24 sewing lines with&nbsp;over 600 morden garments equipment.</p>
<p style="vertical-align: top;" class="MsoNormal">We have &nbsp;600&nbsp;qualified experienced staffs&nbsp;and high skillful -hand workers.</p>
<p style="vertical-align: top;" class="MsoNormal">&nbsp;&nbsp; Every year we have made &nbsp;about 3 - 3.5 million PCs of products. Our main products are&nbsp;swimwears, fleece clothes and another knitted items&nbsp;with high quality exporting to &nbsp;USA, EU and another countries...</p>
<p style="vertical-align: top;" class="MsoNormal">&nbsp;&nbsp;&nbsp; In order to gain 10% to 20% of economic growth, we are implementing the project continues to develop the depth in order to improve efficiency and product quality.</p>
<p style="vertical-align: top;" class="MsoNormal">Namha Garment Joint Stock Company is willing to serve customer requirements and enter into business relation with domestic and international partners.</p>
<p style="text-align: justify;">&nbsp;</p>
<table width="100%" cellspacing="1" cellpadding="1" border="0">
    <tbody>
        <tr>
            <td width="200">&nbsp;</td>
            <td style="text-align: center;"><strong><span id="ctl13_InformationLabel">Chairman &amp; Director</span></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center;"><strong>(&nbsp;CEO)</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center;"><img height="109" width="180" alt="Nam Ha Garment Stock Company" src="/Images/image/Condau2.png" /></td>
        </tr>
    </tbody>
</table>
<p>&nbsp;</p>', N'en-US', CAST(N'2015-01-22 16:59:17.130' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (5, N'AboutOne', N'<p style="text-align: center"><embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" src="/Images/flash/Nagar879_2.swf" play="true" loop="true" menu="true" width="418" height="303"></embed></p>
<p style="text-align: justify">&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="text-align: justify; line-height: 200%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&ocirc;ng ty Cổ phần May Nam H&agrave; tiền th&acirc;n l&agrave; doanh nghiệp nh&agrave; nước được th&agrave;nh lập từ năm 1969 c&oacute; chức năng, nhiệm vụ SX - KD h&agrave;ng may mặc nội địa, đến năm 1989 chuyển sang l&agrave;m xuất khẩu v&agrave; cuối năm 1999 chuyển đổi th&agrave;nh C&ocirc;ng ty cổ phần.</p>
<div style="text-align: justify; line-height: 200%; margin: 0cm 0cm 10pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Từ năm 1969 đến nay, 33 năm SX-KD h&agrave;ng may mặc C&ocirc;ng ty đ&atilde; c&oacute; nhiều kinh nghiệm được kh&aacute;ch h&agrave;ng trong v&agrave; ngo&agrave;i nước t&iacute;n nhiệm, mến mộ.</div>
<div style="text-align: justify; line-height: 200%; margin: 0cm 0cm 10pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hiện tại C&ocirc;ng ty c&oacute;&nbsp;24 d&acirc;y chuyền với hơn 600 thiết bị may v&agrave; nh&agrave; xưởng hiện đại, khang trang tr&ecirc;n diện t&iacute;ch 11.500 m2 với tr&ecirc;n 600 lao động c&oacute; năng lực kinh nghiệm v&agrave; tay nghề cao. H&agrave;ng năm C&ocirc;ng ty sản xuất 3 -3,5 triệu&nbsp;sản phẩm. Mặt h&agrave;ng chủ yếu của C&ocirc;ng ty l&agrave;: quần &aacute;o bơi, &aacute;o nỉ v&agrave; c&aacute;c loại&nbsp;sản phẩm dệt kim kh&aacute;c. Sản phẩm của ch&uacute;ng t&ocirc;i&nbsp;c&oacute; chất lượng cao, đ&aacute;p ứng y&ecirc;u cầu kh&aacute;ch h&agrave;ng v&agrave; đ&atilde; xuất khẩu&nbsp; sang&nbsp; Mỹ, EU v&agrave;&nbsp;một số nước kh&aacute;c.</div>
<div style="text-align: justify; line-height: 200%; margin: 0cm 0cm 10pt">&nbsp;&nbsp;&nbsp;&nbsp; C&ocirc;ng ty đang thực hiện dự &aacute;n tiếp tục đầu tư mở rộng sản xuất, n&acirc;ng cao chất lượng sản phẩm, phần đấu đạt sự tăng trưởng&nbsp;từ 10 &ndash; 20%/ năm.</div>
<div style="text-align: justify; line-height: 200%; margin: 0cm 0cm 10pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&ocirc;ng ty Cổ phần May Nam H&agrave; sẵn s&agrave;ng phục vụ y&ecirc;u cầu của kh&aacute;ch h&agrave;ng, li&ecirc;n doanh, li&ecirc;n kết với c&aacute;c đơn vị kinh tế trong v&agrave; ngo&agrave;i nước</div>
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center"><strong>Chủ tịch Hội đồng Quản trị</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center"><strong>Ki&ecirc;m Gi&aacute;m đốc điều h&agrave;nh</strong></td>
        </tr>
        <tr>
            <td width="200">&nbsp;</td>
            <td style="text-align: center"><img alt="C&ocirc;ng ty cổ phần may Nam H&agrave;" align="middle" width="180" height="109" src="/Images/image/Condau2.png" /></td>
        </tr>
    </tbody>
</table>
<div style="text-align: justify; margin: 0cm 0cm 10pt">&nbsp;</div>', N'vi-VN', CAST(N'2016-02-20 13:53:48.350' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (6, N'Address', N'<p><strong>TRANG SỨC PNJ</strong><br />
Address:&nbsp; 175 - Tây Sơn - Hà Nội.<br />
Phone: &nbsp;0977358269 - Fax: 0868671295.</p>', N'en-US', CAST(N'2014-03-26 14:19:42.267' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (7, N'Address', N'<p><strong>TRANG SỨC PNJ</strong><br />
Địa chỉ:&nbsp; 175 - Tây Sơn - Hà Nội.<br />
Điện thoại: &nbsp;0977358269 - Fax: 0868671295.</p>', N'vi-VN', CAST(N'2011-06-06 08:36:18.820' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (8, N'QualityPolicy', N'<p style="text-align: center; line-height: 200%">&nbsp;</p>
<p style="text-align: center; line-height: 200%"><strong>&nbsp;POLICY&nbsp;OF QUALITY - ENVIRONMENT - SOCIAL RESPONSIBILITY</strong></p>
<p style="text-align: justify; line-height: 200%"><span style="font-size: 9pt">&nbsp;&nbsp; Nam Ha Garment Joint &nbsp;Stock Company is a professional manufacturer of garment. We commit to maintain and continuously improve the management system integrating of quality - environmental - social responsibility according to standard of PAS 99: 2012, meet the requirement of standards ISO 9001 - ISO 14001 - SA 8000 in order to make the best motto <em><strong>&quot;perfect quality, timely delivery &quot;</strong></em> and build a factory&nbsp; </span><em><strong><span style="font-size: 9pt">&quot;green, clean &amp; sustainable development &quot;.<br />
</span></strong></em></p>
<p style="text-align: right; line-height: 200%"><em><span style="font-size: 9pt">Nam Dinh, January 01, 01 2013<strong>&nbsp;</strong></span></em><span style="font-size: 9pt"><strong>&nbsp;</strong></span></p>
<p style="text-align: right; line-height: 200%"><span style="font-size: 9pt"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NAM HA GARMENT STOCK COMPANY </strong></span></p>', N'en-US', CAST(N'2016-02-20 13:53:05.247' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (9, N'CustomerBrands', N'<p style="text-align: center"><img hspace="5" alt="Đối t&aacute;c - Ch&uacute;ng t&ocirc;i lu&ocirc;n s&aacute;t c&aacute;nh c&ugrave;ng bạn" vspace="5" align="absMiddle" width="368" height="284" src="/Images/image/HopTac.png" /></p>
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td width="50%"><strong>&nbsp;1&nbsp;- GAP :</strong></td>
            <td><strong>OLD NAVY, GAP</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;<strong>2 - TARGET :</strong>&nbsp;</td>
            <td><strong>MOSSIMO Suply Co.</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td><strong>NO BOUNDARIES</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td><strong>CHEROKEE</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td><strong>MERONA</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td>&nbsp;<strong>ISSAC MIZRAHI</strong>&nbsp;</td>
        </tr>
        <tr>
            <td width="50%"><strong>3- WALMART</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td width="50%"><strong>4- NIKE</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td width="50%"><strong>5- JCPenney</strong></td>
            <td><strong>&nbsp;ANNA, others</strong></td>
        </tr>
        <tr>
            <td width="50%"><strong>6- Kohl''s:</strong></td>
            <td><strong>&nbsp;SONOMA, APT, others</strong></td>
        </tr>
        <tr>
            <td width="50%"><strong>7- Cosco</strong></td>
            <td><strong>&nbsp;</strong></td>
        </tr>
        <tr>
            <td width="50%"><strong>8- QUICKSILVER</strong>:</td>
            <td>&nbsp;<strong>QUICKSILVER</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td><strong>&nbsp;ROXY<br />
            </strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </tbody>
</table>
<p style="text-align: center"><img alt="" align="absMiddle" width="340" height="242" src="/Images/image/map.jpg" /></p>', N'vi-VN', CAST(N'2016-02-23 15:38:03.887' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (10, N'CustomerBrands', N'<p style="text-align: center"><img hspace="5" alt="Friend " vspace="5" align="absMiddle" width="368" height="284" src="/Images/image/HopTac.png" /></p>
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td width="50%"><strong>1&nbsp;- GAP :</strong></td>
            <td><strong>OLD NAVY, GAP<br />
            </strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;<strong>2 - TARGET :</strong></td>
            <td><strong>MOSSIMO Suply Co.<br />
            </strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td><strong>NO BOUNDARIES</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td><strong>CHEROKEE</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td><strong>MERONA</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td>&nbsp;<strong>ISSAC MIZRAHI</strong>&nbsp;</td>
        </tr>
        <tr>
            <td width="50%"><strong>3- WALMART<br />
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td width="50%"><strong>4- NIKE</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td width="50%"><strong>5- JCPenney</strong></td>
            <td><strong>&nbsp;ANNA, others</strong></td>
        </tr>
        <tr>
            <td width="50%"><strong>6- Kohl''s:</strong></td>
            <td>&nbsp;<strong>SONOMA, APT,others</strong></td>
        </tr>
        <tr>
            <td width="50%"><strong>7- Cosco</strong></td>
            <td><strong>&nbsp;</strong></td>
        </tr>
        <tr>
            <td width="50%"><strong>8 - QUICKSILVER:</strong></td>
            <td>&nbsp;<strong>QUICKSILVER</strong></td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td>&nbsp;<strong> ROXY</strong>&nbsp;</td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </tbody>
</table>
<p style="text-align: center"><img alt="" align="absMiddle" width="340" height="242" src="/Images/image/map.jpg" /></p>', N'en-US', CAST(N'2016-02-23 15:38:30.197' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (11, N'QualityPolicy', N'<p style="text-align: center"><span style="font-family: ''.VnTime''; font-size: 14pt"><v:shapetype id="_x0000_t75" path="m@4@5l@4@11@9@11@9@5xe" coordsize="21600,21600" o:spt="75" o:preferrelative="t" filled="f" stroked="f"></v:shapetype></span></p>
<p style="text-align: center"><span style="font-family: ''.VnTime''; font-size: 14pt"><span style="font-size: small"><br />
</span></span></p>
<p style="text-align: center"><span style="font-family: ''.VnTime''; font-size: 14pt"><v:shapetype id="_x0000_t75" path="m@4@5l@4@11@9@11@9@5xe" coordsize="21600,21600" o:spt="75" o:preferrelative="t" filled="f" stroked="f"><strong><span style="font-family: Times New Roman"><span style="font-size: small">CH&Iacute;NH S&Aacute;CH &nbsp;CHẤT LƯỢNG - M&Ocirc;I TRƯỜNG - TR&Aacute;CH NHIỆM X&Atilde; HỘI</span></span></strong></v:shapetype></span></p>
<p style="text-align: justify; line-height: 200%"><span style="font-size: small"><span style="font-family: Arial">&nbsp;C&ocirc;ng ty cổ phần may Nam H&agrave; l&agrave; nh&agrave; sản xuất chuy&ecirc;n nghiệp h&agrave;ng may mặc. Ch&uacute;ng t&ocirc;i cam kết duy tr&igrave; v&agrave; li&ecirc;n tục cải tiến hệ thống quản l&yacute; t&iacute;ch hợp chất lượng - m&ocirc;i trường- tr&aacute;ch nhiệm x&atilde; hội theo ti&ecirc;u chuẩn ISO 9001 - ISO 14001 - SA 8000 nhằm thực hiện tốt nhất phương ch&acirc;m <em><strong>&quot;Chất lượng ho&agrave;n hảo, giao h&agrave;ng đ&uacute;ng hẹn&quot;</strong></em> v&agrave; x&acirc;y dựng nh&agrave; m&aacute;y </span></span><em><strong><span style="font-size: small"><span style="font-family: Arial">&quot; Xanh, sạch, ph&aacute;t triển bền vững&quot;</span>.<br />
</span></strong></em></p>
<p style="text-align: right; line-height: 200%"><em><span style="font-size: small">Nam&nbsp;định, Ng&agrave;y 01 th&aacute;ng 01 năm 2013</span></em></p>
<p style="text-align: right; line-height: 200%"><span style="font-size: small"><span style="font-family: ''.VnTime''; font-size: 14pt"><v:shapetype id="_x0000_t75" path="m@4@5l@4@11@9@11@9@5xe" coordsize="21600,21600" o:spt="75" o:preferrelative="t" filled="f" stroked="f"><strong><span style="font-family: Times New Roman"><span style="font-size: small">&nbsp;&nbsp;C&Ocirc;NG TY CỔ PHẦN MAY&nbsp;NAM H&Agrave;</span></span></strong></v:shapetype></span></span></p>', N'vi-VN', CAST(N'2016-02-20 13:52:21.917' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (12, N'ContactUs', N'<p style="text-align: center">&nbsp;</p>
<p style="text-align: center"><strong>NAMHA GARMENT JOINT STOCK COMPANY</strong><br />
Địa chỉ: 175 Tây Sơn Str., Hà Nội , Vietnam.<br />
Điện thoại: 84-977358269<br />
Fax: 84-0350-3644767<br />
Email: hctthien@gmail.com<br />
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td>Chủ tịch HĐQT &amp; Gi&aacute;m đốc :</td>
            <td><strong>&Ocirc;ng Hồ Chí Thiện</strong></td>
            <td>Mobile: 0977 358 269</td>
        </tr>
        <tr>
            <td>Ph&oacute; gi&aacute;m đốc :</td>
            <td><strong>Bà Hoàng Thị Mai</strong></td>
            <td>Mobile: 0923 300 8476</td>
        </tr>
        <tr>
            <td>Trưởng ph&ograve;ng kế hoạch :</td>
            <td><strong>Bà Cao Thị Bích Phương</strong></td>
            <td>Mobile: 0375 866 457</td>
        </tr>
        <tr>
            <td>Tr&shy;ưởng ph&ograve;ng kế to&aacute;n :</td>
            <td><strong>Bà Trần Thị Kim Anh</strong></td>
            <td>Mobile: 0392 070 649</td>
        </tr>
        <tr>
            <td>Trưởng ph&ograve;ng kỹ thuật :</td>
            <td><strong>Ông Nguyễn Ngọc Trung</strong></td>
            <td>Mobile: 0326 266 150</td>
        </tr>
        <tr>
            <td>Ch&aacute;nh văn ph&ograve;ng :</td>
            <td>
            <p><strong>Ông Đặng Tiến Tuấn</strong></p>
            </td>
            <td>Mobile: 0352 224 044</td>
        </tr>
        <tr>
            <td>Trưởng ph&ograve;ng KCS :</td>
            <td><strong>Ông Hoàng Hải Long</strong></td>
            <td>Mobile: 0385 913 488</td>
        </tr>
    </tbody>
</table>
<p>&nbsp;</p>', N'vi-VN', CAST(N'2015-10-23 08:19:06.593' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (13, N'ContactUs', N'<p style="text-align: center">&nbsp;</p>
<p style="text-align: center"><strong>NAMHA GARMENT JOINT STOCK COMPANY</strong><br />
Adress: 175 Tay Son Str., Hanoi , Vietnam.<br />
Phone: 84-977358269<br />
Fax: 84-0350-3644767<br />
Email: hctthien@gmail.com<br />
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td>Chủ tịch HĐQT &amp; Gi&aacute;m đốc :</td>
            <td><strong>&Ocirc;ng Hồ Chí Thiện</strong></td>
            <td>Mobile: 0977 358 269</td>
        </tr>
        <tr>
            <td>Ph&oacute; gi&aacute;m đốc :</td>
            <td><strong>Bà Hoàng Thị Mai</strong></td>
            <td>Mobile: 0923 300 8476</td>
        </tr>
        <tr>
            <td>Trưởng ph&ograve;ng kế hoạch :</td>
            <td><strong>Bà Cao Thị Bích Phương</strong></td>
            <td>Mobile: 0375 866 457</td>
        </tr>
        <tr>
            <td>Tr&shy;ưởng ph&ograve;ng kế to&aacute;n :</td>
            <td><strong>Bà Trần Thị Kim Anh</strong></td>
            <td>Mobile: 0392 070 649</td>
        </tr>
        <tr>
            <td>Trưởng ph&ograve;ng kỹ thuật :</td>
            <td><strong>Ông Nguyễn Ngọc Trung</strong></td>
            <td>Mobile: 0326 266 150</td>
        </tr>
        <tr>
            <td>Ch&aacute;nh văn ph&ograve;ng :</td>
            <td>
            <p><strong>Ông Đặng Tiến Tuấn</strong></p>
            </td>
            <td>Mobile: 0352 224 044</td>
        </tr>
        <tr>
            <td>Trưởng ph&ograve;ng KCS :</td>
            <td><strong>Ông Hoàng Hải Long</strong></td>
            <td>Mobile: 0385 913 488</td>
        </tr>
    </tbody>
</table>
<p>&nbsp;</p>', N'en-US', CAST(N'2016-02-20 13:52:00.950' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (14, N'Location', N'<p>&nbsp;</p>
<p style="text-align: center"><img hspace="3" alt="Bản đồ đường đi đến c&ocirc;ng ty may Nam H&agrave;" vspace="3" align="absMiddle" width="400" height="460" src="/Images/image/BanDoVN.png" /></p>
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td width="150">Cảng biển gần nhất::</td>
            <td><strong>&nbsp;Cảng Hải ph&ograve;ng&nbsp;</strong></td>
        </tr>
        <tr>
            <td width="150">C&aacute;ch cảng gần nhất:</td>
            <td><strong>&nbsp;100 km</strong></td>
        </tr>
        <tr>
            <td width="150">C&aacute;ch s&acirc;n bay&nbsp;Nội b&agrave;i( H&agrave; nội):</td>
            <td><strong>&nbsp;115 km</strong></td>
        </tr>
        <tr>
            <td width="150">C&aacute;ch s&acirc;n bay C&aacute;t bi (Hải ph&ograve;ng):</td>
            <td><strong>&nbsp;105 km</strong></td>
        </tr>
        <tr>
            <td width="150">Trạm cứu hoả gần nhất:</td>
            <td><strong>&nbsp;Trạm cứu hoả TP Nam Định</strong></td>
        </tr>
        <tr>
            <td width="150">C&aacute;ch trạm cứu hoả gần nhất :</td>
            <td><strong>&nbsp;3 km</strong></td>
        </tr>
    </tbody>
</table>
<p>&nbsp;</p>', N'vi-VN', CAST(N'2016-02-20 13:51:42.483' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (15, N'Location', N'<p>&nbsp;</p>
<p><img hspace="2" alt="Map " vspace="2" align="absMiddle" width="400" height="462" src="/Images/image/BanDoEN.png" /></p>
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td width="150"><span style="font-size: small"><span style="font-family: Times New Roman">Nearest seaport:</span></span></td>
            <td><span style="font-size: small"><span style="font-family: Times New Roman"><strong>&nbsp;Hai Phong Port</strong></span></span></td>
        </tr>
        <tr>
            <td width="150"><span style="font-size: small"><span style="font-family: Times New Roman">Distant from seaport :</span></span></td>
            <td><span style="font-size: small"><span style="font-family: Times New Roman"><strong>&nbsp;100 km</strong></span></span></td>
        </tr>
        <tr>
            <td width="150"><span style="font-size: small"><span style="font-family: Times New Roman"><span style="font-size: small"><span style="font-family: Times New Roman">Distant from </span></span>Noi bai (Ha noi) airport:</span></span></td>
            <td><span style="font-size: small"><span style="font-family: Times New Roman"><strong>&nbsp;<span style="font-size: small"><span style="font-family: Times New Roman"><strong>&nbsp;115 km</strong></span></span></strong></span></span></td>
        </tr>
        <tr>
            <td width="150"><span style="font-size: small"><span style="font-family: Times New Roman">Distant from Cat bi (Hai phong city) airport:</span></span></td>
            <td><span style="font-size: small"><span style="font-family: Times New Roman"><strong>&nbsp; 105 km</strong></span></span></td>
        </tr>
        <tr>
            <td width="150"><span style="font-size: small"><span style="font-family: Times New Roman">Dis. from Fire- station:</span></span></td>
            <td><span style="font-size: small"><span style="font-family: Times New Roman"><strong>&nbsp;Nam Dinh''s fire-station</strong></span></span></td>
        </tr>
        <tr>
            <td width="150"><span style="font-size: small"><span style="font-family: Times New Roman">&nbsp;</span></span></td>
            <td><span style="font-size: small"><span style="font-family: Times New Roman"><strong>&nbsp;3 km</strong></span></span></td>
        </tr>
    </tbody>
</table>
<p style="text-align: center">&nbsp;</p>', N'en-US', CAST(N'2016-02-20 13:51:18.560' AS DateTime))



INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (19, N'GeneralInformation', N'<p style="text-align: center; line-height: 200%"><br />
&nbsp;<strong><span style="font-size: medium"><span style="font-family: ''Times New Roman''; mso-fareast-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">T&Ocirc;N CHỈ CỦA C&Ocirc;NG TY CỔ PHẦN MAY </span></span></strong><span style="font-family: ''Times New Roman''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><st1:country-region w:st="on"><st1:place w:st="on"><strong><span style="font-size: medium">NAM</span></strong></st1:place></st1:country-region></span><strong><span style="font-size: medium"><span style="font-family: ''Times New Roman''; mso-fareast-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> H&Agrave;<br />
</span></span></strong></p>
<p style="text-align: justify; line-height: 200%"><span style="font-size: small">&nbsp;&nbsp; &bull; C&ocirc;ng ty cổ phần may Nam H&agrave; nh&igrave;n nhận việc sản xuất v&agrave; cung ứng c&aacute;c sản phẩm may mặc c&oacute; chất lượng ng&agrave;y c&agrave;ng ho&agrave;n thiện l&agrave; g&oacute;p phần l&agrave;m đẹp cho con người v&agrave; cuộc sống x&atilde; hội.</span></p>
<p style="text-align: justify; line-height: 200%"><span style="font-size: small"><span style="font-size: small">&nbsp;&nbsp; &bull; </span>Mọi th&agrave;nh vi&ecirc;n trong C&ocirc;ng ty cổ phần may Nam H&agrave; lu&ocirc;n coi lao động l&agrave; nguồn sống, niềm vui v&agrave; hạnh ph&uacute;c ch&acirc;n ch&iacute;nh.</span></p>
<p style="text-align: justify; line-height: 200%"><span style="font-size: small"><span style="font-size: small">&nbsp;&nbsp; &bull; </span>C&ocirc;ng ty cổ phần may Nam H&agrave; lu&ocirc;n đề cao gi&aacute; trị tư c&aacute;ch c&ocirc;ng d&acirc;n tốt v&agrave; đạo đức nghề nghiệp của c&aacute;n bộ, c&ocirc;ng nh&acirc;n&nbsp;- lao động : Trung thực, tận tụy v&agrave; s&aacute;ng tạo.</span></p>
<p style="text-align: justify; line-height: 200%"><span style="font-size: small"><span style="font-size: small">&nbsp;&nbsp; &bull; </span>C&ocirc;ng ty cổ phần may Nam H&agrave; hoạt động nhằm tạo ra lợi nhuận vừa phải để ph&aacute;t triển doanh nghiệp v&igrave; mục đ&iacute;ch nh&acirc;n văn.</span></p>
<p style="text-align: justify; line-height: 200%"><span style="font-size: small"><span style="font-size: small">&nbsp;&nbsp; &bull;&nbsp;</span>C&ocirc;ng ty cổ phần may Nam H&agrave;&nbsp;tr&acirc;n trọng gi&aacute; trị, nh&acirc;n phẩm của người lao động v&agrave; x&acirc;y dựng một m&ocirc;i trường l&agrave;m việc đồng t&acirc;m, hiệp lực c&ugrave;ng thăng tiến, c&ugrave;ng chia sẻ sự th&agrave;nh c&ocirc;ng của doanh&nbsp;nghiệp.</span></p>
<div style="text-align: justify; line-height: 150%; margin: 0in 0in 0pt">&nbsp;</div>
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td width="200">&nbsp;</td>
            <td style="text-align: center"><span style="font-size: x-small"><strong><span style="font-family: ''Times New Roman''; mso-fareast-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">T/M HỘI ĐỒNG QUẢN TRỊ<br />
            <strong><span style="font-size: x-small">CHỦ TỊCH HỘI ĐỒNG QUẢN TRỊ</span></strong><br />
            <em>Đo&agrave;n Tiến Dũng</em></span></strong></span></td>
        </tr>
        <tr>
            <td width="200">&nbsp;</td>
            <td valign="top" style="text-align: center">
            <p>&nbsp;</p>
            </td>
        </tr>
    </tbody>
</table>
<p>&nbsp;</p>', N'vi-VN', CAST(N'2016-02-20 13:48:51.263' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (20, N'GeneralInformation', N'<div style="text-align: center; line-height: 150%; margin: 0in 0in 0pt">&nbsp;&nbsp;<br />
<strong><span style="font-family: ''Times New Roman''; font-size: 12pt; mso-fareast-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">CREDO OF </span></strong><st1:place w:st="on"><st1:country-region w:st="on"><strong><span style="font-family: ''Times New Roman''; font-size: 11pt; mso-fareast-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">NAM</span></strong></st1:country-region></st1:place><strong><span style="font-family: ''Times New Roman''; font-size: 11pt; mso-fareast-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"> HA GARMENT JOINT STOCK COMPANY<br />
</span></strong></div>
<p style="text-align: justify"><span style="font-size: small">&nbsp;&nbsp;&nbsp;<span style="background: white; color: black"><span>&nbsp;&nbsp;</span></span></span>&nbsp;</p>
<div style="text-align: justify; vertical-align: top"><span style="background: white; color: black"><span>&nbsp;&nbsp; &bull; Nam Ha Garment Joint Stock Company recognizes that the production and supplying of&nbsp;hight qualified garment products means to beauty &nbsp;for people and social life. </span></span></div>
<div style="text-align: justify; vertical-align: top">&nbsp;</div>
<div style="text-align: justify; vertical-align: top"><span style="background: white; color: black"><span>&nbsp;&nbsp; &bull; All members of the&nbsp;</span>Nam Ha Garment Joint Stock Company&nbsp;&nbsp;<span>always consider labour to a source of life, joy and true happiness.</span></span></div>
<div style="text-align: justify; vertical-align: top">&nbsp;</div>
<div style="text-align: justify; vertical-align: top"><span style="background: white; color: black"><span>&nbsp;&nbsp; &bull;&nbsp;</span>Nam Ha Garment Joint Stock Company appreciates<span>&nbsp;to the value of good citizenship behaviour and professional ethics of our officers and employees: honest, devotion and creativity.</span></span></div>
<div style="text-align: justify; vertical-align: top">&nbsp;</div>
<div style="text-align: justify; vertical-align: top"><span style="background: white; color: black"><span>&nbsp;&nbsp; &bull;&nbsp;</span>Nam Ha Garment Joint Stock Company&nbsp;<span>&nbsp;operates to create moderate profits to develop our company for the humanitarian purposes.</span></span></div>
<div style="text-align: justify; vertical-align: top">&nbsp;</div>
<div style="text-align: justify; vertical-align: top"><span style="background: white; color: black"><span>&nbsp;&nbsp; &bull;&nbsp;</span>Nam Ha Garment Joint Stock Company&nbsp;<span>respects employee''s&nbsp;value and&nbsp;dignity , builds a concentric &amp; synergies working- environment with the&nbsp;</span></span>uniting aim to advance and share the success of the enterprise .</div>
<div>
<p style="text-align: justify">&nbsp;</p>
<table border="0" cellspacing="1" cellpadding="0" width="100%" style="width: 100%">
    <tbody>
        <tr>
            <td width="200" style="border-bottom: #ebe9ed; border-left: #ebe9ed; padding-bottom: 0.75pt; background-color: transparent; padding-left: 0.75pt; width: 150pt; padding-right: 0.75pt; border-top: #ebe9ed; border-right: #ebe9ed; padding-top: 0.75pt">
            <div>&nbsp;&nbsp;</div>
            </td>
            <td style="border-bottom: #ebe9ed; border-left: #ebe9ed; padding-bottom: 0.75pt; background-color: transparent; padding-left: 0.75pt; padding-right: 0.75pt; border-top: #ebe9ed; border-right: #ebe9ed; padding-top: 0.75pt">
            <div align="center"><strong>On behalf of the board</strong></div>
            <div align="center"><strong>President</strong></div>
            <div align="center"><strong><i>Doan Tien Dung</i></strong></div>
            </td>
        </tr>
        <tr>
            <td style="border-bottom: #ebe9ed; border-left: #ebe9ed; padding-bottom: 0.75pt; background-color: transparent; padding-left: 0.75pt; padding-right: 0.75pt; border-top: #ebe9ed; border-right: #ebe9ed; padding-top: 0.75pt">
            <div>&nbsp;</div>
            </td>
            <td style="border-bottom: #ebe9ed; border-left: #ebe9ed; padding-bottom: 0.75pt; background-color: transparent; padding-left: 0.75pt; padding-right: 0.75pt; border-top: #ebe9ed; border-right: #ebe9ed; padding-top: 0.75pt">
            <div align="center">&nbsp;</div>
            </td>
        </tr>
    </tbody>
</table>
</div>', N'en-US', CAST(N'2016-02-20 13:48:34.393' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (21, N'AboutUs', N'<p>&nbsp;</p>
<p style="text-align: center"><embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" src="/Images/flash/Nagar879_2.swf" play="true" loop="true" menu="true" width="418" height="303"></embed></p>
<p style="text-align: center"><span style="font-family: Arial"><strong><span style="font-size: medium">INTRODUCTION</span></strong></span></p>
<p style="text-align: justify"><span style="font-size: small"><span style="line-height: 150%">&nbsp;&nbsp;&nbsp;&nbsp;</span></span>In the past, Nam Ha Garment Joint Stock Company was a State Company , has been established since 1969 with main function is doing domestic garment. We started export oversea since 1989. Our company has changed to joint stock company in 1999.</p>
<p style="text-align: justify">&nbsp;&nbsp;&nbsp;&nbsp; With 45 years experience in garment field since 1969 , our company have&nbsp;been trusted and admired by domestic and international customers.&nbsp;</p>
<div style="text-align: justify; vertical-align: top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cover an area of 11,500 square meters, we have 24 sewing lines with&nbsp;over 600 morden garments equipment.</div>
<div style="text-align: justify; vertical-align: top">We have &nbsp;600&nbsp;qualified experienced staffs&nbsp;and high skillful -hand workers.</div>
<div style="text-align: justify; vertical-align: top">&nbsp;&nbsp; Every year we have made &nbsp;about 3 - 3.5 million PCs of products. Our main products are&nbsp;swimwears, fleece clothes and another knitted items&nbsp;with high quality exporting to &nbsp;USA, EU and another countries...</div>
<div style="text-align: justify; vertical-align: top">&nbsp;&nbsp;&nbsp; In order to gain 10% to 20% of economic growth, we are implementing the project continues to develop the depth in order to improve efficiency and product quality.</div>
<div style="text-align: justify; vertical-align: top">Namha Garment Joint Stock Company is willing to serve customer requirements and enter into business relation with domestic and international partners.</div>
<p style="text-align: justify">
<table border="0" cellspacing="1" cellpadding="1" width="100%">
    <tbody>
        <tr>
            <td width="200">&nbsp;</td>
            <td style="text-align: center"><strong><span id="ctl13_InformationLabel">Chairman &amp; Director</span></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center"><em><strong>Doan Tien Dung</strong></em></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
    </tbody>
</table>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>', N'en-US', CAST(N'2016-02-20 13:48:10.353' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (22, N'Banner', N'/Media/Image/banner02.png', N'vi-VN', CAST(N'2017-03-07 09:40:00.703' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (23, N'SearchText', N'TÌM KIẾM', N'vi-VN', CAST(N'2017-03-13 20:16:46.047' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (24, N'SearchText', N'SEARCH', N'en-US', CAST(N'2017-03-13 20:17:08.920' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (25, N'ProductTemplate', N'DANH MỤC SẢN PHẨM MẪU', N'vi-VN', CAST(N'2017-03-13 20:17:42.793' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (26, N'ProductTemplate', N'PRODUCT TEMPLATE', N'en-US', CAST(N'2017-03-13 20:19:48.157' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (27, N'Support', N'HỖ TRỢ TRỰC TUYẾN', N'vi-VN', CAST(N'2017-03-13 20:20:58.493' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (28, N'Support', N'SUPPORT ONLINE', N'en-US', CAST(N'2017-03-13 20:22:02.533' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (29, N'Hotline', N'Hotline', N'en-US', CAST(N'2017-03-13 20:22:51.690' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (30, N'Hotline', N'Đường dây nóng', N'vi-VN', CAST(N'2017-03-13 20:23:07.587' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (31, N'HotNumber', N'+84 977358269
', N'vi-VN', CAST(N'2017-05-05 00:01:16.000' AS DateTime))
INSERT [dbo].[BaiVietHeThong] ([ID], [cCode], [cValue], [cLangID], [cUpdateTime]) VALUES (32, N'HotNumber', N'+84 977358269', N'en-US', CAST(N'2017-03-13 20:48:38.483' AS DateTime))
SET IDENTITY_INSERT [dbo].[BaiVietHeThong] OFF
SET IDENTITY_INSERT [dbo].[Chitietdonhang] ON 

INSERT [dbo].[Chitietdonhang] ([Id], [IdDonHang], [IdSanPham], [Soluong], [Dongia]) VALUES (11, 0, 16, 1, 150000)
INSERT [dbo].[Chitietdonhang] ([Id], [IdDonHang], [IdSanPham], [Soluong], [Dongia]) VALUES (12, 0, 16, 1, 150000)
INSERT [dbo].[Chitietdonhang] ([Id], [IdDonHang], [IdSanPham], [Soluong], [Dongia]) VALUES (13, 0, 16, 1, 150000)
INSERT [dbo].[Chitietdonhang] ([Id], [IdDonHang], [IdSanPham], [Soluong], [Dongia]) VALUES (1011, 0, 14, 1, 4500000)
INSERT [dbo].[Chitietdonhang] ([Id], [IdDonHang], [IdSanPham], [Soluong], [Dongia]) VALUES (1012, 0, 16, 2, 150000)
INSERT [dbo].[Chitietdonhang] ([Id], [IdDonHang], [IdSanPham], [Soluong], [Dongia]) VALUES (1013, 0, 15, 1, 400000)
INSERT [dbo].[Chitietdonhang] ([Id], [IdDonHang], [IdSanPham], [Soluong], [Dongia]) VALUES (1014, 1015, 16, 1, 150000)
INSERT [dbo].[Chitietdonhang] ([Id], [IdDonHang], [IdSanPham], [Soluong], [Dongia]) VALUES (1015, 1015, 14, 1, 4500000)
SET IDENTITY_INSERT [dbo].[Chitietdonhang] OFF
SET IDENTITY_INSERT [dbo].[Donhang_KhachHang] ON 

INSERT [dbo].[Donhang_KhachHang] ([IdDonHang], [Idkhachhang], [Ngaydat], [Ngaygiao], [Yeucau], [Kieuthanhtoan], [Trangthai], [Ngonngu], [Duyet], [Tennguoinhan], [DTnguoinhan], [EmailnguoiNhan], [Diachinguoinhan]) VALUES (13, 1, CAST(N'2017-05-06 19:29:04.547' AS DateTime), CAST(N'2017-05-09 00:00:00.000' AS DateTime), N'', N'Thanh toán trực tiếp', NULL, NULL, NULL, N'Nguyễn Mạnh Thắng', N'0868671295', NULL, N'Thái bình')
INSERT [dbo].[Donhang_KhachHang] ([IdDonHang], [Idkhachhang], [Ngaydat], [Ngaygiao], [Yeucau], [Kieuthanhtoan], [Trangthai], [Ngonngu], [Duyet], [Tennguoinhan], [DTnguoinhan], [EmailnguoiNhan], [Diachinguoinhan]) VALUES (14, 1, CAST(N'2017-05-06 19:32:01.983' AS DateTime), CAST(N'2017-05-09 00:00:00.000' AS DateTime), N'1234', N'Thanh toán trực tiếp', NULL, NULL, NULL, N'Nguyễn Mạnh Thắng', N'0868671295', NULL, N'Thái bình')
INSERT [dbo].[Donhang_KhachHang] ([IdDonHang], [Idkhachhang], [Ngaydat], [Ngaygiao], [Yeucau], [Kieuthanhtoan], [Trangthai], [Ngonngu], [Duyet], [Tennguoinhan], [DTnguoinhan], [EmailnguoiNhan], [Diachinguoinhan]) VALUES (15, 1, CAST(N'2017-05-06 19:32:58.373' AS DateTime), CAST(N'2017-05-09 00:00:00.000' AS DateTime), N'1', N'Thanh toán trực tiếp', NULL, NULL, NULL, N'Nguyễn Mạnh Thắng', N'0868671295', NULL, N'Thái bình')
INSERT [dbo].[Donhang_KhachHang] ([IdDonHang], [Idkhachhang], [Ngaydat], [Ngaygiao], [Yeucau], [Kieuthanhtoan], [Trangthai], [Ngonngu], [Duyet], [Tennguoinhan], [DTnguoinhan], [EmailnguoiNhan], [Diachinguoinhan]) VALUES (1013, 1, CAST(N'2017-05-08 22:51:02.147' AS DateTime), CAST(N'2017-05-11 00:00:00.000' AS DateTime), N'123', N'Thanh toán trực tiếp', NULL, NULL, NULL, N'Nguyễn Mạnh Thắng', N'0868671295', NULL, N'Thái bình')
INSERT [dbo].[Donhang_KhachHang] ([IdDonHang], [Idkhachhang], [Ngaydat], [Ngaygiao], [Yeucau], [Kieuthanhtoan], [Trangthai], [Ngonngu], [Duyet], [Tennguoinhan], [DTnguoinhan], [EmailnguoiNhan], [Diachinguoinhan]) VALUES (1014, 1, CAST(N'2017-05-15 09:28:45.677' AS DateTime), CAST(N'2017-05-18 00:00:00.000' AS DateTime), N'123123123', N'Thanh toán trực tiếp', NULL, NULL, NULL, N'Nguyễn Mạnh Thắng', N'0868671295', NULL, N'Thái bình')
INSERT [dbo].[Donhang_KhachHang] ([IdDonHang], [Idkhachhang], [Ngaydat], [Ngaygiao], [Yeucau], [Kieuthanhtoan], [Trangthai], [Ngonngu], [Duyet], [Tennguoinhan], [DTnguoinhan], [EmailnguoiNhan], [Diachinguoinhan]) VALUES (1015, 9, CAST(N'2021-05-24 16:30:40.647' AS DateTime), CAST(N'2021-05-27 00:00:00.000' AS DateTime), N'', N'Thanh toán trực tiếp', NULL, NULL, NULL, N'Ho Chi Thien', N'0974514788', NULL, N'Bắc Ninh')
SET IDENTITY_INSERT [dbo].[Donhang_KhachHang] OFF
SET IDENTITY_INSERT [dbo].[HangSX] ON 

INSERT [dbo].[HangSX] ([IdHang], [Mota], [Website], [LienHe], [UTien], [ThucThi], [NgonNgu]) VALUES (1, N'Chi Thien', N'<p><a href="http://TrangSucBacMT.com">http://TrangSucBacMT.com</a></p>
', N'<p>0977358269</p>
', 1, 1, N'vi-VN')
INSERT [dbo].[HangSX] ([IdHang], [Mota], [Website], [LienHe], [UTien], [ThucThi], [NgonNgu]) VALUES (4, N'Chi Thien 2', N'<p>abc</p>
', N'<p>0977358269</p>
', 1, 1, N'vi-VN')
SET IDENTITY_INSERT [dbo].[HangSX] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([IdKhachhang], [Tentruynhap], [Matkhau], [Tenkhachhang], [Ngaysinh], [Gioitinh], [Diachi], [Dienthoai], [Email], [Cauhoi], [Traloi], [Muc], [Ngaytao], [TieuDe], [Noidung], [Thucthi]) VALUES (1, N'thang', N'123456', N'Nguyễn Mạnh Thắng', NULL, NULL, N'Thái bình', N'0868671295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([IdKhachhang], [Tentruynhap], [Matkhau], [Tenkhachhang], [Ngaysinh], [Gioitinh], [Diachi], [Dienthoai], [Email], [Cauhoi], [Traloi], [Muc], [Ngaytao], [TieuDe], [Noidung], [Thucthi]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([IdKhachhang], [Tentruynhap], [Matkhau], [Tenkhachhang], [Ngaysinh], [Gioitinh], [Diachi], [Dienthoai], [Email], [Cauhoi], [Traloi], [Muc], [Ngaytao], [TieuDe], [Noidung], [Thucthi]) VALUES (5, N'hung', N'123456', N'Hoàng Đức Hưng', NULL, NULL, N'Tân Hòa Thái Bình', N'0868671296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([IdKhachhang], [Tentruynhap], [Matkhau], [Tenkhachhang], [Ngaysinh], [Gioitinh], [Diachi], [Dienthoai], [Email], [Cauhoi], [Traloi], [Muc], [Ngaytao], [TieuDe], [Noidung], [Thucthi]) VALUES (6, N'toan', N'123456', N'Nguyễn Văn Toán', NULL, NULL, N'Ý Yên - Nam Định', N'0123213411', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([IdKhachhang], [Tentruynhap], [Matkhau], [Tenkhachhang], [Ngaysinh], [Gioitinh], [Diachi], [Dienthoai], [Email], [Cauhoi], [Traloi], [Muc], [Ngaytao], [TieuDe], [Noidung], [Thucthi]) VALUES (7, N'hang', N'123456', N'Lã Kim Hằng', NULL, NULL, N'Điện Biên', N'1231231213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([IdKhachhang], [Tentruynhap], [Matkhau], [Tenkhachhang], [Ngaysinh], [Gioitinh], [Diachi], [Dienthoai], [Email], [Cauhoi], [Traloi], [Muc], [Ngaytao], [TieuDe], [Noidung], [Thucthi]) VALUES (8, N'tuananh', N'123456', N'Tuấn Anh', NULL, NULL, N'Nam định', N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([IdKhachhang], [Tentruynhap], [Matkhau], [Tenkhachhang], [Ngaysinh], [Gioitinh], [Diachi], [Dienthoai], [Email], [Cauhoi], [Traloi], [Muc], [Ngaytao], [TieuDe], [Noidung], [Thucthi]) VALUES (9, N'thien', N'123456', N'Ho Chi Thien', NULL, NULL, N'Bắc Ninh', N'0974514788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([IdLoai], [Ten], [Tieude], [Mota], [Uutien], [Hinhanh], [Tukhoa], [Thucthi], [Vitri], [Ngonngu]) VALUES (2, N'Dây chuyền nữ', N'Dây chuyền nữ', N'<p>D&acirc;y chuyền nữ</p>
', 1, NULL, N'Dây chuyền nữ', 1, 3, N'vi-VN')
INSERT [dbo].[LoaiSanPham] ([IdLoai], [Ten], [Tieude], [Mota], [Uutien], [Hinhanh], [Tukhoa], [Thucthi], [Vitri], [Ngonngu]) VALUES (3, N'Lắc tay nữ', N'Lắc tay nữ', N'Lắc tay nữ', 1, NULL, N'Lắc tay nữ', 1, 4, N'vi-VN')
INSERT [dbo].[LoaiSanPham] ([IdLoai], [Ten], [Tieude], [Mota], [Uutien], [Hinhanh], [Tukhoa], [Thucthi], [Vitri], [Ngonngu]) VALUES (4, N'Lắc chân nữ', N'Lắc chân nữ ', N'Lắc chân nữ', 1, NULL, N'Lắc chân nữ', 1, 5, N'vi-VN')
INSERT [dbo].[LoaiSanPham] ([IdLoai], [Ten], [Tieude], [Mota], [Uutien], [Hinhanh], [Tukhoa], [Thucthi], [Vitri], [Ngonngu]) VALUES (5, N'Nhẫn nữ', N'Nhẫn nữ', N'Nhẫn nữ', 1, NULL, N'Nhẫn nữ', 1, 5, N'vi-VN')
INSERT [dbo].[LoaiSanPham] ([IdLoai], [Ten], [Tieude], [Mota], [Uutien], [Hinhanh], [Tukhoa], [Thucthi], [Vitri], [Ngonngu]) VALUES (6, N'Dây chuyền nam', N'Dây chuyền nam', N'Dây chuyền nam', 1, NULL, N'Dây chuyền nam', 1, 2, N'vi-VN')
INSERT [dbo].[LoaiSanPham] ([IdLoai], [Ten], [Tieude], [Mota], [Uutien], [Hinhanh], [Tukhoa], [Thucthi], [Vitri], [Ngonngu]) VALUES (7, N'Khuyên tai', N'Khuyên tai', N'Khuyên tai', 1, NULL, N'Khuyên tai', 1, 7, N'vi-VN')
INSERT [dbo].[LoaiSanPham] ([IdLoai], [Ten], [Tieude], [Mota], [Uutien], [Hinhanh], [Tukhoa], [Thucthi], [Vitri], [Ngonngu]) VALUES (10, N'Trang sức trẻ em', N'Trang sức trẻ em', N'<p>Trang sức trẻ em</p>
', 1, NULL, N'Trang sức trẻ em', 1, 8, N'vi-VN')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [Ten], [TieuDe], [MoTa], [Thutu], [Trang], [ThuMuc], [Active], [LangID]) VALUES (1, N'HOME', N'Trang Chủ', N'Trang Chủ', 1, N'Index', N'Home', 1, N'vi-VN')
INSERT [dbo].[Menu] ([id], [Ten], [TieuDe], [MoTa], [Thutu], [Trang], [ThuMuc], [Active], [LangID]) VALUES (3, N'LIÊN HỆ', N'Liên Hệ', N'Liên Hệ', 3, N'LienHe', N'Home', 1, N'vi-VN')
SET IDENTITY_INSERT [dbo].[Menu] OFF
INSERT [dbo].[NguoiDung] ([Username], [Password], [Status]) VALUES (N'admin', N'123456', 1)
INSERT [dbo].[NguoiDung] ([Username], [Password], [Status]) VALUES (N'thang', N'123456', 1)
INSERT [dbo].[NguoiDung] ([Username], [Password], [Status]) VALUES (N'thien', N'123456', 1)
SET IDENTITY_INSERT [dbo].[QuangCao] ON 

INSERT [dbo].[QuangCao] ([ID], [AdsName], [AdsUrl], [AdsImage], [LangID], [AdsIndex], [AdsViewed]) VALUES (11, N'Trang Sức PNJ', N'', N'../Media/Image/NE0208_banner-thang7-3.jpg', N'vi-VN', 1, 0)
INSERT [dbo].[QuangCao] ([ID], [AdsName], [AdsUrl], [AdsImage], [LangID], [AdsIndex], [AdsViewed]) VALUES (12, N'Trang Sức PNJ', N'', N'../Media/Image/banner 5-1.jpg', N'vi-VN', 2, 0)
INSERT [dbo].[QuangCao] ([ID], [AdsName], [AdsUrl], [AdsImage], [LangID], [AdsIndex], [AdsViewed]) VALUES (13, N'Trang Sức PNJ', N'', N'../Media/Image/company-banner4-394.jpg.banner.jpg', N'vi-VN', 3, 0)
INSERT [dbo].[QuangCao] ([ID], [AdsName], [AdsUrl], [AdsImage], [LangID], [AdsIndex], [AdsViewed]) VALUES (16, N'Trang Sức PNJ', N'', N'../Media/Image/banner_5878a7ab-1024x343.jpg', N'vi-VN', 4, 0)
SET IDENTITY_INSERT [dbo].[QuangCao] OFF
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([id], [MaSanPham], [IdLoai], [Ten], [Model], [MotaNgan], [MotaChiTiet], [TSKyThuat], [Tukhoa], [IdHang], [NgayNhap], [NgayCapNhatCuoi], [GiaCu], [GiaMoi], [Uutien], [ThucThi], [HinhAnh], [HinhAnh1], [HinhAnh3], [HinhAnh4], [TieuBieu], [Ngonngu]) VALUES (6, N'SP03', 3, N'Lắc tay bạc nữ', N'LTBN-12312', N'Lắc tay bạc nữ', NULL, N'MT-9', N'Lắc tay bạc nữ', 1, CAST(N'1995-07-12' AS Date), CAST(N'1995-07-12' AS Date), 12, 12121212, 1, 1, N'/Areas/Administrator/Contentimages/560158517498904_1388761484520956_9106560123857177264_n_264_265.jpg', NULL, NULL, NULL, 0, N'vi-VN')
INSERT [dbo].[Sanpham] ([id], [MaSanPham], [IdLoai], [Ten], [Model], [MotaNgan], [MotaChiTiet], [TSKyThuat], [Tukhoa], [IdHang], [NgayNhap], [NgayCapNhatCuoi], [GiaCu], [GiaMoi], [Uutien], [ThucThi], [HinhAnh], [HinhAnh1], [HinhAnh3], [HinhAnh4], [TieuBieu], [Ngonngu]) VALUES (14, N'SP01', 6, N'Dây chuyền nam', N'DCN-123', N'Dây chuyền bạc nam', N'Làm từ bạc 9999 nguyên chất', N'MT-10', N'Dây chuyền bạc nam', 1, CAST(N'1995-07-12' AS Date), CAST(N'1995-07-12' AS Date), 5000000, 4500000, 1, 1, N'/Media/Image/mua-day-chuyen-nam-o-dau-a4.jpg', NULL, NULL, NULL, 0, N'vi-VN')
INSERT [dbo].[Sanpham] ([id], [MaSanPham], [IdLoai], [Ten], [Model], [MotaNgan], [MotaChiTiet], [TSKyThuat], [Tukhoa], [IdHang], [NgayNhap], [NgayCapNhatCuoi], [GiaCu], [GiaMoi], [Uutien], [ThucThi], [HinhAnh], [HinhAnh1], [HinhAnh3], [HinhAnh4], [TieuBieu], [Ngonngu]) VALUES (15, N'SP04', 6, N'Dây chuyền nam', N'DCN-12131', N'<p>D&acirc;y chuyền bạc nam</p>
', N'<p>Thương hiệu: PNJ<br />
<br />
Chất liệu bạc: Bạc 92.5%Ag ( Ti&ecirc;u chuẩn quốc tế)<br />
<br />
- Trọng lượng Bạc : 3,745chỉ<br />
<br />
- M&agrave;u sắc bạc: Bạc<br />
<br />
K&iacute;ch thước :<br />
<br />
- Chiều d&agrave;i : 48cm<br />
<br />
- Chiều rộng: 4,77mm<br />
&nbsp;</p>
', N'<p>MT-11</p>
', N'Dây chuyền bạc nam', 1, CAST(N'1995-07-12' AS Date), CAST(N'1995-07-12' AS Date), 4500000, 400000, 1, 1, N'/Media/Image/day-chuyen-bac-nam-hinh-hoa-tien.jpg', NULL, NULL, NULL, 0, N'vi-VN')
INSERT [dbo].[Sanpham] ([id], [MaSanPham], [IdLoai], [Ten], [Model], [MotaNgan], [MotaChiTiet], [TSKyThuat], [Tukhoa], [IdHang], [NgayNhap], [NgayCapNhatCuoi], [GiaCu], [GiaMoi], [Uutien], [ThucThi], [HinhAnh], [HinhAnh1], [HinhAnh3], [HinhAnh4], [TieuBieu], [Ngonngu]) VALUES (16, N'12', 2, N'Choker mặt cười', N'1', NULL, NULL, NULL, N'Choker mặt cười', 1, CAST(N'2017-04-20' AS Date), CAST(N'2017-04-20' AS Date), 200000, 150000, 1, 1, N'/Areas/Administrator/Contentimages/564071017458445_1388761481187623_1391717950050681183_n_264_265.jpg', NULL, NULL, NULL, 1, N'vi-VN')
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
ALTER TABLE [dbo].[Donhang_KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_KhachHang_KhachHang] FOREIGN KEY([Idkhachhang])
REFERENCES [dbo].[KhachHang] ([IdKhachhang])
GO
ALTER TABLE [dbo].[Donhang_KhachHang] CHECK CONSTRAINT [FK_Donhang_KhachHang_KhachHang]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_HangSX] FOREIGN KEY([IdHang])
REFERENCES [dbo].[HangSX] ([IdHang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_HangSX]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_SP_LoaiSP] FOREIGN KEY([IdLoai])
REFERENCES [dbo].[LoaiSanPham] ([IdLoai])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_SP_LoaiSP]
GO
