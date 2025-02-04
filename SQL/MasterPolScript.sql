USE [master]
GO
/****** Object:  Database [FedorMasterPol]    Script Date: 04.11.2024 2:16:22 ******/
CREATE DATABASE [FedorMasterPol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FedorMasterPol', FILENAME = N'D:\MicrosoftSQLServer\MSSQL16.MSSQLSERVER\MSSQL\DATA\FedorMasterPol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FedorMasterPol_log', FILENAME = N'D:\MicrosoftSQLServer\MSSQL16.MSSQLSERVER\MSSQL\DATA\FedorMasterPol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FedorMasterPol] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FedorMasterPol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FedorMasterPol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FedorMasterPol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FedorMasterPol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FedorMasterPol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FedorMasterPol] SET ARITHABORT OFF 
GO
ALTER DATABASE [FedorMasterPol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FedorMasterPol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FedorMasterPol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FedorMasterPol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FedorMasterPol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FedorMasterPol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FedorMasterPol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FedorMasterPol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FedorMasterPol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FedorMasterPol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FedorMasterPol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FedorMasterPol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FedorMasterPol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FedorMasterPol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FedorMasterPol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FedorMasterPol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FedorMasterPol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FedorMasterPol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FedorMasterPol] SET  MULTI_USER 
GO
ALTER DATABASE [FedorMasterPol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FedorMasterPol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FedorMasterPol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FedorMasterPol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FedorMasterPol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FedorMasterPol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FedorMasterPol] SET QUERY_STORE = ON
GO
ALTER DATABASE [FedorMasterPol] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FedorMasterPol]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[ID_Address] [int] IDENTITY(1,1) NOT NULL,
	[PostIndex] [int] NOT NULL,
	[Region] [int] NOT NULL,
	[City] [int] NOT NULL,
	[Street] [int] NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID_Address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID_City] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID_City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[ID_Director] [int] IDENTITY(1,1) NOT NULL,
	[Director] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[ID_Director] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_type_import]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_type_import](
	[ID_Type] [int] IDENTITY(1,1) NOT NULL,
	[TypeMaterial] [nvarchar](350) NOT NULL,
	[PercentMarriageMaterial] [float] NOT NULL,
 CONSTRAINT [PK_Material_type_import] PRIMARY KEY CLUSTERED 
(
	[ID_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NamePartner]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NamePartner](
	[ID_NamePartner] [int] IDENTITY(1,1) NOT NULL,
	[NamePartner] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_NamePartner] PRIMARY KEY CLUSTERED 
(
	[ID_NamePartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_products_import]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_products_import](
	[ID_Products] [int] IDENTITY(1,1) NOT NULL,
	[Products] [int] NOT NULL,
	[NamePartner] [int] NOT NULL,
	[CountProduct] [int] NOT NULL,
	[DateSale] [date] NOT NULL,
 CONSTRAINT [PK_Partner_products_import] PRIMARY KEY CLUSTERED 
(
	[ID_Products] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners_import]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners_import](
	[ID_Partner] [int] IDENTITY(1,1) NOT NULL,
	[TypePartner] [int] NOT NULL,
	[TitlePartner] [int] NOT NULL,
	[Director] [int] NOT NULL,
	[DirectorEmail] [nchar](350) NOT NULL,
	[PhonePartner] [nchar](350) NOT NULL,
	[Address] [int] NOT NULL,
	[INN] [bigint] NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Partners_import] PRIMARY KEY CLUSTERED 
(
	[ID_Partner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostIndex]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostIndex](
	[ID_PostIndex] [int] IDENTITY(1,1) NOT NULL,
	[PostIndex] [int] NOT NULL,
 CONSTRAINT [PK_PostIndex] PRIMARY KEY CLUSTERED 
(
	[ID_PostIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type_import]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type_import](
	[ID_TypeProduction] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduction] [nvarchar](350) NOT NULL,
	[CoeffTypeProduction] [float] NOT NULL,
 CONSTRAINT [PK_Product_type_import] PRIMARY KEY CLUSTERED 
(
	[ID_TypeProduction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID_Products] [int] IDENTITY(1,1) NOT NULL,
	[Products] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID_Products] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_import]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_import](
	[ID_TypeProduction] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduction] [int] NOT NULL,
	[TitleProduction] [int] NOT NULL,
	[Article] [bigint] NOT NULL,
	[MinimalPrice] [float] NOT NULL,
	[TypeMaterial] [int] NOT NULL,
 CONSTRAINT [PK_Products_import] PRIMARY KEY CLUSTERED 
