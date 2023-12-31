------    Ques 1    Find the top 10 customers who have made the highest number of orders.


SELECT TOP 10 CustomerID, Count(CustomerID) AS [No of Order]
FROM Sales.SalesOrderHeader
Group By CustomerID
Order BY Count(CustomerID) DESC

-------------------------------------------------------------------------------------------------------------------------

------    Ques 2    Retrieve the top 5 products with the highest number of units sold from the "SalesOrderDetail" table.


SELECT TOP 5 ProductID, SUM(OrderQty) AS [No of Units Sold]
FROM Sales.SalesOrderDetail
Group By ProductID
Order BY Sum(OrderQty) DESC

--------------------------------------------------------------------------------------------------------------------------


------    Ques 3    List all customers who have not placed any orders.
------    Ques 4    Find the total sales amount for each year from the "SalesOrderHeader" table.
------    Ques 5    Display the average number of days taken to ship orders for each month.
------    Ques 6    Retrieve all products and their corresponding vendors' names.
------    Ques 7    List the top 3 employees who have generated the most revenue from sales.
------    Ques 8    Find the total number of orders and total sales amount for each product category.
------    Ques 9    Display the top 5 customers who have made the highest total purchases.
------    Ques 10   Retrieve all employees who do not have a manager.
------    Ques 11   Find the customer who has placed the largest number of orders.
------    Ques 12   Display the top 3 products with the highest revenue generated for each product category, ordered by revenue in descending order.
------    Ques 13   Retrieve the employees who have generated sales higher than their department's average sales.
------    Ques 14   List the products that were never sold.
------    Ques 15   Find the total number of orders and the total sales amount for each month of the year 2022.
------    Ques 16   Display the name and email address of all customers who have placed orders in January 2023 but not in January 2022.
------    Ques 17   Retrieve all employees who have at least one subordinate employee.
------    Ques 18   List the products with a list price higher than the average list price of their respective product subcategories.
------    Ques 19   Find the top 5 customers who have the highest total purchase amount in each year.
------    Ques 20   Display the employees who have the same manager as 'Ken Sanchez' and are not 'Ken Sanchez' himself.
------    Ques 21   Find the customers who have made purchases in all the countries where the company operates.
------    Ques 22   Display the names of customers who have placed orders in all the months of the year 2023.
------    Ques 23   Retrieve the top 3 employees who have the highest total sales amount in each department.
------    Ques 24   List the products with the number of orders they appeared in (both as individual products and as part of product bundles).
------    Ques 25   Find the employees who have generated sales for all customers with a credit limit greater than $10,000.
------    Ques 26   Display the names and phone numbers of customers who have placed an order within the last 3 months.
------    Ques 27   Retrieve the employees who have generated sales for each year since their hire date.
------    Ques 28   List the products with their corresponding vendors and the number of products supplied by each vendor.
------    Ques 29   Find the total sales amount for each product subcategory and category, along with their respective percentages of total sales.
------    Ques 30   Display the top 5 employees who have the highest number of orders placed by customers they haven't previously dealt with.
