USE [master]
GO
/****** Object:  Database [PerformanceReview2]    Script Date: 7/22/2022 2:49:05 PM ******/
CREATE DATABASE [PerformanceReview2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PerformanceReview2', FILENAME = N'/var/opt/mssql/data/PerformanceReview2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PerformanceReview2_log', FILENAME = N'/var/opt/mssql/data/PerformanceReview2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PerformanceReview2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PerformanceReview2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PerformanceReview2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PerformanceReview2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PerformanceReview2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PerformanceReview2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PerformanceReview2] SET ARITHABORT OFF 
GO
ALTER DATABASE [PerformanceReview2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PerformanceReview2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PerformanceReview2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PerformanceReview2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PerformanceReview2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PerformanceReview2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PerformanceReview2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PerformanceReview2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PerformanceReview2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PerformanceReview2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PerformanceReview2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PerformanceReview2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PerformanceReview2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PerformanceReview2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PerformanceReview2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PerformanceReview2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PerformanceReview2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PerformanceReview2] SET RECOVERY FULL 
GO
ALTER DATABASE [PerformanceReview2] SET  MULTI_USER 
GO
ALTER DATABASE [PerformanceReview2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PerformanceReview2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PerformanceReview2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PerformanceReview2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PerformanceReview2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PerformanceReview2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PerformanceReview2', N'ON'
GO
ALTER DATABASE [PerformanceReview2] SET QUERY_STORE = OFF
GO
USE [PerformanceReview2]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 7/22/2022 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[IdArticulo] [int] NOT NULL,
	[NombreArticulo] [varbinary](50) NOT NULL,
	[PrecioArticulo] [money] NOT NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cantidades]    Script Date: 7/22/2022 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantidades](
	[IdCantidad] [int] NOT NULL,
	[IdArticulo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Cantidades] PRIMARY KEY CLUSTERED 
(
	[IdCantidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 7/22/2022 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] NOT NULL,
	[NombreCliente] [varchar](50) NOT NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 7/22/2022 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[IdEstado] [int] NOT NULL,
	[NombreEstado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 7/22/2022 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[IdOrden] [int] NOT NULL,
	[FechaOrden] [date] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdCantidad] [int] NOT NULL,
	[Total] [money] NOT NULL,
	[IdArticulo] [int] NOT NULL,
 CONSTRAINT [PK_Orden] PRIMARY KEY CLUSTERED 
(
	[IdOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cantidades]  WITH CHECK ADD  CONSTRAINT [FK_Cantidades_Articulos] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[Articulos] ([IdArticulo])
GO
ALTER TABLE [dbo].[Cantidades] CHECK CONSTRAINT [FK_Cantidades_Articulos]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Estados] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Estados]
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD  CONSTRAINT [FK_Orden_Articulos] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[Articulos] ([IdArticulo])
GO
ALTER TABLE [dbo].[Orden] CHECK CONSTRAINT [FK_Orden_Articulos]
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD  CONSTRAINT [FK_Orden_Cantidades] FOREIGN KEY([IdCantidad])
REFERENCES [dbo].[Cantidades] ([IdCantidad])
GO
ALTER TABLE [dbo].[Orden] CHECK CONSTRAINT [FK_Orden_Cantidades]
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD  CONSTRAINT [FK_Orden_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[Orden] CHECK CONSTRAINT [FK_Orden_Clientes]
GO
USE [master]
GO
ALTER DATABASE [PerformanceReview2] SET  READ_WRITE 
GO
