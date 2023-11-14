USE [Divya_Assignment1]
GO

CREATE TABLE [DAS1].[Fruits](
	[Fruit_id] [int] NOT NULL,
	[Fruit] [varchar](50) NOT NULL,
	[Form] [varchar](50) NOT NULL,
	[RetailPrice] [decimal](6, 2) NOT NULL,
	[RetailPriceUnit] [varchar](50) NOT NULL,
	[Yield] [decimal](3, 2) NOT NULL,
	[CupEquivalentSize] [decimal](5, 4) NOT NULL,
	[CupEquivalentUnit] [varchar](50) NOT NULL,
	[CupEquivalentPrice] [decimal](5, 4) NOT NULL,
	CONSTRAINT PK_Fruit_id PRIMARY KEY (Fruit_id)
	);

CREATE TABLE [DAS1].[Grocery_store](
	[OBJECTID] [int] NOT NULL,
	[Company] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[ZipCode] [int] NOT NULL,
	[Better_Lat] [decimal](10, 6) NULL,
	[Better_Long] [decimal](10, 6) NULL,
	[SquareFeet] [decimal](10, 5) NULL,
	[Common_Name] [varchar](50) NULL,
	[Notes] [varchar](50) NULL,
	[PHONE] [varchar](50) NULL,
	[FAX] [varchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[WEBSITE] [varchar](50) NULL,
	[DIG_MEMBER] [varchar](50) NULL,
	[Data_Source] [varchar](50) NULL,
	[Centroid_X] [decimal](10, 8) NULL,
	[Centroid_Y] [decimal](10, 8) NULL,
	[ORIG_FID] [int] NULL,
	[Fruit_id] [int] NOT NULL,
	CONSTRAINT PK_OBJECTID PRIMARY KEY (OBJECTID),
	CONSTRAINT FK_Fruit_id FOREIGN KEY (Fruit_id) REFERENCES [DAS1].[Fruits](Fruit_id)
	);


