--Question 4 What is the relationship between sick leave and JobTitle(PersonType)From Adventureworks 2019 Database
--SELECT the relevant datacolumns
SELECT e.JobTitle, COUNT(P.PersonType) AS PersonType, AVG(e.SickLeaveHours) AS AverageSickLeaveHours
FROM HumanResources.Employee AS e
JOIN Person.Person AS p
ON e.BusinessEntityID = p.BusinessEntityID
GROUP BY e.JobTitle
--Reduce job categories for easier visualization
HAVING COUNT(p.PersonType) > 1
ORDER BY AverageSickLeaveHours, PersonType;