Use Divya_Assignment1
Go

Create table [DAS1].[DimAddress](
				[Address_id] [int] Identity(1,1) Not Null,
				[Address] [Varchar] (1000) Null,
				[City] [Varchar] (255) Null,
				[State] [Varchar] (255) Null,
				
				
PRIMARY KEY CLUSTERED
(
[Address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

