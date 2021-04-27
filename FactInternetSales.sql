--------FACT INTERNET SALES------
SELECT s.[ProductKey]
      ,s.[OrderDateKey]
      ,s.[DueDateKey]
      ,s.[ShipDateKey]
	  ,s.[CustomerKey]
	  --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
      --,[CustomerKey]
      --,[PromotionKey]
      --,[CurrencyKey]
      ,st.[SalesTerritoryCountry]
      ,s.[SalesOrderNumber]
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      ,s.[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      ,s.[ProductStandardCost]
      ,s.[TotalProductCost]
      ,s.[SalesAmount] AS Sales
      ,s.[TaxAmt] AS Tax
      ,s.[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
  FROM dbo.FactInternetSales AS s
  LEFT JOIN dbo.DimSalesTerritory AS st ON s.SalesTerritoryKey = st.SalesTerritoryKey
  WHERE LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -5 --bring 5 years from current date
  ORDER BY s.OrderDateKey ASC