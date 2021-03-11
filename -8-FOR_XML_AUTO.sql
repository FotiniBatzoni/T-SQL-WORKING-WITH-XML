

-- Using AUTO Mode 

 
USE AdventureWorks2012; 
GO 
 
SELECT CustomerID, LastName, FirstName, MiddleName 
FROM Person.Person AS p 
INNER JOIN Sales.Customer AS c 
ON p.BusinessEntityID = c.PersonID 
FOR XML AUTO; 