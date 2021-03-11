

-- Use of ColPattern in the WITH Clause

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
				</Order> 
		</Orders>'; 
 
EXEC sp_xml_preparedocument @hdoc OUTPUT, @doc 
 
SELECT * 
FROM OPENXML(@hdoc, N'/Orders/Order/OrderDetail') 
WITH (ProductID int '../ProductID', 
     ProductName varchar(30) '../ProductName',      
	 SalesID varchar(10) '../SalesID',      
	 OrderID int '../@OrderID',      
	 CustomerID int 'CustomerID'); 
 
--EXEC sp_xml_removedocument @hdoc; 