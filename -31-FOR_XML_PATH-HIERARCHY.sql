


--Write a SELECT query with a FOR XML clause that pulls the Name and ListPrice from the Production.Product table. 
--Use the same query but display the results as attribute-centric--

--Modify the following SELECT statement to use the PATH mode.
-- Make FirstName and LastName an attribute of Person and make JobTitle and Gender elements under a node called Employee

SELECT P.FIRSTNAME "@FIRSTNAME",
		P.LASTNAME "@LASTNAME" ,
		E.JOBTITLE "@JOBTITLE",
		E.GENDER "@GENDER"
FROM Person.Person AS P
INNER JOIN HumanResources.Employee AS E
ON P.BusinessEntityID=E.BusinessEntityID
FOR XML PATH

