

--Attribute-Centric Mapping 
 
DECLARE @hdoc int 
DECLARE @doc varchar(1000) = N' 
	<Orders>    
	<Order OrderID="123458">          
	<ProductID>32565451</ProductID>         
	<ProductName>Bicycle Pump</ProductName>          
	<SalesID>5</SalesID>                  
	<OrderDetail>                           
	<CustomerID>22</CustomerID>                          
	<Quantity>12</Quantity>                 
	</OrderDetail> 
    </Order> </Orders>'; 
 
EXEC sp_xml_preparedocument @hdoc OUTPUT, @doc 
 
SELECT * 
FROM OPENXML(@hdoc, N'/Orders/Order', 1) 
WITH (ProductID int,      
	  ProductName varchar(30),          
	  SalesID varchar(10),         
	   OrderID int,          
	   CustomerID int); 
 
EXEC sp_xml_removedocument @hdoc; 