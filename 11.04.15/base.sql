USE [master]
GO
/****** Object:  Database [Petrash]    Script Date: 4/11/2015 5:42:49 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_product] [int] NOT NULL,
	[id_supplier] [int] NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[date_of_delivery] [date] NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Forma]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Forma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[id_spec] [int] NULL,
	[id_forma] [int] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Money]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Money](
	[My_count] [int] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Money] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[id_category] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[measurement] [nvarchar](50) NOT NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
	[price] [real] NOT NULL,
	[producer] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[discount] [real] NULL,
	[isGMO] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sale]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_product] [int] NOT NULL,
	[price] [float] NULL,
	[quantity] [float] NULL,
	[date_of_sale] [date] NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specializations]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specializations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Specializations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[family_name] [nvarchar](50) NULL,
	[id_group] [int] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 4/11/2015 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[id_address] [int] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Product] FOREIGN KEY([id_product])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Product]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Forma] FOREIGN KEY([id_forma])
REFERENCES [dbo].[Forma] ([id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Forma]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Specializations] FOREIGN KEY([id_spec])
REFERENCES [dbo].[Specializations] ([id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Specializations]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Groups] FOREIGN KEY([id_group])
REFERENCES [dbo].[Groups] ([id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Groups]
GO
USE [master]
GO
ALTER DATABASE [Petrash] SET  READ_WRITE 
GO
