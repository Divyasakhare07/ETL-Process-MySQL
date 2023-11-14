USE [Divya_Assignment1]
GO

/****** Object:  Table [DAS1].[DimCompany]    Script Date: 11/14/2023 1:14:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DAS1].[DimCompany](
	[Company_id] [int] IDENTITY(1,1) NOT NULL,
	[Address_id] [int] NULL,
	[Contact_id] [int] NULL,
	[Company] [varchar](255) NULL,
	[Common_Name] [varchar](255) NULL,
	[Notes] [varchar](255) NULL,
	[DIG_MEMBER] [varchar](255) NULL,
	[Data_Source] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Company_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [DAS1].[DimCompany]  WITH CHECK ADD  CONSTRAINT [FK_Address_id] FOREIGN KEY([Address_id])
REFERENCES [DAS1].[DimAddress] ([Address_id])
GO

ALTER TABLE [DAS1].[DimCompany] CHECK CONSTRAINT [FK_Address_id]
GO

ALTER TABLE [DAS1].[DimCompany]  WITH CHECK ADD  CONSTRAINT [FK_Contact_id] FOREIGN KEY([Contact_id])
REFERENCES [DAS1].[DimContact] ([Contact_id])
GO

ALTER TABLE [DAS1].[DimCompany] CHECK CONSTRAINT [FK_Contact_id]
GO




