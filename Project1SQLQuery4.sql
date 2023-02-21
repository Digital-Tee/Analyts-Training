--What are the regional sales in the best performing country? Adventureworks 2019 Database
SELECT CountryRegionCode,name AS Region, sum(SalesYTD) AS Sales
FROM Sales.SalesTerritory
GROUP BY CountryRegionCode, name;
--Query result shows US as best performing country
--Select regional sales on the US 
SELECT name AS Region, SalesYTD AS Sales
FROM Sales.SalesTerritory
WHERE CountryRegionCode  IN  ('US')
ORDER BY SalesYTD;