(
	[ID_TypeProduction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[ID_Region] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[ID_Region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[ID_Street] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[ID_Street] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePartner]    Script Date: 04.11.2024 2:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePartner](
	[ID_TypePartner] [int] IDENTITY(1,1) NOT NULL,
	[TypePartner] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_TypePartner] PRIMARY KEY CLUSTERED 
(
	[ID_TypePartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([ID_Address], [PostIndex], [Region], [City], [Street], [House]) VALUES (1, 1, 5, 2, 4, 51)
INSERT [dbo].[Address] ([ID_Address], [PostIndex], [Region], [City], [Street], [House]) VALUES (2, 2, 1, 3, 5, 18)
INSERT [dbo].[Address] ([ID_Address], [PostIndex], [Region], [City], [Street], [House]) VALUES (3, 3, 4, 1, 2, 21)
INSERT [dbo].[Address] ([ID_Address], [PostIndex], [Region], [City], [Street], [House]) VALUES (4, 4, 2, 4, 3, 122)
INSERT [dbo].[Address] ([ID_Address], [PostIndex], [Region], [City], [Street], [House]) VALUES (5, 5, 3, 5, 1, 15)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([ID_City], [City]) VALUES (1, N' город Приморск')
INSERT [dbo].[City] ([ID_City], [City]) VALUES (2, N' город Реутов')
INSERT [dbo].[City] ([ID_City], [City]) VALUES (3, N' город Северодвинск')
INSERT [dbo].[City] ([ID_City], [City]) VALUES (4, N' город Старый Оскол')
INSERT [dbo].[City] ([ID_City], [City]) VALUES (5, N' город Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Director] ON 

INSERT [dbo].[Director] ([ID_Director], [Director]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[Director] ([ID_Director], [Director]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[Director] ([ID_Director], [Director]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[Director] ([ID_Director], [Director]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[Director] ([ID_Director], [Director]) VALUES (5, N'Степанов Степан Сергеевич')
SET IDENTITY_INSERT [dbo].[Director] OFF
GO
SET IDENTITY_INSERT [dbo].[Material_type_import] ON 

INSERT [dbo].[Material_type_import] ([ID_Type], [TypeMaterial], [PercentMarriageMaterial]) VALUES (1, N'Тип материала 1', 0.001)
INSERT [dbo].[Material_type_import] ([ID_Type], [TypeMaterial], [PercentMarriageMaterial]) VALUES (2, N'Тип материала 2', 0.0095)
INSERT [dbo].[Material_type_import] ([ID_Type], [TypeMaterial], [PercentMarriageMaterial]) VALUES (3, N'Тип материала 3', 0.0028)
INSERT [dbo].[Material_type_import] ([ID_Type], [TypeMaterial], [PercentMarriageMaterial]) VALUES (4, N'Тип материала 4', 0.0055)
INSERT [dbo].[Material_type_import] ([ID_Type], [TypeMaterial], [PercentMarriageMaterial]) VALUES (5, N'Тип материала 5', 0.0034)
SET IDENTITY_INSERT [dbo].[Material_type_import] OFF
GO
SET IDENTITY_INSERT [dbo].[NamePartner] ON 

INSERT [dbo].[NamePartner] ([ID_NamePartner], [NamePartner]) VALUES (1, N'База Строитель')
INSERT [dbo].[NamePartner] ([ID_NamePartner], [NamePartner]) VALUES (2, N'МонтажПро')
INSERT [dbo].[NamePartner] ([ID_NamePartner], [NamePartner]) VALUES (3, N'Паркет 29')
INSERT [dbo].[NamePartner] ([ID_NamePartner], [NamePartner]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[NamePartner] ([ID_NamePartner], [NamePartner]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[NamePartner] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner_products_import] ON 

INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[Partner_products_import] ([ID_Products], [Products], [NamePartner], [CountProduct], [DateSale]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[Partner_products_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners_import] ON 

INSERT [dbo].[Partners_import] ([ID_Partner], [TypePartner], [TitlePartner], [Director], [DirectorEmail], [PhonePartner], [Address], [INN], [Rating]) VALUES (1, 1, 1, 2, N'aleksandraivanova@ml.ru                                                                                                                                                                                                                                                                                                                                       ', N'+7(493)-123-45-67                                                                                                                                                                                                                                                                                                                                             ', 5, 2222455179, 7)
INSERT [dbo].[Partners_import] ([ID_Partner], [TypePartner], [TitlePartner], [Director], [DirectorEmail], [PhonePartner], [Address], [INN], [Rating]) VALUES (2, 3, 3, 3, N'vppetrov@vl.ru                                                                                                                                                                                                                                                                                                                                                ', N'+7(987)-123-56-78                                                                                                                                                                                                                                                                                                                                             ', 2, 3333888520, 7)
INSERT [dbo].[Partners_import] ([ID_Partner], [TypePartner], [TitlePartner], [Director], [DirectorEmail], [PhonePartner], [Address], [INN], [Rating]) VALUES (3, 4, 5, 4, N'ansolovev@st.ru                                                                                                                                                                                                                                                                                                                                               ', N'+7(812)-223-32-00                                                                                                                                                                                                                                                                                                                                             ', 3, 4440391035, 7)
INSERT [dbo].[Partners_import] ([ID_Partner], [TypePartner], [TitlePartner], [Director], [DirectorEmail], [PhonePartner], [Address], [INN], [Rating]) VALUES (4, 2, 4, 1, N'ekaterina.vorobeva@ml.ru                                                                                                                                                                                                                                                                                                                                      ', N'+7(444)-222-33-11                                                                                                                                                                                                                                                                                                                                             ', 1, 1111520857, 5)
INSERT [dbo].[Partners_import] ([ID_Partner], [TypePartner], [TitlePartner], [Director], [DirectorEmail], [PhonePartner], [Address], [INN], [Rating]) VALUES (5, 1, 2, 5, N'stepanov@stepan.ru                                                                                                                                                                                                                                                                                                                                            ', N'+7(912)-888-33-33                                                                                                                                                                                                                                                                                                                                             ', 4, 5552431140, 10)
SET IDENTITY_INSERT [dbo].[Partners_import] OFF
GO
SET IDENTITY_INSERT [dbo].[PostIndex] ON 

INSERT [dbo].[PostIndex] ([ID_PostIndex], [PostIndex]) VALUES (1, 143960)
INSERT [dbo].[PostIndex] ([ID_PostIndex], [PostIndex]) VALUES (2, 164500)
INSERT [dbo].[PostIndex] ([ID_PostIndex], [PostIndex]) VALUES (3, 188910)
INSERT [dbo].[PostIndex] ([ID_PostIndex], [PostIndex]) VALUES (4, 309500)
INSERT [dbo].[PostIndex] ([ID_PostIndex], [PostIndex]) VALUES (5, 652050)
SET IDENTITY_INSERT [dbo].[PostIndex] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_type_import] ON 

INSERT [dbo].[Product_type_import] ([ID_TypeProduction], [TypeProduction], [CoeffTypeProduction]) VALUES (1, N'Ламинат', 2.35)
INSERT [dbo].[Product_type_import] ([ID_TypeProduction], [TypeProduction], [CoeffTypeProduction]) VALUES (2, N'Массивная доска', 5.15)
INSERT [dbo].[Product_type_import] ([ID_TypeProduction], [TypeProduction], [CoeffTypeProduction]) VALUES (3, N'Паркетная доска', 4.34)
INSERT [dbo].[Product_type_import] ([ID_TypeProduction], [TypeProduction], [CoeffTypeProduction]) VALUES (4, N'Пробковое покрытие', 1.5)
SET IDENTITY_INSERT [dbo].[Product_type_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID_Products], [Products]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[Products] ([ID_Products], [Products]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[Products] ([ID_Products], [Products]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[Products] ([ID_Products], [Products]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[Products] ([ID_Products], [Products]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Products_import] ON 

INSERT [dbo].[Products_import] ([ID_TypeProduction], [TypeProduction], [TitleProduction], [Article], [MinimalPrice], [TypeMaterial]) VALUES (1, 3, 4, 8758385, 4456.9, 1)
INSERT [dbo].[Products_import] ([ID_TypeProduction], [TypeProduction], [TitleProduction], [Article], [MinimalPrice], [TypeMaterial]) VALUES (2, 3, 1, 8858958, 7330.99, 2)
INSERT [dbo].[Products_import] ([ID_TypeProduction], [TypeProduction], [TitleProduction], [Article], [MinimalPrice], [TypeMaterial]) VALUES (3, 1, 2, 7750282, 1799.33, 3)
INSERT [dbo].[Products_import] ([ID_TypeProduction], [TypeProduction], [TitleProduction], [Article], [MinimalPrice], [TypeMaterial]) VALUES (4, 1, 3, 7028748, 3890.41, 4)
INSERT [dbo].[Products_import] ([ID_TypeProduction], [TypeProduction], [TitleProduction], [Article], [MinimalPrice], [TypeMaterial]) VALUES (5, 4, 5, 5012543, 5450.59, 5)
SET IDENTITY_INSERT [dbo].[Products_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([ID_Region], [Region]) VALUES (1, N' Архангельская область')
INSERT [dbo].[Region] ([ID_Region], [Region]) VALUES (2, N' Белгородская область')
INSERT [dbo].[Region] ([ID_Region], [Region]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[Region] ([ID_Region], [Region]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[Region] ([ID_Region], [Region]) VALUES (5, N' Московская область')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([ID_Street], [Street]) VALUES (1, N' ул. Лесная')
INSERT [dbo].[Street] ([ID_Street], [Street]) VALUES (2, N' ул. Парковая')
INSERT [dbo].[Street] ([ID_Street], [Street]) VALUES (3, N' ул. Рабочая')
INSERT [dbo].[Street] ([ID_Street], [Street]) VALUES (4, N' ул. Свободы')
INSERT [dbo].[Street] ([ID_Street], [Street]) VALUES (5, N' ул. Строителей')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[TypePartner] ON 

INSERT [dbo].[TypePartner] ([ID_TypePartner], [TypePartner]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypePartner] ([ID_TypePartner], [TypePartner]) VALUES (2, N'ОАО')
INSERT [dbo].[TypePartner] ([ID_TypePartner], [TypePartner]) VALUES (3, N'ООО')
INSERT [dbo].[TypePartner] ([ID_TypePartner], [TypePartner]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[TypePartner] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_City] FOREIGN KEY([City])
REFERENCES [dbo].[City] ([ID_City])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_City]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_PostIndex] FOREIGN KEY([PostIndex])
REFERENCES [dbo].[PostIndex] ([ID_PostIndex])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_PostIndex]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Region] FOREIGN KEY([Region])
REFERENCES [dbo].[Region] ([ID_Region])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Region]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Street] FOREIGN KEY([Street])
REFERENCES [dbo].[Street] ([ID_Street])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Street]
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_NamePartner] FOREIGN KEY([NamePartner])
REFERENCES [dbo].[NamePartner] ([ID_NamePartner])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_NamePartner]
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Products] FOREIGN KEY([Products])
REFERENCES [dbo].[Products] ([ID_Products])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Products]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Address] FOREIGN KEY([Address])
REFERENCES [dbo].[Address] ([ID_Address])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_Address]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Director] FOREIGN KEY([Director])
REFERENCES [dbo].[Director] ([ID_Director])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_Director]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_NamePartner] FOREIGN KEY([TitlePartner])
REFERENCES [dbo].[NamePartner] ([ID_NamePartner])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_NamePartner]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_TypePartner] FOREIGN KEY([TypePartner])
REFERENCES [dbo].[TypePartner] ([ID_TypePartner])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_TypePartner]
GO
ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Product_type_import] FOREIGN KEY([TypeProduction])
REFERENCES [dbo].[Product_type_import] ([ID_TypeProduction])
GO
ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Product_type_import]
GO
ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Products] FOREIGN KEY([TitleProduction])
REFERENCES [dbo].[Products] ([ID_Products])
GO
ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Products]
GO
USE [master]
GO
ALTER DATABASE [FedorMasterPol] SET  READ_WRITE 
GO
