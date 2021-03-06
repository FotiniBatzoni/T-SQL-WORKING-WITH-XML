


-- OPENXML Query 


DECLARE @hdoc int 
DECLARE @doc varchar(1000) = N' 
	<Products> <Product ProductID="32565451" ProductName="Bicycle Pump">    
	<Order ProductID="32565451" SalesID="5" OrderDate="2011-07-04T00:00:00">       
	<OrderDetail OrderID="10248" CustomerID="22" Quantity="12"/>       
	<OrderDetail OrderID="10248" CustomerID="11" Quantity="10"/>    
	</Order> </Product> <Product ProductID="57841259" ProductName="Bicycle Seat">    
	<Order ProductID="57841259" SalesID="3" OrderDate="2011-08-16T00:00:00"> 
    <OrderDetail OrderID="54127" CustomerID="72" Quantity="3"/>    
	</Order> </Product> </Products>'; 
 
EXEC sp_xml_preparedocument @hdoc OUTPUT, @doc 
 
SELECT * FROM OPENXML(@hdoc, N'/Products/Product'); 
 
EXEC sp_xml_removedocument @hdoc; 