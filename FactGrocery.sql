USE [Divya_Assignment1]
GO

/****** Object:  Table [DAS1].[FactGrocery]    Script Date: 11/14/2023 1:15:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DAS1].[FactGrocery](
	[GroceryFact_id] [int] IDENTITY(1,1) NOT NULL,
	[Company_id] [int] NULL,
	[Fruit_id] [int] NULL,
	[OBJECTID] [int] NULL,
	[Better_Lat] [float] NULL,
	[Better_Long] [float] NULL,
	[SquareFeet] [float] NULL,
	[Centroid_Y] [float] NULL,
	[Centroid_X] [float] NULL,
	[ORIG_FID] [int] NULL,
	[Yield] [float] NULL,
	[RetailPrice] [float] NULL,
	[CupEquivalentSize] [float] NULL,
	[CupEquivalentPrice] [float] NULL,
	[Zipcode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroceryFact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [DAS1].[FactGrocery]  WITH CHECK ADD  CONSTRAINT [FK_Company_id] FOREIGN KEY([Company_id])
REFERENCES [DAS1].[DimCompany] ([Company_id])
GO

ALTER TABLE [DAS1].[FactGrocery] CHECK CONSTRAINT [FK_Company_id]
GO


ALTER TABLE [DAS1].[FactGrocery]  WITH CHECK ADD  CONSTRAINT [FK1_Fruit_id] FOREIGN KEY([Fruit_id])
REFERENCES [DAS1].[DimFruits] ([Fruit_id])
GO

ALTER TABLE [DAS1].[FactGrocery] CHECK CONSTRAINT [FK1_Fruit_id]
GO