SELECT * FROM Sales.Customer

SELECT * FROM Sales.

SELECT PC.Name CategoryName, count(distinct(p.Name))
FROM Production.Product P 
JOIN Production.ProductSubcategory PS 
ON P.ProductSubcategoryID = PS. ProductSubcategoryID
JOIN Production.ProductCategory PC 
ON P.ProductSubcategoryID = PC.ProductCategoryID
GROUP BY PC.Name, P.Name
order by count(p.name) desc









SELECT * FROM Person.Person
SELECT * FROM [Person].[EmailAddress]
SELECT * FROM [Person].[PersonPhone]




SELECT * From Production.Product

SELECT ProductSubcategoryID, ProductID, Name
FROM Production.Product

SELECT ProductCategoryID, Name FROM [Production].[ProductCategory]

SELECT * From Production.ProductCategory
SELECT * From [Production].[ProductSubcategory]

SELECT PC.Name CategoryName, PS.Name SubCategoryName, P.Name ProductName  
FROM Production.Product P 
JOIN Production.ProductSubcategory PS 
ON P.ProductSubcategoryID = PS. ProductSubcategoryID
JOIN Production.ProductCategory PC 
ON P.ProductSubcategoryID = PC.ProductCategoryID
GROUP BY PC.Name, PS.Name, P.Name
Order BY P.Name

SELECT * From Production.ProductCostHistory



SELECT * FROM [HumanResources].[EmployeeDepartmentHistory]

SELECT * FROM [HumanResources].[Employee]




SELECT Count(SalesOrderID)
FROM Sales.SalesOrderHeader



SELECT * FROM Sales.SalesOrderHeader


SELECT * FROM Sales.SalesOrderDetail

SELECT * FROM [Purchasing].[PurchaseOrderDetail]


SELECT * FROM HumanResources.Employee
SELECT * FROM HumanResources.vEmployee
SELECT HRE.FirstName + ' ' + HRE.LastName AS CustomrtName, JobTitle
FROM HumanResources.vEmployee AS HRE WHERE HRE.JobTitle Like '%manager%'




SELECT * FROM [HumanResources].[Department]

SELECT * FROM [HumanResources].[EmployeeDepartmentHistory]

SELECT Name DeptName, COUNT(Name) [No of Employees]
FROM HumanResources.Employee E
Join HumanResources.EmployeeDepartmentHistory EDH
ON E.BusinessEntityID = EDH.BusinessEntityID
Join HumanResources.Department D
ON EDH.DepartmentID = D.DepartmentID
GROUP BY D.Name






SELECT DISTINCT(JobTitle) FROM HumanResources.Employee



SELECT * FROM Production.ProductListPriceHistory


SELECT CustomerID, Avg(TotalDue) AS AvgOrderValue
FROM Sales.SalesOrderHeader
GROUP BY CustomerID


SELECT soh.*
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
JOIN Sales.SalesPerson p ON c.PersonID = p.BusinessEntityID
WHERE Sales.SalesPerson.NameStyle = 1
AND p.Title = 'Mr.'

SELECT soh.*
FROM SalesOrderHeader soh
JOIN Customer c ON soh.CustomerID = c.CustomerID
JOIN Person p ON c.PersonID = p.BusinessEntityID
WHERE p.NameStyle = 1
AND p.Title = 'Mr.'

SELECT soh.*
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
WHERE p.NameStyle = 1
AND p.Title = 'Mr.';

SELECT p.title, Sales.SalesOrderHeader
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
WHERE p.Title = 'Mr.';

SELECT * 
FROM Purchasing.Vendor

SELECT TOP 5
    c.CustomerID,
    p.FirstName,
    p.LastName,
    SUM(soh.TotalDue) AS TotalAmountPurchased
FROM
    Sales.Customer c
JOIN
    Person.Person p ON c.PersonID = p.BusinessEntityID
JOIN
    Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
GROUP BY
    c.CustomerID,
    p.FirstName,
    p.LastName
ORDER BY
    TotalAmountPurchased DESC;



