SELECT MIN(UnitPrice) AS CheapestPrice
FROM Products;

# 2.500, retrieved cheapest product price

SELECT AVG(UnitPrice) AS AveragePrice
FROM Products;

# 28.86, retrieved average product price

SELECT MAX(UnitPrice) AS MostExpensivePrice
FROM Products;

# 263.50, retrieved most expensive product price

SELECT SUM(Salary) AS TotalSalaries
FROM Employees;

# 20363.92, calc total sum of all salaries

SELECT FirstName, LastName, Salary 
FROM Employees
ORDER BY Salary DESC 
LIMIT 1;

# 3119, janet, highest salary

SELECT FirstName, LastName, Salary 
FROM Employees
ORDER BY Salary ASC 
LIMIT 1; 

# steven 1744, lowest salary

SELECT SupplierID, COUNT(*) AS NumberOfProducts
FROM Products
GROUP BY SupplierID;

# 29 rows returned,  retrieved the number of products from the suppliers

SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
FROM products
GROUP BY CategoryID;

# retrieved the average price for each category

SELECT SupplierID, COUNT(*) AS NumberOfProducts
FROM products
GROUP BY SupplierID
HAVING COUNT(*) >=5;

# showed supplieres with 5 >= products

SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM Products
ORDER BY InventoryValue DESC, ProductName ASC;

/* found inventory value for each product; to calculate InvVal, you multiply Price and InStock 
and also sorted InvVal largest to smallest, and ProductName in ascending order 