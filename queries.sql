-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select Product.ProductName, Category.CategoryName
FROM Product
Join Category ON Product.CategoryId = Category.Id;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, OrderDate, Shipper.CompanyName 
FROM [Order] as o 
JOIN Shipper ON o.ShipVia = Shipper.Id
where OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT OrderId, product.ProductName, quantity
FROM OrderDetail
JOIN product ON orderdetail.ProductId = product.Id
where orderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select Id, Customer.CompanyName, Employee.LastName 
from [order]
join Customer ON [Order].CustomerId = Customer.Id 
join Employee ON [Order].EmployeeId = Employee.Id;