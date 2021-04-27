-----CUSTOMER
SELECT c.[CustomerKey]
      ,[CustomerAlternateKey] AS CustomerID
      --,[Title]
      ,[FirstName]
      --,[MiddleName]
      ,[LastName]
	  ,[FirstName] + ' ' + [LastName] AS [Full Name]
      --,[NameStyle]
      ,[BirthDate]
      --,[MaritalStatus]
	  ,CASE [MaritalStatus] WHEN 'M' THEN 'Married' WHEN 'S' THEN 'Single' END AS MaritalStatus
      --,[Suffix]
      --,[Gender]
	  ,g.[City]
	  ,g.[EnglishCountryRegionName] as Country
	  ,CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] c
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
  ORDER BY  CustomerKey ASC