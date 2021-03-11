

-- Using the value() Method 

USE AdventureWorks2012; 
GO 
 
SELECT Demographics.value('declare namespace ss =  
	"http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey"; 
	(/ss:StoreSurvey/ss:BankName)[1]', 'varchar(100)') AS Result
FROM Sales.Store 