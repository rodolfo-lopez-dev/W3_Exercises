SELECT ProductID, ProductName, UnitPrice
FROM products
ORDER BY UnitPrice ASC;

# 77 rows returned

SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM products
WHERE UnitsInStock >=100
ORDER BY UnitPrice DESC;

# 10 rows returned and 28.50 price to 2.50 

SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM products
WHERE UnitsInStock >=100
ORDER BY UnitPrice DESC, ProductName ASC;

# similar to above, with new rule of product name asc

SELECT CustomerID, COUNT(DISTINCT OrderID) AS TotalOrders
FROM Orders 
GROUP BY ShipCountry, CustomerID;

# 89 rows returned and helps show distinct orders placed by customer

SELECT ProductID, ProductName
FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
ORDER BY ProductName ASC; 

# one result

SELECT DISTINCT Title
FROM employees;

# looking for title in general

SELECT EmployeeID, FirstName, LastName, Title, Salary
FROM Employees
WHERE SALARY BETWEEN 2000 AND 2500
ORDER BY Title ASC;

# 4 salaries between 2000 and 2500


