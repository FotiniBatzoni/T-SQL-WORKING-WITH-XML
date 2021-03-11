
-- Defining XML Hierarchy Using PATH Mode 

 
USE AdventureWorks2012;
 GO 
 
SELECT p.FirstName "@FirstName",
         p.LastName "@LastName",             
		 s.Bonus "Sales/Bonus",            
		 s.SalesYTD "Sales/YTD" 
FROM Person.Person p 
JOIN Sales.SalesPerson s 
ON p.BusinessEntityID = s.BusinessEntityID
FOR XML PATH 