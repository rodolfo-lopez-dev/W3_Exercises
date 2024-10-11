SELECT Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
ORDER BY Categories.CategoryName, Products.ProductName;

# joined products and categories and ordered by category and product names 

SELECT Products.ProductID, Products.ProductName, Products.UnitPrice, Suppliers.CompanyName AS SupplierName FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Products.UnitPrice > 75
ORDER BY Products.ProductName;

# joined products and suppliers, finding products above $75 and ordering by product name

SELECT Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName, Suppliers.CompanyName AS SupplierName FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY Products.ProductName;

# joined products, categories and suppliers to find product details and ordering by product name

SELECT Orders.OrderID, Orders.ShipName, Orders.ShipAddress, Shippers.CompanyName AS ShippingCompanyName FROM Orders
JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
WHERE Orders.ShipCountry = 'Germany';

# Joined orders and shippers, we specificed orders shipped to germany 

SELECT Orders.OrderID, Orders.OrderDate, Orders.ShipName, Orders.ShipAddress FROM Orders
JOIN `Order Details` ON Orders.OrderID = `Order Details`.OrderID
JOIN Products ON `Order Details`.ProductID = Products.ProductID
WHERE Products.ProductName = 'Sasquatch Ale';

# Joined orders and order details and products to find sasquatch

