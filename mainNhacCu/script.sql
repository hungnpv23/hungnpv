CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[isAdmin] [int] NOT NULL,
	[isSatff] [int] NOT NULL,
	[isCus] [int] NOT NULL,
	[ID_People] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 03/10/2022 5:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[Bill_ID] [int] IDENTITY(1,1) NOT NULL,
	[Purchase_date] [date] NOT NULL,
	[Staff_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Total] [float] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[Bill_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 03/10/2022 5:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Product_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/10/2022 5:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_ID] [int] NOT NULL,
	[Category_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/10/2022 5:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Customer_type] [varchar](50) NOT NULL,
	[Accumulated_points] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detail]    Script Date: 03/10/2022 5:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detail](
	[Bill_ID] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Product_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Liquidation]    Script Date: 03/10/2022 5:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liquidation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Images] [varchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ContactDescrip] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[SellStatus] [int] NOT NULL,
	[Cus_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[cate_ID] [int] NULL,
 CONSTRAINT [PK_Liquidation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/10/2022 5:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[Material] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[YearOfManufacture] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Staff_ID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 03/10/2022 5:17:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Staff_ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Image] [varchar](max) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Staff_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [UserName], [Password], [isAdmin], [isSatff], [isCus], [ID_People]) VALUES (1, N'Tamlm', N'1234', 1, 0, 0, 1)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [isAdmin], [isSatff], [isCus], [ID_People]) VALUES (2, N'Quynhnn', N'4312', 1, 0, 0, 2)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [isAdmin], [isSatff], [isCus], [ID_People]) VALUES (3, N'Hungnpv', N'7896', 1, 0, 0, 3)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [isAdmin], [isSatff], [isCus], [ID_People]) VALUES (5, N'huong', N'147', 0, 0, 1, 6)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [isAdmin], [isSatff], [isCus], [ID_People]) VALUES (3010, N'phuong', N'123456', 0, 0, 1, 2008)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [isAdmin], [isSatff], [isCus], [ID_People]) VALUES (3011, N'hien', N'789', 0, 0, 1, 2009)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [isAdmin], [isSatff], [isCus], [ID_People]) VALUES (4010, N'quynhng', N'1456', 0, 0, 1, 3008)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [isAdmin], [isSatff], [isCus], [ID_People]) VALUES (6010, N'phucnt', N'9876', 0, 1, 0, 3006)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [isAdmin], [isSatff], [isCus], [ID_People]) VALUES (6011, N'hungtnd', N'4563', 0, 1, 0, 3007)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([Bill_ID], [Purchase_date], [Staff_ID], [Customer_ID], [Total]) VALUES (3, CAST(N'2022-07-13' AS Date), 1, 6, 200)
