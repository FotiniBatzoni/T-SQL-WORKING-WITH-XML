-- Declaring and Inserting XML Data 

--Run the query 
DECLARE @x xml = 
	'<Product ProductID = "521487">   
	<ProductType>Paper Towels</ProductType>   
	<Price>15</Price>   
	<Vendor>Johnson Paper</Vendor>   
	<VendorID>47</VendorID>   
	<QuantityOnHand>500</QuantityOnHand> </Product>' 
 
SELECT @x 
 
 
SET @x.modify('
 insert <WarehouseID>77</WarehouseID> 
 into (/Product)[1]') 
 
SELECT @x 