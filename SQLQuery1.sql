
CREATE TABLE [dbo].[Cars] 
(
    [Id]          INT       NOT NULL,
    [BrandId]     INT       NOT NULL,
    [ColorId]     INT       NOT NULL,
    [ModelYear]   INT           NULL,
    [DailyPrice]  INT           NULL,
    [Description] NVARCHAR (15) NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (BrandId) REFERENCES Brands(BrandId),
    FOREIGN KEY (ColorId) REFERENCES Colors(ColorId),
);

INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (1, 1, 1, 2020, 350, 'Megane')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (2, 1, 2, 2019, 250, 'Clio SW')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (3, 1, 1, 2021, 375, 'Megane')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (4, 1, 1, 2021, 275, 'Clio')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (5, 2, 1, 2018, 225, 'Egea HB')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (6, 2, 1, 2020, 350, 'Egea SW')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (7, 2, 4, 2020, 350, 'Egea')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (8, 2, 4, 2020, 350, 'Egea')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (9, 3, 2, 2020, 350, 'Focus Sedan')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (10, 3, 2, 2020, 350, 'Focus SW')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (11, 3, 1, 2020, 350, 'Focus SW')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (12, 3, 1, 2020, 350, 'Focus Sedan')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (13, 4, 1, 2020, 250, 'Accent')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (14, 4, 1, 2020, 400, 'Elantra')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (15, 11, 1, 2021, 350, 'Astra')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (16, 11, 4, 2021, 350, 'Corsa')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (17, 6, 1, 2021, 425, 'Corolla')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (18, 6, 4, 2020, 400, 'Corolla')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (19, 6, 3, 2017, 250, 'Auris')
INSERT INTO [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [Description]) VALUES (20, 6, 3, 2016, 350, 'Yaris')


CREATE TABLE [dbo].[Brands] 
(
    [BrandId]   INT           NOT NULL,
    [BrandName] VARCHAR (15),
    PRIMARY KEY (BrandId)
);

INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (1, 'Renault')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (2, 'Fiat')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (3, 'Ford')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (4, 'Hyundai')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (5, 'Honda')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (6, 'Toyota')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (7, 'Volkswagen')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (8, 'Audi')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (9, 'Peugeot')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (10, 'Mercedes')
INSERT INTO [dbo].[Brands] ([BrandId], [BrandName]) VALUES (11, 'Opel')


CREATE TABLE [dbo].[Colors] 
(
    [ColorId]     INT       NOT NULL,
    [ColorName]   NVARCHAR (15) NULL,
    PRIMARY KEY (ColorId)
);

INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (1, 'Beyaz')
INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (2, 'Siyah')
INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (3, 'Kirmizi')
INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (4, 'Metalik')
INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (5, 'Bordo')
INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (6, 'Lacivert')
INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (7, 'Gece Mavisi')
INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (8, 'Prusya Mavisi')
INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (9, 'Petrol Mavisi')
INSERT INTO [dbo].[Colors] ([ColorId], [ColorName]) VALUES (10, 'Antrasit')

CREATE TABLE [dbo].[Users] 
(
    [Id]          INT       NOT NULL,
    [FirstName]   NVARCHAR (15) NOT NULL,
    [LastName]    NVARCHAR (15) NOT NULL,
    [Email]       NVARCHAR (30) NOT NULL,
    [Password]    NVARCHAR (15) NOT NULL,
    PRIMARY KEY (Id)
);

INSERT INTO [dbo].[Users] VALUES (1, 'Ahmet', 'Kara', 'ahmetkara@xmail.com', '1111')
INSERT INTO [dbo].[Users] VALUES (2, 'Mehmet', 'Kara', 'mehmetkara@xmail.com', '2222')
INSERT INTO [dbo].[Users] VALUES (3, 'Ali', 'Kara', 'alikara@xmail.com', '3333')
INSERT INTO [dbo].[Users] VALUES (4, 'Celal', 'Adan', 'celaladan@xmail.com', '4444')
INSERT INTO [dbo].[Users] VALUES (5, 'Hasan', 'Hüseyin', 'hasanhuseyin@xmail.com', '5555')


CREATE TABLE [dbo].[Customers] 
(
    [Id]          INT       NOT NULL,
    [UserId]      INT       NOT NULL,
    [CompanyName] NVARCHAR (40) NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (UserId) REFERENCES Users(Id),
);

INSERT INTO [dbo].[Customers] VALUES (1, 5, 'ABC Tekstil A.Ş.')
INSERT INTO [dbo].[Customers] VALUES (2, 4, 'Omega Boya Ltd.Şti.')
INSERT INTO [dbo].[Customers] VALUES (3, 2, 'Damla Kimya Ltd.Şti')
INSERT INTO [dbo].[Customers] VALUES (4, 3, 'Kimsel Dış Ticaret A.Ş.')
INSERT INTO [dbo].[Customers] VALUES (5, 3, 'Petrol Kimya A.Ş.')
INSERT INTO [dbo].[Customers] VALUES (6, 4, 'Gelişim Bilgisayar Ltd.Şti.')
INSERT INTO [dbo].[Customers] VALUES (7, 1, 'Artı İnşaat Ltd.Şti')
INSERT INTO [dbo].[Customers] VALUES (8, 2, 'Eksen Gıda A.Ş.')
INSERT INTO [dbo].[Customers] VALUES (9, 1, 'Aktan Otomotiv Ltd.Şti.')
INSERT INTO [dbo].[Customers] VALUES (10, 1, 'Uzay İletişim A.Ş.')

 
CREATE TABLE [dbo].[Rentals] 
(
    [Id]          INT       NOT NULL,
    [CarId]       INT       NOT NULL,
    [CustomerId]  INT       NOT NULL,
    [RentDate]    DATETIME  NOT NULL,
    [ReturnDate]  DATETIME      NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (CarId) REFERENCES Cars(Id),
    FOREIGN KEY (CustomerId) REFERENCES Customers(Id),
);

INSERT INTO [dbo].[Rentals] VALUES (1, 4, 3, '2020-12-25 12:00:00', '2020-12-28 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (2, 19, 4, '2021-02-13 12:00:00', '2021-02-14 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (3, 5, 5, '2021-02-06 12:00:00', '2021-02-09 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (4, 3, 6, '2021-02-01 12:00:00', '2021-02-01 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (5, 1, 7, '2021-02-01 12:00:00', '2021-02-05 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (6, 7, 8, '2021-02-02 12:00:00', '2021-02-06 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (7, 9, 9, '2021-02-11 12:00:00', '2021-02-13 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (8, 11, 10, '2021-02-05 12:00:00', '2021-02-07 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (9, 13, 1, '2021-02-04 12:00:00', '2021-02-08 12:00:00')
INSERT INTO [dbo].[Rentals] ([Id], [CarId], [CustomerId], [RentDate]) VALUES (10, 15, 2, '2021-02-25 12:00:00')
INSERT INTO [dbo].[Rentals] ([Id], [CarId], [CustomerId], [RentDate]) VALUES (11, 17, 6, '2021-02-11 12:00:00')
INSERT INTO [dbo].[Rentals] ([Id], [CarId], [CustomerId], [RentDate]) VALUES (12, 20, 4, '2021-02-12 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (13, 2, 8, '2021-02-01 12:00:00', '2021-02-03 12:00:00')
INSERT INTO [dbo].[Rentals] ([Id], [CarId], [CustomerId], [RentDate]) VALUES (14, 6, 3, '2021-02-10 12:00:00')
INSERT INTO [dbo].[Rentals] VALUES (15, 8, 1, '2021-02-09 12:00:00', '2021-02-10 12:00:00')

