-----DATE TABLE----
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek]
      --,[EnglishDayNameOfWeek]
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth] AS DayDate
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] 
      ,[EnglishMonthName] AS Month
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MonthNumber
      ,[CalendarQuarter]
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM dbo.DimDate
  WHERE CalendarYear >= 2017
  ORDER BY DateKey ASC
  