/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) p.[ProductKey]
      ----,[ProductAlternateKey]
      ----,[ProductSubcategoryKey]
      ----,[WeightUnitMeasureCode]
      ----,[SizeUnitMeasureCode]
      ,p.[EnglishProductName]
      ----,[SpanishProductName]
      ----,[FrenchProductName]
      ,p.[StandardCost]
      ---,[FinishedGoodsFlag]
      ,p.[Color]
      ,p.[SafetyStockLevel]
      ,p.[ReorderPoint]
      ,p.[ListPrice]
      ,p.[Size]
      ,p.[SizeRange]
      ,p.[Weight]
      ,p.[DaysToManufacture]
      ,p.[ProductLine]
      ,p.[DealerPrice]
      ,p.[Class]
      ,p.[Style]
      ,p.[ModelName]
      ----,[LargePhoto]
      ----,[EnglishDescription]
      ----,[FrenchDescription]
      ----,[ChineseDescription]
      ----,[ArabicDescription]
      ----,[HebrewDescription]
      ----,[ThaiDescription]
      ----,[GermanDescription]
      ----,[JapaneseDescription]
      ----,[TurkishDescription]
      ----,[StartDate]
      ----,[EndDate]
      ,[Status]
	  
  FROM[dbo].[DimProduct] as p
  left join dbo.DimProductSubcategory as ps ON p.ProductSubcategoryKey=ps.ProductSubcategoryKey
  left join dbo.DimProductCategory as pc ON ps.ProductCategoryKey=pc.ProductCategoryKey
  order by p.ProductKey asc