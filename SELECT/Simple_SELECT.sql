---   Ques 1    Retrieve the first 10 rows from the "Customer" table.

SELECT Top 10 *
FROM Sales.Customer

----------------------------------------------------------------------------------------------------------------------


---   Ques 2    List all products and their corresponding product categories from the "Product" and "ProductCategory" tables.


---   Ques 3    Find the total number of orders in the "SalesOrderHeader" table.

SELECT Count(SalesOrderID) AS TotalOrders
FROM Sales.SalesOrderHeader

------------------------------------------------------------------------------------------------------------------------

---   Ques 4    Display the top 5 customers based on their total order amount.


SELECT Top 5 CustomerID, Sum(TotalDue)
FROM Sales.SalesOrderHeader
Group BY CustomerID 
Order BY Sum(TotalDue) DESC

-----------------------------------------------------------------------------------------------------------------------------

---   Ques 5    Retrieve all distinct job titles from the "Employee" table.


SELECT DISTINCT(JobTitle) FROM HumanResources.Employee

-----------------------------------------------------------------------------------------------------------------------------


---   Ques 6    List all products with a list price greater than $500.


SELECT Name, A.ListPrice
FROM Production.ProductListPriceHistory A
Join Production.Product B ON 
A.ProductID = B.ProductID
WHERE A.ListPrice >500

-----------------------------------------------------------------------------------------------------------------------------


---   Ques 7    Find the average order amount for each customer from the "SalesOrderHeader" table.


SELECT CustomerID, Avg(TotalDue) AS AvgOrderValue
FROM Sales.SalesOrderHeader
GROUP BY CustomerID

-----------------------------------------------------------------------------------------------------------------------------

---   Ques 8    Retrieve all orders placed by customers with the title "Mr."



---   Ques 9    Display the name and standard cost of products in descending order of standard cost.


SELECT  Name, B.StandardCost
FROM Production.Product A
Join Production.ProductCostHistory B
ON  A.ProductID = B.ProductID

---   Ques 10    List all employees and their respective managers' names from the "Employee" table.

---   Ques 11    Retrieve the names and addresses of all customers who are located in the state of California.


---   Ques 12    List all products with a list price between $100 and $500, ordered by list price in ascending order.

SELECT Name, A.ListPrice
FROM Production.ProductListPriceHistory A
Join Production.Product B ON 
A.ProductID = B.ProductID
WHERE A.ListPrice BETWEEN 100 AND 500
ORDER BY A.ListPrice 


---   Ques 13    Find the total number of employees in each department from the "Employee" table.

SELECT Name DeptName, COUNT(Name) [No of Employees]
FROM HumanResources.Employee E
Join HumanResources.EmployeeDepartmentHistory EDH
ON E.BusinessEntityID = EDH.BusinessEntityID
Join HumanResources.Department D
ON EDH.DepartmentID = D.DepartmentID
GROUP BY D.Name

---------------------------------------------------------------------------------------------------------------------------


---   Ques 14    Display the first and last names of employees who have the same first name as their manager.
---   Ques 15    Retrieve the top 5 customers with the highest Total Due.

SELECT Top 5 C.CustomerID, P.FirstName, P.LastName, Sum(soh.TotalDue) TotalAmountPurchased
FROM Sales.Customer C
Join Person.Person P
ON C.PersonID = P.BusinessEntityID
Join Sales.SalesOrderHeader soh ON C.CustomerID = soh.CustomerID
Group BY C.CustomerID, FirstName, LastName
Order BY TotalAmountPurchased DESC


----------------------------------------------------------------------------------------------------------------------



---   Ques 16    List all products with their corresponding product categories and subcategories.

SELECT PC.Name CategoryName, PS.Name SubCategoryName, P.Name ProductName  
FROM Production.Product P 
JOIN Production.ProductSubcategory PS 
ON P.ProductSubcategoryID = PS. ProductSubcategoryID
JOIN Production.ProductCategory PC 
ON P.ProductSubcategoryID = PC.ProductCategoryID
GROUP BY PC.Name, PS.Name, P.Name
Order BY P.Name


