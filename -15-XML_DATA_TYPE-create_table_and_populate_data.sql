

--Let’s now create a table with an XML column and populate it with some data. 

-- Using XML as a Data Type 

USE AdventureWorks2012;
 GO 
 
--1 
CREATE TABLE #CustomerList (CustomerInfo XML); 
 
--2 
DECLARE @XMLInfo XML; 
 
--3 
SET @XMLInfo = (SELECT CustomerID, LastName, FirstName, MiddleName 
				FROM Person.Person AS p  
				INNER JOIN Sales.Customer AS c 
				ON p.BusinessEntityID = c.PersonID  
				FOR XML PATH); 
 

--4 
INSERT INTO #CustomerList(CustomerInfo) 
VALUES(@XMLInfo); 
 
--5
 SELECT CustomerInfo 
 FROM #CustomerList; 

DROP TABLE #CustomerList;