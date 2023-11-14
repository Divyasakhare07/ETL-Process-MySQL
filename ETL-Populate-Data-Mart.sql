USE Divya_Assignment1
Go


-- Get Address data from Staging Table and Load into DimAddress
INSERT INTO DAS1.DimAddress([Address],[City],[State])
SELECT
DISTINCT [Address],[City],[State]
FROM [DAS1].[Source_Data_Staging]
ORDER BY [Address] ASC


-- UPDATE AddressID in Staging table
UPDATE DAS1.Source_Data_Staging
SET DAS1.Source_Data_Staging.Address_id = DAS1.DimAddress.Address_id
FROM DAS1.Source_Data_Staging
INNER JOIN DAS1.DimAddress ON
DAS1.Source_Data_Staging.[Address] = DAS1.DimAddress.[Address]



-- Get Fruits data from Staging Table and Load into DimFruit
INSERT INTO DAS1.DimFruits([Fruit],[Form],[RetailPriceUnit],[CupEquivalentUnit])
SELECT
DISTINCT [Fruit],[Form],[RetailPriceUnit],[CupEquivalentUnit]
FROM DAS1.[Source_Data_Staging]
ORDER BY [Fruit] ASC


-- UPDATE FruitID in Staging table
UPDATE DAS1.Source_Data_Staging
SET DAS1.Source_Data_Staging.Fruit_id = DAS1.DimFruits.Fruit_id
FROM DAS1.Source_Data_Staging
INNER JOIN DAS1.DimFruits ON
DAS1.Source_Data_Staging.[Fruit] = DAS1.DimFruits.[Fruit]



-- Get Contact data from Staging Table and Load into DimContact

INSERT INTO DAS1.DimContact([Phone],[Fax],[Email],[Website])
SELECT
DISTINCT [Phone],[Fax],[Email],[Website]
FROM DAS1.[Source_Data_Staging]
ORDER BY [Phone] ASC

-- UPDATE ContactID in Staging table
UPDATE DAS1.Source_Data_Staging
SET DAS1.Source_Data_Staging.Contact_id = DAS1.DimContact.Contact_id
FROM DAS1.Source_Data_Staging
INNER JOIN DAS1.DimContact ON
DAS1.Source_Data_Staging.[Phone] = DAS1.DimContact.[Phone]


-- Get Address id,Contact id,Fruit id and company data from Staging Table and Load into DimCompany

INSERT INTO DAS1.DimCompany([Company],[Address_id],[Contact_id],[Fruit_id],[Common_Name],[Notes],[DIG_MEMBER],[Data_Source])
SELECT
DISTINCT [Company],[Address_id],[Contact_id],[Fruit_id],[Common_Name],[Notes],[DIG_MEMBER],[Data_Source]
FROM DAS1.Source_Data_Staging
ORDER BY [Company] ASC


-- UPDATE Company id in Staging Table
UPDATE DAS1.Source_Data_Staging
SET DAS1.Source_Data_Staging.Company_id = DAS1.DimCompany.Company_id
FROM DAS1.Source_Data_Staging
INNER JOIN DAS1.DimCompany ON DAS1.Source_Data_Staging.[Company] =DAS1.DimCompany.[Company]
AND DAS1.Source_Data_Staging.[Address_id] = DAS1.DimCompany.[Address_id]
AND DAS1.Source_Data_Staging.[Contact_id] = DAS1.DimCompany.[Contact_id]
AND DAS1.Source_Data_Staging.[Fruit_id] = DAS1.DimCompany.[Fruit_id]



-- Load FACT Table with all of the appropriate data from the Staging table
INSERT INTO DAS1.[FactGrocery]
([Company_id]
,[OBJECTID]
,[Better_Lat]
,[Better_Long]
,[SquareFeet]
,[Centroid_Y]
,[Centroid_X]
,[ORIG_FID]
,[Yield]
,[RetailPrice]
,[CupEquivalentSize]
,[CupEquivalentPrice]
,[Zipcode])
SELECT
[Company_id]
,[OBJECTID]
,[Better_Lat]
,[Better_Long]
,[SquareFeet]
,[Centroid_Y]
,[Centroid_X]
,[ORIG_FID]
,[Yield]
,[RetailPrice]
,[CupEquivalentSize]
,[CupEquivalentPrice]
,[Zipcode]
FROM DAS1.[Source_Data_Staging]


