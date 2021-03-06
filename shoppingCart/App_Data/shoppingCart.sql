USE [shoppingCart]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/9/2563 16:56:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 11/9/2563 16:56:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orders]') AND type in (N'U'))
DROP TABLE [dbo].[orders]
GO
/****** Object:  Table [dbo].[order_Detail]    Script Date: 11/9/2563 16:56:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_Detail]') AND type in (N'U'))
DROP TABLE [dbo].[order_Detail]
GO
USE [master]
GO
/****** Object:  Database [shoppingCart]    Script Date: 11/9/2563 16:56:14 ******/
DROP DATABASE [shoppingCart]
GO
/****** Object:  Database [shoppingCart]    Script Date: 11/9/2563 16:56:14 ******/
CREATE DATABASE [shoppingCart] ON  PRIMARY 
( NAME = N'shoppingCart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\shoppingCart.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shoppingCart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\shoppingCart_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shoppingCart] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shoppingCart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shoppingCart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shoppingCart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shoppingCart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shoppingCart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shoppingCart] SET ARITHABORT OFF 
GO
ALTER DATABASE [shoppingCart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shoppingCart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shoppingCart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shoppingCart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shoppingCart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shoppingCart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shoppingCart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shoppingCart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shoppingCart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shoppingCart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shoppingCart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shoppingCart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shoppingCart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shoppingCart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shoppingCart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shoppingCart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shoppingCart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shoppingCart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [shoppingCart] SET  MULTI_USER 
GO
ALTER DATABASE [shoppingCart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shoppingCart] SET DB_CHAINING OFF 
GO
USE [shoppingCart]
GO
/****** Object:  Table [dbo].[order_Detail]    Script Date: 11/9/2563 16:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_Detail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Qty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 11/9/2563 16:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[Name] [nvarchar](1000) NULL,
	[Address] [nvarchar](1000) NULL,
	[Tel] [nvarchar](1000) NULL,
	[Email] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/9/2563 16:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Price] [money] NULL,
	[Picture] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (1, N'Mobile', 100.0000, N'https://www.checkraka.com/uploaded/_resized/max_484x376/ed/edd0af7cdcbe59cab43929425261aae5.jpg')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (2, N'computer', 200.0000, N'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Desktop_computer_clipart_-_Yellow_theme.svg/1200px-Desktop_computer_clipart_-_Yellow_theme.svg.png')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (3, N'dog', 300.0000, N'https://nongpets.com/wp-content/uploads/2019/07/Beagle.jpg')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (4, N'cat', 400.0000, N'https://cdn.marketingoops.com/wp-content/uploads/2013/08/grumpycat1.jpg')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (5, N'bird', 500.0000, N'https://news.pdamobiz.com/wp-content/uploads/7r201062-2019-11-02_12-11-04_403206.jpg')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (6, N'home', 600.0000, N'https://a0.muscache.com/pictures/ed9f46b1-45e2-4e48-b9ac-1d5d63b0d1fc.jpg')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (7, N'car', 700.0000, N'https://www.autodeft.com/_files/images/full/2020-08-03/PCQ8JFKO.jpg')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (8, N'model', 800.0000, N'https://da.lnwfile.com/una6zs.jpg')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (9, N'doll', 900.0000, N'https://f.btwcdn.com/store-44005/product/c8da43cf-4730-23ff-3014-5c9c51503001.jpg')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (10, N'flower', 1000.0000, N'https://fx.lnwfile.com/ymjhep.jpg')
INSERT [dbo].[product] ([ProductID], [ProductName], [Price], [Picture]) VALUES (11, N'battery', 1100.0000, N'https://cf.shopee.co.th/file/0e896ace26c6024d8c0775132a954172')
SET IDENTITY_INSERT [dbo].[product] OFF
GO
USE [master]
GO
ALTER DATABASE [shoppingCart] SET  READ_WRITE 
GO
