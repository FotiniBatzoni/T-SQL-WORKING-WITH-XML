-- Using AUTO Mode with ELEMENTS Option 
 
USE AdventureWorks2012; 
GO 
 
SELECT CustomerID, LastName, FirstName, MiddleName 
FROM Person.Person AS Person 
INNER JOIN Sales.Customer AS Customer 
ON Person.BusinessEntityID = Customer.PersonID 
FOR XML AUTO, ELEMENTS; 