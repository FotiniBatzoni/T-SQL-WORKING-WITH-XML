


--Write a SELECT query with a FOR XML clause that pulls the Name and ListPrice from the Production.Product table. 
--Use the same query but display the results as attribute-centric--


SELECT NAME,LISTPRICE
FROM PRODUCTION.PRODUCT
FOR XML RAW