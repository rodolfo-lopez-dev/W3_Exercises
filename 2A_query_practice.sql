# This is what northwind sells

SELECT ProductID, ProductName, UnitPrice
FROM Products;

# This is where we find unit prices below 7.50

SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice <= 7.50;

# Finding products that have no units in stock but have backorder

SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0;

# List of all seafood items

SELECT ProductID, ProductName
FROM Products
WHERE CategoryID = (SELECT CategoryID FROM categories WHERE CategoryName = 'Seafood');

# Finding employees with Manager as their title

SELECT employeeID, FirstName, LastName, Title
FROM employees
WHERE Title LIKE '%manager%';

# list of all items supplied from tokyo traders

SELECT ProductID, ProductName
FROM products
WHERE SupplierID = (SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Tokyo Traders');