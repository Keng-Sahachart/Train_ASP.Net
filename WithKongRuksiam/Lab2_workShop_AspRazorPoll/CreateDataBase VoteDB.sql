USE [master]
GO
/****** Object:  Database [VoteDB]    Script Date: 5/7/2020 12:53:55 AM ******/
CREATE DATABASE [VoteDB] ON  PRIMARY 
( NAME = N'VoteDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\VoteDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VoteDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\VoteDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VoteDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VoteDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VoteDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VoteDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VoteDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VoteDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VoteDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [VoteDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VoteDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VoteDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VoteDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VoteDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VoteDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VoteDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VoteDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VoteDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VoteDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VoteDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VoteDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VoteDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VoteDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VoteDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VoteDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VoteDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VoteDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VoteDB] SET  MULTI_USER 
GO
ALTER DATABASE [VoteDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VoteDB] SET DB_CHAINING OFF 
GO
USE [VoteDB]
GO
/****** Object:  Table [dbo].[pollTb]    Script Date: 5/7/2020 12:53:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pollTb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[language] [nvarchar](255) NULL,
 CONSTRAINT [PK_pollTb] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[pollTb] ON 
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (1, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (2, N'PHP')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (3, N'JAVA')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (4, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (5, N'')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (6, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (7, N'GO')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (8, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (9, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (10, N'JAVA')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (11, N'PHP')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (12, N'GO')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (13, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (14, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (15, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (16, N'PHP')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (17, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (18, N'GO')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (19, N'PHP')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (20, N'GO')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (21, N'PHP')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (22, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (23, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (24, N'PHP')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (25, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (26, N'GO')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (27, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (28, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (29, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (30, N'GO')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (31, N'JAVA')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (32, N'JAVA')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (33, N'')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (34, N'')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (35, N'JAVA')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (36, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (37, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (38, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (39, N'')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (40, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (41, N'')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (42, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (43, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (44, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (45, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (46, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (47, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (48, N'')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (49, N'GO')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (50, N'')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (51, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (52, N'PHP')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (53, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (54, N'GO')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (55, N'GO')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (56, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (57, N'JAVA')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (58, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (59, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (60, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (61, N'JavaScript')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (62, N'PHP')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (63, N'PHP')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (64, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (65, N'C#')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (66, N'JAVA')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (67, N'JAVA')
GO
INSERT [dbo].[pollTb] ([id], [language]) VALUES (68, N'JAVA')
GO
SET IDENTITY_INSERT [dbo].[pollTb] OFF
GO
USE [master]
GO
ALTER DATABASE [VoteDB] SET  READ_WRITE 
GO
