USE [master]
GO
/****** Object:  Database [Airport_Herhel]    Script Date: 03.07.2023 18:07:54 ******/
CREATE DATABASE [Airport_Herhel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Airport_Herhel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Airport_Herhel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Airport_Herhel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Airport_Herhel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Airport_Herhel] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Airport_Herhel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Airport_Herhel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Airport_Herhel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Airport_Herhel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Airport_Herhel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Airport_Herhel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Airport_Herhel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Airport_Herhel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Airport_Herhel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Airport_Herhel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Airport_Herhel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Airport_Herhel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Airport_Herhel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Airport_Herhel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Airport_Herhel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Airport_Herhel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Airport_Herhel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Airport_Herhel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Airport_Herhel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Airport_Herhel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Airport_Herhel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Airport_Herhel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Airport_Herhel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Airport_Herhel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Airport_Herhel] SET  MULTI_USER 
GO
ALTER DATABASE [Airport_Herhel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Airport_Herhel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Airport_Herhel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Airport_Herhel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Airport_Herhel] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Airport_Herhel', N'ON'
GO
ALTER DATABASE [Airport_Herhel] SET QUERY_STORE = OFF
GO
USE [Airport_Herhel]
GO
/****** Object:  Table [dbo].[Aircraft_lights]    Script Date: 03.07.2023 18:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aircraft_lights](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fligth] [nvarchar](10) NOT NULL,
	[CityId] [int] NOT NULL,
	[Duration] [real] NOT NULL,
	[Time_in] [time](7) NOT NULL,
	[Time_out] [time](7) NOT NULL,
	[Departure] [date] NOT NULL,
	[AirplaneId] [int] NOT NULL,
 CONSTRAINT [PK_Aircraft_lights] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airplane]    Script Date: 03.07.2023 18:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airplane](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Places_biznes_clas] [int] NOT NULL,
	[Places_ecomon_clas] [int] NOT NULL,
 CONSTRAINT [PK_Airplane] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 03.07.2023 18:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 03.07.2023 18:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passenger](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Passenger] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 03.07.2023 18:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PassengerId] [int] NOT NULL,
	[Place] [nvarchar](5) NOT NULL,
	[Biznes_clas] [bit] NULL,
	[Econom_clas] [bit] NULL,
	[Date_sale] [date] NOT NULL,
	[Amount] [real] NOT NULL,
	[Aircraft_lightsId] [int] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aircraft_lights] ON 

INSERT [dbo].[Aircraft_lights] ([id], [Fligth], [CityId], [Duration], [Time_in], [Time_out], [Departure], [AirplaneId]) VALUES (1, N'FR203', 1, 1, CAST(N'08:15:00' AS Time), CAST(N'09:15:00' AS Time), CAST(N'2023-07-03' AS Date), 1)
INSERT [dbo].[Aircraft_lights] ([id], [Fligth], [CityId], [Duration], [Time_in], [Time_out], [Departure], [AirplaneId]) VALUES (2, N'LO30', 3, 12, CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(N'2023-07-03' AS Date), 2)
INSERT [dbo].[Aircraft_lights] ([id], [Fligth], [CityId], [Duration], [Time_in], [Time_out], [Departure], [AirplaneId]) VALUES (4, N'MS781', 2, 1, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), CAST(N'2023-07-03' AS Date), 3)
INSERT [dbo].[Aircraft_lights] ([id], [Fligth], [CityId], [Duration], [Time_in], [Time_out], [Departure], [AirplaneId]) VALUES (5, N'FR302', 1, 1, CAST(N'13:15:00' AS Time), CAST(N'14:15:00' AS Time), CAST(N'2023-07-03' AS Date), 4)
INSERT [dbo].[Aircraft_lights] ([id], [Fligth], [CityId], [Duration], [Time_in], [Time_out], [Departure], [AirplaneId]) VALUES (6, N'FR603', 2, 1, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), CAST(N'2023-07-01' AS Date), 1)
INSERT [dbo].[Aircraft_lights] ([id], [Fligth], [CityId], [Duration], [Time_in], [Time_out], [Departure], [AirplaneId]) VALUES (8, N'DQ54', 5, 3, CAST(N'17:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(N'2023-06-29' AS Date), 5)
SET IDENTITY_INSERT [dbo].[Aircraft_lights] OFF
GO
SET IDENTITY_INSERT [dbo].[Airplane] ON 

INSERT [dbo].[Airplane] ([id], [Places_biznes_clas], [Places_ecomon_clas]) VALUES (1, 20, 350)
INSERT [dbo].[Airplane] ([id], [Places_biznes_clas], [Places_ecomon_clas]) VALUES (2, 10, 400)
INSERT [dbo].[Airplane] ([id], [Places_biznes_clas], [Places_ecomon_clas]) VALUES (3, 15, 325)
INSERT [dbo].[Airplane] ([id], [Places_biznes_clas], [Places_ecomon_clas]) VALUES (4, 5, 120)
INSERT [dbo].[Airplane] ([id], [Places_biznes_clas], [Places_ecomon_clas]) VALUES (5, 6, 123)
SET IDENTITY_INSERT [dbo].[Airplane] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([id], [Name]) VALUES (1, N'Київ')
INSERT [dbo].[City] ([id], [Name]) VALUES (2, N'Одеса')
INSERT [dbo].[City] ([id], [Name]) VALUES (3, N'Маямі')
INSERT [dbo].[City] ([id], [Name]) VALUES (4, N'Кривий Ріг')
INSERT [dbo].[City] ([id], [Name]) VALUES (5, N'Брюсель')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Passenger] ON 

INSERT [dbo].[Passenger] ([id], [Name], [Surname]) VALUES (1, N'Svitlana', N'Herhel')
INSERT [dbo].[Passenger] ([id], [Name], [Surname]) VALUES (2, N'Zlata', N'Herhel')
INSERT [dbo].[Passenger] ([id], [Name], [Surname]) VALUES (3, N'Mykola', N'Herhel')
INSERT [dbo].[Passenger] ([id], [Name], [Surname]) VALUES (4, N'Iryna', N'Herhel')
INSERT [dbo].[Passenger] ([id], [Name], [Surname]) VALUES (5, N'Maria', N'Solomiy')
INSERT [dbo].[Passenger] ([id], [Name], [Surname]) VALUES (6, N'Volodimir', N'Pertov')
SET IDENTITY_INSERT [dbo].[Passenger] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([id], [PassengerId], [Place], [Biznes_clas], [Econom_clas], [Date_sale], [Amount], [Aircraft_lightsId]) VALUES (1, 1, N'C20', 1, 0, CAST(N'2023-07-02' AS Date), 800, 2)
INSERT [dbo].[Ticket] ([id], [PassengerId], [Place], [Biznes_clas], [Econom_clas], [Date_sale], [Amount], [Aircraft_lightsId]) VALUES (2, 2, N'C21', 1, 0, CAST(N'2023-07-02' AS Date), 800, 2)
INSERT [dbo].[Ticket] ([id], [PassengerId], [Place], [Biznes_clas], [Econom_clas], [Date_sale], [Amount], [Aircraft_lightsId]) VALUES (3, 3, N'C23', 1, 0, CAST(N'2023-06-30' AS Date), 900, 2)
INSERT [dbo].[Ticket] ([id], [PassengerId], [Place], [Biznes_clas], [Econom_clas], [Date_sale], [Amount], [Aircraft_lightsId]) VALUES (4, 4, N'C24', 0, 1, CAST(N'2023-06-30' AS Date), 900, 2)
INSERT [dbo].[Ticket] ([id], [PassengerId], [Place], [Biznes_clas], [Econom_clas], [Date_sale], [Amount], [Aircraft_lightsId]) VALUES (5, 5, N'A01', 0, 1, CAST(N'2023-07-01' AS Date), 15, 1)
INSERT [dbo].[Ticket] ([id], [PassengerId], [Place], [Biznes_clas], [Econom_clas], [Date_sale], [Amount], [Aircraft_lightsId]) VALUES (6, 6, N'B20', 0, 1, CAST(N'2023-06-15' AS Date), 300, 5)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
GO
ALTER TABLE [dbo].[Aircraft_lights]  WITH CHECK ADD  CONSTRAINT [FK_Aircraft_lights_Airplane] FOREIGN KEY([AirplaneId])
REFERENCES [dbo].[Airplane] ([id])
GO
ALTER TABLE [dbo].[Aircraft_lights] CHECK CONSTRAINT [FK_Aircraft_lights_Airplane]
GO
ALTER TABLE [dbo].[Aircraft_lights]  WITH CHECK ADD  CONSTRAINT [FK_Aircraft_lights_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Aircraft_lights] CHECK CONSTRAINT [FK_Aircraft_lights_City]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Aircraft_lights] FOREIGN KEY([Aircraft_lightsId])
REFERENCES [dbo].[Aircraft_lights] ([id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Aircraft_lights]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Passenger] FOREIGN KEY([PassengerId])
REFERENCES [dbo].[Passenger] ([id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Passenger]
GO
ALTER TABLE [dbo].[Aircraft_lights]  WITH CHECK ADD  CONSTRAINT [Duration] CHECK  (([Duration]>(0)))
GO
ALTER TABLE [dbo].[Aircraft_lights] CHECK CONSTRAINT [Duration]
GO
ALTER TABLE [dbo].[Airplane]  WITH CHECK ADD  CONSTRAINT [Places_biznes_clas1] CHECK  (([Places_biznes_clas]>(0)))
GO
ALTER TABLE [dbo].[Airplane] CHECK CONSTRAINT [Places_biznes_clas1]
GO
ALTER TABLE [dbo].[Airplane]  WITH CHECK ADD  CONSTRAINT [Places_ecomon_clas1] CHECK  (([Places_ecomon_clas]>(0)))
GO
ALTER TABLE [dbo].[Airplane] CHECK CONSTRAINT [Places_ecomon_clas1]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [Amount_Tcket1] CHECK  (([Amount]>(0)))
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [Amount_Tcket1]
GO
USE [master]
GO
ALTER DATABASE [Airport_Herhel] SET  READ_WRITE 
GO
