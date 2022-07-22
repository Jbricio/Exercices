USE [master]
GO
/****** Object:  Database [PerformanceReview]    Script Date: 7/22/2022 1:40:13 PM ******/
CREATE DATABASE [PerformanceReview]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PerformanceReview', FILENAME = N'/var/opt/mssql/data/PerformanceReview.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PerformanceReview_log', FILENAME = N'/var/opt/mssql/data/PerformanceReview_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PerformanceReview] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PerformanceReview].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PerformanceReview] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PerformanceReview] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PerformanceReview] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PerformanceReview] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PerformanceReview] SET ARITHABORT OFF 
GO
ALTER DATABASE [PerformanceReview] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PerformanceReview] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PerformanceReview] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PerformanceReview] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PerformanceReview] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PerformanceReview] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PerformanceReview] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PerformanceReview] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PerformanceReview] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PerformanceReview] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PerformanceReview] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PerformanceReview] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PerformanceReview] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PerformanceReview] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PerformanceReview] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PerformanceReview] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PerformanceReview] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PerformanceReview] SET RECOVERY FULL 
GO
ALTER DATABASE [PerformanceReview] SET  MULTI_USER 
GO
ALTER DATABASE [PerformanceReview] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PerformanceReview] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PerformanceReview] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PerformanceReview] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PerformanceReview] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PerformanceReview] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PerformanceReview', N'ON'
GO
ALTER DATABASE [PerformanceReview] SET QUERY_STORE = OFF
GO
USE [PerformanceReview]
GO
/****** Object:  Table [dbo].[Aeropuertos]    Script Date: 7/22/2022 1:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aeropuertos](
	[IdAeropuerto] [int] NOT NULL,
	[NombreAeropuerto] [varchar](50) NOT NULL,
	[CodigoAeropuerto] [varchar](5) NOT NULL,
	[DistanciaKm] [real] NOT NULL,
 CONSTRAINT [PK_Aeropuertos] PRIMARY KEY CLUSTERED 
(
	[IdAeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CiudadAeropuerto]    Script Date: 7/22/2022 1:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiudadAeropuerto](
	[IdCiudad_Aeropuerto] [int] NOT NULL,
	[IdCiudad] [int] NOT NULL,
	[IdAeropuerto] [int] NOT NULL,
 CONSTRAINT [PK_CiudadAeropuerto] PRIMARY KEY CLUSTERED 
(
	[IdCiudad_Aeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 7/22/2022 1:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[IdCiudades] [int] NOT NULL,
	[NombreCIudad] [varchar](50) NOT NULL,
	[HabitantesCiudad] [real] NOT NULL,
 CONSTRAINT [PK_Ciudades] PRIMARY KEY CLUSTERED 
(
	[IdCiudades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaisCiudad]    Script Date: 7/22/2022 1:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaisCiudad](
	[IdPais_Ciudad] [int] NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdCiudad] [int] NOT NULL,
 CONSTRAINT [PK_PaisCiudad] PRIMARY KEY CLUSTERED 
(
	[IdPais_Ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 7/22/2022 1:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] NOT NULL,
	[NombrePais] [varchar](50) NOT NULL,
	[HabitantesPais] [real] NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PertenenciasUE]    Script Date: 7/22/2022 1:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PertenenciasUE](
	[IdPertenencia] [int] NOT NULL,
	[PerteneceUE] [bit] NOT NULL,
	[IdPais] [int] NOT NULL,
 CONSTRAINT [PK_PertenenciasUE] PRIMARY KEY CLUSTERED 
(
	[IdPertenencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiudadAeropuerto]  WITH CHECK ADD  CONSTRAINT [FK_CiudadAeropuerto_Aeropuertos] FOREIGN KEY([IdAeropuerto])
REFERENCES [dbo].[Aeropuertos] ([IdAeropuerto])
GO
ALTER TABLE [dbo].[CiudadAeropuerto] CHECK CONSTRAINT [FK_CiudadAeropuerto_Aeropuertos]
GO
ALTER TABLE [dbo].[CiudadAeropuerto]  WITH CHECK ADD  CONSTRAINT [FK_CiudadAeropuerto_Ciudades] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudades] ([IdCiudades])
GO
ALTER TABLE [dbo].[CiudadAeropuerto] CHECK CONSTRAINT [FK_CiudadAeropuerto_Ciudades]
GO
ALTER TABLE [dbo].[PaisCiudad]  WITH CHECK ADD  CONSTRAINT [FK_PaisCiudad_Ciudades] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudades] ([IdCiudades])
GO
ALTER TABLE [dbo].[PaisCiudad] CHECK CONSTRAINT [FK_PaisCiudad_Ciudades]
GO
ALTER TABLE [dbo].[PaisCiudad]  WITH CHECK ADD  CONSTRAINT [FK_PaisCiudad_Paises] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([IdPais])
GO
ALTER TABLE [dbo].[PaisCiudad] CHECK CONSTRAINT [FK_PaisCiudad_Paises]
GO
ALTER TABLE [dbo].[PertenenciasUE]  WITH CHECK ADD  CONSTRAINT [FK_PertenenciasUE_Paises] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([IdPais])
GO
ALTER TABLE [dbo].[PertenenciasUE] CHECK CONSTRAINT [FK_PertenenciasUE_Paises]
GO
USE [master]
GO
ALTER DATABASE [PerformanceReview] SET  READ_WRITE 
GO
