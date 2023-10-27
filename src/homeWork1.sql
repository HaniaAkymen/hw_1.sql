/*
1. Приведите десять типовых бизнес-процессов для предметно
области ВИДЕО-ХОСТИНГ (Youtube), а также их соответствие
по CRUD.
*/

ВИДЕО-ХОСТИНГ (Youtube)
Бизнес-процессы и их соответствие с CRUD(SQL):

* Регистрация клиента - CREATE;
* Авторизация клиента - READ;
* Оформление платной подписки Youtube -  CREATE;
* Оплата подписки - UPDATE is_paid;
* Просмотр контента - READ;
* Поиск контента - READ;
* Добавление профиля Google - CREATE ;
* Добавление комментариев и лайков к контенту - CREATE;
* Подписка к каналу другого пользователя - CREATE ;
* Блокировка контента - UPDATE is_blocked;
* Участие в рейтирге каналов - Aggregation;


/* В рамках БД "песочница" напишите след/запросы:
  Вывести название и стоимость товаров от 20 EUR.*/

SELECT
ProductName,
Price
FROM [Products]
WHERE
		Price >= 20

//Вывести страны поставщиков.

SELECT DISTINCT
Country
FROM [Suppliers]


/*В упорядоченном по стоимости виде вывести название и
стоимость товаров от всех поставщиков, кроме поставщика 1.*/

SELECT
	ProductName,
    	Price
FROM [Products]
WHERE
	CategoryID != 1
ORDER BY Price

/*Вывести контактные имена клиентов, кроме тех,
что из France и USA.*/

SELECT
ContactName
FROM [Customers]
WHERE
NOT Country IN ('France', 'USA')


//Вывести два самых дорогих товара из категории 4

SELECT *
FROM [Products]
WHERE
CategoryID = 4
ORDER BY Price DESC
LIMIT 2

