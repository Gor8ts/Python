USE [master]
GO
/****** Object:  Database [Academy_6_Krotov]    Script Date: 01.07.2023 15:28:52 ******/
CREATE DATABASE [Academy_6_Krotov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Academy_6_Krotov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Academy_6_Krotov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Academy_6_Krotov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Academy_6_Krotov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Academy_6_Krotov] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Academy_6_Krotov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Academy_6_Krotov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET ARITHABORT OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Academy_6_Krotov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Academy_6_Krotov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Academy_6_Krotov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Academy_6_Krotov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Academy_6_Krotov] SET  MULTI_USER 
GO
ALTER DATABASE [Academy_6_Krotov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Academy_6_Krotov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Academy_6_Krotov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Academy_6_Krotov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Academy_6_Krotov] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Academy_6_Krotov] SET QUERY_STORE = OFF
GO
USE [Academy_6_Krotov]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Academy_6_Krotov]
GO
/****** Object:  Table [dbo].[Curators]    Script Date: 01.07.2023 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curators](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameCurator] [nvarchar](max) NOT NULL,
	[SurnameCurator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Curators] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 01.07.2023 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Building] [int] NOT NULL,
	[Financing] [money] NOT NULL,
	[NameDepartment] [nvarchar](100) NOT NULL,
	[FacultyId] [int] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 01.07.2023 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameFaculty] [nvarchar](100) NOT NULL,
 CONSTRAINT [id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 01.07.2023 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameGroup] [nvarchar](10) NOT NULL,
	[Year] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsCurators]    Script Date: 01.07.2023 15:28:52 ******/
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
/****** Object:  Table [dbo].[GroupsLectures]    Script Date: 01.07.2023 15:28:52 ******/
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
/****** Object:  Table [dbo].[GroupsStudents]    Script Date: 01.07.2023 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsStudents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [PK_GroupsStudents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lectures]    Script Date: 01.07.2023 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Lectures] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 01.07.2023 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameStudent] [nvarchar](max) NOT NULL,
	[SurnameStudent] [nvarchar](max) NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 01.07.2023 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameSubject] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 01.07.2023 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IsProfessor] [bit] NOT NULL,
	[NameTeacher] [nvarchar](max) NOT NULL,
	[SurnameTeacher] [nvarchar](max) NOT NULL,
	[Salary] [money] NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Curators] ON 
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (1, N'Vasyl', N'Lysenko')
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (2, N'Olexandra', N'Kovalchuk')
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (3, N'Maksym', N'Kravchenko')
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (4, N'Anna', N'Shevchenko')
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (5, N'Ivan', N'Levchenko')
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (6, N'Yuliya', N'Vasylenko')
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (7, N'Pavlo', N'Petrenko')
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (8, N'Mariya', N'Hryhorenko')
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (9, N'Oleg', N'Melnyk')
GO
INSERT [dbo].[Curators] ([id], [NameCurator], [SurnameCurator]) VALUES (10, N'Anastasiya', N'Koval')
GO
SET IDENTITY_INSERT [dbo].[Curators] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 
GO
INSERT [dbo].[Departments] ([id], [Building], [Financing], [NameDepartment], [FacultyId]) VALUES (1, 1, 55000.0000, N'Software Development', 1)
GO
INSERT [dbo].[Departments] ([id], [Building], [Financing], [NameDepartment], [FacultyId]) VALUES (4, 1, 49000.0000, N'Computer Science', 2)
GO
INSERT [dbo].[Departments] ([id], [Building], [Financing], [NameDepartment], [FacultyId]) VALUES (5, 2, 24512.0000, N'Physics', 3)
GO
INSERT [dbo].[Departments] ([id], [Building], [Financing], [NameDepartment], [FacultyId]) VALUES (6, 3, 12345.0000, N'Psychology', 2)
GO
INSERT [dbo].[Departments] ([id], [Building], [Financing], [NameDepartment], [FacultyId]) VALUES (7, 4, 15632.0000, N'Literature', 4)
GO
INSERT [dbo].[Departments] ([id], [Building], [Financing], [NameDepartment], [FacultyId]) VALUES (8, 5, 100001.0000, N'History', 5)
GO
INSERT [dbo].[Departments] ([id], [Building], [Financing], [NameDepartment], [FacultyId]) VALUES (9, 2, 75500.0000, N'sh', 1)
GO
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 
GO
INSERT [dbo].[Faculties] ([id], [NameFaculty]) VALUES (2, N'Computer Science')
GO
INSERT [dbo].[Faculties] ([id], [NameFaculty]) VALUES (4, N'Economics')
GO
INSERT [dbo].[Faculties] ([id], [NameFaculty]) VALUES (1, N'Information Technology')
GO
INSERT [dbo].[Faculties] ([id], [NameFaculty]) VALUES (7, N'Law')
GO
INSERT [dbo].[Faculties] ([id], [NameFaculty]) VALUES (5, N'Management')
GO
INSERT [dbo].[Faculties] ([id], [NameFaculty]) VALUES (3, N'Medicine')
GO
INSERT [dbo].[Faculties] ([id], [NameFaculty]) VALUES (6, N'Philology')
GO
SET IDENTITY_INSERT [dbo].[Faculties] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 
GO
INSERT [dbo].[Groups] ([id], [NameGroup], [Year], [DepartmentId]) VALUES (1, N'1A', 1, 1)
GO
INSERT [dbo].[Groups] ([id], [NameGroup], [Year], [DepartmentId]) VALUES (2, N'B2', 2, 4)
GO
INSERT [dbo].[Groups] ([id], [NameGroup], [Year], [DepartmentId]) VALUES (3, N'Delta', 3, 5)
GO
INSERT [dbo].[Groups] ([id], [NameGroup], [Year], [DepartmentId]) VALUES (5, N'D221', 4, 6)
GO
INSERT [dbo].[Groups] ([id], [NameGroup], [Year], [DepartmentId]) VALUES (6, N'Zeta', 5, 7)
GO
INSERT [dbo].[Groups] ([id], [NameGroup], [Year], [DepartmentId]) VALUES (7, N'Kuta', 5, 1)
GO
INSERT [dbo].[Groups] ([id], [NameGroup], [Year], [DepartmentId]) VALUES (8, N'Beta', 5, 8)
GO
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] ON 
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (1, 1, 6)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (2, 2, 5)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (3, 3, 3)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (4, 4, 2)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (5, 5, 1)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (6, 6, 6)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (7, 7, 1)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (8, 8, 3)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (9, 9, 2)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (10, 10, 5)
GO
INSERT [dbo].[GroupsCurators] ([id], [CuratorId], [GroupId]) VALUES (12, 4, 5)
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] ON 
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (1, 1, 2)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (2, 2, 1)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (3, 3, 6)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (4, 5, 7)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (5, 6, 10)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (6, 2, 3)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (7, 5, 9)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (8, 1, 8)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (9, 3, 4)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (10, 6, 5)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (11, 7, 1)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (12, 7, 2)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (13, 7, 8)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (14, 7, 9)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (15, 8, 1)
GO
INSERT [dbo].[GroupsLectures] ([id], [GroupId], [LectureId]) VALUES (16, 8, 10)
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsStudents] ON 
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (2, 2, 2)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (3, 3, 3)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (4, 5, 4)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (5, 6, 5)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (6, 1, 6)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (7, 2, 7)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (8, 3, 8)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (9, 5, 9)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (10, 6, 10)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (11, 1, 11)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (12, 2, 12)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (13, 3, 13)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (14, 7, 1)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (15, 7, 5)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (16, 7, 11)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (17, 7, 4)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (18, 7, 13)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (19, 7, 9)
GO
INSERT [dbo].[GroupsStudents] ([id], [GroupId], [StudentId]) VALUES (20, 7, 6)
GO
SET IDENTITY_INSERT [dbo].[GroupsStudents] OFF
GO
SET IDENTITY_INSERT [dbo].[Lectures] ON 
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (1, CAST(N'2023-06-26' AS Date), 1, 5)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (2, CAST(N'2023-06-25' AS Date), 2, 9)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (3, CAST(N'2023-06-13' AS Date), 3, 10)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (4, CAST(N'2023-06-15' AS Date), 4, 8)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (5, CAST(N'2023-06-17' AS Date), 5, 1)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (6, CAST(N'2023-06-16' AS Date), 6, 4)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (7, CAST(N'2023-06-15' AS Date), 7, 2)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (8, CAST(N'2023-06-14' AS Date), 8, 3)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (9, CAST(N'2023-06-25' AS Date), 9, 6)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (10, CAST(N'2023-06-16' AS Date), 10, 7)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (11, CAST(N'2023-06-24' AS Date), 1, 1)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (12, CAST(N'2023-06-23' AS Date), 2, 2)
GO
INSERT [dbo].[Lectures] ([id], [Date], [SubjectId], [TeacherId]) VALUES (13, CAST(N'2023-06-22' AS Date), 1, 3)
GO
SET IDENTITY_INSERT [dbo].[Lectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (1, N'John', N'Smith
', 5)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (2, N'Emily', N'Johnson
', 5)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (3, N'Michael', N'Davis', 2)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (4, N'Sophia', N'Anderson
', 5)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (5, N'Daniel', N'Wilson
', 5)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (6, N'Olivia', N'Thompson
', 5)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (7, N'Matthew', N'Roberts
', 3)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (8, N'Ava', N'Brown
', 4)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (9, N'William', N'Taylor
', 5)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (10, N'Isabella', N'Clark
', 5)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (11, N'Mary', N'Pups', 5)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (12, N'Glory', N'Frank', 4)
GO
INSERT [dbo].[Students] ([id], [NameStudent], [SurnameStudent], [Rating]) VALUES (13, N'Bary', N'Allen', 5)
GO
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (2, N'Biology')
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (3, N'Chemistry')
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (9, N'Computer Science
')
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (7, N'Economics')
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (10, N'Foreign Languages
')
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (4, N'History')
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (5, N'Literature
')
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (1, N'Mathematics')
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (6, N'Physics')
GO
INSERT [dbo].[Subjects] ([id], [NameSubject]) VALUES (8, N'Psychology')
GO
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (1, 1, N'Igor', N'Sydorenko
', 2400.0000)
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (2, 0, N'Katerina', N'Kozak
', 1700.0000)
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (3, 0, N'Dmytro', N'Morozov
', 1670.0000)
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (4, 0, N'Oksana', N'Ivanenko
', 1750.0000)
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (5, 1, N'Andriy', N'Horbachenko
', 2400.0000)
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (6, 1, N'Nataliya', N'Pavlenko
', 2450.0000)
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (7, 0, N'Yevhen', N'Lytvynenko
', 1800.0000)
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (8, 0, N'Viktoriya', N'Karpenko
', 1500.0000)
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (9, 1, N'Roman', N'Chernyshev
', 2500.0000)
GO
INSERT [dbo].[Teachers] ([id], [IsProfessor], [NameTeacher], [SurnameTeacher], [Salary]) VALUES (10, 0, N'Tetiana', N'Lazarenko
', 1800.0000)
GO
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Name]    Script Date: 01.07.2023 15:28:53 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [Name] UNIQUE NONCLUSTERED 
(
	[NameDepartment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NameFaculties]    Script Date: 01.07.2023 15:28:53 ******/
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [NameFaculties] UNIQUE NONCLUSTERED 
(
	[NameFaculty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NameGroup]    Script Date: 01.07.2023 15:28:53 ******/
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [NameGroup] UNIQUE NONCLUSTERED 
(
	[NameGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NameSubject]    Script Date: 01.07.2023 15:28:53 ******/
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [NameSubject] UNIQUE NONCLUSTERED 
(
	[NameSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Curators] ADD  CONSTRAINT [DF_Curators_NameCurator]  DEFAULT ('Not filled') FOR [NameCurator]
GO
ALTER TABLE [dbo].[Curators] ADD  CONSTRAINT [DF_Curators_SurnameCurator]  DEFAULT ('Not filled') FOR [SurnameCurator]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Financing]  DEFAULT ((0)) FOR [Financing]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Name]  DEFAULT ('Not filled') FOR [NameDepartment]
GO
ALTER TABLE [dbo].[Faculties] ADD  CONSTRAINT [DF_Faculties_Name]  DEFAULT ('Not filled') FOR [NameFaculty]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF_Groups_NameGroup]  DEFAULT ('Not filled') FOR [NameGroup]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_NameStudent]  DEFAULT ('Not filled') FOR [NameStudent]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_SurnameStudent]  DEFAULT ('Not filled') FOR [SurnameStudent]
GO
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [DF_Subjects_NameSubject]  DEFAULT ('Not filled') FOR [NameSubject]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_IsProfessor]  DEFAULT ((0)) FOR [IsProfessor]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_NameTeacher]  DEFAULT ('Not filled') FOR [NameTeacher]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_SurnameTeacher]  DEFAULT ('Not filled') FOR [SurnameTeacher]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Faculties] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([id])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Faculties]
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
ALTER TABLE [dbo].[GroupsStudents]  WITH CHECK ADD  CONSTRAINT [FK_GroupsStudents_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([id])
GO
ALTER TABLE [dbo].[GroupsStudents] CHECK CONSTRAINT [FK_GroupsStudents_Groups]
GO
ALTER TABLE [dbo].[GroupsStudents]  WITH CHECK ADD  CONSTRAINT [FK_GroupsStudents_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[GroupsStudents] CHECK CONSTRAINT [FK_GroupsStudents_Students]
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
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [Building] CHECK  (([Building]>=(1) AND [Building]<=(5)))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [Building]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [Financing] CHECK  (([Financing]>=(0)))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [Financing]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [Year] CHECK  (([Year]>=(1) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [Year]
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD  CONSTRAINT [Date] CHECK  (([Date]<'2023-06-27'))
GO
ALTER TABLE [dbo].[Lectures] CHECK CONSTRAINT [Date]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [Rating] CHECK  (([Rating]>=(1) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [Rating]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [Salary] CHECK  (([Salary]>(0)))
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [Salary]
GO
USE [master]
GO
ALTER DATABASE [Academy_6_Krotov] SET  READ_WRITE 
GO
