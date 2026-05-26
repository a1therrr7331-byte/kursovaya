CREATE DATABASE [POEZDA]
GO

USE [POEZDA]
GO

CREATE TABLE [dbo].[ChildTicket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[Patronymic] [nvarchar](100) NULL,
	[Birthday] [date] NULL,
	[TicketId] [int] NULL,
	[PlaceId] [int] NULL,
	[SVoRojd] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Passports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PassportSeries] [nvarchar](4) NULL,
	[PassportNumber] [nvarchar](6) NULL,
	[IssuedBy] [nvarchar](100) NULL,
	[IssueDate] [date] NULL,
	[PassengerId] [int] NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Place](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Post](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[PostName] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED ([PostId] ASC)
)

CREATE TABLE [dbo].[RailwayStation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[CityId] [int] NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Ticket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PassengerId] [int] NULL,
	[DateBuy] [datetime] NULL,
	[Status] [int] NULL,
	[TripId] [int] NULL,
	[PlaceId] [int] NULL,
	[Comment] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Train](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[TrainVan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrainId] [int] NULL,
	[VanId] [int] NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Trip](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[StartPoint] [int] NULL,
	[EndPoint] [int] NULL,
	[Price] [money] NULL,
	[CountT] [int] NULL,
	[TrainId] [int] NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[TypeCarriage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[Patronymic] [nvarchar](30) NULL,
	[Login] [nvarchar](20) NULL,
	[Password] [nvarchar](20) NULL,
	[PostId] [int] NOT NULL,
	[Photo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Van](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[TypeCarId] [int] NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[VanPlace](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VanId] [int] NULL,
	[PlaceId] [int] NULL,
PRIMARY KEY CLUSTERED ([Id] ASC)
)

USE [POEZDA]
GO


SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([Id], [Name]) VALUES (1, N'Москва')
INSERT [dbo].[City] ([Id], [Name]) VALUES (2, N'Санкт-Петербург')
INSERT [dbo].[City] ([Id], [Name]) VALUES (3, N'Екатеринбург')
INSERT [dbo].[City] ([Id], [Name]) VALUES (4, N'Казань')
INSERT [dbo].[City] ([Id], [Name]) VALUES (5, N'Новосибирск')
SET IDENTITY_INSERT [dbo].[City] OFF

SET IDENTITY_INSERT [dbo].[Place] ON
INSERT [dbo].[Place] ([Id], [Name]) VALUES (1, N'а1')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (2, N'а2')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (3, N'а3')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (4, N'а4')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (5, N'а4')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (6, N'а5')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (7, N'б1')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (8, N'б2')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (9, N'б3')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (10, N'б4')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (11, N'б5')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (12, N'в1')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (13, N'в2')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (14, N'в3')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (15, N'в4')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (16, N'в5')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (17, N'г1')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (18, N'г2')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (19, N'г3')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (20, N'г4')
INSERT [dbo].[Place] ([Id], [Name]) VALUES (21, N'г5')
SET IDENTITY_INSERT [dbo].[Place] OFF

SET IDENTITY_INSERT [dbo].[Post] ON
INSERT [dbo].[Post] ([PostId], [PostName]) VALUES (1, N'Директор')
INSERT [dbo].[Post] ([PostId], [PostName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Post] ([PostId], [PostName]) VALUES (3, N'Покупатель')
SET IDENTITY_INSERT [dbo].[Post] OFF

SET IDENTITY_INSERT [dbo].[RailwayStation] ON
INSERT [dbo].[RailwayStation] ([Id], [Name], [CityId]) VALUES (1, N'Москва-Пассажирская', 1)
INSERT [dbo].[RailwayStation] ([Id], [Name], [CityId]) VALUES (2, N'Санкт-Петербург-Главный', 2)
INSERT [dbo].[RailwayStation] ([Id], [Name], [CityId]) VALUES (3, N'Екатеринбург-Пассажирский', 3)
INSERT [dbo].[RailwayStation] ([Id], [Name], [CityId]) VALUES (4, N'Казань-Пассажирская', 4)
INSERT [dbo].[RailwayStation] ([Id], [Name], [CityId]) VALUES (5, N'Новосибирск-Главный', 5)
SET IDENTITY_INSERT [dbo].[RailwayStation] OFF

SET IDENTITY_INSERT [dbo].[Status] ON
INSERT [dbo].[Status] ([Id], [Name]) VALUES (1, N'Забронирован')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (2, N'Оплачен')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (3, N'Возврат')
SET IDENTITY_INSERT [dbo].[Status] OFF

SET IDENTITY_INSERT [dbo].[Train] ON
INSERT [dbo].[Train] ([Id], [Name]) VALUES (1, N'Классный поезд')
INSERT [dbo].[Train] ([Id], [Name]) VALUES (2, N'Хороший поезд')
INSERT [dbo].[Train] ([Id], [Name]) VALUES (3, N'Нормальный поезд')
SET IDENTITY_INSERT [dbo].[Train] OFF

SET IDENTITY_INSERT [dbo].[TypeCarriage] ON
INSERT [dbo].[TypeCarriage] ([Id], [Name]) VALUES (1, N'Плацкарт')
INSERT [dbo].[TypeCarriage] ([Id], [Name]) VALUES (2, N'Купе')
INSERT [dbo].[TypeCarriage] ([Id], [Name]) VALUES (3, N'Люкс')
SET IDENTITY_INSERT [dbo].[TypeCarriage] OFF

SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (1, N'Иван', N'Иванов', N'Иванович', N'ivanov_i', N'password123', 1, N'4649.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (2, N'Петр', N'Петров', N'Петрович', N'123', N'123', 2, N'photo2.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (3, N'Анна', N'Сидорова', N'Сергеевна', N'222', N'222', 3, N'photo3.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (4, N'Елена', N'Смирнова', N'Алексеевна', N'smirnova_e', N'elenapass', 2, N'photo4.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (5, N'Михаил', N'Козлов', N'Викторович', N'kozlov_m', N'mikhailpass', 3, N'photo5.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (6, N'Ольга', N'Волкова', N'Дмитриевна', N'volkova_o', N'olgavolk', 3, N'photo6.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (7, N'4567', N'6789', N'678', N'678', N'678', 2, N'4649.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (8, N'4567', N'6789', N'678', N'678', N'56', 2, N'4649.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (9, N'5678', N'789', N'890', N'5678', N'567', 1, N'4649.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (10, N'44', N'44', N'44', N'44', N'5_Erhfh@34', 1, N'4649.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (11, N'234', N'234', N'456', N'234', N'456E1@4dDD', 2, N'4649.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (12, N'45', N'54', N'45', N'54', N'54G6&&6HhhH', 3, N'photo_2025-03-06_11-35-31.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (13, N'345', N'345', N'345', N'345', N'gH65&76YhGf', 1, N'photo_2025-03-06_11-35-31.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (14, N'345', N'345', N'345', N'345', N'gH65&76YhGf', 1, N'photo_2025-03-06_11-35-31.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (15, N'234', N'234', N'234', N'2342', N'_пр?рпа56Р', 2, N'Thinking-Man-PNG-Picture.webp')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (16, N'234', N'234', N'234', N'2342', N'_пр?рпа56Р', 2, N'Thinking-Man-PNG-Picture.webp')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (17, N'435', N'34564', N'5654356543', N'456754', N'пр?нН6:6еп', 2, N'загрузка.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (18, N'123', N'435', N'67', N'7687', N'12%6ПртРт', 2, N'загрузка.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (19, N'223', N'45678765', N'7654', N'567876', N'34;5аПрП7*ШЛ', 2, N'pochemu.png')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (20, N'123', N'123', N'35', N'34545', N'gf%78HHggh', 3, N'Thinking-Man-PNG-Picture.webp')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (21, N'апро', N'апро', N'апро', N'авпр', N'пРрп7?88?76', 3, N'photo_2025-04-17_13-03-25.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (22, N'уке', N'уке', N'уке', N'укеН6887?', N'укеН6887?', 3, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (23, N'ролдл', N'рпролдо', N'рпролдло', N'рпНрр??8(9ывв', N'рпНрр??8(9', 3, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (24, N'sdf', N'dfg', N'dfg', N'dfgh&7yhyyY', N'dfgh&7yhyyY', 3, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (25, N'sdf', N'sdf', N'sdf', N'hHggH78&&8', N'hHggH78&&8', 3, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (26, N'df', N'df', N'fg', N'dss&789JjhH', N'dss&789JjhH', 3, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (27, N'wsedrfg', N'erty', N'erty', N'3456', N'3456HhhGg&&6', 3, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (28, N'qwe', N'qwer', N'wert', N'HhGgHH7&667', N'HhGgHH7&667', 3, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Patronymic], [Login], [Password], [PostId], [Photo]) VALUES (29, N'укен', N'кен', N'кен', N'кенг', N'НгРПпоО7?:8866?Г', 3, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
SET IDENTITY_INSERT [dbo].[User] OFF

SET IDENTITY_INSERT [dbo].[Trip] ON
INSERT [dbo].[Trip] ([Id], [StartDate], [EndDate], [StartPoint], [EndPoint], [Price], [CountT], [TrainId]) VALUES (4, CAST(N'2024-07-20T10:00:00.000' AS DateTime), CAST(N'2024-01-21T18:00:00.000' AS DateTime), 1, 2, 2500.0000, 10, 1)
INSERT [dbo].[Trip] ([Id], [StartDate], [EndDate], [StartPoint], [EndPoint], [Price], [CountT], [TrainId]) VALUES (6, CAST(N'2024-08-20T10:00:00.000' AS DateTime), CAST(N'2024-01-21T18:00:00.000' AS DateTime), 1, 2, 2500.0000, 12, 2)
INSERT [dbo].[Trip] ([Id], [StartDate], [EndDate], [StartPoint], [EndPoint], [Price], [CountT], [TrainId]) VALUES (7, CAST(N'2024-10-15T14:00:00.000' AS DateTime), CAST(N'2024-02-16T22:00:00.000' AS DateTime), 2, 3, 4000.0000, 123, 3)
INSERT [dbo].[Trip] ([Id], [StartDate], [EndDate], [StartPoint], [EndPoint], [Price], [CountT], [TrainId]) VALUES (8, CAST(N'2024-06-10T08:00:00.000' AS DateTime), CAST(N'2024-03-11T16:00:00.000' AS DateTime), 3, 4, 3000.0000, 0, 3)
INSERT [dbo].[Trip] ([Id], [StartDate], [EndDate], [StartPoint], [EndPoint], [Price], [CountT], [TrainId]) VALUES (9, CAST(N'2024-05-01T00:00:00.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), 5, 5, 5000.0000, 12, 2)
INSERT [dbo].[Trip] ([Id], [StartDate], [EndDate], [StartPoint], [EndPoint], [Price], [CountT], [TrainId]) VALUES (10, CAST(N'2025-04-14T00:00:00.000' AS DateTime), CAST(N'2025-04-26T00:00:00.000' AS DateTime), 2, 3, 23.0000, 0, 1)
INSERT [dbo].[Trip] ([Id], [StartDate], [EndDate], [StartPoint], [EndPoint], [Price], [CountT], [TrainId]) VALUES (11, CAST(N'2025-04-09T00:00:00.000' AS DateTime), CAST(N'2025-04-25T00:00:00.000' AS DateTime), 1, 3, 1234.0000, 34567, 1)
INSERT [dbo].[Trip] ([Id], [StartDate], [EndDate], [StartPoint], [EndPoint], [Price], [CountT], [TrainId]) VALUES (12, CAST(N'2025-04-23T00:00:00.000' AS DateTime), CAST(N'2025-05-10T00:00:00.000' AS DateTime), 1, 3, 2345.0000, 345, 1)
SET IDENTITY_INSERT [dbo].[Trip] OFF

SET IDENTITY_INSERT [dbo].[Ticket] ON
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (13, 1, CAST(N'2024-01-10T12:00:00.000' AS DateTime), 3, 4, NULL, N'aedsfghjhgfdgfdgfhgdgf')
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (14, 2, CAST(N'2024-02-05T15:00:00.000' AS DateTime), 3, 6, NULL, N'adsxfgfhjuytrdfghyujtr')
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (15, 3, CAST(N'2024-03-01T10:00:00.000' AS DateTime), 3, 7, NULL, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (16, 4, CAST(N'2024-03-25T14:00:00.000' AS DateTime), 3, 8, NULL, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (17, 5, CAST(N'2024-04-20T09:00:00.000' AS DateTime), 3, 9, NULL, N'какая-то смешная причина')
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (18, 3, CAST(N'2025-04-05T00:00:00.000' AS DateTime), 1, 4, NULL, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (19, 3, CAST(N'2025-04-07T00:00:00.000' AS DateTime), 1, 11, NULL, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (22, 3, CAST(N'2025-04-27T00:00:00.000' AS DateTime), 3, 4, 7, N'некоторая причина')
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (23, 3, CAST(N'2025-04-27T00:00:00.000' AS DateTime), 2, 4, 3, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (24, 3, CAST(N'2025-04-27T00:00:00.000' AS DateTime), 2, 4, 2, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (25, 3, CAST(N'2025-04-27T00:00:00.000' AS DateTime), 2, 4, 7, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (26, 3, CAST(N'2025-04-27T00:00:00.000' AS DateTime), 2, 4, 7, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (30, 3, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 2, 4, 18, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (31, 3, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 3, 4, 18, N'какая-то причина')
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (32, 3, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 2, 6, 8, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (33, 3, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 2, 11, 10, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (34, 22, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 2, 6, 9, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (36, 27, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 2, 4, 13, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (37, 28, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 2, 4, 18, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (38, 3, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 2, 6, 15, NULL)
INSERT [dbo].[Ticket] ([Id], [PassengerId], [DateBuy], [Status], [TripId], [PlaceId], [Comment]) VALUES (39, 29, CAST(N'2025-04-28T00:00:00.000' AS DateTime), 2, 6, 8, NULL)
SET IDENTITY_INSERT [dbo].[Ticket] OFF

SET IDENTITY_INSERT [dbo].[Passports] ON
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (1, N'1234', N'567890', N'УФМС России по г. Москве', CAST(N'2015-05-10' AS Date), 1)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (2, N'5678', N'901234', N'УФМС России по г. Санкт-Петербургу', CAST(N'2018-08-15' AS Date), 2)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (3, N'9012', N'345678', N'УФМС России по г. Екатеринбургу', CAST(N'2020-02-20' AS Date), 3)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (4, N'3456', N'789012', N'УФМС России по г. Казани', CAST(N'2017-11-05' AS Date), 4)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (5, N'7890', N'123456', N'УФМС России по г. Новосибирску', CAST(N'2019-06-25' AS Date), 5)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (6, N'2345', N'678901', N'УФМС России по г. Самаре', CAST(N'2021-01-12' AS Date), 6)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (8, N'5467', N'3456', N'кеапр', CAST(N'2025-04-16' AS Date), 22)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (9, N'3456', N'345', N'dfgh', CAST(N'2025-04-08' AS Date), 26)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (10, N'1234', N'123', N'sdsd', CAST(N'2025-04-09' AS Date), 27)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (11, N'3456', N'23456', N'qwasdf', CAST(N'2025-04-15' AS Date), 28)
INSERT [dbo].[Passports] ([Id], [PassportSeries], [PassportNumber], [IssuedBy], [IssueDate], [PassengerId]) VALUES (12, N'3434', N'343343', N'неен', CAST(N'2025-04-10' AS Date), 29)
SET IDENTITY_INSERT [dbo].[Passports] OFF

SET IDENTITY_INSERT [dbo].[ChildTicket] ON
INSERT [dbo].[ChildTicket] ([Id], [Surname], [Name], [Patronymic], [Birthday], [TicketId], [PlaceId], [SVoRojd]) VALUES (1, N'ewrr', N'wer', N'werwre', CAST(N'2025-05-01' AS Date), 24, 3, NULL)
INSERT [dbo].[ChildTicket] ([Id], [Surname], [Name], [Patronymic], [Birthday], [TicketId], [PlaceId], [SVoRojd]) VALUES (2, N'234', N'234', N'345', CAST(N'2025-04-17' AS Date), 25, 9, NULL)
INSERT [dbo].[ChildTicket] ([Id], [Surname], [Name], [Patronymic], [Birthday], [TicketId], [PlaceId], [SVoRojd]) VALUES (3, N'пролд', N'олдж', N'рол', CAST(N'2025-05-24' AS Date), 26, 11, NULL)
INSERT [dbo].[ChildTicket] ([Id], [Surname], [Name], [Patronymic], [Birthday], [TicketId], [PlaceId], [SVoRojd]) VALUES (4, N'пролд', N'олдж', N'рол', CAST(N'2025-05-24' AS Date), 26, 11, NULL)
INSERT [dbo].[ChildTicket] ([Id], [Surname], [Name], [Patronymic], [Birthday], [TicketId], [PlaceId], [SVoRojd]) VALUES (5, N'sd', N'xc', N'xc', CAST(N'2025-04-13' AS Date), 32, 10, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[ChildTicket] ([Id], [Surname], [Name], [Patronymic], [Birthday], [TicketId], [PlaceId], [SVoRojd]) VALUES (6, N'ывкап', N'вап', N'вапр', CAST(N'2025-04-23' AS Date), 33, 11, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[ChildTicket] ([Id], [Surname], [Name], [Patronymic], [Birthday], [TicketId], [PlaceId], [SVoRojd]) VALUES (7, N'wert', N'erty', N'dfghj', CAST(N'2025-04-18' AS Date), 37, 19, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
INSERT [dbo].[ChildTicket] ([Id], [Surname], [Name], [Patronymic], [Birthday], [TicketId], [PlaceId], [SVoRojd]) VALUES (8, N'ывап', N'апр', N'апро', CAST(N'2025-04-18' AS Date), 38, 12, N'1670237606_grizly-club-p-shablon-svidetelstvo-o-rozhdenii-42.jpg')
SET IDENTITY_INSERT [dbo].[ChildTicket] OFF

SET IDENTITY_INSERT [dbo].[Van] ON
INSERT [dbo].[Van] ([Id], [Name], [TypeCarId]) VALUES (1, N'вагон1', 1)
INSERT [dbo].[Van] ([Id], [Name], [TypeCarId]) VALUES (2, N'вагон2', 2)
INSERT [dbo].[Van] ([Id], [Name], [TypeCarId]) VALUES (3, N'вагон3', 3)
INSERT [dbo].[Van] ([Id], [Name], [TypeCarId]) VALUES (4, N'вагон4', 2)
INSERT [dbo].[Van] ([Id], [Name], [TypeCarId]) VALUES (5, N'вагон5', 3)
INSERT [dbo].[Van] ([Id], [Name], [TypeCarId]) VALUES (6, N'вагон6', 1)
INSERT [dbo].[Van] ([Id], [Name], [TypeCarId]) VALUES (7, N'вагон7', 2)
INSERT [dbo].[Van] ([Id], [Name], [TypeCarId]) VALUES (9, N'вагон8', 3)
INSERT [dbo].[Van] ([Id], [Name], [TypeCarId]) VALUES (10, N'вагон9', 2)
SET IDENTITY_INSERT [dbo].[Van] OFF

SET IDENTITY_INSERT [dbo].[TrainVan] ON
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (1, 1, 1)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (2, 1, 2)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (3, 1, 3)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (4, 2, 4)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (5, 2, 5)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (6, 3, 1)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (7, 3, 2)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (8, 3, 3)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (9, 1, 4)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (10, 1, 6)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (11, 1, 7)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (12, 2, 2)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (13, 2, 3)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (14, 2, 4)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (15, 2, 7)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (17, 2, 9)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (18, 3, 1)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (19, 3, 4)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (20, 3, 5)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (21, 3, 6)
INSERT [dbo].[TrainVan] ([Id], [TrainId], [VanId]) VALUES (22, 3, 9)
SET IDENTITY_INSERT [dbo].[TrainVan] OFF

SET IDENTITY_INSERT [dbo].[VanPlace] ON
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (1, 1, 1)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (2, 1, 2)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (3, 1, 3)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (4, 1, 4)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (5, 1, 6)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (6, 2, 7)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (7, 2, 8)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (8, 2, 9)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (9, 2, 10)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (10, 2, 11)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (11, 3, 12)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (12, 3, 13)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (13, 3, 14)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (14, 3, 15)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (15, 3, 16)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (16, 4, 17)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (17, 4, 18)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (18, 4, 19)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (19, 4, 20)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (22, 5, 1)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (23, 5, 2)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (24, 5, 3)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (25, 5, 4)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (26, 6, 5)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (27, 6, 6)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (28, 6, 7)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (29, 6, 8)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (30, 7, 9)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (31, 7, 10)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (32, 7, 11)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (33, 7, 12)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (34, 7, 13)
INSERT [dbo].[VanPlace] ([Id], [VanId], [PlaceId]) VALUES (35, 7, 14)
SET IDENTITY_INSERT [dbo].[VanPlace] OFF

ALTER TABLE [dbo].[ChildTicket] ADD FOREIGN KEY([PlaceId]) REFERENCES [dbo].[Place] ([Id])
ALTER TABLE [dbo].[ChildTicket] ADD FOREIGN KEY([TicketId]) REFERENCES [dbo].[Ticket] ([Id])
ALTER TABLE [dbo].[Passports] ADD FOREIGN KEY([PassengerId]) REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[RailwayStation] ADD FOREIGN KEY([CityId]) REFERENCES [dbo].[City] ([Id])
ALTER TABLE [dbo].[Ticket] ADD FOREIGN KEY([PassengerId]) REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Ticket] ADD FOREIGN KEY([PlaceId]) REFERENCES [dbo].[Place] ([Id])
ALTER TABLE [dbo].[Ticket] ADD FOREIGN KEY([Status]) REFERENCES [dbo].[Status] ([Id])
ALTER TABLE [dbo].[Ticket] ADD FOREIGN KEY([TripId]) REFERENCES [dbo].[Trip] ([Id])
ALTER TABLE [dbo].[TrainVan] ADD FOREIGN KEY([TrainId]) REFERENCES [dbo].[Train] ([Id])
ALTER TABLE [dbo].[TrainVan] ADD FOREIGN KEY([VanId]) REFERENCES [dbo].[Van] ([Id])
ALTER TABLE [dbo].[Trip] ADD FOREIGN KEY([EndPoint]) REFERENCES [dbo].[RailwayStation] ([Id])
ALTER TABLE [dbo].[Trip] ADD FOREIGN KEY([StartPoint]) REFERENCES [dbo].[RailwayStation] ([Id])
ALTER TABLE [dbo].[Trip] ADD FOREIGN KEY([TrainId]) REFERENCES [dbo].[Train] ([Id])
ALTER TABLE [dbo].[User] ADD FOREIGN KEY([PostId]) REFERENCES [dbo].[Post] ([PostId])
ALTER TABLE [dbo].[Van] ADD FOREIGN KEY([TypeCarId]) REFERENCES [dbo].[TypeCarriage] ([Id])
ALTER TABLE [dbo].[VanPlace] ADD FOREIGN KEY([PlaceId]) REFERENCES [dbo].[Place] ([Id])
ALTER TABLE [dbo].[VanPlace] ADD FOREIGN KEY([VanId]) REFERENCES [dbo].[Van] ([Id])