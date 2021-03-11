-- Inserting, Updating, and Deleting XML Using the modify() Method 

DECLARE @x xml = 
	'<Product ProductID = "521487">   
	<ProductType>Paper Towels</ProductType>   
	<Price>15</Price>   
	<Vendor>Johnson Paper</Vendor>   
	<VendorID>47</VendorID>   
	<QuantityOnHand>500</QuantityOnHand> </Product>' 
 
SELECT @x 
 
/* inserting data into xml with the modify method */ 
SET @x.modify(' 
 insert <WarehouseID>77</WarehouseID> 
 into (/Product)[1]') 
 
SELECT @x   

/* updating xml with the modify method */
 SET @x.modify(' 
	replace value of (/Product/QuantityOnHand[1]/text())[1] 
	with "250"') 
 
SELECT @x  
 
/* deleting xml with the modify method */ 
SET @x.modify('
 delete (/Product/Price)[1]') 
 
SELECT @x  