/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
       [DateKey]
      ,[FullDateAlternateKey] as date
      ,[DayNumberOfWeek] as weeknr
      ,[EnglishDayNameOfWeek] as day
      ----,[SpanishDayNameOfWeek] 
      ----,[FrenchDayNameOfWeek]
      ----,[DayNumberOfMonth]
      ----,[DayNumberOfYear]
      ----,[WeekNumberOfYear]
      ,[EnglishMonthName] as month
      ----,[SpanishMonthName]
      ----,[FrenchMonthName]
      ----,[MonthNumberOfYear]
      ,[CalendarQuarter] as quarter
      ,[CalendarYear] as year
      ----,[CalendarSemester]
      ----,[FiscalQuarter]
      ----,[FiscalYear]
      ----,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]