USE [master]
GO
/****** Object:  Database [Avia-saler-olimpy]    Script Date: 27.11.2021 3:14:41 ******/
CREATE DATABASE [Avia-saler-olimpy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Avia-saler-olimpy', FILENAME = N'E:\MS SQL Manage Studio\MSSQL15.MS_SERVER_02_11\MSSQL\DATA\Avia-saler-olimpy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Avia-saler-olimpy_log', FILENAME = N'E:\MS SQL Manage Studio\MSSQL15.MS_SERVER_02_11\MSSQL\DATA\Avia-saler-olimpy_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Avia-saler-olimpy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Avia-saler-olimpy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Avia-saler-olimpy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET ARITHABORT OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Avia-saler-olimpy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Avia-saler-olimpy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Avia-saler-olimpy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Avia-saler-olimpy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET RECOVERY FULL 
GO
ALTER DATABASE [Avia-saler-olimpy] SET  MULTI_USER 
GO
ALTER DATABASE [Avia-saler-olimpy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Avia-saler-olimpy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Avia-saler-olimpy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Avia-saler-olimpy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Avia-saler-olimpy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Avia-saler-olimpy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Avia-saler-olimpy', N'ON'
GO
ALTER DATABASE [Avia-saler-olimpy] SET QUERY_STORE = OFF
GO
USE [Avia-saler-olimpy]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](100) NOT NULL,
	[lastName] [varchar](100) NOT NULL,
	[country] [varchar](100) NOT NULL,
	[city] [varchar](max) NOT NULL,
	[numberPhone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentHotels]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentHotels](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hotel] [bigint] NOT NULL,
	[id_comment] [bigint] NOT NULL,
	[comment] [varchar](max) NOT NULL,
 CONSTRAINT [PK_CommentHotels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentServices]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentServices](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_service] [bigint] NOT NULL,
	[id_comment] [bigint] NOT NULL,
	[comment] [varchar](max) NOT NULL,
 CONSTRAINT [PK_CommentServices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentTours]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentTours](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_tour] [bigint] NOT NULL,
	[id_comment] [bigint] NOT NULL,
	[comment] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentRooms]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentRooms](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_room] [bigint] NOT NULL,
	[equipment] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EquipmentRooms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriteTours]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteTours](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_client] [bigint] NULL,
	[id_tour] [bigint] NULL,
 CONSTRAINT [PK_FavoriteTours] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [varchar](150) NOT NULL,
	[country] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[description] [varchar](max) NOT NULL,
	[stars] [tinyint] NOT NULL,
	[rating] [tinyint] NOT NULL,
	[additionals] [varchar](100) NOT NULL,
	[photo] [image] NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagesHotel]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagesHotel](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hotel] [bigint] NULL,
	[image] [image] NULL,
 CONSTRAINT [PK_ImagesHotel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagesRooms]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagesRooms](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_room] [bigint] NOT NULL,
	[images] [varchar](max) NULL,
 CONSTRAINT [PK_RoomsGotel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MethodsPayment]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MethodsPayment](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[methodDescription] [varchar](max) NULL,
 CONSTRAINT [PK_MethodsPayment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModerationComments]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModerationComments](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_author] [bigint] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_ModerationComments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_tour] [bigint] NOT NULL,
	[id_client] [bigint] NOT NULL,
	[id_hotel] [bigint] NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Recycle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_order] [bigint] NULL,
	[id_hotel] [bigint] NULL,
	[id_method] [bigint] NOT NULL,
	[price] [bigint] NOT NULL,
	[description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prices]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prices](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_tour] [bigint] NULL,
	[date] [date] NULL,
	[priceTour] [int] NULL,
	[priceHotel] [int] NULL,
	[priceServices] [int] NULL,
	[priceInsurance] [int] NULL,
	[priceTotal] [int] NULL,
 CONSTRAINT [PK_Prices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hotel] [bigint] NOT NULL,
	[number] [int] NOT NULL,
	[class] [varchar](100) NOT NULL,
	[moneyPerDay] [int] NOT NULL,
	[booking] [varchar](max) NOT NULL,
	[places] [tinyint] NOT NULL,
 CONSTRAINT [PK_ImagesRoom] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_client] [bigint] NOT NULL,
	[sale] [int] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicesHotel]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicesHotel](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hotel] [bigint] NOT NULL,
	[description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ServicesHotel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tours](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hotel] [bigint] NOT NULL,
	[id_typeEat] [bigint] NOT NULL,
	[cityOutput] [varchar](max) NOT NULL,
	[countryInput] [varchar](100) NOT NULL,
	[dateOutput] [datetime] NOT NULL,
 CONSTRAINT [PK_Tours] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeEatHotel]    Script Date: 27.11.2021 3:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeEatHotel](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_TypeEatHotel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CommentHotels]  WITH CHECK ADD  CONSTRAINT [FK_CommentHotels_Hotels] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[CommentHotels] CHECK CONSTRAINT [FK_CommentHotels_Hotels]
