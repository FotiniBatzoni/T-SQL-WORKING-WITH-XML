
--Use OPENXML to produce a table from the following XML document. Make sure you return all elements and attributes. 
--(HINT: You will need to use the rowpattern option.)


DECLARE @X INT
DECLARE @DOC VARCHAR(1000)=N'
<Company>    
	<Employee EmployeeID="56">        
		<Department>Accounting</Department>       
		<YearsofService>10</YearsofService>        
		<ManagerID>5</ManagerID>           
			<PayScale>                  
				<PayLevelID>8</PayLevelID>                  
				<YearlyBonusPct>2.5</YearlyBonusPct>                 
				</PayScale>    
	</Employee> 
</Company>'

EXEC sp_xml_preparedocument @X output,@DOC

SELECT*
FROM OPENXML (@X,N'/COMPANY/EMPLOYEE/PAYSCALE/YearlyBonusPct/PayLevelID/')
WITH (EMPLOYEEID INT '@EMPLOYEEID',
	  Department VARCHAR(20) '../@DepartmenT',
	  YearsofService INT '../../@ YearsofService'  ,
	  ManagerID INT '@ManagerID',
	  PayScale INT '@PayScale',
	  PayLevelID INT '@PayLevelID',
	  YearlyBonusPct INT '@YearlyBonusPct ')

--EXEC sp_xml_removedocument @X