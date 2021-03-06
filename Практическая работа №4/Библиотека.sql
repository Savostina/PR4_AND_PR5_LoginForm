USE [Iibrary]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 18.05.2021 15:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[Id] [int] NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 18.05.2021 15:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Amount] [int] NOT NULL,
	[IdYear] [int] NOT NULL,
	[IdPrice] [int] NOT NULL,
	[IdAuthor] [int] NOT NULL,
	[IdPublisher] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Issuance]    Script Date: 18.05.2021 15:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issuance](
	[Id] [int] NOT NULL,
	[IdReader] [int] NULL,
	[IdBook] [int] NULL,
	[DateIssuance] [date] NULL,
	[DateReturn] [date] NULL,
 CONSTRAINT [PK_Issuance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 18.05.2021 15:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[Id] [int] NOT NULL,
	[Price] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 18.05.2021 15:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Web] [nvarchar](50) NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reader]    Script Date: 18.05.2021 15:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reader](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LostName] [nvarchar](50) NOT NULL,
	[SerisP] [nvarchar](50) NOT NULL,
	[NumerP] [nvarchar](50) NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[Adres] [nvarchar](50) NULL,
 CONSTRAINT [PK_Reader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Year]    Script Date: 18.05.2021 15:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Year](
	[Id] [int] NOT NULL,
	[Year] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Year] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Author] ([Id], [Author]) VALUES (1, N'Булгаков')
