SELECT [GeographyKey]
      ,[City]
      --,[StateProvinceCode]
      ,[StateProvinceName] AS StateProvince
      ,[CountryRegionCode]
      ,[EnglishCountryRegionName] AS Country
      --,[SpanishCountryRegionName]
      --,[FrenchCountryRegionName]
      ,[PostalCode]
      ,[SalesTerritoryKey]
      --,[IpAddressLocator]
  FROM [AdventureWorksDW2019].[dbo].[DimGeography]