SELECT ProductName FROM products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products);

# from products table I found most expensive product and used subquery to find max unitprice inside of products table

SELECT Products.ProductName, Categories.CategoryName FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Products.UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM Products
);

/* selected product name and category name for the most expensive product by joining products and 
categories tables and matching with max unitprice */

SELECT Orders.OrderID, Orders.ShipName, Orders.ShipAddress FROM Orders
WHERE Orders.ShipVia = (
    SELECT Shippers.ShipperID
    FROM Shippers
    WHERE Shippers.CompanyName = 'Federal Shipping'
);

# 

SELECT OrderID FROM `Order Details`
WHERE ProductID = (
    SELECT ProductID
    FROM Products
    WHERE ProductName = 'Sasquatch Ale'
);

# 

SELECT Employees.FirstName, Employees.LastName FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.OrderID = 10266;

#

SELECT Customers.CompanyName FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID = 10266;

#

