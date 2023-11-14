Use Divya_Assignment1
Go

Create table [DAS1].[Source_Data_Staging](
				[Source_StagingID] [int] Identity(1,1) Not Null,
				[Address_id] [int] Null,
				[Address] [Varchar] (1000) Null,
				[City] [Varchar] (255) Null,
				[State] [Varchar] (255) Null,
				[Zipcode] [int] Null,
				[Contact_id] [int] Null,
				[Phone] [Varchar] (255) Null,
				[Fax] [Varchar] (255) Null,
				[Email] [Varchar] (255) Null,
				[Website] [Varchar] (255) Null,
				[Company_id] [int] Null,
				[Company] [Varchar] (255) Null,
				[Common_Name] [Varchar] (255) Null,
				[Notes] [Varchar] (255) Null,
				[DIG_MEMBER] [Varchar] (255) Null,
				[Data_Source] [Varchar] (255) Null,
				[OBJECTID] [int] Null,
				[Better_Lat] Float Null,
				[Better_Long] Float Null,
				[SquareFeet] Float Null,
				[Centroid_Y] Float Null,
				[Centroid_X] Float Null,
				[ORIG_FID] [int] Null,
				[Fruit_id] [int] Null,
				[Fruit] [Varchar] (255) Null,
				[Form] [Varchar] (255) Null,
				[RetailPrice] Float Null,
				[RetailPriceUnit][Varchar] (255) Null,
				[Yield]Float Null,
				[CupEquivalentSize]Float Null,
				[CupEquivalentUnit][varchar](255) Null,
				[CupEquivalentPrice]Float Null,
		PRIMARY KEY CLUSTERED
(
[Source_StagingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

