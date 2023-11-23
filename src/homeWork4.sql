--В рамках БД "онлайн-магазин" напишите след/запросы:
--Вывести название и стоимость в USD одного самого дорогого проданного товара
--
SELECT
Products.ProductName,
Products.Price
FROM Products
JOIN OrderDetails ON Products.OrderDetailID = OrderDetails.OrderDetailID
ORDER BY Products.Price DESC
LIMIT 1

--Вывести два самых дорогих товара из категории Beverages из USA
--
SELECT *
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
Categories.CategoryName = 'Beverages'
AND
Suppliers.Country = 'USA'
ORDER BY Products.Price DESC
LIMIT 2

--Удалить товары с ценой менее 50 EUR
--
DELETE
FROM Products
WHERE
Price < 50

--Вывести список стран, которые поставляют морепродукты
--
SELECT
Suppliers.Country
FROM Categories
JOIN Products ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
Categories.CategoryName = 'Seafood'

--Очистить поле ContactName у всех клиентов не из China
UPDATE Customers
SET ContactName = ''
WHERE
NOT Country = 'China'