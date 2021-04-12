CREATE TABLE [dbo].[Brands] (
    [BrandId]   INT          IDENTITY (1, 1) NOT NULL,
    [BrandName] VARCHAR (15) NOT NULL,
    PRIMARY KEY CLUSTERED ([BrandId] ASC)
);

CREATE TABLE [dbo].[Cars] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [BrandId]     INT           NOT NULL,
    [ColorId]     INT           NOT NULL,
    [ModelYear]   INT           NOT NULL,
    [DailyPrice]  INT           NOT NULL,
    [Description] NVARCHAR (15) NOT NULL,
    [MinFindeks]  INT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Cars_Brands] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brands] ([BrandId]),
    CONSTRAINT [FK_Cars_Colors] FOREIGN KEY ([ColorId]) REFERENCES [dbo].[Colors] ([ColorId])
);

CREATE TABLE [dbo].[CarImages] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [CarId]     INT            NOT NULL,
    [ImagePath] NVARCHAR (MAX) NULL,
    [ImageDate] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_CarImages_Cars] FOREIGN KEY ([CarId]) REFERENCES [Cars]([Id])
);
