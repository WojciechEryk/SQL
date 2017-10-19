use northwind;

#select Orders.OrderID, customers.ContactName, orders.OrderDate
#FROM orders INNER JOIN customers ON orders.CustomerID = customers.CustomerID;

#select customers.ContactName, orders.OrderId From Customers
#left join orders on customers.CustomerId=orders.CustomerID Order by customers.ContactName;

#select customers.ContactName, orders.OrderId From orders
#left join Customers on customers.CustomerId=orders.CustomerID Order by customers.ContactName;