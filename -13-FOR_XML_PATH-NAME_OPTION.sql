

-- Simple FOR XML PATH Query with NAME Option 

USE AdventureWorks2012;
 GO 
 
SELECT ProductID "@ProductID",
        Name "Product/ProductName",        
		Color "Product/Color" 
FROM Production.Product 
FOR XML PATH ('Product') 