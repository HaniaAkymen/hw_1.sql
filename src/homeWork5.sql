//В рамках БД 'песочница' напишите след/запросы:

//Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil

SELECT
	COUNT(*) AS total_orders
FROM Orders
JOIN Suppliers ON Orders.SupplierID = Suppliers.SupplierID
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE
	Suppliers.SupplierName = 'Speedy Express'
    AND
    Shippers.Country ='Brazil'

//Вывести среднюю стоимость напитка (Beverages) из Brazil

SELECT
	AVG(Products.Price) AS avg_price
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE
    Suppliers.Country ='Brazil'
    AND
    Categories.CategoryName = 'Beverages'

//Расчитать З/П сотрудника с фамилией Davolio (проекция: зп, фамилия_сотрудника)
//ЗП считаем по формуле за каждый заказ - 5 евро + 2% от суммы заказа

SELECT
Employees.LastName,
COUNT(Products.Price) * 5 + SUM(Products.Price * 0.02) AS salary
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE
	Employees.LastName = 'Davolio'
