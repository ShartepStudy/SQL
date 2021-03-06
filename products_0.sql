USE [Aleksandr]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/14/2015 5:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[category] [nvarchar](50) NULL,
	[qantity] [int] NOT NULL,
	[measurement] [nvarchar](50) NULL,
	[date_of_delivery] [date] NOT NULL,
	[expire_date] [date] NULL,
	[price] [real] NULL,
	[producer] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[discount] [real] NULL,
	[isGMO] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [category], [qantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (2, N'Колбаса столичная', N'Еда', 150, N'кг', CAST(0xA9390B00 AS Date), CAST(0xC1390B00 AS Date), 95.25, N'ОВК', N'СПД Петров', N'Ukraine', 0, 0)
INSERT [dbo].[Products] ([id], [name], [category], [qantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (3, N'Стиральный порошок Ariel', N'Бытовая химия', 500, N'кг', CAST(0x9A390B00 AS Date), CAST(0x6F3A0B00 AS Date), 56.55, N'P&G', N'СПД Иванов', N'Poland', 0, 1)
INSERT [dbo].[Products] ([id], [name], [category], [qantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (4, N'Древесный Уголь', N'Отдых', 200, N'упаковка', CAST(0x3A390B00 AS Date), CAST(0x883A0B00 AS Date), 15, N'Дровосек', N'СПД Иванов', N'Ukraine', 0.15, 0)
INSERT [dbo].[Products] ([id], [name], [category], [qantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (5, N'Сыр', N'Еда', 333, N'кг', CAST(0x9D390B00 AS Date), CAST(0x263A0B00 AS Date), 66.45, N'Шостка', N'Нова Пошта', N'Ukraine', 0.1, 0)
INSERT [dbo].[Products] ([id], [name], [category], [qantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (8, N'Яйца Фермерские 10шт.', N'Еда', 100, N'упаковока', CAST(0xB2390B00 AS Date), CAST(0xC8390B00 AS Date), 15.22, N'Желоток', N'Деливери', N'Ukraine', 0, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