-----------------------------------------------------------------------------------------------------------------------

---   Ques 17    Find the total sales amount for each year and month from the "SalesOrderHeader" table.


SELECT datepart(year,OrderDate) AS [YEAR], datepart(month,OrderDate) AS [MONTH], SUM(TotalDue) AS [Total Amount]
FROM Sales.SalesOrderHeader
GROUP BY datepart(year,OrderDate), datepart(month,OrderDate)
Order BY datepart(year,OrderDate), datepart(month,OrderDate)


---------------------------------------------------------------------------------------------------------------------------

---   Ques 18    Display the name, email, and phone number of customers who have placed more than 5 orders.

SELECT 
    p.FirstName + ' ' + p.LastName AS CustomerName,
    ea.EmailAddress,
    ph.PhoneNumber
FROM 
    Person.Person p
JOIN 
    Sales.Customer c ON p.BusinessEntityID = c.PersonID
JOIN 
    Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
JOIN
    Person.EmailAddress ea ON p.BusinessEntityID = ea.BusinessEntityID
JOIN
    Person.PersonPhone ph ON p.BusinessEntityID = ph.BusinessEntityID
GROUP BY 
    p.FirstName, p.LastName, ea.EmailAddress, ph.PhoneNumber
HAVING 
    COUNT(soh.SalesOrderID) > 5;


	----------------------------------------------------------------------------------------------------------------------


---   Ques 19    Retrieve all employees who were hired between '2010-01-01' and '2015-12-31'.
---   Ques 20    List the products with a reorder point less than the average reorder point for all products.
---   Ques 21    Retrieve the names and phone numbers of customers who have placed at least one order but have not been assigned a sales representative.
---   Ques 22    List the products with their average rating and the number of reviews they have received.
---   Ques 23    Find the total number of orders for each employee in the "SalesOrderHeader" table.


---   Ques 24    Display the top 5 product categories with the highest number of unique products.

SELECT TOP 5 PC.Name CategoryName, Distinct(P.Name) AS ProductName  
FROM Production.Product P 
JOIN Production.ProductSubcategory PS 
ON P.ProductSubcategoryID = PS. ProductSubcategoryID
JOIN Production.ProductCategory PC 
ON P.ProductSubcategoryID = PC.ProductCategoryID
GROUP BY PC.Name, P.Name


---   Ques 25    Retrieve the name and job title of employees who have a job title containing the word "Manager."

SELECT HRE.FirstName + ' ' + HRE.LastName AS CustomrtName, JobTitle
FROM HumanResources.vEmployee AS HRE WHERE HRE.JobTitle Like '%manager%'


-------------------------------------------------------------------------------------------------------------------------
---   Ques 26    List all customers who have a credit limit greater than the average credit limit of all customers.
---   Ques 27    Find the total sales amount for each customer from the "SalesOrderHeader" table, excluding the customers with no sales.

 SELECT c.CustomerID,
    CONCAT(p.FirstName, ' ', p.LastName) AS CustomerName,
    SUM(soh.TotalDue) AS TotalSalesAmount
FROM
    Sales.Customer c
JOIN
    Person.Person p ON c.PersonID = p.BusinessEntityID
JOIN
    Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
GROUP BY
    c.CustomerID, p.FirstName, p.LastName
HAVING
    SUM(soh.TotalDue) > 0;


	-------------------------------------------------------------------------------------------------------------------------

---   Ques 28    Display the names and email addresses of employees whose job titles start with the letter "S."

SELECT HRE.FirstName + ' ' + HRE.LastName AS EMployeeName, EmailAddress
FROM HumanResources.vEmployee AS HRE 
WHERE HRE.JobTitle Like 'S%'

-----------------------------------------------------------------------------------------------------------------------------

---   Ques 29    Retrieve the products with their respective colors from the "Product" and "ProductProductPhoto" tables.


SELECT Name, Color FROM Production.Product

---------------------------------------------------------------------------------------------------------------------------
---   Ques 30    List the products that have been discontinued.
