---TERRITORY GEOGRAPHY----
SELECT st.[SalesTerritoryKey] 
	  ,g.[GeographyKey]
      ,g.[City]
      ,g.[StateProvinceCode]
      ,g.[StateProvinceName]
	  ,st.[SalesTerritoryRegion] AS CountryRegion
      ,g.[CountryRegionCode]
      ,g.[EnglishCountryRegionName] AS CountryName
      --,[SpanishCountryRegionName]
      --,[FrenchCountryRegionName]
      ,g.[PostalCode]
      --,[IpAddressLocator]
  FROM dbo.DimGeography AS g
  LEFT JOIN dbo.DimSalesTerritory AS st ON g.SalesTerritoryKey = st.SalesTerritoryKey
  ORDER BY st.SalesTerritoryKey ASC