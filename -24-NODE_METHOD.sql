

-- Shredding XML Using the node() Method 

USE AdventureWorks2012; 
GO 
 
SELECT Name,         
	SalesPersonID,        
	AnnualSales.query('.') AS XMLResult 
FROM Sales.Store 
CROSS APPLY 
Demographics.nodes('declare namespace ss =  
"http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey"; 
/ss:StoreSurvey/ss:AnnualSales') AS NodeTable(AnnualSales) 