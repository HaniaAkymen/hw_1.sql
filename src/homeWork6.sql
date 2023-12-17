//В рамках БД песочница напишите след/запросы:

//Вывести мин/стоимость товаров для каждой категории
//(проекция: название_категории, мин_стоимость_товара)

SELECT
Categories.CategoryName,
MIN(Products.Price) AS min_price
FROM Products
JOIN Categories ON FROM Products.CategoryID = Categories.CategoryID
GROUP BY
Categories.CategoryName

//Вывести ТОП-3 стран по количеству доставленных заказов

SELECT
Customers.Country,
COUNT(*) AS total_country_orders
FROM Orders
JOIN
Customers ON Orders.CustomerID = Customers.CustomerID
WHERE
GROUP BY
Customers.Country
ORDER BY total_country_orders DESK
LIMIT3

//Вывести ко-во заказов у каждого менеджера (фамилия менеджера, ко-во заказов)
SELECT
Employees.LastName,
COUNT(*) AS total_orders
FROM Orders
JOIN
Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY
Employees.LastName
