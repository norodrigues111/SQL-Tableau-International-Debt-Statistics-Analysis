--SQL-International-Debt-Statistics-Analysis
	--This repository houses an analysis of international debt data supplied by The World Bank. 
	--The dataset includes details about the indebtedness (in USD) of developing countries, classified under various indicators. 
	--The aim of this analysis is to delve into and address fundamental inquiries concerning international debt.

SELECT TOP (1000) [country_name]
      ,[country_code]
      ,[indicator_name]
      ,[indicator_code]
      ,[debt]
  FROM [PortfolioProject].[dbo].[international_debt]

--Total Debt Analysis:
--1.	How many distinct countries are there in the dataset?
SELECT COUNT(DISTINCT country_code) as Total_of_Countries
FROM PortfolioProject.dbo.international_debt

--2.	What is the total amount of debt owed by the countries listed in the dataset?
SELECT SUM(debt) as Total_Debt
FROM PortfolioProject.dbo.international_debt

--Maximum Debt Holder:
--3.	Which country owns the maximum amount of debt, and what is the corresponding amount?
SELECT TOP 1 country_name, sum(debt) as Total_Debt
FROM PortfolioProject.dbo.international_debt
GROUP BY country_name
ORDER BY Total_Debt DESC

--Average Debt Across Indicators:
--4.	What are the distinct debt indicators identified in the dataset?
SELECT DISTINCT indicator_code, indicator_name
FROM PortfolioProject.dbo.international_debt

--5.	What is the most frequently encountered debt indicator?
SELECT indicator_code, indicator_name, COUNT(country_name) as num_country_by_indicator
FROM PortfolioProject.dbo.international_debt
GROUP BY indicator_code, indicator_name
ORDER BY num_country_by_indicator DESC

--6.	What is the average amount of debt owed by countries, categorized by different debt indicators?
SELECT indicator_code,indicator_name, AVG(debt) as Avg_debt_by_indicator
FROM PortfolioProject.dbo.international_debt
GROUP BY indicator_code, indicator_name
ORDER BY Avg_debt_by_indicator DESC

--Repayments Analysis: 
--7.	What is the highest number of principal repayments observed in the dataset?
SELECT TOP 1 country_name, indicator_name, debt
FROM PortfolioProject.dbo.international_debt
WHERE indicator_name LIKE '%principal repayment%'
ORDER BY debt DESC

