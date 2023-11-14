Use Divya_Assignment1
Go

Create table [DAS1].[DimContact](
				[Contact_id] [int] Identity(1,1) Not Null,
				[Phone] [Varchar] (255) Null,
				[Fax] [Varchar] (255) Null,
				[Email] [Varchar] (255) Null,
				[Website] [Varchar] (255) Null,
				
		PRIMARY KEY CLUSTERED
(
[Contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