INSERT [dbo].[Author] ([Id], [Author]) VALUES (2, N'Эрика Джаеймс')
INSERT [dbo].[Author] ([Id], [Author]) VALUES (3, N'Джоджо Мойес')
INSERT [dbo].[Author] ([Id], [Author]) VALUES (4, N'Дэвид')
INSERT [dbo].[Author] ([Id], [Author]) VALUES (5, N'Макс Фрай')
INSERT [dbo].[Author] ([Id], [Author]) VALUES (6, N'Гиллиан Флинн')
GO
INSERT [dbo].[Book] ([Id], [Name], [Amount], [IdYear], [IdPrice], [IdAuthor], [IdPublisher]) VALUES (1, N'Мастер и Маргарита', 150, 1, 1, 1, 1)
INSERT [dbo].[Book] ([Id], [Name], [Amount], [IdYear], [IdPrice], [IdAuthor], [IdPublisher]) VALUES (2, N'50 оттенков серого', 200, 2, 2, 2, 1)
INSERT [dbo].[Book] ([Id], [Name], [Amount], [IdYear], [IdPrice], [IdAuthor], [IdPublisher]) VALUES (3, N'До встречи с тобой', 252, 3, 1, 3, 3)
INSERT [dbo].[Book] ([Id], [Name], [Amount], [IdYear], [IdPrice], [IdAuthor], [IdPublisher]) VALUES (4, N'Шантарам', 236, 3, 3, 4, 2)
INSERT [dbo].[Book] ([Id], [Name], [Amount], [IdYear], [IdPrice], [IdAuthor], [IdPublisher]) VALUES (5, N'Чужак', 541, 3, 4, 5, 3)
INSERT [dbo].[Book] ([Id], [Name], [Amount], [IdYear], [IdPrice], [IdAuthor], [IdPublisher]) VALUES (6, N'Острые преметы', 125, 4, 4, 6, 4)
INSERT [dbo].[Book] ([Id], [Name], [Amount], [IdYear], [IdPrice], [IdAuthor], [IdPublisher]) VALUES (7, N'Исчезнувшая', 350, 4, 4, 6, 2)
GO
INSERT [dbo].[Issuance] ([Id], [IdReader], [IdBook], [DateIssuance], [DateReturn]) VALUES (1, 1, 2, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date))
INSERT [dbo].[Issuance] ([Id], [IdReader], [IdBook], [DateIssuance], [DateReturn]) VALUES (2, 2, 1, CAST(N'2015-03-03' AS Date), CAST(N'2015-03-05' AS Date))
INSERT [dbo].[Issuance] ([Id], [IdReader], [IdBook], [DateIssuance], [DateReturn]) VALUES (3, 3, 3, CAST(N'2015-03-07' AS Date), CAST(N'2015-03-10' AS Date))
INSERT [dbo].[Issuance] ([Id], [IdReader], [IdBook], [DateIssuance], [DateReturn]) VALUES (4, 4, 4, CAST(N'2015-03-03' AS Date), CAST(N'2015-03-05' AS Date))
INSERT [dbo].[Issuance] ([Id], [IdReader], [IdBook], [DateIssuance], [DateReturn]) VALUES (5, 5, 7, CAST(N'2015-03-09' AS Date), CAST(N'2015-03-13' AS Date))
INSERT [dbo].[Issuance] ([Id], [IdReader], [IdBook], [DateIssuance], [DateReturn]) VALUES (6, 6, 2, CAST(N'2015-03-16' AS Date), CAST(N'2015-03-20' AS Date))
INSERT [dbo].[Issuance] ([Id], [IdReader], [IdBook], [DateIssuance], [DateReturn]) VALUES (7, 1, 6, CAST(N'2015-03-23' AS Date), CAST(N'2015-03-27' AS Date))
INSERT [dbo].[Issuance] ([Id], [IdReader], [IdBook], [DateIssuance], [DateReturn]) VALUES (8, 2, 5, CAST(N'2015-03-24' AS Date), CAST(N'2015-03-27' AS Date))
INSERT [dbo].[Issuance] ([Id], [IdReader], [IdBook], [DateIssuance], [DateReturn]) VALUES (9, 5, 4, CAST(N'2015-03-30' AS Date), CAST(N'2015-04-01' AS Date))
GO
INSERT [dbo].[Price] ([Id], [Price]) VALUES (1, N'300')
INSERT [dbo].[Price] ([Id], [Price]) VALUES (2, N'350')
INSERT [dbo].[Price] ([Id], [Price]) VALUES (3, N'400')
INSERT [dbo].[Price] ([Id], [Price]) VALUES (4, N'500')
GO
INSERT [dbo].[Publisher] ([Id], [Name], [Mail], [Phone], [City], [Web]) VALUES (1, N'Эксмо', N'eksmo@mail.ru', N'6565656', N'Москва', N'eksmo.ru')
INSERT [dbo].[Publisher] ([Id], [Name], [Mail], [Phone], [City], [Web]) VALUES (2, N'Россия', N'Russia@ya.ru', N'9848454', N'СанктПетербург', N'Russia.com')
INSERT [dbo].[Publisher] ([Id], [Name], [Mail], [Phone], [City], [Web]) VALUES (3, N'Буква', N'bukva@mail.ru', N'9878545', N'Смоленск', N'Bukva.com')
INSERT [dbo].[Publisher] ([Id], [Name], [Mail], [Phone], [City], [Web]) VALUES (4, N'Издат', N'lzdat@mail.ru', N'9145588', N'Псков', N'Lzdat.net')
GO
INSERT [dbo].[Reader] ([Id], [Name], [LostName], [SerisP], [NumerP], [Number], [Adres]) VALUES (1, N'Иван', N'Иванов', N'1011', N'111112', N'89520543632', N'Ул. Новая 1,кв.1')
INSERT [dbo].[Reader] ([Id], [Name], [LostName], [SerisP], [NumerP], [Number], [Adres]) VALUES (2, N'Сергей', N'Петров', N'1371', N'641254', N'89654440231', N'Ул. Путина 5,кв 6')
INSERT [dbo].[Reader] ([Id], [Name], [LostName], [SerisP], [NumerP], [Number], [Adres]) VALUES (3, N'Светлана', N'Кривчик', N'1621', N'544847', N'8521441451', N'Ул. Киевская 1, кв 1')
INSERT [dbo].[Reader] ([Id], [Name], [LostName], [SerisP], [NumerP], [Number], [Adres]) VALUES (4, N'Анна', N'Петрова', N'1021', N'222222', N'89111645215', N'Ул. Авиаторов 5,кв 4')
INSERT [dbo].[Reader] ([Id], [Name], [LostName], [SerisP], [NumerP], [Number], [Adres]) VALUES (5, N'Андрей', N'Жильцов', N'1215', N'421032', N'89478263154', N'Ул. Смоленская 15 кв 4')
INSERT [dbo].[Reader] ([Id], [Name], [LostName], [SerisP], [NumerP], [Number], [Adres]) VALUES (6, N'Катерина', N'Степанова', N'1210', N'326142', N'89011154577', N'Ул. Ленина 8, кв 1')
GO
INSERT [dbo].[Year] ([Id], [Year]) VALUES (1, N'2011')
INSERT [dbo].[Year] ([Id], [Year]) VALUES (2, N'2012')
INSERT [dbo].[Year] ([Id], [Year]) VALUES (3, N'2013')
INSERT [dbo].[Year] ([Id], [Year]) VALUES (4, N'2014')
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([IdAuthor])
REFERENCES [dbo].[Author] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Price] FOREIGN KEY([IdPrice])
REFERENCES [dbo].[Price] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Price]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([IdPublisher])
REFERENCES [dbo].[Publisher] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Year] FOREIGN KEY([IdYear])
REFERENCES [dbo].[Year] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Year]
GO
ALTER TABLE [dbo].[Issuance]  WITH CHECK ADD  CONSTRAINT [FK_Issuance_Book] FOREIGN KEY([IdBook])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[Issuance] CHECK CONSTRAINT [FK_Issuance_Book]
GO
ALTER TABLE [dbo].[Issuance]  WITH CHECK ADD  CONSTRAINT [FK_Issuance_Reader] FOREIGN KEY([IdReader])
REFERENCES [dbo].[Reader] ([Id])
GO
ALTER TABLE [dbo].[Issuance] CHECK CONSTRAINT [FK_Issuance_Reader]
GO
