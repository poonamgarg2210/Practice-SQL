SELECT * FROM Sales.Customer

SELECT * FROM Sales.vIndividualCustomer

SELECT * FROM Person.Person

--Where BusinessEntityID = 29825

SELECT * FROM [Person].[EmailAddress]

SELECT * FROM [Person].[PersonPhone]

SELECT * From Production.Product

SELECT * From Production.WorkOrder

SELECT * From Production.ProductPhoto

SELECT * From Production.ProductProductPhoto

SELECT * From Production.ProductCategory

SELECT * From [Production].[ProductSubcategory]

SELECT * From Production.ProductCostHistory

SELECT * FROM [HumanResources].[EmployeeDepartmentHistory]

SELECT * FROM Sales.SalesOrderHeader

SELECT CustomerID, TotalDue FROM Sales.SalesOrderHeader WHERE  


SELECT * FROM Sales.SalesOrderDetail

SELECT TOP 5 ProductID, SUM(OrderQty) AS [No of Units Sold]
FROM Sales.SalesOrderDetail
Group By ProductID
Order BY Sum(OrderQty) DESC


SELECT * FROM [Purchasing].[PurchaseOrderDetail]

SELECT * FROM HumanResources.Employee

SELECT * FROM HumanResources.vEmployee

SELECT * FROM [HumanResources].[Department]

SELECT * FROM [Person].[EmailAddress]

SELECT * FROM Production.ProductListPriceHistory

SELECT * FROM Purchasing.Vendor



