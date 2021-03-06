USE [master]
GO
/****** Object:  Database [Petrash]    Script Date: 4/18/2015 7:06:39 PM ******/
CREATE DATABASE [Petrash]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Petrash', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Petrash.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
/****** Object:  Table [dbo].[Authors]    Script Date: 4/18/2015 7:06:39 PM ******/
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
/****** Object:  Table [dbo].[Books]    Script Date: 4/18/2015 7:06:39 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 4/18/2015 7:06:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 4/18/2015 7:06:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](40) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 4/18/2015 7:06:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 4/18/2015 7:06:39 PM ******/
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
/****** Object:  Table [dbo].[Libs]    Script Date: 4/18/2015 7:06:39 PM ******/
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
/****** Object:  Table [dbo].[Press]    Script Date: 4/18/2015 7:06:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Press](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[S_Cards]    Script Date: 4/18/2015 7:06:39 PM ******/
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
/****** Object:  Table [dbo].[Students]    Script Date: 4/18/2015 7:06:39 PM ******/
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
/****** Object:  Table [dbo].[T_Cards]    Script Date: 4/18/2015 7:06:39 PM ******/
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
/****** Object:  Table [dbo].[Teachers]    Script Date: 4/18/2015 7:06:39 PM ******/
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
/****** Object:  Table [dbo].[Themes]    Script Date: 4/18/2015 7:06:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Themes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (1, N'Джеймс Р.', N'Грофф')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (2, N'Сергей', N'Никольский')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (3, N'Михаил', N'Маров')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (4, N'Борис', N'Карпов')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (5, N'Алексей', N'Архангельский')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (6, N'Владимир', N'Король')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (7, N'Евангелос', N'Петрусос')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (8, N'Маркус', N'Херхагер')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (9, N'Павел', N'Гарбар')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (10, N'Александр', N'Матросов')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (11, N'Людмила', N'Омельченко')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (12, N'Кевин', N'Рейчард')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (13, N'Ольга', N'Кокорева')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (14, N'Марк', N'Браун')
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (1, N'SQL', 816, 2001, 1, 1, 1, 2, N'2-е издание', 2)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (2, N'3D Studio Max 3', 640, 2000, 3, 6, 3, 3, N'Учебный курс', 3)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (3, N'100 компонентов общего назначения библиотеки Delphi 5', 272, 1999, 2, 4, 5, 4, N'Компоненты', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (4, N'Visual Basic 6', 416, 2000, 2, 5, 4, 3, N'Специальный справочник', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (5, N'Курс математического анализа', 328, 1990, 4, 2, 2, 5, N'1-й том', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (6, N'Библиотека C++ Builder 5: 70 компонентов ввода/вывода информации', 288, 2000, 2, 3, 5, 4, N'Компоненты', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (7, N'Интегрированная среда разработки', 272, 2000, 2, 3, 5, 4, N'Среда разработки', 2)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (8, N'Русская справка (Help) по Delphi 5 и  Object Pascal', 32, 2000, 2, 4, 5, 4, N'Справочник', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (9, N'Visual Basic 6.0 for Application', 488, 2000, 2, 5, 6, 6, N'Справочник с примерами', 3)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (10, N'Visual Basic 6', 576, 2000, 2, 5, 7, 2, N'Руководство разработчика 1-й том', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (11, N'Mathcad 2000', 416, 2000, 5, 7, 8, 2, N'Полное руководство', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (12, N'Novell GroupWise 5.5 система электронной почты и коллективной работы', 480, 2000, 6, 8, 9, 2, N'Сетевые пакеты', 2)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (13, N'Реестр Windows 2000', 352, 2000, 9, 12, 13, 2, N'Руководство для профессионалов', 4)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (14, N'Unix справочник', 384, 1999, 9, 13, 12, 3, N'Справочное руководство', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (15, N'Самоучитель Visual FoxPro 6.0', 512, 1999, 1, 11, 11, 2, N'Самоучитель', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (16, N'Самоучитель FrontPage 2000', 512, 1999, 7, 10, 11, 2, N'Самоучитель', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (17, N'Самоучитель Perl', 432, 2000, 2, 9, 10, 2, N'Самоучитель', 2)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (18, N'HTML 3.2', 1040, 2000, 7, 14, 14, 2, N'Руководство', 5)
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Язык SQL')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Математический анализ')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'C++ Builder')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Delphi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Visual Basic')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'3D Studio Max')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Mathcad')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'Novell')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'Perl')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (10, N'FrontPage')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (11, N'Visual FoxPro')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (12, N'Windows 2000')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (13, N'Unix')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (14, N'HTML')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (1, N'Программерства')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (2, N'Графики и Дизайна')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (3, N'Железа и Администрирования')
INSERT [dbo].[Faculties] ([Id], [Name]) VALUES (1, N'Программирования')
INSERT [dbo].[Faculties] ([Id], [Name]) VALUES (2, N'Веб-дизайна')
INSERT [dbo].[Faculties] ([Id], [Name]) VALUES (3, N'Администрирования')
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (2, N'9П1', 1)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (3, N'9П2', 1)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (4, N'9А', 3)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (5, N'9Д', 2)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (6, N'14А', 3)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (7, N'19П1', 1)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (8, N'18П2', 1)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (9, N'18А', 3)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (10, N'19Д', 2)
INSERT [dbo].[Libs] ([Id], [FirstName], [LastName]) VALUES (1, N'Сергей', N'Максименко')
INSERT [dbo].[Libs] ([Id], [FirstName], [LastName]) VALUES (2, N'Дмитрий', N'Чеботарев')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (1, N'DiaSoft')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (2, N'BHV')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (3, N'Питер')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (4, N'Бином')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (5, N'Наука')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (6, N'Кудиц-Образ')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (7, N'Диалектика')
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (1, 2, 1, CAST(0x000090A200000000 AS DateTime), CAST(0x000090BC00000000 AS DateTime), 1)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (2, 17, 18, CAST(0x00008F3600000000 AS DateTime), NULL, 1)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (3, 6, 3, CAST(0x0000908800000000 AS DateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (4, 21, 4, CAST(0x0000906E00000000 AS DateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (5, 3, 1, CAST(0x00008F2B00000000 AS DateTime), CAST(0x0000907F00000000 AS DateTime), 1)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (6, 7, 11, CAST(0x000090B200000000 AS DateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (7, 16, 14, CAST(0x0000907800000000 AS DateTime), NULL, 1)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (8, 11, 6, CAST(0x0000909600000000 AS DateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (9, 17, 2, CAST(0x0000912B00000000 AS DateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (10, 10, 13, CAST(0x0000909600000000 AS DateTime), NULL, 1)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (2, N'Вячеслав', N'Зезик', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (3, N'Ольга', N'Мантуляк', 4, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (4, N'Ольга', N'Хренова', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (5, N'Ольга', N'Медведева', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (6, N'Галина', N'Инащенко', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (7, N'Юрий', N'Минае', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (8, N'Юрий', N'Домовесов', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (9, N'Руслан', N'Ярмолович', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (10, N'Игорь', N'Удовик', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (11, N'Петр', N'Кацевич', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (12, N'Евгений', N'Бурцев', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (13, N'Флора', N'Побирская', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (14, N'Наталья', N'Гридина', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (15, N'Елена', N'Акусова', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (16, N'Светлана', N'Горшкова', 9, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (17, N'Александр', N'Любенко', 10, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (18, N'Евгения', N'Цимбалюк', 10, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (19, N'Ольга', N'Болячевская', 5, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (20, N'Станислав', N'Плешаков', 7, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (21, N'Елена', N'Таран', 4, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (22, N'Денис', N'Рогачевский', 2, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (23, N'Оксана', N'Тихонова', 6, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (24, N'Петр', N'Максимов', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (25, N'Ирина', N'Стогнеева', 5, 2)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (1, 2, 13, CAST(0x00008EAC00000000 AS DateTime), CAST(0x000090D200000000 AS DateTime), 1)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (2, 10, 2, CAST(0x00008EEA00000000 AS DateTime), NULL, 1)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (3, 6, 12, CAST(0x00008F4700000000 AS DateTime), NULL, 2)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (4, 3, 1, CAST(0x00008FA400000000 AS DateTime), NULL, 1)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (5, 8, 8, CAST(0x00008F2900000000 AS DateTime), NULL, 2)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (6, 5, 18, CAST(0x0000903A00000000 AS DateTime), NULL, 2)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (7, 12, 17, CAST(0x0000905800000000 AS DateTime), NULL, 1)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (8, 4, 18, CAST(0x00008F6300000000 AS DateTime), NULL, 1)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (1, N'Григорий', N'Ящук', 1)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (2, N'Алекс', N'Туманов', 1)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (3, N'Сергей', N'Максименко', 2)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (4, N'Дмитрий', N'Боровский', 2)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (5, N'Виктор', N'Бровар', 2)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (6, N'Вадим', N'Ткаченко', 3)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (7, N'Вячеслав', N'Калашников', 3)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (8, N'Руслан', N'Кучеренко', 1)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (9, N'Андрей', N'Тендюк', 1)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (10, N'Анатолий', N'Выклюк', 2)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (11, N'Олег', N'Резниченко', 3)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (12, N'Александр', N'Артемов', 1)
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (1, N'Базы данных')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (2, N'Программирование')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (3, N'Графические пакеты')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (4, N'Высшая математика')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (5, N'Математические пакеты')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (6, N'Сети')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (7, N'Web-дизайн')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (8, N'Windows 2000')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (9, N'Операционные системы')
USE [master]
GO
ALTER DATABASE [Petrash] SET  READ_WRITE 
GO
