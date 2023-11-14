Use Divya_Assignment1
Go

Create table [DAS1].[DimFruits](
				[Fruit_id] [int] Identity(1,1) Not Null,
				[Fruit] [Varchar] (255) Null,
				[Form] [Varchar] (255) Null,
				[RetailPriceUnit][Varchar] (255) Null,
				[CupEquivalentUnit][Varchar] (255) Null,
				
PRIMARY KEY CLUSTERED
(
[Fruit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO