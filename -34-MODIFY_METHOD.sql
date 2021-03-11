

--Use the XML declared in the variable for Listing 8-18 for the following exercises:
--          a. Use the modify() method to delete the QuantityOnHand.          
--			b. Use the modify() method to insert an element named VendorZipCode. Give it a value of 63512. 
--          c. Use the modify() method to update the VendorID to a value of 65. 


USE AdventureWorks2012; 
GO 
 
 DECLARE @x xml = '
 <Product ProductID = "521487">   
 <ProductType>Paper Towels</ProductType>   
 <Price>15</Price>   
 <Vendor>Johnson Paper</Vendor>   
 <VendorID>47</VendorID>   
 <QuantityOnHand>500</QuantityOnHand> 
 </Product>' 
 
SELECT @x 

SET @x.modify('
replace value of (/Product/VendorID[1]/text())[1]
with "65"')

SELECT @x