USE [master]
GO
/****** Object:  Database [Petrash]    Script Date: 5/5/2015 8:36:10 PM ******/
CREATE DATABASE [Petrash]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Petrash', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Petrash.mdf' , SIZE = 7168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
/****** Object:  StoredProcedure [dbo].[MySum_shartep]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MySum_shartep]
@a int = 0, @b int = 5
AS
	DECLARE @res int;
	SET @res = @a + @b;
	RETURN @res
GO
/****** Object:  StoredProcedure [dbo].[Rect_shartep]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rect_shartep]
@w float, @h float, @s float out, @p float out
AS
	SET @s = @w * @h;
	SET @p = 2 * ( @w + @h );

GO
/****** Object:  UserDefinedFunction [dbo].[sum_shartep]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[sum_shartep] 
( @par1 int = 0, @par2 float = 0)
RETURNS int
--WITH ENCRIPTION
AS
begin
	return @par1 + @par2;
end

GO
/****** Object:  Table [dbo].[Authors]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](15) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Books]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Pages] [int] NOT NULL,
	[YearPress] [int] NOT NULL,
	[Id_Themes] [int] NOT NULL,
	[Id_Category] [int] NOT NULL,
	[Id_Author] [int] NOT NULL,
	[Id_Press] [int] NOT NULL,
	[Comment] [nvarchar](50) NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](40) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Id_Faculty] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Libs]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libs](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](15) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Press]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Press](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_Cards]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Cards](
	[Id] [int] NOT NULL,
	[Id_Student] [int] NOT NULL,
	[Id_Book] [int] NOT NULL,
	[DateOut] [datetime] NOT NULL,
	[DateIn] [datetime] NULL,
	[Id_Lib] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](15) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[Id_Group] [int] NOT NULL,
	[Term] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Cards]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Cards](
	[Id] [int] NOT NULL,
	[Id_Teacher] [int] NOT NULL,
	[Id_Book] [int] NOT NULL,
	[DateOut] [datetime] NOT NULL,
	[DateIn] [datetime] NULL,
	[Id_Lib] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](15) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[Id_Dep] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Themes]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Themes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[test_books]    Script Date: 5/5/2015 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[test_books]
AS
SELECT * FROM Books
WHERE Pages > 300

GO
USE [master]
GO
ALTER DATABASE [Petrash] SET  READ_WRITE 
GO
