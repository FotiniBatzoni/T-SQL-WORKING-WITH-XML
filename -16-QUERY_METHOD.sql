

-- Using the query() Method Against XML Data --Run query 
 
USE AdventureWorks2012;
 GO 
 
SELECT Demographics.query('declare namespace ss = 
		"http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey"; 
		<Store AnnualSales = "{ /ss:StoreSurvey/ss:AnnualSales }"        
		BankName = "{ /ss:StoreSurvey/ss:BankName }" />  ') AS Result 
		FROM Sales.Store;