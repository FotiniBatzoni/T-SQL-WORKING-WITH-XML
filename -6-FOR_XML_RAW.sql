
--Generating XML Using the FOR XML RAW Command 

USE AdventureWorks2012; 
GO 
 
SELECT TOP 5 FirstName  
FROM Person.Person 
FOR XML RAW;