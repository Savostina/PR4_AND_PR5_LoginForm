USE [SuperMarket]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 18.05.2021 13:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 18.05.2021 13:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18.05.2021 13:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Variety] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOnDepartments]    Script Date: 18.05.2021 13:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOnDepartments](
	[IdDepartments] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
 CONSTRAINT [PK_ProductOnDepartments] PRIMARY KEY CLUSTERED 
(
	[IdDepartments] ASC,
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SllingProducts]    Script Date: 18.05.2021 13:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SllingProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdStaff] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[DateSlling] [datetime] NOT NULL,
 CONSTRAINT [PK_SllingProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 18.05.2021 13:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DateBirth] [date] NOT NULL,
	[IdPosition] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Pas] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Name], [Phone]) VALUES (1, N'Продукты', N'344-34')
INSERT [dbo].[Departments] ([Id], [Name], [Phone]) VALUES (2, N'Бытовая химия', N'485-33')
INSERT [dbo].[Departments] ([Id], [Name], [Phone]) VALUES (3, N'Садоводство', N'234-66')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Id], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (2, N'Продовец')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (3, N'Директор')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (4, N'Уборщик')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Price], [Variety]) VALUES (1, N'Яблоко', CAST(20.00 AS Decimal(18, 2)), N'Фрукт')
INSERT [dbo].[Product] ([Id], [Name], [Price], [Variety]) VALUES (2, N'Морква', CAST(15.12 AS Decimal(18, 2)), N'Овощь')
INSERT [dbo].[Product] ([Id], [Name], [Price], [Variety]) VALUES (3, N'Помидор', CAST(30.33 AS Decimal(18, 2)), N'Овощь')
INSERT [dbo].[Product] ([Id], [Name], [Price], [Variety]) VALUES (4, N'Средство для мытья посуды', CAST(300.40 AS Decimal(18, 2)), N'Химия')
INSERT [dbo].[Product] ([Id], [Name], [Price], [Variety]) VALUES (5, N'Горшок', CAST(154.32 AS Decimal(18, 2)), N'Декор')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductOnDepartments] ([IdDepartments], [IdProduct]) VALUES (1, 1)
INSERT [dbo].[ProductOnDepartments] ([IdDepartments], [IdProduct]) VALUES (1, 2)
INSERT [dbo].[ProductOnDepartments] ([IdDepartments], [IdProduct]) VALUES (1, 3)
INSERT [dbo].[ProductOnDepartments] ([IdDepartments], [IdProduct]) VALUES (2, 4)
INSERT [dbo].[ProductOnDepartments] ([IdDepartments], [IdProduct]) VALUES (3, 5)
GO
SET IDENTITY_INSERT [dbo].[SllingProducts] ON 

INSERT [dbo].[SllingProducts] ([Id], [IdStaff], [IdProduct], [DateSlling]) VALUES (1, 2, 1, CAST(N'2021-12-12T12:00:03.000' AS DateTime))
INSERT [dbo].[SllingProducts] ([Id], [IdStaff], [IdProduct], [DateSlling]) VALUES (2, 2, 3, CAST(N'2021-03-03T00:00:00.000' AS DateTime))
INSERT [dbo].[SllingProducts] ([Id], [IdStaff], [IdProduct], [DateSlling]) VALUES (3, 2, 2, CAST(N'2021-08-08T20:34:10.000' AS DateTime))
INSERT [dbo].[SllingProducts] ([Id], [IdStaff], [IdProduct], [DateSlling]) VALUES (4, 2, 4, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[SllingProducts] ([Id], [IdStaff], [IdProduct], [DateSlling]) VALUES (5, 2, 5, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[SllingProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([Id], [Name], [LastName], [DateBirth], [IdPosition], [Login], [Pas]) VALUES (1, N'Петров', N'Пётр', CAST(N'1999-12-20' AS Date), 1, N'123', N'123')
INSERT [dbo].[Staff] ([Id], [Name], [LastName], [DateBirth], [IdPosition], [Login], [Pas]) VALUES (2, N'Андрей', N'Андреевич', CAST(N'2002-04-04' AS Date), 2, N'456', N'456')
INSERT [dbo].[Staff] ([Id], [Name], [LastName], [DateBirth], [IdPosition], [Login], [Pas]) VALUES (3, N'Василий', N'Васильевич', CAST(N'1993-10-13' AS Date), 3, N'890', N'890')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
ALTER TABLE [dbo].[ProductOnDepartments]  WITH CHECK ADD  CONSTRAINT [FK_ProductOnDepartments_Departments] FOREIGN KEY([IdDepartments])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[ProductOnDepartments] CHECK CONSTRAINT [FK_ProductOnDepartments_Departments]
GO
ALTER TABLE [dbo].[ProductOnDepartments]  WITH CHECK ADD  CONSTRAINT [FK_ProductOnDepartments_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductOnDepartments] CHECK CONSTRAINT [FK_ProductOnDepartments_Product]
GO
ALTER TABLE [dbo].[ProductOnDepartments]  WITH CHECK ADD  CONSTRAINT [FK_ProductOnDepartments_SllingProducts] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[SllingProducts] ([Id])
GO
ALTER TABLE [dbo].[ProductOnDepartments] CHECK CONSTRAINT [FK_ProductOnDepartments_SllingProducts]
GO
ALTER TABLE [dbo].[SllingProducts]  WITH CHECK ADD  CONSTRAINT [FK_SllingProducts_Staff] FOREIGN KEY([IdStaff])
REFERENCES [dbo].[Staff] ([Id])
GO
ALTER TABLE [dbo].[SllingProducts] CHECK CONSTRAINT [FK_SllingProducts_Staff]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Position] FOREIGN KEY([IdPosition])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Position]
GO
