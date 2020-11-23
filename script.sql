USE [VietIS]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/16/2020 9:35:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [text] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 11/16/2020 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[storeId] [int] NULL,
	[name] [text] NULL,
	[catId] [int] NULL,
	[price] [float] NULL,
	[description] [text] NULL,
	[imageId] [int] NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodComment]    Script Date: 11/16/2020 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodComment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[foodId] [int] NULL,
	[content] [text] NULL,
	[createAt] [date] NULL,
 CONSTRAINT [PK_FoodComment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 11/16/2020 9:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imageURL] [text] NULL,
	[type] [varchar](30) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 11/16/2020 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[storeId] [int] NULL,
	[foodId] [int] NULL,
	[idType] [nvarchar](150) NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/16/2020 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[imageId] [int] NULL,
	[reason] [nvarchar](max) NULL,
	[description] [text] NULL,
	[quantity] [float] NULL,
	[total] [float] NULL,
	[status] [int] NULL,
	[createAt] [date] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/16/2020 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NULL,
	[foodId] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhoneToken]    Script Date: 11/16/2020 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneToken](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tokenKey] [nvarchar](300) NULL,
	[createAt] [date] NULL,
 CONSTRAINT [PK_PhoneToken] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 11/16/2020 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[foodId] [int] NULL,
	[rating] [float] NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingStore]    Script Date: 11/16/2020 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingStore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[storeId] [int] NULL,
	[rating] [float] NULL,
 CONSTRAINT [PK_RatingStore] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 11/16/2020 9:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](550) NULL,
	[address] [text] NULL,
	[phoneNumber] [varchar](50) NULL,
	[imageId] [int] NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoreComment]    Script Date: 11/16/2020 9:35:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreComment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[storeId] [int] NULL,
	[content] [text] NULL,
	[createAt] [date] NULL,
 CONSTRAINT [PK_StoreComment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/16/2020 9:35:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](300) NULL,
	[hashPassword] [varchar](300) NULL,
	[name] [text] NULL,
	[imageId] [int] NULL,
	[phoneNumber] [varchar](50) NULL,
	[address] [text] NULL,
	[userType] [int] NULL,
	[tokenKey] [varchar](300) NULL,
	[expireDate] [date] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserToken]    Script Date: 11/16/2020 9:35:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserToken](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[tokenKey] [text] NULL,
	[createAt] [date] NULL,
 CONSTRAINT [PK_UserToken] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'bún')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'com')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'do an vat')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'ph?')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'mì')
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'bánh da')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (1, 1, N'bun cha', 1, 10000, N'rat ngon', 5)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (2, 2, N'nem lui', 3, 20000, N'ngon', 6)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (3, 1, N'bun dau mam tom', 1, 30000, N'great', 4)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (4, 1, N'bun ca', 1, 12345, N'good', 3)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (5, 1, N'bun ca ch? ', 1, 12345, N'good', 2)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (6, 1, N'bun ca nuong', 2, 12345, N'good', 4)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (7, 1, N'bun ca mam tom', 1, 12345, N'good', 7)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (8, 1, N'bun ca bia om', 1, 12345, N'good', 2)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (9, 1, N'ca nuong', 2, 12345, N'good', 3)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (10, 10, N'Com rang gà', 4, 1213, N'niek', 12)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (11, 5, N'Bánh mì dân t?', 3, 20000, N'great', 15)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (14, 8, N'Bánh mì v? ong vàng', 4, 25000, N'bad', 13)
INSERT [dbo].[Food] ([id], [storeId], [name], [catId], [price], [description], [imageId]) VALUES (15, 9, N'Mì tr?n', 2, 50000, N'Niek', 20)
SET IDENTITY_INSERT [dbo].[Food] OFF
SET IDENTITY_INSERT [dbo].[FoodComment] ON 

INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (1, 33, 9, N'Ngon vkl', CAST(N'2020-11-03' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (3, 37, 7, N'vkl ngon', CAST(N'2020-11-13' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (4, 33, 8, N'nice ', CAST(N'2020-11-12' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (5, 33, 6, N'niek', CAST(N'2020-11-11' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (6, 33, 5, N'nike', CAST(N'2020-10-11' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (7, 37, 8, N'delicious', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (8, 37, 11, N'd3ljcj0us', CAST(N'2020-11-08' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (10, 37, 1, N'ko ngon', CAST(N'2020-11-07' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (11, 44, 2, N'bad', CAST(N'2020-11-06' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (12, 45, 3, N'gud', CAST(N'2020-11-05' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (13, 46, 4, N'like', CAST(N'2020-11-04' AS Date))
INSERT [dbo].[FoodComment] ([id], [userId], [foodId], [content], [createAt]) VALUES (14, 47, 5, N'hay', CAST(N'2020-11-03' AS Date))
SET IDENTITY_INSERT [dbo].[FoodComment] OFF
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (1, N'default', N'')
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (2, N'https://i.ytimg.com/vi/qP9IRIaefsA/maxresdefault.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (3, N'https://i.ytimg.com/vi/G6ANGJjMzdc/maxresdefault.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (4, N'https://toplist.vn/images/800px/bun-ca-cay-99-250412.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (5, N'https://i.ytimg.com/vi/HC6t2AgZ29c/maxresdefault.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (6, N'https://pastaxi-manager.onepas.vn/content/uploads/articles/nem-lui-hue/nem-lui-hue-7.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (7, N'https://i.ytimg.com/vi/Bhjv4Puzhgs/maxresdefault.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (8, N'https://scontent.fhan2-6.fna.fbcdn.net/v/t1.0-9/124807110_2775066016084531_1368356919233979481_o.jpg?_nc_cat=103&ccb=2&_nc_sid=8bfeb9&_nc_ohc=360YB9K3TTwAX8kDxvN&_nc_ht=scontent.fhan2-6.fna&oh=715f48a8623cad89c49b78c53e920d4f&oe=5FD1F443', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (9, N'https://scontent.fhan2-6.fna.fbcdn.net/v/t1.0-9/117244905_2730334640566984_7752802679342648103_o.jpg?_nc_cat=104&ccb=2&_nc_sid=09cbfe&_nc_ohc=m9GGW2MjzzMAX_JTvkQ&_nc_ht=scontent.fhan2-6.fna&oh=1c343b990de7af98a6481d591e4175a8&oe=5FD42A4D', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (10, N'https://nhahangmaison.vn/wp-content/uploads/2018/12/dat-tiec-khu-b-nha-hang-vuon-bia-ha-noi.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (11, N'https://s3-ap-southeast-1.amazonaws.com/thegioidohoacom/wp-content/uploads/2018/09/09103326/thiet-ke-bien-hieu-nha-hang-an-chay-4.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (12, N'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/09/pho-bat-dan-e1504747315984.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (13, N'https://images.foody.vn/res/g26/257539/s800/foody-banh-mi-dan-to-543-636982099957072517.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (14, N'https://ameovat.com/wp-content/uploads/2018/04/cach-lam-com-ga-xoi-mo-4-600x338.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (15, N'https://scm-assets.constant.co/scm/unilever/e9dc924f238fa6cc29465942875fe8f0/84024100-4767-4006-a26f-ec8ff577d9fa.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (16, N'https://media.cooky.vn/recipe/g1/6361/s480x480/recipe6361-prepare-step6-636486731568656198.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (17, N'https://images.foody.vn/res/g90/895779/prof/s576x330/foody-upload-api-foody-mobile-9-190503162104.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (18, N'https://2sao.vietnamnetjsc.vn/images/2018/01/09/13/14/cua-rang-me.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (19, N'https://hoidulich.net/wp-content/uploads/2019/06/H%E1%BB%99i-Du-L%E1%BB%8Bch-Vi%E1%BB%87t-Nam-MON-AN-VAT-HA-NOI-41.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (20, N'https://inhat.vn/ha-noi/wp-content/uploads/2019/05/mon-an-vat-ha-noi-1-1.jpg', NULL)
INSERT [dbo].[Image] ([id], [imageURL], [type]) VALUES (21, N'https://images.foody.vn/res/g86/857965/prof/s576x330/foody-upload-api-foody-mobile-4-jpg-181204111944.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Image] OFF
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([id], [title], [content], [storeId], [foodId], [idType]) VALUES (1, N'Tưng bừng khuyến mãi', N'Cửa hàng nhà làm kỉ niệm 20 năm thành lập, khuyến mại khủng trong hôm nay', 1, NULL, N'1')
INSERT [dbo].[Notification] ([id], [title], [content], [storeId], [foodId], [idType]) VALUES (2, N'Khai truong tưng bừng', N'Cửa hàng Phở Bát Đàn vừa khai trương khuến mại khửng trong hôm nay', 4, NULL, N'1')
INSERT [dbo].[Notification] ([id], [title], [content], [storeId], [foodId], [idType]) VALUES (3, N'Món ngon khó cu?ng', N'Bạn hãy thử đi, Vị ngon khó cưỡng', NULL, 10, N'2')
SET IDENTITY_INSERT [dbo].[Notification] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (1, 44, 3, NULL, N'asdasdasdasdasdsad', NULL, NULL, 1, CAST(N'2020-02-02' AS Date))
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (2, 33, 4, N'thích thế', N'Hung Yen', 1, 2321, 0, CAST(N'2020-02-02' AS Date))
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (3, 46, 1, NULL, N'hahahahahahaha', NULL, NULL, 1, CAST(N'2020-02-02' AS Date))
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (4, 47, 3, NULL, N'uchihahahaha', NULL, NULL, 0, CAST(N'2020-02-02' AS Date))
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (5, 48, 4, NULL, N'rasengan nhiem mo', NULL, NULL, 2, CAST(N'2020-03-03' AS Date))
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (6, 33, 5, NULL, N'3A Building, Duy Tan, Cau Giay', 3, 1214234, 2, CAST(N'2020-03-03' AS Date))
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (7, 33, 3, N'có việc bận không nhận được', N'Hung Yen', 2, 3213123, 0, CAST(N'2020-02-02' AS Date))
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (8, 33, 6, NULL, N'Hoa Lac camplus,FPT university', 1, 131231, 1, CAST(N'2020-01-01' AS Date))
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (9, 33, 4, NULL, N'Hung Yen', 3, 323123, 2, CAST(N'2020-04-04' AS Date))
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (10, 33, 3, NULL, N'Hung Yen', 2, 2324, 1, NULL)
INSERT [dbo].[Order] ([id], [userId], [imageId], [reason], [description], [quantity], [total], [status], [createAt]) VALUES (16, 33, 4, NULL, N'Ship Address: hung yên', 2, 60000, 1, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [orderId], [foodId], [quantity], [price]) VALUES (1, 9, 8, 3, 75000)
INSERT [dbo].[OrderDetail] ([id], [orderId], [foodId], [quantity], [price]) VALUES (3, 5, 7, 4, 100000)
INSERT [dbo].[OrderDetail] ([id], [orderId], [foodId], [quantity], [price]) VALUES (4, 3, 10, 1, 30000)
INSERT [dbo].[OrderDetail] ([id], [orderId], [foodId], [quantity], [price]) VALUES (5, 2, 15, 3, 300000)
INSERT [dbo].[OrderDetail] ([id], [orderId], [foodId], [quantity], [price]) VALUES (8, 1, 10, 1, 11111)
INSERT [dbo].[OrderDetail] ([id], [orderId], [foodId], [quantity], [price]) VALUES (9, 4, 2, 2, 22222)
INSERT [dbo].[OrderDetail] ([id], [orderId], [foodId], [quantity], [price]) VALUES (10, 6, 2, 3, 2233)
INSERT [dbo].[OrderDetail] ([id], [orderId], [foodId], [quantity], [price]) VALUES (11, 7, 3, 5, 200000)
INSERT [dbo].[OrderDetail] ([id], [orderId], [foodId], [quantity], [price]) VALUES (12, 8, 5, 10, 1000000)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[PhoneToken] ON 

INSERT [dbo].[PhoneToken] ([id], [tokenKey], [createAt]) VALUES (6, N'cO1y7cVuSOeLW7s07vJOzL:APA91bELWLglDuNySgo0EjXDUdm6ZfpXJBsW7XSfelcwDGUbKtTVyoK8qWJxuCpXQ5rJMFrn6md5gkfvAIJv8V2sWyzl8AvRdEsa3h8yqEGC82bj9kh67uhNyg8_DlBRv8L7lHQXBTFZ', NULL)
SET IDENTITY_INSERT [dbo].[PhoneToken] OFF
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([id], [userId], [foodId], [rating]) VALUES (1, 33, 1, 4)
INSERT [dbo].[Rating] ([id], [userId], [foodId], [rating]) VALUES (2, 33, 2, 2)
INSERT [dbo].[Rating] ([id], [userId], [foodId], [rating]) VALUES (3, 33, 3, 1)
INSERT [dbo].[Rating] ([id], [userId], [foodId], [rating]) VALUES (4, 33, 6, 2)
INSERT [dbo].[Rating] ([id], [userId], [foodId], [rating]) VALUES (5, 33, 8, 5)
INSERT [dbo].[Rating] ([id], [userId], [foodId], [rating]) VALUES (6, 33, 10, 3)
INSERT [dbo].[Rating] ([id], [userId], [foodId], [rating]) VALUES (8, 33, 14, 1)
INSERT [dbo].[Rating] ([id], [userId], [foodId], [rating]) VALUES (9, 33, 7, 3)
INSERT [dbo].[Rating] ([id], [userId], [foodId], [rating]) VALUES (10, 33, 9, 1)
SET IDENTITY_INSERT [dbo].[Rating] OFF
SET IDENTITY_INSERT [dbo].[RatingStore] ON 

INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (1, 33, 1, 4)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (2, 33, 2, 4)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (3, 33, 1, 3)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (4, 33, 2, 5)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (6, 33, 8, 1)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (7, 33, 9, 2)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (8, 33, 10, 3)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (9, 33, 11, 4)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (10, 33, 12, 5)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (14, 33, 3, 1)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (15, 33, 4, 2)
INSERT [dbo].[RatingStore] ([id], [userId], [storeId], [rating]) VALUES (16, 33, 5, 3)
SET IDENTITY_INSERT [dbo].[RatingStore] OFF
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (1, N'nhà làm', N'ha noi', N'1234', 10, N'Nếu lời giới thiệu gây được ấn tượng cho những vị khách hàng này, họ sẽ muốn đến nhà hàng của bạn, rũ thêm anh em, bạn bè. Hội “cạ cứng” để biến nhà hàng bạn thành trụ sở của họ và đây chắc chắn là những khách hàng quen mà bạn sẽ luôn muốn giữ chân họ tại địa điểm kinh doanh của mình đấy.')
INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (2, N'ha noi pho', N'da nang', N'4321', 11, N'Dù bạn đang kinh doanh truyền thống hay kinh doanh online thì việc truyền tải thông điệp bán hàng thông qua các status là rất quan trọng và cần thiết. Bạn không chỉ cần nắm rõ các thông tin về sản phẩm mà còn phải am hiểu các ưu nhược điểm của sản phẩm mình đang bán, từ đó chia sẻ những thông tin hữu ích đó đến với khách hàng của mình bằng chính sự trải nghiệm của bản thân.')
INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (3, N'Bánh mì dân tổ', N'ha noi', N'099292', 3, N'Khách hàng rất thích việc được xem những nội dung có những câu chuyện được lồng ghép vào bên trong đó, đặc biệt là các câu chuyện hài hước, nếu bạn kích thích được cảm giác thích thú cho khách hàng và lồng ghép những thông tin hữu ích vào bên trong đó thì chắc chắn khách hàng sẽ dễ dàng hài lòng và tìm đến sản phẩm của bạn ngay thôi.')
INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (4, N'Phở Bát Đàn', N'TP HCM', N'012312', 5, N'Và để những thông tin hữu ích đó đến với khách hàng thì bạn cần có những cách truyền tải thông điệp một cách thú vị và lôi cuốn nhất để khách hàng có thể chú ý tới những cua rao bán hàng của bạn. Bài viết này Tuha.vn sẽ giúp bạn tổng hợp những lời giới thiệu bán hàng hay nhất để bạn áp dụng nhé.')
INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (5, N'Cánh gà nướng', N'Hà n?i', N'12121', 7, N'Đầu tư về mặt nội dung như thế này thì chắc chắn bạn cũng sẽ thu hút được những câu bình luận hài hước trên facebook, từ đó, chắc chắn bạn sẽ có nhiều lượt tương tác trên bài viết ngay thôi. Câu chuyện của bạn cũng không cần phải dùng ngôn từ quá trau chuốt, câu chuyện của bạn càng “đời”, càng chân thật, bạn lại càng dễ dàng lấy được sự tin tưởng từ khách hàng.')
INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (8, N'Bánh đa trộn', N'H?i phòng', N'33333', 21, N'Hãy dẫn dắt khách hàng đến một câu kết thật ấn tượng và bất ngờ. Điều này có tác dụng gây sự kích thích và tò mò, khiến khách hàng phải đọc tiếp. Hoặc là bạn hãy đưa ra một tình huống thú vị gắn với điểm đặc biệt của sản phẩm, câu chuyện càng cụ thể lại càng thu hút.')
INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (9, N'Mì trộn indomi', N'Hà n?i', N'2323231', 19, N'Tạo lập được một website bán hàng thành công còn dựa vào rất nhiều yếu tố, mỗi một yếu tố chính là một thành phần để tạo nên sự độc đáo, từ đó thu hút khách hàng. Và một trong những yếu tố vô cùng quan trọng của quảng cáo bán hàng chính là status bán hàng hay. Chính vì vậy hãy làm cho những lời giới thiệu bán hàng của mình trở nên thú vị và thu hút khách hàng nhé. ')
INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (10, N'Bún đậu mắm tôm', N'B?c Ninh', N'09342', 18, N'Tạo lập được một website bán hàng thành công còn dựa vào rất nhiều yếu tố, mỗi một yếu tố chính là một thành phần để tạo nên sự độc đáo, từ đó thu hút khách hàng. Và một trong những yếu tố vô cùng quan trọng của quảng cáo bán hàng chính là status bán hàng hay. Chính vì vậy hãy làm cho những lời giới thiệu bán hàng của mình trở nên thú vị và thu hút khách hàng nhé. ')
INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (11, N'Cơm rang', N'Hà nam', N'2334', 15, N'Tạo lập được một website bán hàng thành công còn dựa vào rất nhiều yếu tố, mỗi một yếu tố chính là một thành phần để tạo nên sự độc đáo, từ đó thu hút khách hàng. Và một trong những yếu tố vô cùng quan trọng của quảng cáo bán hàng chính là status bán hàng hay. Chính vì vậy hãy làm cho những lời giới thiệu bán hàng của mình trở nên thú vị và thu hút khách hàng nhé. ')
INSERT [dbo].[Store] ([id], [name], [address], [phoneNumber], [imageId], [description]) VALUES (12, N'Cơm thố', N'Nam d?nh', N'1423', 14, N'Tạo lập được một website bán hàng thành công còn dựa vào rất nhiều yếu tố, mỗi một yếu tố chính là một thành phần để tạo nên sự độc đáo, từ đó thu hút khách hàng. Và một trong những yếu tố vô cùng quan trọng của quảng cáo bán hàng chính là status bán hàng hay. Chính vì vậy hãy làm cho những lời giới thiệu bán hàng của mình trở nên thú vị và thu hút khách hàng nhé. ')
SET IDENTITY_INSERT [dbo].[Store] OFF
SET IDENTITY_INSERT [dbo].[StoreComment] ON 

INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (1, 33, 1, N'Ngon quá', CAST(N'2020-12-01' AS Date))
INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (2, 37, 1, N'100 di?m', CAST(N'2020-01-10' AS Date))
INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (3, 44, 1, N'pro', CAST(N'2020-04-05' AS Date))
INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (4, 33, 3, N'vjp', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (5, 33, 4, N'gud ', CAST(N'2020-01-02' AS Date))
INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (6, 33, 5, N'tam duoc', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (8, 33, 8, N'chan', CAST(N'2020-01-04' AS Date))
INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (9, 33, 9, N'nan', CAST(N'2020-01-05' AS Date))
INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (10, 33, 10, N'that vong', CAST(N'2020-01-06' AS Date))
INSERT [dbo].[StoreComment] ([id], [userId], [storeId], [content], [createAt]) VALUES (11, 33, 11, N'buon', CAST(N'2020-01-07' AS Date))
SET IDENTITY_INSERT [dbo].[StoreComment] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (33, N'viettqhe@gmail.com', N'$2b$10$S9k17cwBioUHZ0mkGoYuQ.H6RAJPIV9a8XsWiA4RmimlzEFw9c57y', N'viet tran', 9, N'123456789', N'hung yên', 1, N'XEVyi4N5r{U:6#0X', CAST(N'2020-12-16' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (37, N'viettq@gmail.com', N'$2b$10$DjXzcJlimC2iwTt1/g.zpOZ1M7js0QIvjufCFGvROsR.5p/oEUp2y', N'danh tung', 8, NULL, NULL, 1, N'J4iY6ICp8Fn<-Fip', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (44, N'viettq2@gmail.com', N'$2b$10$u4BUTmZEJiL6bCYgpR8y9.ww0hLxop98SPAzROnheD1x3w6T.13P2', N'cong son', 1, NULL, NULL, 1, N'4N72\=y7s#:^59G_', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (45, N'vit@gmail.com', N'$2b$10$lzzOswa78WYeDvH9qNG1iuA1hMu7/nmqYB6KJ4crJy1kr7./KjiDK', N'vit@gmail.com', 1, NULL, NULL, 1, N'E<"^%G>\GaIV01?d', CAST(N'2020-11-25' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (46, N'viett2q2@gmail.com', N'$2b$10$icHLKeFb1ye4QyQ/CzWHmOTKiKlaT2oYtkcAYvwWj0lrNH27SVsZi', N'vettq', 1, NULL, NULL, 1, N'm8`q9v(`eS1uR.=|', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (47, N'viett2q3@gmail.com', N'$2b$10$5k4.Po9JoQxd.tFgxWTwL.RqWHYHpM6xjtaIkIPUx.K0kbl17KLyO', N'vettq', 1, NULL, NULL, 1, N'93Xl>&6>owt5&idk', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (48, N'viet12345@gmail.com', N'$2b$10$waWdpxP9DTnNtljsaK1Kv.EJnq9IFK43NkllgBP0VQzsa2YDJBjPG', N'vietiiiii', 1, NULL, NULL, 1, N's''74Od>WV54f\1x[', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (49, N'asd@gmail.com', N'$2b$10$RU8iMRH2X72.gselrdeVxOgS0cZ3JSSpaeZ3Dau0gQUFTMdCys/0i', N'asdasd', 1, NULL, NULL, 1, N'n!e^3uvzYa8''''"85', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (50, N'qasd@gmail.com', N'$2b$10$KOlfIbzSRKoTl3Z9yDLU5uuqCDs3rHGb/mmAB7asHIRmeY/4epvHG', N'asdzxc', 1, NULL, NULL, 1, N'+"E9RC[".*D;&Vo)', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (51, N'asdsad@gmail.com', N'$2b$10$5Sk04dMJ.GTcAzT82RMaMORq7dyf.Wiv0/6vzYFjZPB7.DcdK37W2', N'hsudfh', 1, NULL, NULL, 1, N'g;0)pS5?8-kQU#cF', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (52, N'asdasd@gmail.com', N'$2b$10$yLyM/wdeCYA5FSy9ZkbC.OFnOxJNvNxXkEFlTMy9aHcWlHhcYTv/K', N'asdkasjd', 1, NULL, NULL, 1, N'ITqsiNW95[\O(.ie', CAST(N'2020-11-20' AS Date))
INSERT [dbo].[User] ([id], [email], [hashPassword], [name], [imageId], [phoneNumber], [address], [userType], [tokenKey], [expireDate]) VALUES (53, N'v@gmail.com', N'$2b$10$zwR6dOZdgQZpy48jzc1ycek4b7JB8dOswfV0wrIE/jxHAmDy17RFy', N'mmm', 1, NULL, NULL, 1, N'1OHkK+j60_W627ZP', CAST(N'2020-12-13' AS Date))
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserToken] ON 

INSERT [dbo].[UserToken] ([id], [userId], [tokenKey], [createAt]) VALUES (2, 33, N'bv', NULL)
SET IDENTITY_INSERT [dbo].[UserToken] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_User]    Script Date: 11/16/2020 9:35:20 AM ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [UC_User] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_imageId]  DEFAULT ((1)) FOR [imageId]
GO
ALTER TABLE [dbo].[UserToken] ADD  CONSTRAINT [DF_UserToken_createAt]  DEFAULT (getdate()) FOR [createAt]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_Category] FOREIGN KEY([catId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_Food_Category]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_Image] FOREIGN KEY([imageId])
REFERENCES [dbo].[Image] ([id])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_Food_Image]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_Store] FOREIGN KEY([storeId])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_Food_Store]
GO
ALTER TABLE [dbo].[FoodComment]  WITH CHECK ADD  CONSTRAINT [FK_FoodComment_Food] FOREIGN KEY([foodId])
REFERENCES [dbo].[Food] ([id])
GO
ALTER TABLE [dbo].[FoodComment] CHECK CONSTRAINT [FK_FoodComment_Food]
GO
ALTER TABLE [dbo].[FoodComment]  WITH CHECK ADD  CONSTRAINT [FK_FoodComment_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[FoodComment] CHECK CONSTRAINT [FK_FoodComment_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Image] FOREIGN KEY([imageId])
REFERENCES [dbo].[Image] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Image]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Food] FOREIGN KEY([foodId])
REFERENCES [dbo].[Food] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Food]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Food] FOREIGN KEY([foodId])
REFERENCES [dbo].[Food] ([id])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Food]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_User]
GO
ALTER TABLE [dbo].[RatingStore]  WITH CHECK ADD  CONSTRAINT [FK_RatingStore_Store] FOREIGN KEY([storeId])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[RatingStore] CHECK CONSTRAINT [FK_RatingStore_Store]
GO
ALTER TABLE [dbo].[RatingStore]  WITH CHECK ADD  CONSTRAINT [FK_RatingStore_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[RatingStore] CHECK CONSTRAINT [FK_RatingStore_User]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Image] FOREIGN KEY([imageId])
REFERENCES [dbo].[Image] ([id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Image]
GO
ALTER TABLE [dbo].[StoreComment]  WITH CHECK ADD  CONSTRAINT [FK_StoreComment_Store] FOREIGN KEY([storeId])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[StoreComment] CHECK CONSTRAINT [FK_StoreComment_Store]
GO
ALTER TABLE [dbo].[StoreComment]  WITH CHECK ADD  CONSTRAINT [FK_StoreComment_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[StoreComment] CHECK CONSTRAINT [FK_StoreComment_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Image] FOREIGN KEY([imageId])
REFERENCES [dbo].[Image] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Image]
GO
ALTER TABLE [dbo].[UserToken]  WITH CHECK ADD  CONSTRAINT [FK_UserToken_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[UserToken] CHECK CONSTRAINT [FK_UserToken_User]
GO
