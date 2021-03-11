

--Simple FOR XML PATH Query 
 
USE AdventureWorks2012; 
GO 
 
SELECT p.FirstName,
         p.LastName,         
		 s.Bonus,         
		 s.SalesYTD 
FROM Person.Person p 
JOIN Sales.SalesPerson s 
ON p.BusinessEntityID = s.BusinessEntityID 
FOR XML PATH 