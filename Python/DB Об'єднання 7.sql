USE [master]
GO
/****** Object:  Database [Academy_7_ Krotov]    Script Date: 10.07.2023 13:55:16 ******/
CREATE DATABASE [Academy_7_ Krotov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Academy_7_ Krotov', FILENAME = N'D:\SQLServer2016Media\MSSQL13.SQLEXPRESS\MSSQL\DATA\Academy_7_ Krotov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Academy_7_ Krotov_log', FILENAME = N'D:\SQLServer2016Media\MSSQL13.SQLEXPRESS\MSSQL\DATA\Academy_7_ Krotov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Academy_7_ Krotov] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Academy_7_ Krotov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Academy_7_ Krotov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET ARITHABORT OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Academy_7_ Krotov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Academy_7_ Krotov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Academy_7_ Krotov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Academy_7_ Krotov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Academy_7_ Krotov] SET  MULTI_USER 
GO
ALTER DATABASE [Academy_7_ Krotov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Academy_7_ Krotov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Academy_7_ Krotov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Academy_7_ Krotov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Academy_7_ Krotov] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Academy_7_ Krotov] SET QUERY_STORE = OFF
GO
USE [Academy_7_ Krotov]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Academy_7_ Krotov]
GO
/****** Object:  Table [dbo].[Assistants]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assistants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Assistants] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curators]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curators](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Curators] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deans]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Deans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Building] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[FacultyId] [int] NOT NULL,
	[HeadId] [int] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Building] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DeanId] [int] NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Year] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsCurators]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsCurators](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CuratorId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_GroupsCurators] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsLectures]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsLectures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[LectureId] [int] NOT NULL,
 CONSTRAINT [PK_GroupsLectures] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Heads]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Heads](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Heads] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LectureRooms]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LectureRooms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Building] [int] NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_LectureRooms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lectures]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Lectures] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Class] [int] NOT NULL,
	[DayOfWeek] [int] NOT NULL,
	[Week] [int] NOT NULL,
	[LectureId] [int] NOT NULL,
	[LectureRoomId] [int] NOT NULL,
 CONSTRAINT [PK_Schedules] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 10.07.2023 13:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assistants] ON 
GO
INSERT [dbo].[Assistants] ([id], [TeacherId]) VALUES (1, 3)
GO
INSERT [dbo].[Assistants] ([id], [TeacherId]) VALUES (2, 6)
GO
INSERT [dbo].[Assistants] ([id], [TeacherId]) VALUES (3, 9)
GO
SET IDENTITY_INSERT [dbo].[Assistants] OFF
GO
SET IDENTITY_INSERT [dbo].[Curators] ON 
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (1, 1)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (2, 2)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (3, 3)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (4, 4)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (5, 5)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (6, 6)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (7, 7)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (8, 8)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (9, 9)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (10, 10)
GO
INSERT [dbo].[Curators] ([id], [TeacherId]) VALUES (11, 11)
GO
SET IDENTITY_INSERT [dbo].[Curators] OFF
GO
SET IDENTITY_INSERT [dbo].[Deans] ON 
GO
INSERT [dbo].[Deans] ([id], [TeacherId]) VALUES (1, 2)
GO
INSERT [dbo].[Deans] ([id], [TeacherId]) VALUES (2, 5)
GO
INSERT [dbo].[Deans] ([id], [TeacherId]) VALUES (3, 8)
GO
INSERT [dbo].[Deans] ([id], [TeacherId]) VALUES (4, 11)
GO
SET IDENTITY_INSERT [dbo].[Deans] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 
GO
INSERT [dbo].[Departments] ([id], [Building], [Name], [FacultyId], [HeadId]) VALUES (3, 1, N'Software Development', 1, 1)
GO
INSERT [dbo].[Departments] ([id], [Building], [Name], [FacultyId], [HeadId]) VALUES (4, 1, N'Computer Science', 2, 1)
GO
INSERT [dbo].[Departments] ([id], [Building], [Name], [FacultyId], [HeadId]) VALUES (6, 2, N'Electronics and Microprocessor Technology', 3, 2)
GO
INSERT [dbo].[Departments] ([id], [Building], [Name], [FacultyId], [HeadId]) VALUES (7, 2, N'System Analysis and Management', 4, 2)
GO
INSERT [dbo].[Departments] ([id], [Building], [Name], [FacultyId], [HeadId]) VALUES (8, 3, N'piece intelligence and machine learning', 5, 3)
GO
INSERT [dbo].[Departments] ([id], [Building], [Name], [FacultyId], [HeadId]) VALUES (9, 3, N'information security', 6, 3)
GO
INSERT [dbo].[Departments] ([id], [Building], [Name], [FacultyId], [HeadId]) VALUES (11, 4, N'Mathematical Modeling', 1, 4)
GO
INSERT [dbo].[Departments] ([id], [Building], [Name], [FacultyId], [HeadId]) VALUES (12, 5, N'Data Analysis', 2, 4)
GO
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 
GO
INSERT [dbo].[Faculties] ([id], [Building], [Name], [DeanId]) VALUES (1, 1, N'Information Technologies', 1)
GO
INSERT [dbo].[Faculties] ([id], [Building], [Name], [DeanId]) VALUES (2, 1, N'Software Engineering', 1)
GO
INSERT [dbo].[Faculties] ([id], [Building], [Name], [DeanId]) VALUES (3, 1, N'Computer Science', 2)
GO
INSERT [dbo].[Faculties] ([id], [Building], [Name], [DeanId]) VALUES (4, 1, N'information and communication technologies', 2)
GO
INSERT [dbo].[Faculties] ([id], [Building], [Name], [DeanId]) VALUES (5, 2, N'Information security', 3)
GO
INSERT [dbo].[Faculties] ([id], [Building], [Name], [DeanId]) VALUES (6, 2, N'System Programming', 3)
GO
INSERT [dbo].[Faculties] ([id], [Building], [Name], [DeanId]) VALUES (8, 2, N'Software Development', 4)
GO
INSERT [dbo].[Faculties] ([id], [Building], [Name], [DeanId]) VALUES (9, 2, N'Information Systems', 4)
GO
SET IDENTITY_INSERT [dbo].[Faculties] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (3, N'F505', 1, 3)
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (4, N'A304', 2, 4)
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (6, N'F500', 3, 6)
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (7, N'G200', 4, 7)
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (8, N'R207', 1, 8)
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (9, N'F100', 5, 9)
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (11, N'D203', 5, 11)
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (12, N'S302', 3, 12)
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (16, N'KR54', 4, 3)
GO
INSERT [dbo].[Groups] ([id], [Name], [Year], [DepartmentId]) VALUES (17, N'Y601', 2, 8)
GO
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] ON 
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (1, 1, 3)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (2, 2, 4)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (3, 3, 6)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (4, 4, 7)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (5, 5, 8)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (6, 6, 9)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (7, 7, 11)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (8, 8, 12)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (9, 9, 16)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (10, 10, 17)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (11, 11, 9)
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] ON 
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (2, 3, 1)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (3, 4, 2)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (4, 6, 3)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (5, 7, 4)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (6, 8, 5)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (7, 9, 6)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (8, 11, 7)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (9, 12, 8)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (10, 16, 9)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (11, 17, 10)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (12, 17, 11)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (13, 16, 12)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (14, 12, 13)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (15, 11, 14)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (16, 9, 15)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (17, 8, 16)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (18, 7, 17)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (19, 6, 18)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (20, 4, 19)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (22, 3, 20)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (23, 8, 21)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (24, 11, 24)
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Heads] ON 
GO
INSERT [dbo].[Heads] ([id], [TeacherId]) VALUES (1, 1)
GO
INSERT [dbo].[Heads] ([id], [TeacherId]) VALUES (2, 4)
GO
INSERT [dbo].[Heads] ([id], [TeacherId]) VALUES (3, 7)
GO
INSERT [dbo].[Heads] ([id], [TeacherId]) VALUES (4, 10)
GO
SET IDENTITY_INSERT [dbo].[Heads] OFF
GO
SET IDENTITY_INSERT [dbo].[LectureRooms] ON 
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (1, 1, N'A311')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (2, 1, N'A104')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (6, 2, N'A300')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (7, 2, N'B100')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (8, 3, N'A220')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (9, 4, N'B113')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (10, 5, N'A310')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (12, 3, N'A305')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (13, 4, N'A209')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (14, 5, N'F403')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (15, 1, N'R309')
GO
INSERT [dbo].[LectureRooms] ([id], [Building], [Name]) VALUES (16, 2, N'A205')
GO
SET IDENTITY_INSERT [dbo].[LectureRooms] OFF
GO
SET IDENTITY_INSERT [dbo].[Lectures] ON 
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (2, 2, 2)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (3, 3, 3)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (4, 4, 4)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (5, 5, 5)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (6, 6, 6)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (7, 7, 7)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (8, 8, 8)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (9, 9, 9)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (10, 10, 10)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (11, 11, 11)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (12, 12, 1)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (13, 13, 2)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (14, 14, 3)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (15, 15, 4)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (16, 16, 5)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (17, 17, 6)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (18, 18, 7)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (19, 19, 8)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (20, 20, 9)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (21, 21, 10)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (22, 16, 3)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (23, 3, 11)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (24, 20, 4)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (25, 8, 1)
GO
INSERT [dbo].[Lectures] ([id], [SubjectId], [TeacherId]) VALUES (26, 6, 10)
GO
SET IDENTITY_INSERT [dbo].[Lectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedules] ON 
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (1, 1, 1, 2, 1, 1)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (2, 2, 1, 2, 2, 2)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (4, 2, 2, 3, 3, 6)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (5, 3, 3, 34, 4, 7)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (6, 4, 5, 12, 5, 8)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (7, 5, 3, 12, 6, 9)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (8, 6, 4, 11, 7, 10)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (10, 7, 5, 10, 8, 12)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (11, 8, 6, 9, 9, 13)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (12, 2, 2, 1, 10, 14)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (13, 3, 1, 1, 11, 15)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (14, 4, 1, 2, 12, 16)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (16, 5, 3, 3, 13, 1)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (17, 6, 4, 4, 14, 2)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (21, 7, 3, 2, 15, 6)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (22, 8, 4, 52, 16, 7)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (23, 1, 5, 34, 17, 8)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (24, 3, 3, 43, 18, 6)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (25, 6, 7, 5, 19, 9)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (26, 2, 2, 24, 20, 10)
GO
INSERT [dbo].[Schedules] ([id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (27, 5, 3, 45, 21, 1)
GO
SET IDENTITY_INSERT [dbo].[Schedules] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (1, N'Algorithms and Data Structures')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (19, N'Analog and digital extensions')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (3, N'Architecture of computers')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (13, N'Data analysis')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (16, N'Digital circuits and systems')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (15, N'Electronics and microelectronics')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (5, N'Information security')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (11, N'Information systems')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (4, N'Merezhi and communications')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (17, N'Microcontrollers and built-in systems')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (21, N'Modeling and optimization of systems')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (2, N'Object Oriented Programming')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (12, N'Piece intelligence')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (9, N'Programming mobile apps')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (18, N'Sensory electronics')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (6, N'Software development')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (8, N'Software project management')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (7, N'Software testing')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (20, N'System analysis')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (14, N'Web design and development')
GO
INSERT [dbo].[Subjects] ([id], [Name]) VALUES (10, N'Web development')
GO
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (1, N'Barry', N'Gilmor')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (2, N'Samanta', N'Hichcok')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (3, N'Edward', N'Hopper')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (4, N'Alex', N'Carmack')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (5, N'Maikl', N'Gibbs')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (6, N'Klint', N'Isstwood')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (7, N'Beby', N'Bymer')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (8, N'Cris', N'Ensvord')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (9, N'Kayla', N'Wood')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (10, N'Frensis', N'Houp')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (11, N'Mika', N'Shafl')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (12, N'Fabio', N'Petruchelli')
GO
INSERT [dbo].[Teachers] ([id], [Name], [Surname]) VALUES (13, N'Boris', N'Godunov')
GO
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NameDepartment]    Script Date: 10.07.2023 13:55:17 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [NameDepartment] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NameFaculty]    Script Date: 10.07.2023 13:55:17 ******/
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [NameFaculty] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NameGroup]    Script Date: 10.07.2023 13:55:17 ******/
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [NameGroup] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NameLectureRooms]    Script Date: 10.07.2023 13:55:17 ******/
ALTER TABLE [dbo].[LectureRooms] ADD  CONSTRAINT [NameLectureRooms] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NameSubject]    Script Date: 10.07.2023 13:55:17 ******/
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [NameSubject] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Name]  DEFAULT ('Not filled') FOR [Name]
GO
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [DF_Faculties_Name]  DEFAULT ('Not filled') FOR [Name]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF_Groups_Name]  DEFAULT ('Not filled') FOR [Name]
GO
ALTER TABLE [dbo].[LectureRooms] ADD  CONSTRAINT [DF_LectureRooms_Name]  DEFAULT ('Not filled') FOR [Name]
GO
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [DF_Subjects_Name]  DEFAULT ('Not filled') FOR [Name]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Name]  DEFAULT ('Not filled') FOR [Name]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Surname]  DEFAULT ('Not filled') FOR [Surname]
GO
ALTER TABLE [dbo].[Assistants]  WITH CHECK ADD  CONSTRAINT [FK_Assistants_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([id])
GO
ALTER TABLE [dbo].[Assistants] CHECK CONSTRAINT [FK_Assistants_Teachers]
GO
ALTER TABLE [dbo].[Curators]  WITH CHECK ADD  CONSTRAINT [FK_Curators_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([id])
GO
ALTER TABLE [dbo].[Curators] CHECK CONSTRAINT [FK_Curators_Teachers]
GO
ALTER TABLE [dbo].[Deans]  WITH CHECK ADD  CONSTRAINT [FK_Deans_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([id])
GO
ALTER TABLE [dbo].[Deans] CHECK CONSTRAINT [FK_Deans_Teachers]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Faculties] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([id])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Faculties]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Heads] FOREIGN KEY([HeadId])
REFERENCES [dbo].[Heads] ([id])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Heads]
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD  CONSTRAINT [FK_Faculties_Deans] FOREIGN KEY([DeanId])
REFERENCES [dbo].[Deans] ([id])
GO
ALTER TABLE [dbo].[Faculties] CHECK CONSTRAINT [FK_Faculties_Deans]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Departments]
GO
ALTER TABLE [dbo].[GroupsCurators]  WITH CHECK ADD  CONSTRAINT [FK_GroupsCurators_Curators] FOREIGN KEY([CuratorId])
REFERENCES [dbo].[Curators] ([id])
GO
ALTER TABLE [dbo].[GroupsCurators] CHECK CONSTRAINT [FK_GroupsCurators_Curators]
GO
ALTER TABLE [dbo].[GroupsCurators]  WITH CHECK ADD  CONSTRAINT [FK_GroupsCurators_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([id])
GO
ALTER TABLE [dbo].[GroupsCurators] CHECK CONSTRAINT [FK_GroupsCurators_Groups]
GO
ALTER TABLE [dbo].[GroupsLectures]  WITH CHECK ADD  CONSTRAINT [FK_GroupsLectures_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([id])
GO
ALTER TABLE [dbo].[GroupsLectures] CHECK CONSTRAINT [FK_GroupsLectures_Groups]
GO
ALTER TABLE [dbo].[GroupsLectures]  WITH CHECK ADD  CONSTRAINT [FK_GroupsLectures_Lectures] FOREIGN KEY([LectureId])
REFERENCES [dbo].[Lectures] ([id])
GO
ALTER TABLE [dbo].[GroupsLectures] CHECK CONSTRAINT [FK_GroupsLectures_Lectures]
GO
ALTER TABLE [dbo].[Heads]  WITH CHECK ADD  CONSTRAINT [FK_Heads_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([id])
GO
ALTER TABLE [dbo].[Heads] CHECK CONSTRAINT [FK_Heads_Teachers]
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD  CONSTRAINT [FK_Lectures_Subjects] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([id])
GO
ALTER TABLE [dbo].[Lectures] CHECK CONSTRAINT [FK_Lectures_Subjects]
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD  CONSTRAINT [FK_Lectures_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([id])
GO
ALTER TABLE [dbo].[Lectures] CHECK CONSTRAINT [FK_Lectures_Teachers]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_Schedules_LectureRooms] FOREIGN KEY([LectureRoomId])
REFERENCES [dbo].[LectureRooms] ([id])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_Schedules_LectureRooms]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_Schedules_Lectures] FOREIGN KEY([LectureId])
REFERENCES [dbo].[Lectures] ([id])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_Schedules_Lectures]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [Building] CHECK  (([Building]>=(1) AND [Building]<=(5)))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [Building]
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD  CONSTRAINT [BuildingFaculty] CHECK  (([Building]>=(1) AND [Building]<=(5)))
GO
ALTER TABLE [dbo].[Faculties] CHECK CONSTRAINT [BuildingFaculty]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [Year] CHECK  (([Year]>=(1) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [Year]
GO
ALTER TABLE [dbo].[LectureRooms]  WITH CHECK ADD  CONSTRAINT [BuildingLectureRooms] CHECK  (([Building]>=(1) AND [Building]<=(5)))
GO
ALTER TABLE [dbo].[LectureRooms] CHECK CONSTRAINT [BuildingLectureRooms]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [Class] CHECK  (([Class]>=(1) AND [Class]<=(8)))
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [Class]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [DayOfWeek] CHECK  (([DayOfWeek]>=(1) AND [DayOfWeek]<=(7)))
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [DayOfWeek]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [Week] CHECK  (([Week]>=(1) AND [Week]<=(52)))
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [Week]
GO
USE [master]
GO
ALTER DATABASE [Academy_7_ Krotov] SET  READ_WRITE 
GO
