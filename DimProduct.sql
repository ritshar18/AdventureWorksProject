----PRODUCT TABLE----
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductID
	  ,ISNULL (pc.[EnglishProductCategoryName], 'Unknown') AS ProductCategory
      ,ISNULL (psc.[EnglishProductSubcategoryName], 'Unknown') AS ProductSubcategory
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS ProductName
      --,[SpanishProductName]
      --,[FrenchProductName]
      ,p.[StandardCost]
      --,[FinishedGoodsFlag]
      ,P.[Color]
      ,p.[SafetyStockLevel]
      ,p.[ReorderPoint]
      ,p.[ListPrice]
      --,[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      --,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      --,[ModelName]
      --,[LargePhoto]
	  ,ISNULL (p.[Status], 'Outdated') AS ProductStatus
      ,p.[EnglishDescription] AS ProductDesc
  FROM dbo.DimProduct AS p
  LEFT JOIN dbo.DimProductSubcategory AS psc ON p.ProductSubcategoryKey = psc.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc	 ON psc.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey ASC