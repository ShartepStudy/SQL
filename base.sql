USE [master]
GO
/****** Object:  Database [Petrash]    Script Date: 3/28/2015 5:32:47 PM ******/
CREATE DATABASE [Petrash]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Petrash', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Petrash.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Petrash_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Petrash_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Petrash] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Petrash].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Petrash] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Petrash] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Petrash] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Petrash] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Petrash] SET ARITHABORT OFF 
GO
ALTER DATABASE [Petrash] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Petrash] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Petrash] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Petrash] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Petrash] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Petrash] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Petrash] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Petrash] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Petrash] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Petrash] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Petrash] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Petrash] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Petrash] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Petrash] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Petrash] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Petrash] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Petrash] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Petrash] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Petrash] SET RECOVERY FULL 
GO
ALTER DATABASE [Petrash] SET  MULTI_USER 
GO
ALTER DATABASE [Petrash] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Petrash] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Petrash] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Petrash] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Petrash', N'ON'
GO
USE [Petrash]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/28/2015 5:32:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1000000,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[measurement] [nvarchar](50) NOT NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
	[price] [real] NOT NULL,
	[producer] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[discount] [real] NULL,
	[isGMO] [bit] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000004, N'Apples', N'Vegetables', 500, N'kg', CAST(0xB6390B00 AS Date), CAST(0xF4390B00 AS Date), 10, N'Golden', N'Suppl1', N'Ukraine', NULL, 0)
INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000005, N'Orange', N'Fruits', 1000, N'kg', CAST(0xB6390B00 AS Date), CAST(0x053A0B00 AS Date), 25, N'Alzhir', N'Butumba', N'Alzhir', NULL, 0)
INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000006, N'White_bread', N'Breads', 600, N'st', CAST(0xB6390B00 AS Date), CAST(0xBA390B00 AS Date), 5, N'Obedenniy', N'Hlebushek', N'Ukraune', NULL, 0)
INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000008, N'Potatoes', N'Vegetables', 1000, N'kg', CAST(0xB6390B00 AS Date), CAST(0xEC3A0B00 AS Date), 4, N'Sineglazka', N'Vinnitsa', N'Ukraine', NULL, 0)
INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000009, N'Vata', N'Bakaleia', 10000, N'st', CAST(0xB6390B00 AS Date), NULL, 16, N'Proctor', N'Gigiena', N'Poland', NULL, 0)
INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000004, N'Apples', N'Vegetables', 500, N'kg', CAST(0xB6390B00 AS Date), CAST(0xF4390B00 AS Date), 10, N'Golden', N'Suppl1', N'Ukraine', NULL, 0)
INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000005, N'Orange', N'Fruits', 1000, N'kg', CAST(0xB6390B00 AS Date), CAST(0x053A0B00 AS Date), 25, N'Alzhir', N'Butumba', N'Alzhir', NULL, 0)
INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000006, N'White_bread', N'Breads', 600, N'st', CAST(0xB6390B00 AS Date), CAST(0xBA390B00 AS Date), 5, N'Obedenniy', N'Hlebushek', N'Ukraune', NULL, 0)
INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000008, N'Potatoes', N'Vegetables', 1000, N'kg', CAST(0xB6390B00 AS Date), CAST(0xEC3A0B00 AS Date), 4, N'Sineglazka', N'Vinnitsa', N'Ukraine', NULL, 0)
INSERT [dbo].[Products] ([id], [name], [category], [quantity], [measurement], [date_of_delivery], [expire_date], [price], [producer], [supplier], [country], [discount], [isGMO]) VALUES (1000009, N'Vata', N'Bakaleia', 10000, N'st', CAST(0xB6390B00 AS Date), NULL, 16, N'Proctor', N'Gigiena', N'Poland', NULL, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
USE [master]
GO
ALTER DATABASE [Petrash] SET  READ_WRITE 
GO