GO
ALTER TABLE [dbo].[CommentHotels]  WITH CHECK ADD  CONSTRAINT [FK_CommentHotels_ModerationComments] FOREIGN KEY([id_comment])
REFERENCES [dbo].[ModerationComments] ([id])
GO
ALTER TABLE [dbo].[CommentHotels] CHECK CONSTRAINT [FK_CommentHotels_ModerationComments]
GO
ALTER TABLE [dbo].[CommentServices]  WITH CHECK ADD  CONSTRAINT [FK_CommentServices_ModerationComments] FOREIGN KEY([id_comment])
REFERENCES [dbo].[ModerationComments] ([id])
GO
ALTER TABLE [dbo].[CommentServices] CHECK CONSTRAINT [FK_CommentServices_ModerationComments]
GO
ALTER TABLE [dbo].[CommentServices]  WITH CHECK ADD  CONSTRAINT [FK_CommentServices_ServicesHotel] FOREIGN KEY([id_service])
REFERENCES [dbo].[ServicesHotel] ([id])
GO
ALTER TABLE [dbo].[CommentServices] CHECK CONSTRAINT [FK_CommentServices_ServicesHotel]
GO
ALTER TABLE [dbo].[CommentTours]  WITH CHECK ADD  CONSTRAINT [FK_CommentTours_ModerationComments] FOREIGN KEY([id_comment])
REFERENCES [dbo].[ModerationComments] ([id])
GO
ALTER TABLE [dbo].[CommentTours] CHECK CONSTRAINT [FK_CommentTours_ModerationComments]
GO
ALTER TABLE [dbo].[CommentTours]  WITH CHECK ADD  CONSTRAINT [FK_CommentTours_Tours] FOREIGN KEY([id_tour])
REFERENCES [dbo].[Tours] ([id])
GO
ALTER TABLE [dbo].[CommentTours] CHECK CONSTRAINT [FK_CommentTours_Tours]
GO
ALTER TABLE [dbo].[EquipmentRooms]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentRooms_Rooms] FOREIGN KEY([id_room])
REFERENCES [dbo].[Rooms] ([id])
GO
ALTER TABLE [dbo].[EquipmentRooms] CHECK CONSTRAINT [FK_EquipmentRooms_Rooms]
GO
ALTER TABLE [dbo].[FavoriteTours]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteTours_Clients] FOREIGN KEY([id_client])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[FavoriteTours] CHECK CONSTRAINT [FK_FavoriteTours_Clients]
GO
ALTER TABLE [dbo].[FavoriteTours]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteTours_Tours] FOREIGN KEY([id_tour])
REFERENCES [dbo].[Tours] ([id])
GO
ALTER TABLE [dbo].[FavoriteTours] CHECK CONSTRAINT [FK_FavoriteTours_Tours]
GO
ALTER TABLE [dbo].[ImagesHotel]  WITH CHECK ADD  CONSTRAINT [FK_ImagesHotel_Hotels] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[ImagesHotel] CHECK CONSTRAINT [FK_ImagesHotel_Hotels]
GO
ALTER TABLE [dbo].[ImagesRooms]  WITH CHECK ADD  CONSTRAINT [FK_ImagesRooms_Rooms] FOREIGN KEY([id_room])
REFERENCES [dbo].[Rooms] ([id])
GO
ALTER TABLE [dbo].[ImagesRooms] CHECK CONSTRAINT [FK_ImagesRooms_Rooms]
GO
ALTER TABLE [dbo].[ModerationComments]  WITH CHECK ADD  CONSTRAINT [FK_ModerationComments_Clients] FOREIGN KEY([id_author])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[ModerationComments] CHECK CONSTRAINT [FK_ModerationComments_Clients]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Clients] FOREIGN KEY([id_client])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Clients]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Hotels] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Hotels]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Recycle_Tours] FOREIGN KEY([id_tour])
REFERENCES [dbo].[Tours] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Recycle_Tours]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Hotels] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Hotels]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_MethodsPayment] FOREIGN KEY([id_method])
REFERENCES [dbo].[MethodsPayment] ([id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_MethodsPayment]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Orders] FOREIGN KEY([id_order])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Orders]
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD  CONSTRAINT [FK_Prices_Tours] FOREIGN KEY([id_tour])
REFERENCES [dbo].[Tours] ([id])
GO
ALTER TABLE [dbo].[Prices] CHECK CONSTRAINT [FK_Prices_Tours]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Hotels] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Hotels]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Clients] FOREIGN KEY([id_client])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Clients]
GO
ALTER TABLE [dbo].[ServicesHotel]  WITH CHECK ADD  CONSTRAINT [FK_ServicesHotel_Hotels] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[ServicesHotel] CHECK CONSTRAINT [FK_ServicesHotel_Hotels]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK_Tours_Hotels] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK_Tours_Hotels]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK_Tours_TypeEatHotel] FOREIGN KEY([id_typeEat])
REFERENCES [dbo].[TypeEatHotel] ([id])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK_Tours_TypeEatHotel]
GO
USE [master]
GO
ALTER DATABASE [Avia-saler-olimpy] SET  READ_WRITE 
GO
