 USE AdventureWorks2012; 
 GO 
 

--Using the exist() Method

SELECT Demographics.value('declare namespace ss =  
	"http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey"; 
	(/ss:StoreSurvey/ss:BankName)[1]', 'varchar(100)') AS LargeAnnualSales 
FROM Sales.Store 
WHERE Demographics.exist('declare namespace ss = 
"http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey";
 /ss:StoreSurvey/ss:AnnualSales [. = 3000000]') = 1 