INSERT [dbo].[Bill] ([Bill_ID], [Purchase_date], [Staff_ID], [Customer_ID], [Total]) VALUES (4, CAST(N'2022-07-13' AS Date), 2, 4, 300)
INSERT [dbo].[Bill] ([Bill_ID], [Purchase_date], [Staff_ID], [Customer_ID], [Total]) VALUES (5, CAST(N'2022-07-17' AS Date), 1, 2008, 400)
INSERT [dbo].[Bill] ([Bill_ID], [Purchase_date], [Staff_ID], [Customer_ID], [Total]) VALUES (1005, CAST(N'2022-07-18' AS Date), 1, 2008, 500)
INSERT [dbo].[Bill] ([Bill_ID], [Purchase_date], [Staff_ID], [Customer_ID], [Total]) VALUES (1006, CAST(N'2022-07-18' AS Date), 2, 4, 600)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
INSERT [dbo].[Cart] ([Product_ID], [Customer_ID], [Quantity]) VALUES (2, 1, 4)
INSERT [dbo].[Cart] ([Product_ID], [Customer_ID], [Quantity]) VALUES (19, 2, 1)
GO
INSERT [dbo].[Category] ([Category_ID], [Category_name]) VALUES (1, N'Guitar')
INSERT [dbo].[Category] ([Category_ID], [Category_name]) VALUES (2, N'Drum')
INSERT [dbo].[Category] ([Category_ID], [Category_name]) VALUES (3, N'Flute ')
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer_ID], [FullName], [PhoneNumber], [Address], [Customer_type], [Accumulated_points]) VALUES (1, N'Le Minh Tam', N'0898997627', N'Vinh Long', N'Bronze', 0)
INSERT [dbo].[Customer] ([Customer_ID], [FullName], [PhoneNumber], [Address], [Customer_type], [Accumulated_points]) VALUES (2, N'Nguyen Nhu Quynh', N'0258369147', N'Can Tho', N'Bronze', 0)
INSERT [dbo].[Customer] ([Customer_ID], [FullName], [PhoneNumber], [Address], [Customer_type], [Accumulated_points]) VALUES (3, N'Nguyen', N'0258369147', N'Can Tho', N'Bronze', 0)
INSERT [dbo].[Customer] ([Customer_ID], [FullName], [PhoneNumber], [Address], [Customer_type], [Accumulated_points]) VALUES (4, N'Ngoc Han', N'0147258369', N'Soc Trang', N'SILVER', 185)
INSERT [dbo].[Customer] ([Customer_ID], [FullName], [PhoneNumber], [Address], [Customer_type], [Accumulated_points]) VALUES (5, N'Ngoc', N'0147258369', N'Can Tho', N'Bronze', 0)
INSERT [dbo].[Customer] ([Customer_ID], [FullName], [PhoneNumber], [Address], [Customer_type], [Accumulated_points]) VALUES (6, N'Huong Nguyen', N'0143256798', N'Phung Hiep', N'Bronze', 7)
INSERT [dbo].[Customer] ([Customer_ID], [FullName], [PhoneNumber], [Address], [Customer_type], [Accumulated_points]) VALUES (2008, N'Phuong', N'0987654321', N'Hau Giang', N'SILVER', 177)
INSERT [dbo].[Customer] ([Customer_ID], [FullName], [PhoneNumber], [Address], [Customer_type], [Accumulated_points]) VALUES (2009, N'Quoc Hien', N'0987123456', N'Can Tho', N'Bronze', 0)
INSERT [dbo].[Customer] ([Customer_ID], [FullName], [PhoneNumber], [Address], [Customer_type], [Accumulated_points]) VALUES (3008, N'Quynh', N'0123456798', N'Can Tho', N'Bronze', 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[Detail] ([Bill_ID], [Price], [Quantity], [Product_ID]) VALUES (3, 70, 1, 15)
INSERT [dbo].[Detail] ([Bill_ID], [Price], [Quantity], [Product_ID]) VALUES (4, 250, 1, 3)
INSERT [dbo].[Detail] ([Bill_ID], [Price], [Quantity], [Product_ID]) VALUES (4, 800, 1, 9)
INSERT [dbo].[Detail] ([Bill_ID], [Price], [Quantity], [Product_ID]) VALUES (5, 700, 1, 7)
INSERT [dbo].[Detail] ([Bill_ID], [Price], [Quantity], [Product_ID]) VALUES (5, 70, 1, 15)
INSERT [dbo].[Detail] ([Bill_ID], [Price], [Quantity], [Product_ID]) VALUES (1005, 500, 2, 5)
INSERT [dbo].[Detail] ([Bill_ID], [Price], [Quantity], [Product_ID]) VALUES (1006, 800, 1, 9)
GO
SET IDENTITY_INSERT [dbo].[Liquidation] ON 

INSERT [dbo].[Liquidation] ([ID], [Title], [Images], [Description], [ContactDescrip], [Price], [SellStatus], [Cus_ID], [Date], [cate_ID]) VALUES (1, N'Thanh lý guitar ', N'images/guitar1.jpg', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas accusantium explicabo accusamus tempore reprehenderit voluptatem debitis adipisci', N'Nguyen Nhu Quynh', 200, 1, 1, CAST(N'2022-09-30' AS Date), 1)
INSERT [dbo].[Liquidation] ([ID], [Title], [Images], [Description], [ContactDescrip], [Price], [SellStatus], [Cus_ID], [Date], [cate_ID]) VALUES (2011, N'Nguyen Phan Vinh HUng 123', N'images/vinhhung.jpg', N'Hung map dit', N'Tam tang', 10000, 0, 1, CAST(N'2022-10-03' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Liquidation] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (1, N'Tanglewood TWCR DCE', N'Mahogany Wood', 400, 1000, 2022, N'N''Tanglewood TWCR DCE Classical Guitar
Tanglewood TWCR DCE là đàn guitar acoustic được thiết kế với chất liệu chính là gỗ Mahogany, với nhiều tính năng vượt trội là lựa lựa chọn lý tưởng cho nhiều nghệ sĩ Guitar.
Cây guitar acoustic dáng dreadnought cutaway
Đàn guitar Tanglewood TWCR DCE có dáng dreadought khuyết (cutaway). Thùng đàn lớn cho tiếng đàn to, ấm và đầy hơn, phù hợp cho lối chơi strumming.
Các tính năng nổi bật
Mặt phím và ngựa đàn được làm từ gỗ Rosewood cho âm thanh ấm áp và cảm giác thoải mái cho người chơi. 
Tanglewood TWCR DCE được trang bị hệ thống Tanglewood TW-EX4 EQ cho âm thanh mạnh mẽ và điều chỉnh dễ dàng theo từng phong cách và hiệu suất của người chơi. 
''                                                                                                                                                                                                                                                                                                                ', N'images/guitar1.jpg', 1, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (2, N'Squier BULLET', N'Mahogany Wood', 300, 999, 2022, N'N''Được thiết kế cho những người chơi đang tìm kiếm một nhạc cụ giá cả phải chăng, phong cách và linh hoạt, Bullet® Stratocaster® HT HSS có kiểu dáng và giai điệu cổ điển khiến Strat® trở thành một trong những cây đàn phổ biến nhất mọi thời đại. Các điểm nổi bật bao gồm thân đàn mỏng và nhẹ, cấu trúc cổ hình chữ “C” dễ chơi, cầu nhún và các pickup neck và singlecoil với chuyển đổi năm chiều cho nhiều loại âm thanh và Bridge cứng để điều chỉnh ổn định đáng tin cậy.''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', N'images/guitar2-removebg-preview.png', 1, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (3, N'Squier AFFINITY SERIES', N'Rose Wood', 250, 999, 2022, N'N''Squier® Affinity Series ™ Stratocaster® HH mang đến thiết kế huyền thoại và giai điệu tinh túy cho người chơi guitar đầy khát vọng ngày nay. Dáng Strat® này có một số cải tiến thân thiện với người chơi như thân mỏng và nhẹ, Neck hình chữ “C” mỏng và thoải mái, Bridge tremolo 2 điểm cho hành động rung dây vượt trội cùng khoá lên dây với trục chia cho điều chỉnh mượt mà, chính xác và dễ dàng chỉnh sửa. Được trang bị một cặp Pickup Squier với khả năng chuyển đổi 3 vị trí cho sự đa dạng về thể loại âm thanh, cây đàn này sẵn sàng đồng hành cùng bất kỳ người chơi nào ở bất kỳ giai đoạn nào.''                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'images/Electric_guitar-removebg-preview.png', 1, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (4, N'Tanglewood TWBB SFCE', N'Mahogany Wood', 600, 1000, 2022, N'N''Tanglewood TWBB SFCE là mẫu đàn guitar acoustic dành cho người chơi, có thiết kế đẹp, âm thanh hay & giá thành canh tranh. Đàn có kiểu dáng Super Folk Cutaway (dáng A khuyết góc) nhìn khá sang trọng và hiện đại, toàn bộ đàn được làm từ gỗ cao cấp, trang bị bộ điện tử:Tanglewood Premium Plus giúp anh thanh phát ra to và rõ hơn để buổi  biểu diễn trở nên hấp dẫn và sôi động hơn.''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', N'images/guitar4-removebg-preview.png', 1, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (5, N'Takamine GD10CE-NS Guitar', N'Spruce Wood', 500, 998, 2022, N'N''Takamine GD71CE-NAT
Đàn Guitar Takamine GD71CE có thiết kế nhỏ gọn, hình dáng trang nhã, nhiều màu sắc, mang đến cho người chơi nhiều sự chọn lựa. Cây đàn với chất lượng âm thanh tuyệt vời, hứa hẹn mang đến cho người chơi những trải nghiệm guitar thú vị nhất.
Thiết kế trang nhã
Takamine GD71CE nổi bật với kiểu dáng trang nhã và hệ thống điện tử được nâng cấp. Mang những đặc điểm của guitar cao cấp với thiết kế gỗ nguyên miếng, GD71CE sẽ mang đến cho bạn những mãn trình diễn Guitar thăng hoa và sống động nhất.
Có thể nói, Takamine GD71CE là một chiếc guitar acoustic/electric dreadnought vừa có vẻ ngoài hoàn hảo vừa có chất lượng âm thanh cao cấp. Nó đáp ứng được mọi yêu cầu để trông bạn tuyệt vời nhất trên sân khấu.

''                                                                                                                                                                                                                                                                         ', N'images/guitar5-removebg-preview.png', 1, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (6, N'Cordoba C5-CE', N'Spruce Wood', 650, 1000, 2022, N'N''Cordoba C5-CE 
Dựa trên C5-CE bán chạy nhất của Córdoba, C5-CE Spruce thêm một tùy chọn mới cho người hâm mộ yêu thích. Một đường cắt mềm giúp truy cập dễ dàng vào thanh ghi phía trên và tiền khuếch đại Fishman Presys II khuếch đại tín hiệu của bạn cho sân khấu và phòng thu.
Hoàn hảo như một cây đàn guitar dây nylon đầu tiên và sẵn sàng để biểu diễn, mẫu đàn nhẹ này được chế tạo với mặt trên bằng gỗ vân sam Engelmann vững chắc và mặt sau và mặt bằng gỗ gụ để tạo ra âm thanh rõ ràng, mạnh mẽ với độ bền đẹp. Được làm thủ công theo phong cách truyền thống của Tây Ban Nha, khóa đầu chạm khắc của C5, hoa thị bằng gỗ dát bằng tay, viền gỗ cẩm lai Ấn Độ, dây Savarez và lớp phủ PU bóng tạo nên một cây đàn thực sự nổi bật so với tất cả các tùy chọn cấp thấp khác. Một thanh giàn có thể điều chỉnh nhẹ được gắn vào cổ để tạo sự ổn định. Có sẵn trong lớp hoàn thiện NAT với mặt trên bằng  Solid Engelmann Spruce.
''                                                                                  ', N'images/guitar6-removebg-preview.png', 1, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (7, N'Cordoba C1- Pale Sky', N'Spruce Wood', 700, 999, 2022, N'N''Mang âm nhạc của bạn trở nên sống động với đầy màu sắc với Protégé C1 Matiz! Mang nét thẩm mỹ mới mẻ của cây đàn guitar dây nylon, dòng Matiz kết hợp các điểm nhấn bằng gỗ thích và gỗ có tông màu truyền thống với 4 màu sắc bắt mắt: Aqua, Coral, Pale Sky và Classic Blue. Mặt sau và mặt sau bằng gỗ vân sam và mặt sau bằng gỗ gụ mang lại sự tỏa sáng và ấm áp cho cây đàn guitar dây nylon, trong khi tấm ốp đầu bằng gỗ thích, ngựa đàn và cần đàn toàn diện mang đến cho C1 Matiz một diện mạo hoàn toàn mới với phản ứng âm sắc sống động. Lớp hoàn thiện bằng polyurethane satin cung cấp một lớp bảo vệ chống lại các vết nứt và trầy xước, trong khi hình hoa thị ma, được thiết kế theo hình hoa thị bằng gỗ truyền thống của chúng tôi, cho phép phần đỉnh màu bắt mắt của C1 Matiz tỏa sáng và chiếm vị trí trung tâm.''                                                                                                                                                                                            ', N'images/guitar_newProduct.jpg', 1, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (8, N'ROLAND TD-17KVX', N'Leather ', 750, 1000, 2022, N'N''Trống Roland TD-17KVX + MDS-COM mang đến những  trải nghiệm những điều thú vị khi chơi trống.
Thành phần bộ trống Roland TD-17KV-X bao gồm: Sound Module: TD-17 x 1; Snare: PDX-12 x 1; Tom: PDX-8 x 3; Hi-hat: VH-10 x 1; Crash: CY-12C x 2; Ride: CY-13R x 1; Kick: KD-10 x 1; Drum stand: MDS-4KVX x 1
Bạn luôn khao khát trở thành một tay trống chuyên nghiệp, và Roland TD-17KVX thực sự sẽ làm bạn tỏa sáng được sản xuất dựa trên công nghệ âm thanh TD-50 với các miếng đệm mới được phát triển tạo ra một bộ trống điện tử giá cả phải chăng, gần giống với trống cơ. Kết hợp với nhiều tính năng tuyệt vời như chức năng huấn luyện tích hợp sẽ theo dõi kỹ thuật của bạn, đo lường sự tiến bộ của bạn và tăng động lực cố gắng cho bạn. Trở thành một tay trống tốt hơn trước giờ vẫn là công việc không hề dễ dàng, nhưng TD-17 có thể giúp bạn đạt được điều đó.
''', N'images/drum6.jpg', 2, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (9, N'Pearl Export EXX705NP/C760', N'Leather', 800, 998, 2022, N'N''Trống Pearl Export 705NP/C - Chơi Export hôm nay, huyền thoại của tương lai

Cái tên được các nghệ sĩ Drum yêu thích và đã tạo nên nhiều huyền thoại - Export đã trở lại với nhiều cải tiến vượt bậc Các tính năng lớn như thành phần vỏ lấy cảm hứng từ bộ Reference, pedal P-930, tom mount Opti-Loc, và tất cả đi kèm với gói hardware mới nhất của Pearl làm cho bộ trống mang giá trị lớn nhất... một lần nữa sẽ tạo nên huyền thoại.''', N'images/drum5-removebg-preview.png', 2, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (10, N'Pearl Lacquer EXL725SP', N'Leather', 810, 1000, 2022, N'N''Trống Pearl Export Lacquer EXL725SP dòng Export trở lại với phiên bản lacquer tuyệt vời. Cũng như tất cả các dòng trống Pearl, mỗi vỏ được hình thành từ quy trình thiết kế huyền thoại SST, sử dụng nhiệt độ cực thấp, máy cắt chính xác, công nghệ độc quyền Acoustic Glue của chúng tôi và dùng hơn 1000 lbs thủy lực để tạo ra các không gian âm thanh tối ưu, Cùng với các tính năng khắc như tom-mount Opti-Loc, bộ hardware P830 với pedal P-930, và các lựa chọn trong bốn màu sắc tuyệt đẹp. Cũng như tất cả các dòng trống Pearl, mỗi vỏ được hình thành từ quy trình thiết kế huyền thoại SST, sử dụng nhiệt độ cực thấp, máy cắt chính xác, công nghệ độc quyền Acoustic Glue của chúng tôi và dùng hơn 1000 lbs thủy lực để tạo ra các không gian âm thanh tối ưu, Cùng với các tính năng khắc như tom-mount Opti-Loc, bộ hardware P830 với pedal P-930, và các lựa chọn trong bốn màu sắc tuyệt đẹp.''', N'images/drum.jpg', 2, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (11, N'Alesis Command Mesh Kit', N'Leather', 770, 1000, 2022, N'N''Bùng nổ cho mọi cuộc chơi
Command Mesh Kit có tất cả các miếng đệm bằng mặt lưới, mang lại trải nghiệm đánh trống đích thực. Bộ sản phẩm này bao gồm một trống kick 8” đi kèm pedal, 1 snare dual-zone 10”, và 3 tom dual-zone 8”. Set 2 cymbals và 1 hihat 10” cùng bàn đạp chân.

Mô đun trống Command Advanced Drum đi kèm âm 74 bộ trống ( 54 bộ cài đặt sẵn, 20 bộ do người dùng cài đặt thêm) cùng 671 âm thanh khác. Bạn có thể tạo một bộ tùy chỉnh từ âm thanh riêng của mình bằng cách tải qua cổng USB. Thêm vào đó mô đun máy còn có sẵn 60 bản nhạc và một bộ ghi hiệu suất tích hợp, bạn sẽ có niềm vui bất tận với Command Mesh Kit.

Tất cả các chi tiết này được gắn vào giá đỡ 4 trụ mạ crome cứng chắc, có các kẹp chống trượt. Phần cứng này cũng rất dễ tháo lắp và di chuyển.''', N'images/drum1.jpg', 2, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (12, N'Roland TD-17KL', N'Leather', 850, 1000, 2022, N'N''Roland TD-17KL bao gồm MDS-COM là một sự lựa chọn hoàn hảo cho những ai khao khát trở thành một tay trống chuyên nghiệp. Roland TD-17KL thuộc dòng V-Drums được tích hợp tính năng của các công cụ đào tạo giúp thúc đẩy năng lượng phấn đấu để tăng khả năng chơi trống của bạn cho phép kỹ thuật của bạn tỏa sáng thực sự,  Kết hợp một động cơ âm thanh TD-50 với các miếng đệm mới được phát triển tạo ra một bộ trống điện tử giá cả phải chăng, gần giống với trống cơ. Trong khi đó, một loạt các chức năng huấn luyện tích hợp sẽ theo dõi kỹ thuật của bạn, đo lường sự tiến bộ của bạn và tăng động lực cố gắng cho bạn. Trở thành một tay trống tốt hơn trước giờ vẫn là công việc không hề dễ dàng, nhưng TD-17 có thể giúp bạn đạt được điều đó.''', N'images/drum2.jpg', 2, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (13, N'Odery InRock IR.100-HW', N'Leather', 600, 1000, 2022, N'n''Trống InRook IR.100HW bao gồm TOM: 10x7; FLOOR : 12x8; TOM: 14x13;  KICK: 20x17; SNARE: 14 x 06

Trở lại năm 2013, chúng tôi đã đưa dòng sản phẩm inRock ra thị trường, chúng được thiết kế hoàn hảo trong mức giá phải chăng. Trong năm 2017, chúng tôi đã phát hành thêm bốn sản phẩm hoàn thiện mới. Trong đó có InRook.IR-100-HW ''', N'images/drum3-removebg-preview.png', 2, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (14, N'Flute Super Bass Flute', N'Bamboo', 100, 999, 2022, N'N''Sáo Dizi Đại Địch là tên gọi ở Việt Nam của dòng sáo Dizi siêu trầm (bên Trung Quốc là từ Fa trầm và trầm hơn). Dòng sáo Dizi siêu trầm thường không có mức giá dưới 1 triệu (nếu có thì chất lượng rất tệ). Do vậy, shop nghiên cứu và chế tạo ra các dòng sáo Dizi siêu trầm Việt Nam để thay thế và giá cả cũng sẽ rẻ hơn, và lại có thể tùy biến theo yêu cầu của khách hàng. Sáo siêu trầm có thể chế thêm lỗ dán màng rung và 1 vài kỹ thuật độ âm sắc để có thể tạo nên một cây sáo Dizi Đại Địch không thua kém gì của Trung Quốc với mức giá phải chăng hơn khá nhiều. Ngoài ra, khách hàng có thể tùy biến lựa chọn khoét lỗ nốt Si chuẩn hoặc nốt Si non giống của Trung Quốc.''', N'images/flute1-removebg-preview.png', 3, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (15, N'Mac Phong bamboo flute', N'Bamboo', 70, 998, 2022, N'N''Sáo nứa Mạc phong được xử lý tạo vân gió mây đẹp mắt, khá giống dòng Lệ trúc. Đây là dòng sáo có ngoại hình đẹp, nhưng vẫn mang vẻ đẹp tự nhiên, mộc mạc và đặc biệt có âm thanh rất tốt do được lựa chọn rất kỹ về nguyên liệu và chế tác kỳ công.''', N'images/flute2-removebg-preview.png', 3, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (16, N'Harubi flute', N'Bamboo', 20, 1000, 2022, N'N''Dòng tiêu cao cấp được sơn màu đẹp mắt và bền. ''', N'images/flute3-removebg-preview.png', 3, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (17, N'Bamboo Flute for beginners', N'Bamboo', 10, 1000, 2022, N'N''Dòng sáo sinh viên, sáo dành cho học sinh giá rẻ nhất thị trường. Nếu các bạn mới tập thổi sáo, nếu các bạn không có nhiều tiền, nếu các bạn cần một cây sáo để tập, chuẩn âm thì sản phẩm này là dành cho bạn.

Đối với các bạn mới tập chơi sáo, các bạn nên lựa chọn sáo tone Đô, sáo Đô C5 là loại sáo phổ thông nhất và dể tập''', N'images/flute4-removebg-preview.png', 3, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (18, N'Smoked bamboo flute', N'Bamboo', 15, 1000, 2022, N'N''Sáo nứa hun khói màu nâu là dòng sáo nứa có màu nâu cafe đẹp mắt. Sáo nứa cafe được chế tạo từ nguyên liệu nứa Nam được hấp nhiệt hoặc hun khói tạo màu nâu đẹp mắt, loại nứa được dùng để chế tạo sáo nứa cafe hun khói chủ yếu là nứa Nam.;', N'images/flute5-removebg-preview.png', 3, NULL)
INSERT [dbo].[Product] ([Product_ID], [ProductName], [Material], [Price], [Quantity], [YearOfManufacture], [Description], [Image], [Category_ID], [Staff_ID]) VALUES (19, N'C5 Doll Flute – C flute', N'Bamboo', 15, 1000, 2022, N'N''Sáo đô C5 là gì? là tone sáo có giọng đô trưởng ở quảng thứ 5, sáo C5 có giai điệu tầm trung (hơi cao) là cây sáo phổ thông nhất hiện nay, được nhiều người sử dụng. Sáo Đô thích hợp thổi nhạc trẻ, nhạc cách mạng, nhạc quốc tế, dân ca, …''', N'images/flute6-removebg-preview.png', 3, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([Staff_ID], [FullName], [PhoneNumber], [Address], [Image], [Status]) VALUES (1, N'Le Tam', N'0898997622', N'Vinh Long', N'images/tam.jpg', N'Fulltime')
INSERT [dbo].[Staff] ([Staff_ID], [FullName], [PhoneNumber], [Address], [Image], [Status]) VALUES (2, N'Nguyen Nhu Quynh', N'0123456789', N'Can Tho', N'images/quynh.jpg', N'Fulltime')
INSERT [dbo].[Staff] ([Staff_ID], [FullName], [PhoneNumber], [Address], [Image], [Status]) VALUES (3, N'Nguyen Phan Vinh Hung', N'0987654321', N'Vinh Long', N'images/vinhhung.jpg', N'Fulltime')
INSERT [dbo].[Staff] ([Staff_ID], [FullName], [PhoneNumber], [Address], [Image], [Status]) VALUES (3006, N'Nguyen Trong Phuc', N'0902400883', N'Can Tho', N'images/Tphuc.jpg', N'Fulltime')
INSERT [dbo].[Staff] ([Staff_ID], [FullName], [PhoneNumber], [Address], [Image], [Status]) VALUES (3007, N'Tran Nguyen Dai Hung', N'0369258147', N'Tra Vinh', N'images/daihung.jpg', N'Fulltime')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Customer]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Staff] FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_ID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Staff]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customer]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Detail]  WITH CHECK ADD  CONSTRAINT [FK_Detail_Bill] FOREIGN KEY([Bill_ID])
REFERENCES [dbo].[Bill] ([Bill_ID])
GO
ALTER TABLE [dbo].[Detail] CHECK CONSTRAINT [FK_Detail_Bill]
GO
ALTER TABLE [dbo].[Detail]  WITH CHECK ADD  CONSTRAINT [FK_Detail_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Detail] CHECK CONSTRAINT [FK_Detail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([Category_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [new_PRJ_project] SET  READ_WRITE 
GO
