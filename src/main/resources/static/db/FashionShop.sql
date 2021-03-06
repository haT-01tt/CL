go
create database J6Fashion
go
USE [J6Fashion]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/08/2021 8:52:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Activated] [bit] NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 11/08/2021 8:52:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/08/2021 8:52:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/08/2021 8:52:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/08/2021 8:52:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/08/2021 8:52:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/08/2021 8:52:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/08/2021 8:52:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[mssv] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[mark] [float] NULL,
	[major] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[mssv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/08/2021 8:52:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[email] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[marks] [float] NOT NULL,
	[gender] [bit] NOT NULL,
	[country] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'admin', N'123', N'Trương Đình', N'dinhtc@gmail.com', N'user.png', 1, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'tcd', N'123', N'TC Đình', N'user@gmail.com', N'user.png', 0, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'user1', N'123', N'User1 Đình', N'user1@gmail.com', N'user.png', 0, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'user2', N'123', N'User2 Đình', N'user2@gmail.com', N'user.png', 0, 1)


SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2, N'admin', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'tcd', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'user1', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (5, N'user2', N'CUST')

SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1', N'T-Shirt')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'2', N'Hoddie')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'3', N'Máy ảnh')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'4', N'Jacket')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'5', N'Pants')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'6', N'Sơ mi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'7', N'CapHat')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'8', N'Accessories')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'9', N'Sản phẩm khuyến mãi')

GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 


INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101065, 10653, 1016, 17.45, 30)
GO

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212511, 121206, 1017, 39, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10249, N'TOMSP', CAST(N'1996-07-05T00:00:00.000' AS DateTime), N'Luisenstr. 48')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10250, N'HANAR', CAST(N'1996-07-08T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10251, N'VICTE', CAST(N'1996-07-08T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10252, N'SUPRD', CAST(N'1996-07-09T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10253, N'HANAR', CAST(N'1996-07-10T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10254, N'CHOPS', CAST(N'1996-07-11T00:00:00.000' AS DateTime), N'Hauptstr. 31')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10255, N'RICSU', CAST(N'1996-07-12T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10256, N'WELLI', CAST(N'1996-07-15T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10257, N'HILAA', CAST(N'1996-07-16T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10258, N'ERNSH', CAST(N'1996-07-17T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10259, N'CENTC', CAST(N'1996-07-18T00:00:00.000' AS DateTime), N'Sierras de Granada 9993')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10260, N'OTTIK', CAST(N'1996-07-19T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10261, N'QUEDE', CAST(N'1996-07-19T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10262, N'RATTC', CAST(N'1996-07-22T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10263, N'ERNSH', CAST(N'1996-07-23T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10264, N'FOLKO', CAST(N'1996-07-24T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10265, N'BLONP', CAST(N'1996-07-25T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10266, N'WARTH', CAST(N'1996-07-26T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10267, N'FRANK', CAST(N'1996-07-29T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10268, N'GROSR', CAST(N'1996-07-30T00:00:00.000' AS DateTime), N'5ª Ave. Los Palos Grandes')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10269, N'WHITC', CAST(N'1996-07-31T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10270, N'WARTH', CAST(N'1996-08-01T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10271, N'SPLIR', CAST(N'1996-08-01T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10272, N'RATTC', CAST(N'1996-08-02T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10273, N'QUICK', CAST(N'1996-08-05T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10274, N'VINET', CAST(N'1996-08-06T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10275, N'MAGAA', CAST(N'1996-08-07T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10276, N'TORTU', CAST(N'1996-08-08T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10277, N'MORGK', CAST(N'1996-08-09T00:00:00.000' AS DateTime), N'Heerstr. 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10278, N'BERGS', CAST(N'1996-08-12T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10279, N'LEHMS', CAST(N'1996-08-13T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10280, N'BERGS', CAST(N'1996-08-14T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10281, N'ROMEY', CAST(N'1996-08-14T00:00:00.000' AS DateTime), N'Gran Vía, 1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10282, N'ROMEY', CAST(N'1996-08-15T00:00:00.000' AS DateTime), N'Gran Vía, 1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10283, N'LILAS', CAST(N'1996-08-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10284, N'LEHMS', CAST(N'1996-08-19T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10285, N'QUICK', CAST(N'1996-08-20T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10286, N'QUICK', CAST(N'1996-08-21T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10287, N'RICAR', CAST(N'1996-08-22T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10288, N'REGGC', CAST(N'1996-08-23T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10289, N'BSBEV', CAST(N'1996-08-26T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10290, N'COMMI', CAST(N'1996-08-27T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10291, N'QUEDE', CAST(N'1996-08-27T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10292, N'TRADH', CAST(N'1996-08-28T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10293, N'TORTU', CAST(N'1996-08-29T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10294, N'RATTC', CAST(N'1996-08-30T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10295, N'VINET', CAST(N'1996-09-02T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10296, N'LILAS', CAST(N'1996-09-03T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10297, N'BLONP', CAST(N'1996-09-04T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10298, N'HUNGO', CAST(N'1996-09-05T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10299, N'RICAR', CAST(N'1996-09-06T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10300, N'MAGAA', CAST(N'1996-09-09T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10301, N'WANDK', CAST(N'1996-09-09T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10302, N'SUPRD', CAST(N'1996-09-10T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10303, N'GODOS', CAST(N'1996-09-11T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10304, N'TORTU', CAST(N'1996-09-12T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10305, N'OLDWO', CAST(N'1996-09-13T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10306, N'ROMEY', CAST(N'1996-09-16T00:00:00.000' AS DateTime), N'Gran Vía, 1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10307, N'LONEP', CAST(N'1996-09-17T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10308, N'tcd', CAST(N'1996-09-18T00:00:00.000' AS DateTime), N'Avda. de la Constitución 2222')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10309, N'HUNGO', CAST(N'1996-09-19T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10310, N'THEBI', CAST(N'1996-09-20T00:00:00.000' AS DateTime), N'89 Jefferson Way Suite 2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10311, N'DUMON', CAST(N'1996-09-20T00:00:00.000' AS DateTime), N'67, rue des Cinquante Otages')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10312, N'WANDK', CAST(N'1996-09-23T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10313, N'QUICK', CAST(N'1996-09-24T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10314, N'RATTC', CAST(N'1996-09-25T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10315, N'ISLAT', CAST(N'1996-09-26T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10316, N'RATTC', CAST(N'1996-09-27T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10317, N'LONEP', CAST(N'1996-09-30T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10318, N'ISLAT', CAST(N'1996-10-01T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10319, N'TORTU', CAST(N'1996-10-02T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10320, N'WARTH', CAST(N'1996-10-03T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10321, N'ISLAT', CAST(N'1996-10-03T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10322, N'PERIC', CAST(N'1996-10-04T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10323, N'KOENE', CAST(N'1996-10-07T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10324, N'SAVEA', CAST(N'1996-10-08T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10325, N'KOENE', CAST(N'1996-10-09T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10326, N'BOLID', CAST(N'1996-10-10T00:00:00.000' AS DateTime), N'C/ Araquil, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10327, N'FOLKO', CAST(N'1996-10-11T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10328, N'FURIB', CAST(N'1996-10-14T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10329, N'SPLIR', CAST(N'1996-10-15T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10330, N'LILAS', CAST(N'1996-10-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10331, N'BONAP', CAST(N'1996-10-16T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10332, N'MEREP', CAST(N'1996-10-17T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10333, N'WARTH', CAST(N'1996-10-18T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10334, N'VICTE', CAST(N'1996-10-21T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10335, N'HUNGO', CAST(N'1996-10-22T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10336, N'PRINI', CAST(N'1996-10-23T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10337, N'FRANK', CAST(N'1996-10-24T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10338, N'OLDWO', CAST(N'1996-10-25T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10339, N'MEREP', CAST(N'1996-10-28T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10340, N'BONAP', CAST(N'1996-10-29T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10341, N'SIMOB', CAST(N'1996-10-29T00:00:00.000' AS DateTime), N'Vinbæltet 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10342, N'FRANK', CAST(N'1996-10-30T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10343, N'LEHMS', CAST(N'1996-10-31T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10344, N'WHITC', CAST(N'1996-11-01T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10345, N'QUICK', CAST(N'1996-11-04T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10346, N'RATTC', CAST(N'1996-11-05T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10347, N'FAMIA', CAST(N'1996-11-06T00:00:00.000' AS DateTime), N'Rua Orós, 92')
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10348, N'WANDK', CAST(N'1996-11-07T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10349, N'SPLIR', CAST(N'1996-11-08T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10350, N'LAMAI', CAST(N'1996-11-11T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10351, N'ERNSH', CAST(N'1996-11-11T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10352, N'FURIB', CAST(N'1996-11-12T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10353, N'PICCO', CAST(N'1996-11-13T00:00:00.000' AS DateTime), N'Geislweg 14')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10354, N'PERIC', CAST(N'1996-11-14T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10355, N'AROUT', CAST(N'1996-11-15T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10356, N'WANDK', CAST(N'1996-11-18T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10357, N'LILAS', CAST(N'1996-11-19T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10358, N'LAMAI', CAST(N'1996-11-20T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10359, N'SEVES', CAST(N'1996-11-21T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10360, N'BLONP', CAST(N'1996-11-22T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10361, N'QUICK', CAST(N'1996-11-22T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10362, N'BONAP', CAST(N'1996-11-25T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10363, N'DRACD', CAST(N'1996-11-26T00:00:00.000' AS DateTime), N'Walserweg 21')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10364, N'EASTC', CAST(N'1996-11-26T00:00:00.000' AS DateTime), N'35 King George')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10365, N'ANTON', CAST(N'1996-11-27T00:00:00.000' AS DateTime), N'Mataderos  2312')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10366, N'GALED', CAST(N'1996-11-28T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10367, N'VAFFE', CAST(N'1996-11-28T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10368, N'ERNSH', CAST(N'1996-11-29T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10369, N'SPLIR', CAST(N'1996-12-02T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10370, N'CHOPS', CAST(N'1996-12-03T00:00:00.000' AS DateTime), N'Hauptstr. 31')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10371, N'LAMAI', CAST(N'1996-12-03T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10372, N'QUEEN', CAST(N'1996-12-04T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10373, N'HUNGO', CAST(N'1996-12-05T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10374, N'WOLZA', CAST(N'1996-12-05T00:00:00.000' AS DateTime), N'ul. Filtrowa 68')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10375, N'HUNGC', CAST(N'1996-12-06T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10376, N'MEREP', CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10377, N'SEVES', CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10378, N'FOLKO', CAST(N'1996-12-10T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10379, N'QUEDE', CAST(N'1996-12-11T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10380, N'HUNGO', CAST(N'1996-12-12T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10381, N'LILAS', CAST(N'1996-12-12T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10382, N'ERNSH', CAST(N'1996-12-13T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10383, N'AROUT', CAST(N'1996-12-16T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10384, N'BERGS', CAST(N'1996-12-16T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10385, N'SPLIR', CAST(N'1996-12-17T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10386, N'FAMIA', CAST(N'1996-12-18T00:00:00.000' AS DateTime), N'Rua Orós, 92')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10387, N'SANTG', CAST(N'1996-12-18T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10388, N'SEVES', CAST(N'1996-12-19T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10389, N'BOTTM', CAST(N'1996-12-20T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10390, N'ERNSH', CAST(N'1996-12-23T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10391, N'DRACD', CAST(N'1996-12-23T00:00:00.000' AS DateTime), N'Walserweg 21')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10392, N'PICCO', CAST(N'1996-12-24T00:00:00.000' AS DateTime), N'Geislweg 14')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10393, N'SAVEA', CAST(N'1996-12-25T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10394, N'HUNGC', CAST(N'1996-12-25T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10395, N'HILAA', CAST(N'1996-12-26T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10396, N'FRANK', CAST(N'1996-12-27T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10397, N'PRINI', CAST(N'1996-12-27T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10398, N'SAVEA', CAST(N'1996-12-30T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10399, N'VAFFE', CAST(N'1996-12-31T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10400, N'EASTC', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'35 King George')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10401, N'RATTC', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10402, N'ERNSH', CAST(N'1997-01-02T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10403, N'ERNSH', CAST(N'1997-01-03T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10404, N'MAGAA', CAST(N'1997-01-03T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10405, N'LINOD', CAST(N'1997-01-06T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10406, N'QUEEN', CAST(N'1997-01-07T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10407, N'OTTIK', CAST(N'1997-01-07T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10408, N'FOLIG', CAST(N'1997-01-08T00:00:00.000' AS DateTime), N'184, chaussée de Tournai')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10409, N'OCEAN', CAST(N'1997-01-09T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10410, N'BOTTM', CAST(N'1997-01-10T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10411, N'BOTTM', CAST(N'1997-01-10T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10412, N'WARTH', CAST(N'1997-01-13T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10413, N'LAMAI', CAST(N'1997-01-14T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10414, N'FAMIA', CAST(N'1997-01-14T00:00:00.000' AS DateTime), N'Rua Orós, 92')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10415, N'HUNGC', CAST(N'1997-01-15T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10416, N'WARTH', CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10417, N'SIMOB', CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'Vinbæltet 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10418, N'QUICK', CAST(N'1997-01-17T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10419, N'RICSU', CAST(N'1997-01-20T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10420, N'WELLI', CAST(N'1997-01-21T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10421, N'QUEDE', CAST(N'1997-01-21T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10422, N'FRANS', CAST(N'1997-01-22T00:00:00.000' AS DateTime), N'Via Monte Bianco 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10423, N'GOURL', CAST(N'1997-01-23T00:00:00.000' AS DateTime), N'Av. Brasil, 442')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10424, N'MEREP', CAST(N'1997-01-23T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10425, N'LAMAI', CAST(N'1997-01-24T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10426, N'GALED', CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10427, N'PICCO', CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'Geislweg 14')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10428, N'REGGC', CAST(N'1997-01-28T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10429, N'HUNGO', CAST(N'1997-01-29T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10430, N'ERNSH', CAST(N'1997-01-30T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10431, N'BOTTM', CAST(N'1997-01-30T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10432, N'SPLIR', CAST(N'1997-01-31T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10433, N'PRINI', CAST(N'1997-02-03T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10434, N'FOLKO', CAST(N'1997-02-03T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10435, N'CONSH', CAST(N'1997-02-04T00:00:00.000' AS DateTime), N'Berkeley Gardens 12  Brewery')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10436, N'BLONP', CAST(N'1997-02-05T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10437, N'WARTH', CAST(N'1997-02-05T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10438, N'TOMSP', CAST(N'1997-02-06T00:00:00.000' AS DateTime), N'Luisenstr. 48')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10439, N'MEREP', CAST(N'1997-02-07T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10440, N'SAVEA', CAST(N'1997-02-10T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10441, N'OLDWO', CAST(N'1997-02-10T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10442, N'ERNSH', CAST(N'1997-02-11T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10443, N'REGGC', CAST(N'1997-02-12T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10444, N'BERGS', CAST(N'1997-02-12T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10445, N'BERGS', CAST(N'1997-02-13T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10446, N'TOMSP', CAST(N'1997-02-14T00:00:00.000' AS DateTime), N'Luisenstr. 48')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10447, N'RICAR', CAST(N'1997-02-14T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10448, N'RANCH', CAST(N'1997-02-17T00:00:00.000' AS DateTime), N'Av. del Libertador 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10449, N'BLONP', CAST(N'1997-02-18T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10450, N'VICTE', CAST(N'1997-02-19T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10451, N'QUICK', CAST(N'1997-02-19T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10452, N'SAVEA', CAST(N'1997-02-20T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10453, N'AROUT', CAST(N'1997-02-21T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10454, N'LAMAI', CAST(N'1997-02-21T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10455, N'WARTH', CAST(N'1997-02-24T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10456, N'KOENE', CAST(N'1997-02-25T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10457, N'KOENE', CAST(N'1997-02-25T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10458, N'SUPRD', CAST(N'1997-02-26T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10459, N'VICTE', CAST(N'1997-02-27T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10460, N'FOLKO', CAST(N'1997-02-28T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10461, N'LILAS', CAST(N'1997-02-28T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10462, N'CONSH', CAST(N'1997-03-03T00:00:00.000' AS DateTime), N'Berkeley Gardens 12  Brewery')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10463, N'SUPRD', CAST(N'1997-03-04T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10464, N'FURIB', CAST(N'1997-03-04T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10465, N'VAFFE', CAST(N'1997-03-05T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10466, N'COMMI', CAST(N'1997-03-06T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10467, N'MAGAA', CAST(N'1997-03-06T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10468, N'KOENE', CAST(N'1997-03-07T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10469, N'WHITC', CAST(N'1997-03-10T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10470, N'BONAP', CAST(N'1997-03-11T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10471, N'BSBEV', CAST(N'1997-03-11T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10472, N'SEVES', CAST(N'1997-03-12T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10473, N'ISLAT', CAST(N'1997-03-13T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10474, N'PERIC', CAST(N'1997-03-13T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10475, N'SUPRD', CAST(N'1997-03-14T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10476, N'HILAA', CAST(N'1997-03-17T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10477, N'PRINI', CAST(N'1997-03-17T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10478, N'VICTE', CAST(N'1997-03-18T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10479, N'RATTC', CAST(N'1997-03-19T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10480, N'FOLIG', CAST(N'1997-03-20T00:00:00.000' AS DateTime), N'184, chaussée de Tournai')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10481, N'RICAR', CAST(N'1997-03-20T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10482, N'LAZYK', CAST(N'1997-03-21T00:00:00.000' AS DateTime), N'12 Orchestra Terrace')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10483, N'WHITC', CAST(N'1997-03-24T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10484, N'BSBEV', CAST(N'1997-03-24T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10485, N'LINOD', CAST(N'1997-03-25T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10486, N'HILAA', CAST(N'1997-03-26T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10487, N'QUEEN', CAST(N'1997-03-26T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10488, N'FRANK', CAST(N'1997-03-27T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10489, N'PICCO', CAST(N'1997-03-28T00:00:00.000' AS DateTime), N'Geislweg 14')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10490, N'HILAA', CAST(N'1997-03-31T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10491, N'FURIB', CAST(N'1997-03-31T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10492, N'BOTTM', CAST(N'1997-04-01T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10493, N'LAMAI', CAST(N'1997-04-02T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10494, N'COMMI', CAST(N'1997-04-02T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10495, N'LAUGB', CAST(N'1997-04-03T00:00:00.000' AS DateTime), N'2319 Elm St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10496, N'TRADH', CAST(N'1997-04-04T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10497, N'LEHMS', CAST(N'1997-04-04T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10498, N'HILAA', CAST(N'1997-04-07T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10499, N'LILAS', CAST(N'1997-04-08T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10500, N'LAMAI', CAST(N'1997-04-09T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10501, N'BLAUS', CAST(N'1997-04-09T00:00:00.000' AS DateTime), N'Forsterstr. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10502, N'PERIC', CAST(N'1997-04-10T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10503, N'HUNGO', CAST(N'1997-04-11T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10504, N'WHITC', CAST(N'1997-04-11T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10505, N'MEREP', CAST(N'1997-04-14T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10506, N'KOENE', CAST(N'1997-04-15T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10507, N'ANTON', CAST(N'1997-04-15T00:00:00.000' AS DateTime), N'Mataderos  2312')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10508, N'OTTIK', CAST(N'1997-04-16T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10509, N'BLAUS', CAST(N'1997-04-17T00:00:00.000' AS DateTime), N'Forsterstr. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10510, N'SAVEA', CAST(N'1997-04-18T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10511, N'BONAP', CAST(N'1997-04-18T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10512, N'FAMIA', CAST(N'1997-04-21T00:00:00.000' AS DateTime), N'Rua Orós, 92')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10513, N'WANDK', CAST(N'1997-04-22T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10514, N'ERNSH', CAST(N'1997-04-22T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10515, N'QUICK', CAST(N'1997-04-23T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10516, N'HUNGO', CAST(N'1997-04-24T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10517, N'NORTS', CAST(N'1997-04-24T00:00:00.000' AS DateTime), N'South House 300 Queensbridge')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10518, N'TORTU', CAST(N'1997-04-25T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10519, N'CHOPS', CAST(N'1997-04-28T00:00:00.000' AS DateTime), N'Hauptstr. 31')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10520, N'SANTG', CAST(N'1997-04-29T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10521, N'CACTU', CAST(N'1997-04-29T00:00:00.000' AS DateTime), N'Cerrito 333')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10522, N'LEHMS', CAST(N'1997-04-30T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10523, N'SEVES', CAST(N'1997-05-01T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10524, N'BERGS', CAST(N'1997-05-01T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10525, N'BONAP', CAST(N'1997-05-02T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10526, N'WARTH', CAST(N'1997-05-05T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10527, N'QUICK', CAST(N'1997-05-05T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10528, N'GREAL', CAST(N'1997-05-06T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10529, N'MAISD', CAST(N'1997-05-07T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10530, N'PICCO', CAST(N'1997-05-08T00:00:00.000' AS DateTime), N'Geislweg 14')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10531, N'OCEAN', CAST(N'1997-05-08T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10532, N'EASTC', CAST(N'1997-05-09T00:00:00.000' AS DateTime), N'35 King George')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10533, N'FOLKO', CAST(N'1997-05-12T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10534, N'LEHMS', CAST(N'1997-05-12T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10535, N'ANTON', CAST(N'1997-05-13T00:00:00.000' AS DateTime), N'Mataderos  2312')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10536, N'LEHMS', CAST(N'1997-05-14T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10537, N'RICSU', CAST(N'1997-05-14T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10538, N'BSBEV', CAST(N'1997-05-15T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10539, N'BSBEV', CAST(N'1997-05-16T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10540, N'QUICK', CAST(N'1997-05-19T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10541, N'HANAR', CAST(N'1997-05-19T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10542, N'KOENE', CAST(N'1997-05-20T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10543, N'LILAS', CAST(N'1997-05-21T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10544, N'LONEP', CAST(N'1997-05-21T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10545, N'LAZYK', CAST(N'1997-05-22T00:00:00.000' AS DateTime), N'12 Orchestra Terrace')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10546, N'VICTE', CAST(N'1997-05-23T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10547, N'SEVES', CAST(N'1997-05-23T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.')
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10548, N'TOMSP', CAST(N'1997-05-26T00:00:00.000' AS DateTime), N'Luisenstr. 48')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10549, N'QUICK', CAST(N'1997-05-27T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10550, N'GODOS', CAST(N'1997-05-28T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10551, N'FURIB', CAST(N'1997-05-28T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10552, N'HILAA', CAST(N'1997-05-29T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10553, N'WARTH', CAST(N'1997-05-30T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10554, N'OTTIK', CAST(N'1997-05-30T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10555, N'SAVEA', CAST(N'1997-06-02T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10556, N'SIMOB', CAST(N'1997-06-03T00:00:00.000' AS DateTime), N'Vinbæltet 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10557, N'LEHMS', CAST(N'1997-06-03T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10558, N'AROUT', CAST(N'1997-06-04T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10559, N'BLONP', CAST(N'1997-06-05T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10560, N'FRANK', CAST(N'1997-06-06T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10561, N'FOLKO', CAST(N'1997-06-06T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10562, N'REGGC', CAST(N'1997-06-09T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10563, N'RICAR', CAST(N'1997-06-10T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10564, N'RATTC', CAST(N'1997-06-10T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10565, N'MEREP', CAST(N'1997-06-11T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10566, N'BLONP', CAST(N'1997-06-12T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10567, N'HUNGO', CAST(N'1997-06-12T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10568, N'GALED', CAST(N'1997-06-13T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10569, N'RATTC', CAST(N'1997-06-16T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10570, N'MEREP', CAST(N'1997-06-17T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10571, N'ERNSH', CAST(N'1997-06-17T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10572, N'BERGS', CAST(N'1997-06-18T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10573, N'ANTON', CAST(N'1997-06-19T00:00:00.000' AS DateTime), N'Mataderos  2312')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10574, N'TRAIH', CAST(N'1997-06-19T00:00:00.000' AS DateTime), N'722 DaVinci Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10575, N'MORGK', CAST(N'1997-06-20T00:00:00.000' AS DateTime), N'Heerstr. 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10576, N'TORTU', CAST(N'1997-06-23T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10577, N'TRAIH', CAST(N'1997-06-23T00:00:00.000' AS DateTime), N'722 DaVinci Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10578, N'BSBEV', CAST(N'1997-06-24T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10579, N'LETSS', CAST(N'1997-06-25T00:00:00.000' AS DateTime), N'87 Polk St. Suite 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10580, N'OTTIK', CAST(N'1997-06-26T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10581, N'FAMIA', CAST(N'1997-06-26T00:00:00.000' AS DateTime), N'Rua Orós, 92')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10582, N'BLAUS', CAST(N'1997-06-27T00:00:00.000' AS DateTime), N'Forsterstr. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10583, N'WARTH', CAST(N'1997-06-30T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10584, N'BLONP', CAST(N'1997-06-30T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10585, N'WELLI', CAST(N'1997-07-01T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10586, N'REGGC', CAST(N'1997-07-02T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10587, N'QUEDE', CAST(N'1997-07-02T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10588, N'QUICK', CAST(N'1997-07-03T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10589, N'GREAL', CAST(N'1997-07-04T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10590, N'MEREP', CAST(N'1997-07-07T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10591, N'VAFFE', CAST(N'1997-07-07T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10592, N'LEHMS', CAST(N'1997-07-08T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10593, N'LEHMS', CAST(N'1997-07-09T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10594, N'OLDWO', CAST(N'1997-07-09T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10595, N'ERNSH', CAST(N'1997-07-10T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10596, N'WHITC', CAST(N'1997-07-11T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10597, N'PICCO', CAST(N'1997-07-11T00:00:00.000' AS DateTime), N'Geislweg 14')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10598, N'RATTC', CAST(N'1997-07-14T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10599, N'BSBEV', CAST(N'1997-07-15T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10600, N'HUNGC', CAST(N'1997-07-16T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10601, N'HILAA', CAST(N'1997-07-16T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10602, N'VAFFE', CAST(N'1997-07-17T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10603, N'SAVEA', CAST(N'1997-07-18T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10604, N'FURIB', CAST(N'1997-07-18T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10605, N'MEREP', CAST(N'1997-07-21T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10606, N'TRADH', CAST(N'1997-07-22T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10607, N'SAVEA', CAST(N'1997-07-22T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10608, N'TOMSP', CAST(N'1997-07-23T00:00:00.000' AS DateTime), N'Luisenstr. 48')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10609, N'DUMON', CAST(N'1997-07-24T00:00:00.000' AS DateTime), N'67, rue des Cinquante Otages')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10610, N'LAMAI', CAST(N'1997-07-25T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10611, N'WOLZA', CAST(N'1997-07-25T00:00:00.000' AS DateTime), N'ul. Filtrowa 68')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10612, N'SAVEA', CAST(N'1997-07-28T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10613, N'HILAA', CAST(N'1997-07-29T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10614, N'BLAUS', CAST(N'1997-07-29T00:00:00.000' AS DateTime), N'Forsterstr. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10615, N'WILMK', CAST(N'1997-07-30T00:00:00.000' AS DateTime), N'Keskuskatu 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10616, N'GREAL', CAST(N'1997-07-31T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10617, N'GREAL', CAST(N'1997-07-31T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10618, N'MEREP', CAST(N'1997-08-01T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10619, N'MEREP', CAST(N'1997-08-04T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10620, N'LAUGB', CAST(N'1997-08-05T00:00:00.000' AS DateTime), N'2319 Elm St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10621, N'ISLAT', CAST(N'1997-08-05T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10622, N'RICAR', CAST(N'1997-08-06T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10623, N'FRANK', CAST(N'1997-08-07T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10624, N'THECR', CAST(N'1997-08-07T00:00:00.000' AS DateTime), N'55 Grizzly Peak Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10625, N'tcd', CAST(N'1997-08-08T00:00:00.000' AS DateTime), N'Avda. de la Constitución 2222')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10626, N'BERGS', CAST(N'1997-08-11T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10627, N'SAVEA', CAST(N'1997-08-11T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10628, N'BLONP', CAST(N'1997-08-12T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10629, N'GODOS', CAST(N'1997-08-12T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10630, N'KOENE', CAST(N'1997-08-13T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10631, N'LAMAI', CAST(N'1997-08-14T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10632, N'WANDK', CAST(N'1997-08-14T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10633, N'ERNSH', CAST(N'1997-08-15T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10634, N'FOLIG', CAST(N'1997-08-15T00:00:00.000' AS DateTime), N'184, chaussée de Tournai')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10635, N'MAGAA', CAST(N'1997-08-18T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10636, N'WARTH', CAST(N'1997-08-19T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10637, N'QUEEN', CAST(N'1997-08-19T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10638, N'LINOD', CAST(N'1997-08-20T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10639, N'SANTG', CAST(N'1997-08-20T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10640, N'WANDK', CAST(N'1997-08-21T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10641, N'HILAA', CAST(N'1997-08-22T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10642, N'SIMOB', CAST(N'1997-08-22T00:00:00.000' AS DateTime), N'Vinbæltet 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10643, N'admin', CAST(N'1997-08-25T00:00:00.000' AS DateTime), N'Obere Str. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10644, N'WELLI', CAST(N'1997-08-25T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10645, N'HANAR', CAST(N'1997-08-26T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10646, N'HUNGO', CAST(N'1997-08-27T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10647, N'QUEDE', CAST(N'1997-08-27T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10648, N'RICAR', CAST(N'1997-08-28T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10649, N'MAISD', CAST(N'1997-08-28T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10650, N'FAMIA', CAST(N'1997-08-29T00:00:00.000' AS DateTime), N'Rua Orós, 92')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10651, N'WANDK', CAST(N'1997-09-01T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10652, N'GOURL', CAST(N'1997-09-01T00:00:00.000' AS DateTime), N'Av. Brasil, 442')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10653, N'FRANK', CAST(N'1997-09-02T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10654, N'BERGS', CAST(N'1997-09-02T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10655, N'REGGC', CAST(N'1997-09-03T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10656, N'GREAL', CAST(N'1997-09-04T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10657, N'SAVEA', CAST(N'1997-09-04T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10658, N'QUICK', CAST(N'1997-09-05T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10659, N'QUEEN', CAST(N'1997-09-05T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10660, N'HUNGC', CAST(N'1997-09-08T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10661, N'HUNGO', CAST(N'1997-09-09T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10662, N'LONEP', CAST(N'1997-09-09T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10663, N'BONAP', CAST(N'1997-09-10T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10664, N'FURIB', CAST(N'1997-09-10T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10665, N'LONEP', CAST(N'1997-09-11T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10666, N'RICSU', CAST(N'1997-09-12T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10667, N'ERNSH', CAST(N'1997-09-12T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10668, N'WANDK', CAST(N'1997-09-15T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10669, N'SIMOB', CAST(N'1997-09-15T00:00:00.000' AS DateTime), N'Vinbæltet 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10670, N'FRANK', CAST(N'1997-09-16T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10671, N'FRANR', CAST(N'1997-09-17T00:00:00.000' AS DateTime), N'54, rue Royale')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10672, N'BERGS', CAST(N'1997-09-17T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10673, N'WILMK', CAST(N'1997-09-18T00:00:00.000' AS DateTime), N'Keskuskatu 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10674, N'ISLAT', CAST(N'1997-09-18T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10675, N'FRANK', CAST(N'1997-09-19T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10676, N'TORTU', CAST(N'1997-09-22T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10677, N'ANTON', CAST(N'1997-09-22T00:00:00.000' AS DateTime), N'Mataderos  2312')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10678, N'SAVEA', CAST(N'1997-09-23T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10679, N'BLONP', CAST(N'1997-09-23T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10680, N'OLDWO', CAST(N'1997-09-24T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10681, N'GREAL', CAST(N'1997-09-25T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10682, N'ANTON', CAST(N'1997-09-25T00:00:00.000' AS DateTime), N'Mataderos  2312')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10683, N'DUMON', CAST(N'1997-09-26T00:00:00.000' AS DateTime), N'67, rue des Cinquante Otages')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10684, N'OTTIK', CAST(N'1997-09-26T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10685, N'GOURL', CAST(N'1997-09-29T00:00:00.000' AS DateTime), N'Av. Brasil, 442')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10686, N'PICCO', CAST(N'1997-09-30T00:00:00.000' AS DateTime), N'Geislweg 14')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10687, N'HUNGO', CAST(N'1997-09-30T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10688, N'VAFFE', CAST(N'1997-10-01T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10689, N'BERGS', CAST(N'1997-10-01T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10690, N'HANAR', CAST(N'1997-10-02T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10691, N'QUICK', CAST(N'1997-10-03T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10692, N'admin', CAST(N'1997-10-03T00:00:00.000' AS DateTime), N'Obere Str. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10693, N'WHITC', CAST(N'1997-10-06T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10694, N'QUICK', CAST(N'1997-10-06T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10695, N'WILMK', CAST(N'1997-10-07T00:00:00.000' AS DateTime), N'Keskuskatu 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10696, N'WHITC', CAST(N'1997-10-08T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10697, N'LINOD', CAST(N'1997-10-08T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10698, N'ERNSH', CAST(N'1997-10-09T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10699, N'MORGK', CAST(N'1997-10-09T00:00:00.000' AS DateTime), N'Heerstr. 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10700, N'SAVEA', CAST(N'1997-10-10T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10701, N'HUNGO', CAST(N'1997-10-13T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10702, N'admin', CAST(N'1997-10-13T00:00:00.000' AS DateTime), N'Obere Str. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10703, N'FOLKO', CAST(N'1997-10-14T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10704, N'QUEEN', CAST(N'1997-10-14T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10705, N'HILAA', CAST(N'1997-10-15T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10706, N'OLDWO', CAST(N'1997-10-16T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10707, N'AROUT', CAST(N'1997-10-16T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10708, N'THEBI', CAST(N'1997-10-17T00:00:00.000' AS DateTime), N'89 Jefferson Way Suite 2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10709, N'GOURL', CAST(N'1997-10-17T00:00:00.000' AS DateTime), N'Av. Brasil, 442')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10710, N'FRANS', CAST(N'1997-10-20T00:00:00.000' AS DateTime), N'Via Monte Bianco 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10711, N'SAVEA', CAST(N'1997-10-21T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10712, N'HUNGO', CAST(N'1997-10-21T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10713, N'SAVEA', CAST(N'1997-10-22T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10714, N'SAVEA', CAST(N'1997-10-22T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10715, N'BONAP', CAST(N'1997-10-23T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10716, N'RANCH', CAST(N'1997-10-24T00:00:00.000' AS DateTime), N'Av. del Libertador 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10717, N'FRANK', CAST(N'1997-10-24T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10718, N'KOENE', CAST(N'1997-10-27T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10719, N'LETSS', CAST(N'1997-10-27T00:00:00.000' AS DateTime), N'87 Polk St. Suite 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10720, N'QUEDE', CAST(N'1997-10-28T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10721, N'QUICK', CAST(N'1997-10-29T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10722, N'SAVEA', CAST(N'1997-10-29T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10723, N'WHITC', CAST(N'1997-10-30T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10724, N'MEREP', CAST(N'1997-10-30T00:00:00.000' AS DateTime), N'43 rue St. Laurent')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10725, N'FAMIA', CAST(N'1997-10-31T00:00:00.000' AS DateTime), N'Rua Orós, 92')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10726, N'EASTC', CAST(N'1997-11-03T00:00:00.000' AS DateTime), N'35 King George')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10727, N'REGGC', CAST(N'1997-11-03T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10728, N'QUEEN', CAST(N'1997-11-04T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10729, N'LINOD', CAST(N'1997-11-04T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10730, N'BONAP', CAST(N'1997-11-05T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10731, N'CHOPS', CAST(N'1997-11-06T00:00:00.000' AS DateTime), N'Hauptstr. 31')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10732, N'BONAP', CAST(N'1997-11-06T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10733, N'BERGS', CAST(N'1997-11-07T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10734, N'GOURL', CAST(N'1997-11-07T00:00:00.000' AS DateTime), N'Av. Brasil, 442')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10735, N'LETSS', CAST(N'1997-11-10T00:00:00.000' AS DateTime), N'87 Polk St. Suite 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10736, N'HUNGO', CAST(N'1997-11-11T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10737, N'VINET', CAST(N'1997-11-11T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10738, N'SPECD', CAST(N'1997-11-12T00:00:00.000' AS DateTime), N'25, rue Lauriston')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10739, N'VINET', CAST(N'1997-11-12T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10740, N'WHITC', CAST(N'1997-11-13T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10741, N'AROUT', CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10742, N'BOTTM', CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10743, N'AROUT', CAST(N'1997-11-17T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10744, N'VAFFE', CAST(N'1997-11-17T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10745, N'QUICK', CAST(N'1997-11-18T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10746, N'CHOPS', CAST(N'1997-11-19T00:00:00.000' AS DateTime), N'Hauptstr. 31')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10747, N'PICCO', CAST(N'1997-11-19T00:00:00.000' AS DateTime), N'Geislweg 14')
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10748, N'SAVEA', CAST(N'1997-11-20T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10749, N'ISLAT', CAST(N'1997-11-20T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10750, N'WARTH', CAST(N'1997-11-21T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10751, N'RICSU', CAST(N'1997-11-24T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10752, N'NORTS', CAST(N'1997-11-24T00:00:00.000' AS DateTime), N'South House 300 Queensbridge')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10753, N'FRANS', CAST(N'1997-11-25T00:00:00.000' AS DateTime), N'Via Monte Bianco 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10754, N'MAGAA', CAST(N'1997-11-25T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10755, N'BONAP', CAST(N'1997-11-26T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10756, N'SPLIR', CAST(N'1997-11-27T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10757, N'SAVEA', CAST(N'1997-11-27T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10758, N'RICSU', CAST(N'1997-11-28T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10759, N'tcd', CAST(N'1997-11-28T00:00:00.000' AS DateTime), N'Avda. de la Constitución 2222')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10760, N'MAISD', CAST(N'1997-12-01T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10761, N'RATTC', CAST(N'1997-12-02T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10762, N'FOLKO', CAST(N'1997-12-02T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10763, N'FOLIG', CAST(N'1997-12-03T00:00:00.000' AS DateTime), N'184, chaussée de Tournai')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10764, N'ERNSH', CAST(N'1997-12-03T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10765, N'QUICK', CAST(N'1997-12-04T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10766, N'OTTIK', CAST(N'1997-12-05T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10767, N'SUPRD', CAST(N'1997-12-05T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10768, N'AROUT', CAST(N'1997-12-08T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10769, N'VAFFE', CAST(N'1997-12-08T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10770, N'HANAR', CAST(N'1997-12-09T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10771, N'ERNSH', CAST(N'1997-12-10T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10772, N'LEHMS', CAST(N'1997-12-10T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10773, N'ERNSH', CAST(N'1997-12-11T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10774, N'FOLKO', CAST(N'1997-12-11T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10775, N'THECR', CAST(N'1997-12-12T00:00:00.000' AS DateTime), N'55 Grizzly Peak Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10776, N'ERNSH', CAST(N'1997-12-15T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10777, N'GOURL', CAST(N'1997-12-15T00:00:00.000' AS DateTime), N'Av. Brasil, 442')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10778, N'BERGS', CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10779, N'MORGK', CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'Heerstr. 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10780, N'LILAS', CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10781, N'WARTH', CAST(N'1997-12-17T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10782, N'CACTU', CAST(N'1997-12-17T00:00:00.000' AS DateTime), N'Cerrito 333')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10783, N'HANAR', CAST(N'1997-12-18T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10784, N'MAGAA', CAST(N'1997-12-18T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10785, N'GROSR', CAST(N'1997-12-18T00:00:00.000' AS DateTime), N'5ª Ave. Los Palos Grandes')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10786, N'QUEEN', CAST(N'1997-12-19T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10787, N'LAMAI', CAST(N'1997-12-19T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10788, N'QUICK', CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10789, N'FOLIG', CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'184, chaussée de Tournai')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10790, N'GOURL', CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'Av. Brasil, 442')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10791, N'FRANK', CAST(N'1997-12-23T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10792, N'WOLZA', CAST(N'1997-12-23T00:00:00.000' AS DateTime), N'ul. Filtrowa 68')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10793, N'AROUT', CAST(N'1997-12-24T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10794, N'QUEDE', CAST(N'1997-12-24T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10795, N'ERNSH', CAST(N'1997-12-24T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10796, N'HILAA', CAST(N'1997-12-25T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10797, N'DRACD', CAST(N'1997-12-25T00:00:00.000' AS DateTime), N'Walserweg 21')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10798, N'ISLAT', CAST(N'1997-12-26T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10799, N'KOENE', CAST(N'1997-12-26T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10800, N'SEVES', CAST(N'1997-12-26T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10801, N'BOLID', CAST(N'1997-12-29T00:00:00.000' AS DateTime), N'C/ Araquil, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10802, N'SIMOB', CAST(N'1997-12-29T00:00:00.000' AS DateTime), N'Vinbæltet 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10803, N'WELLI', CAST(N'1997-12-30T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10804, N'SEVES', CAST(N'1997-12-30T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10805, N'THEBI', CAST(N'1997-12-30T00:00:00.000' AS DateTime), N'89 Jefferson Way Suite 2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10806, N'VICTE', CAST(N'1997-12-31T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10807, N'FRANS', CAST(N'1997-12-31T00:00:00.000' AS DateTime), N'Via Monte Bianco 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10808, N'OLDWO', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10809, N'WELLI', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10810, N'LAUGB', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'2319 Elm St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10811, N'LINOD', CAST(N'1998-01-02T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10812, N'REGGC', CAST(N'1998-01-02T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10813, N'RICAR', CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10814, N'VICTE', CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10815, N'SAVEA', CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10816, N'GREAL', CAST(N'1998-01-06T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10817, N'KOENE', CAST(N'1998-01-06T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10818, N'MAGAA', CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10819, N'CACTU', CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'Cerrito 333')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10820, N'RATTC', CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10821, N'SPLIR', CAST(N'1998-01-08T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10822, N'TRAIH', CAST(N'1998-01-08T00:00:00.000' AS DateTime), N'722 DaVinci Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10823, N'LILAS', CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10824, N'FOLKO', CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10825, N'DRACD', CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'Walserweg 21')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10826, N'BLONP', CAST(N'1998-01-12T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10827, N'BONAP', CAST(N'1998-01-12T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10828, N'RANCH', CAST(N'1998-01-13T00:00:00.000' AS DateTime), N'Av. del Libertador 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10829, N'ISLAT', CAST(N'1998-01-13T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10830, N'TRADH', CAST(N'1998-01-13T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10831, N'SANTG', CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10832, N'LAMAI', CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10833, N'OTTIK', CAST(N'1998-01-15T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10834, N'TRADH', CAST(N'1998-01-15T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10835, N'admin', CAST(N'1998-01-15T00:00:00.000' AS DateTime), N'Obere Str. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10836, N'ERNSH', CAST(N'1998-01-16T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10837, N'BERGS', CAST(N'1998-01-16T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10838, N'LINOD', CAST(N'1998-01-19T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10839, N'TRADH', CAST(N'1998-01-19T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10840, N'LINOD', CAST(N'1998-01-19T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10841, N'SUPRD', CAST(N'1998-01-20T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10842, N'TORTU', CAST(N'1998-01-20T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10843, N'VICTE', CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10844, N'PICCO', CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'Geislweg 14')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10845, N'QUICK', CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10846, N'SUPRD', CAST(N'1998-01-22T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10847, N'SAVEA', CAST(N'1998-01-22T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10848, N'CONSH', CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'Berkeley Gardens 12  Brewery')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10849, N'KOENE', CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10850, N'VICTE', CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10851, N'RICAR', CAST(N'1998-01-26T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10852, N'RATTC', CAST(N'1998-01-26T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10853, N'BLAUS', CAST(N'1998-01-27T00:00:00.000' AS DateTime), N'Forsterstr. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10854, N'ERNSH', CAST(N'1998-01-27T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10855, N'OLDWO', CAST(N'1998-01-27T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10856, N'ANTON', CAST(N'1998-01-28T00:00:00.000' AS DateTime), N'Mataderos  2312')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10857, N'BERGS', CAST(N'1998-01-28T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10858, N'LACOR', CAST(N'1998-01-29T00:00:00.000' AS DateTime), N'67, avenue de l''Europe')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10859, N'FRANK', CAST(N'1998-01-29T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10860, N'FRANR', CAST(N'1998-01-29T00:00:00.000' AS DateTime), N'54, rue Royale')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10861, N'WHITC', CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10862, N'LEHMS', CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10863, N'HILAA', CAST(N'1998-02-02T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10864, N'AROUT', CAST(N'1998-02-02T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10865, N'QUICK', CAST(N'1998-02-02T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10866, N'BERGS', CAST(N'1998-02-03T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10867, N'LONEP', CAST(N'1998-02-03T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10868, N'QUEEN', CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10869, N'SEVES', CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10870, N'WOLZA', CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'ul. Filtrowa 68')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10871, N'BONAP', CAST(N'1998-02-05T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10872, N'GODOS', CAST(N'1998-02-05T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10873, N'WILMK', CAST(N'1998-02-06T00:00:00.000' AS DateTime), N'Keskuskatu 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10874, N'GODOS', CAST(N'1998-02-06T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10875, N'BERGS', CAST(N'1998-02-06T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10876, N'BONAP', CAST(N'1998-02-09T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10877, N'RICAR', CAST(N'1998-02-09T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10878, N'QUICK', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10879, N'WILMK', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'Keskuskatu 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10880, N'FOLKO', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10881, N'CACTU', CAST(N'1998-02-11T00:00:00.000' AS DateTime), N'Cerrito 333')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10882, N'SAVEA', CAST(N'1998-02-11T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10883, N'LONEP', CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10884, N'LETSS', CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'87 Polk St. Suite 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10885, N'SUPRD', CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10886, N'HANAR', CAST(N'1998-02-13T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10887, N'GALED', CAST(N'1998-02-13T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10888, N'GODOS', CAST(N'1998-02-16T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10889, N'RATTC', CAST(N'1998-02-16T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10890, N'DUMON', CAST(N'1998-02-16T00:00:00.000' AS DateTime), N'67, rue des Cinquante Otages')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10891, N'LEHMS', CAST(N'1998-02-17T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10892, N'MAISD', CAST(N'1998-02-17T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10893, N'KOENE', CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10894, N'SAVEA', CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10895, N'ERNSH', CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10896, N'MAISD', CAST(N'1998-02-19T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10897, N'HUNGO', CAST(N'1998-02-19T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10898, N'OCEAN', CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10899, N'LILAS', CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10900, N'WELLI', CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10901, N'HILAA', CAST(N'1998-02-23T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10902, N'FOLKO', CAST(N'1998-02-23T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10903, N'HANAR', CAST(N'1998-02-24T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10904, N'WHITC', CAST(N'1998-02-24T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10905, N'WELLI', CAST(N'1998-02-24T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10906, N'WOLZA', CAST(N'1998-02-25T00:00:00.000' AS DateTime), N'ul. Filtrowa 68')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10907, N'SPECD', CAST(N'1998-02-25T00:00:00.000' AS DateTime), N'25, rue Lauriston')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10908, N'REGGC', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10909, N'SANTG', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10910, N'WILMK', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'Keskuskatu 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10911, N'GODOS', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10912, N'HUNGO', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10913, N'QUEEN', CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10914, N'QUEEN', CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10915, N'TORTU', CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10916, N'RANCH', CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'Av. del Libertador 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10917, N'ROMEY', CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'Gran Vía, 1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10918, N'BOTTM', CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10919, N'LINOD', CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10920, N'AROUT', CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10921, N'VAFFE', CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10922, N'HANAR', CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10923, N'LAMAI', CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10924, N'BERGS', CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10925, N'HANAR', CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10926, N'tcd', CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'Avda. de la Constitución 2222')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10927, N'LACOR', CAST(N'1998-03-05T00:00:00.000' AS DateTime), N'67, avenue de l''Europe')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10928, N'GALED', CAST(N'1998-03-05T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10929, N'FRANK', CAST(N'1998-03-05T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10930, N'SUPRD', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10931, N'RICSU', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10932, N'BONAP', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10933, N'ISLAT', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'Garden House Crowther Way')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10934, N'LEHMS', CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10935, N'WELLI', CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10936, N'GREAL', CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10937, N'CACTU', CAST(N'1998-03-10T00:00:00.000' AS DateTime), N'Cerrito 333')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10938, N'QUICK', CAST(N'1998-03-10T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10939, N'MAGAA', CAST(N'1998-03-10T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10940, N'BONAP', CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10941, N'SAVEA', CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10942, N'REGGC', CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10943, N'BSBEV', CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10944, N'BOTTM', CAST(N'1998-03-12T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10945, N'MORGK', CAST(N'1998-03-12T00:00:00.000' AS DateTime), N'Heerstr. 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10946, N'VAFFE', CAST(N'1998-03-12T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10947, N'BSBEV', CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10948, N'GODOS', CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10949, N'BOTTM', CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10950, N'MAGAA', CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10951, N'RICSU', CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10952, N'admin', CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'Obere Str. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10953, N'AROUT', CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10954, N'LINOD', CAST(N'1998-03-17T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10955, N'FOLKO', CAST(N'1998-03-17T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10956, N'BLAUS', CAST(N'1998-03-17T00:00:00.000' AS DateTime), N'Forsterstr. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10957, N'HILAA', CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10958, N'OCEAN', CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10959, N'GOURL', CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'Av. Brasil, 442')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10960, N'HILAA', CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10961, N'QUEEN', CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10962, N'QUICK', CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10963, N'FURIB', CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10964, N'SPECD', CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'25, rue Lauriston')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10965, N'OLDWO', CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10966, N'CHOPS', CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'Hauptstr. 31')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10967, N'TOMSP', CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'Luisenstr. 48')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10968, N'ERNSH', CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10969, N'COMMI', CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10970, N'BOLID', CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'C/ Araquil, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10971, N'FRANR', CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'54, rue Royale')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10972, N'LACOR', CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'67, avenue de l''Europe')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10973, N'LACOR', CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'67, avenue de l''Europe')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10974, N'SPLIR', CAST(N'1998-03-25T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10975, N'BOTTM', CAST(N'1998-03-25T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10976, N'HILAA', CAST(N'1998-03-25T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10977, N'FOLKO', CAST(N'1998-03-26T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10978, N'MAISD', CAST(N'1998-03-26T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10979, N'ERNSH', CAST(N'1998-03-26T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10980, N'FOLKO', CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10981, N'HANAR', CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10982, N'BOTTM', CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10983, N'SAVEA', CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10984, N'SAVEA', CAST(N'1998-03-30T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10985, N'HUNGO', CAST(N'1998-03-30T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10986, N'OCEAN', CAST(N'1998-03-30T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10987, N'EASTC', CAST(N'1998-03-31T00:00:00.000' AS DateTime), N'35 King George')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10988, N'RATTC', CAST(N'1998-03-31T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10989, N'QUEDE', CAST(N'1998-03-31T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10990, N'ERNSH', CAST(N'1998-04-01T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10991, N'QUICK', CAST(N'1998-04-01T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10992, N'THEBI', CAST(N'1998-04-01T00:00:00.000' AS DateTime), N'89 Jefferson Way Suite 2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10993, N'FOLKO', CAST(N'1998-04-01T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10994, N'VAFFE', CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'Smagsloget 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10995, N'PERIC', CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10996, N'QUICK', CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10997, N'LILAS', CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10998, N'WOLZA', CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'ul. Filtrowa 68')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10999, N'OTTIK', CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11000, N'RATTC', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11001, N'FOLKO', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11002, N'SAVEA', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11003, N'THECR', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'55 Grizzly Peak Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11004, N'MAISD', CAST(N'1998-04-07T00:00:00.000' AS DateTime), N'Rue Joseph-Bens 532')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11005, N'WILMK', CAST(N'1998-04-07T00:00:00.000' AS DateTime), N'Keskuskatu 45')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11006, N'GREAL', CAST(N'1998-04-07T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11007, N'PRINI', CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11008, N'ERNSH', CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11009, N'GODOS', CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11010, N'REGGC', CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11011, N'admin', CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'Obere Str. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11012, N'FRANK', CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11013, N'ROMEY', CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'Gran Vía, 1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11014, N'LINOD', CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11015, N'SANTG', CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11016, N'AROUT', CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11017, N'ERNSH', CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11018, N'LONEP', CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11019, N'RANCH', CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'Av. del Libertador 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11020, N'OTTIK', CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11021, N'QUICK', CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11022, N'HANAR', CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11023, N'BSBEV', CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'Fauntleroy Circus')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11024, N'EASTC', CAST(N'1998-04-15T00:00:00.000' AS DateTime), N'35 King George')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11025, N'WARTH', CAST(N'1998-04-15T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11026, N'FRANS', CAST(N'1998-04-15T00:00:00.000' AS DateTime), N'Via Monte Bianco 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11027, N'BOTTM', CAST(N'1998-04-16T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11028, N'KOENE', CAST(N'1998-04-16T00:00:00.000' AS DateTime), N'Maubelstr. 90')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11029, N'CHOPS', CAST(N'1998-04-16T00:00:00.000' AS DateTime), N'Hauptstr. 31')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11030, N'SAVEA', CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11031, N'SAVEA', CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11032, N'WHITC', CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11033, N'RICSU', CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11034, N'OLDWO', CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'2743 Bering St.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11035, N'SUPRD', CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11036, N'DRACD', CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'Walserweg 21')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11037, N'GODOS', CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'C/ Romero, 33')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11038, N'SUPRD', CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11039, N'LINOD', CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11040, N'GREAL', CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11041, N'CHOPS', CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'Hauptstr. 31')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11042, N'COMMI', CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11043, N'SPECD', CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'25, rue Lauriston')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11044, N'WOLZA', CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'ul. Filtrowa 68')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11045, N'BOTTM', CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11046, N'WANDK', CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'Adenauerallee 900')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11047, N'EASTC', CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'35 King George')
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11048, N'BOTTM', CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11049, N'GOURL', CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'Av. Brasil, 442')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11050, N'FOLKO', CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11051, N'LAMAI', CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11052, N'HANAR', CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11053, N'PICCO', CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'Geislweg 14')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11054, N'CACTU', CAST(N'1998-04-28T00:00:00.000' AS DateTime), N'Cerrito 333')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11055, N'HILAA', CAST(N'1998-04-28T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11056, N'EASTC', CAST(N'1998-04-28T00:00:00.000' AS DateTime), N'35 King George')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11057, N'NORTS', CAST(N'1998-04-29T00:00:00.000' AS DateTime), N'South House 300 Queensbridge')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11058, N'BLAUS', CAST(N'1998-04-29T00:00:00.000' AS DateTime), N'Forsterstr. 57')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11059, N'RICAR', CAST(N'1998-04-29T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11060, N'FRANS', CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'Via Monte Bianco 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11061, N'GREAL', CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'2732 Baker Blvd.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11062, N'REGGC', CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11063, N'HUNGO', CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'8 Johnstown Road')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11064, N'SAVEA', CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'187 Suffolk Ln.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11065, N'LILAS', CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11066, N'WHITC', CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11067, N'DRACD', CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'Walserweg 21')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11068, N'QUEEN', CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11069, N'TORTU', CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11070, N'LEHMS', CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11071, N'LILAS', CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11072, N'ERNSH', CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11073, N'PERIC', CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11074, N'SIMOB', CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'Vinbæltet 34')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11075, N'RICSU', CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11076, N'BONAP', CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'12, rue des Bouchers')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11077, N'RATTC', CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11200, N'director', CAST(N'2020-08-25T00:00:00.000' AS DateTime), N'Công cha như núi Thái sơn')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11205, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11206, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11207, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11208, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11209, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11210, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'ORDER PURCHASING')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11211, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'ORDER PURCHASING')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11212, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (11213, N'staff', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Shipping Address: 123')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (21205, N'staff', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (21206, N'director', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (21207, N'director', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'ORDER PURCHASING')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (21208, N'director', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'Công cha như núi thái sơn
Nghĩa mẹ như nước trong nguồn chảy ra')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (21209, N'director', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (31205, N'staff', CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (31206, N'staff', CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'Mishi Kobe Niku')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (31207, N'director', CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (41205, N'staff', CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (41206, N'staff', CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (41208, N'staff', CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (51205, N'director', CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (61205, N'customer', CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (71205, N'customer', CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'778/B1 Nguyễn Kiệm, F.4 Q.Tân Phú, HCM')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (71206, N'director', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81206, N'customer', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81207, N'customer', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81208, N'director', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'Shipping Address')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81209, N'director', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81210, N'staff', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81211, N'staff', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81212, N'staff', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (91205, N'customer', CAST(N'2021-03-22T00:00:00.000' AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (101205, N'customer', CAST(N'2021-03-22T00:00:00.000' AS DateTime), N'2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (111205, N'customer', CAST(N'2021-03-23T00:00:00.000' AS DateTime), N'FPT Polytechnic © 2021. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (111206, N'customer', CAST(N'2021-03-23T00:00:00.000' AS DateTime), N'FPT Polytechnic © 2021. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (121205, N'staff', CAST(N'2021-04-05T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (121206, N'staff', CAST(N'2021-04-05T00:00:00.000' AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (121207, N'admin', CAST(N'2021-08-05T00:00:00.000' AS DateTime), N'aâ')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (121208, N'tcd', CAST(N'2021-08-05T00:00:00.000' AS DateTime), N'xáđâsâ')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1, N'YOUNGGREEN LOGO T-SHIRT', N'1.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (2, N'THE DREAM CLUB T-SHIRTe', N'2.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (3, N'YOUNG GREEN SMILE TEE', N'3.jpg', 261.000, CAST(N'2021-07-25' AS Date), 1, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (4, N'FACE TEE OVERSIZED', N'4.jpg', 270.000, CAST(N'2021-07-25' AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (5, N'CHEERS TO THE FAILING', N'5.jpg', 234.000, CAST(N'2021-07-25' AS Date), 1, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (6, N'YOUNG SKULL TEE', N'6.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (7, N'BASIC STRIPED TEE', N'7.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (8, N'YOUNGGREEN T-SHIRT SS/21', N'8.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (9, N'CULTURE TEE', N'9.jpg', 162.000, CAST(N'2021-07-25' AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (10, N'POLO HEART', N'10.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (11, N'CAMO LOGO TEE', N'11.jpg', 156.000, CAST(N'2021-07-25' AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (12, N'11:11 T-SHIRT', N'12.jpg', 243.000, CAST(N'2021-07-25' AS Date), 1, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (13, N'SWEATER EVERY', N'13.jpg', 270.000, CAST(N'2021-07-25' AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (14, N'GIVEMEMORE HOOD', N'14.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (15, N'ON DA WAY HOOD', N'15.jpg', 261.000, CAST(N'2021-07-25' AS Date), 1, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (16, N'SWEATHOOD YG', N'16.jpg', 270.000, CAST(N'2021-07-25' AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (17, N'BASIC SWEATSHIRT OG', N'17.jpg', 234.000, CAST(N'2021-07-25' AS Date), 1, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (18, N'TIE-DYE SWEATSHIRT BASIC', N'18.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (19, N'FLEECE SWEAT', N'19.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (20, N'SUPERVILLAIN HOOD', N'20.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (21, N'VGS White Reflective', N'21.jpg', 162.000, CAST(N'2021-07-25' AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (22, N'VGS Lunar New Year', N'22.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (23, N'VGS Hoodie', N'23.jpg', 156.000, CAST(N'2021-07-25' AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (24, N'Hood Nagri', N'24.jpg', 243.000, CAST(N'2021-07-25' AS Date), 1, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (25, N'GILE JACKET', N'25.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (26, N'YG STUDIO JACKET', N'26.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (27, N'VGS LOGO BASEBALL JACKET', N'27.jpg', 261.000, CAST(N'2021-07-25' AS Date), 1, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (28, N'YGSW FLEECE JACKET', N'28.jpg', 270.000, CAST(N'2021-07-25' AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (29, N'YOUNGGREEN BASIC JACKET', N'29.jpg', 234.000, CAST(N'2021-07-25' AS Date), 1, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (30, N'ESSENTIAL REF JACKET', N'30.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (31, N'Essential Jacket', N'31.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (32, N'LOGO SS/21 JACKET', N'32.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (33, N'Coach Basic', N'33.jpg', 162.000, CAST(N'2021-07-25' AS Date), 0, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (34, N'BLANK SHORTS', N'34.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (35, N'FULL SET LABLE', N'35.jpg', 156.000, CAST(N'2021-07-25' AS Date), 0, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (36, N'ESSENTIALS STRIPES PANTS', N'36.jpg', 243.000, CAST(N'2021-07-25' AS Date), 1, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (37, N'WIDE LEG JEANS', N'37.jpg', 270.000, CAST(N'2021-07-25' AS Date), 0, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (38, N'YG NYLON SHORTS', N'38.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (39, N'SHORT ZIPPER', N'39.jpg', 261.000, CAST(N'2021-07-25' AS Date), 1, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (40, N'RINGO TROUSER PANT', N'40.jpg', 270.000, CAST(N'2021-07-25' AS Date), 0, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (41, N'DRAWSTRING SHORT', N'41.jpg', 234.000, CAST(N'2021-07-25' AS Date), 1, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (42, N'BASIC SUPER SKINNY JEANS', N'42.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (43, N'LOGO ENTENSSIAL', N'43.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (44, N'CARGO SHORT', N'44.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'4')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (45, N'SHORT SLEEVE SHIRT', N'45.jpg', 252.000, CAST(N'2021-07-25' AS Date), 0, N'5')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (46, N'BASIC TRAVELER SHIRT', N'46.jpg', 342.000, CAST(N'2021-07-25' AS Date), 0, N'5')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (47, N'NÓN BẢO HIỂM', N'47.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'6')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (48, N'VGS LOGO CAP', N'48.jpg', 225.000, CAST(N'2021-07-25' AS Date), 1, N'6')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (49, N'YOUNG CAP', N'49.jpg', 180.000, CAST(N'2021-07-25' AS Date), 0, N'6')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (50, N'BUCKET HAT', N'50.jpg', 190.000, CAST(N'2021-07-25' AS Date), 0, N'6')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (51, N'Cap Daisy', N'51.jpg', 90.000, CAST(N'2021-07-25' AS Date), 0, N'6')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (52, N'FULL SET LABLE', N'51.jpg', 156.000, CAST(N'2021-07-25' AS Date), 0, N'6')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (53, N'ESSENTIALS STRIPES PANTS', N'52.jpg', 243.000, CAST(N'2021-07-25' AS Date), 1, N'6')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (54, N'CANVAS WALLET ORIGINAL', N'53.jpg', 270.000, CAST(N'2021-07-25' AS Date), 0, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (55, N'WALLET LOGO', N'54.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (56, N'BACKPACK SS2 BASIC', N'55.jpg', 261.000, CAST(N'2021-07-25' AS Date), 1, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (57, N'YG BACKPACK VER1', N'56.jpg', 270.000, CAST(N'2021-07-25' AS Date), 0, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (59, N'TURBAN', N'57.jpg', 234.000, CAST(N'2021-07-25' AS Date), 1, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (59, N'MINI BAG SSO2', N'58.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (60, N'YG Mini Bag SS01', N'59.jpg', 243.000, CAST(N'2021-07-25' AS Date), 0, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (61, N'YG Shoulder Bag', N'60.jpg', 225.000, CAST(N'2021-07-25' AS Date), 0, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (62, N'Leather Backpack Box', N'61.jpg', 252.000, CAST(N'2021-07-25' AS Date), 0, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (62, N'GENTLE MONSTER GLASSES', N'62.jpg', 342.000, CAST(N'2021-07-25' AS Date), 0, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (63, N'Pearls Glasses', N'63.jpg', 156.000, CAST(N'2021-07-25' AS Date), 0, N'7')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (64, N'Clubmaster Glasses', N'64.jpg', 243.000, CAST(N'2021-07-25' AS Date), 1, N'7')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'anhntps10770@fpt.edu.vn', N'Nguyễn Tiến Anh', 10, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'chaulnnps10835@fpt.edu.vn', N'Lê Nguyễn Ngọc Châu', 7, 0, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'cuonglcps10817@fpt.edu.vn', N'Lý Chí Cường', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'datnvps10930@fpt.edu.vn', N'Nguyễn Vũ Đạt', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'dobps10723@fpt.edu.vn', N'Bùi Đỏ', 10, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'ducnpps10800@fpt.edu.vn', N'Nguyễn Phúc Đức', 7, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'duytkps10303@fpt.edu.vn', N'Trần Khánh Duy', 6, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'huyntps10808@fpt.edu.vn', N'Nguyễn Thanh Huy', 4, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'khaihcps10763@fpt.edu.vn', N'Hoàng Cao Khải', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'luudpps10344@fpt.edu.vn', N'Đào Phong Lưu', 8, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'manhbdps09585@fpt.edu.vn', N'Bùi Đức Mạnh', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phatltps10691@fpt.edu.vn', N'Lê Tấn Phát', 9, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phucpbps10710@fpt.edu.vn', N'Phạm Bá Phúc', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phuongntdps09013@fpt.edu.vn', N'Nguyễn Thị Diễm Phương', 8, 0, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'quangnmps10741@fpt.edu.vn', N'Nguyễn Minh Quang', 6, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'quangvvtps09851@fpt.edu.vn', N'Võ Văn Thanh Quang', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sangntps10356@fpt.edu.vn', N'Nguyễn Tống Sang', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sonntps10858@fpt.edu.vn', N'Nguyễn Thanh Sơn', 9, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'suotlvmps10970@fpt.edu.vn', N'Lê Vương Minh Suốt', 7, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thachnhps10818@fpt.edu.vn', N'Nguyễn Hữu Thạch', 8, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thangtvps10394@fpt.edu.vn', N'Trằn Văn Thắng', 9, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'trangntpps10956@fpt.edu.vn', N'Nguyễn Thị Phương Trang', 4, 0, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'trungdvps10716@fpt.edu.vn', N'Đặng Văn Trung', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'tuanncqps10850@fpt.edu.vn', N'Nguyễn Cửu Quang Tuấn', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'tuannnps10819@fpt.edu.vn', N'Nguyễn Ngọc Tuấn', 10, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'vinhptps09842@fpt.edu.vn', N'Phạm Thế Vinh', 10, 1, N'VN')
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_gender]  DEFAULT ((1)) FOR [gender]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Available'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
