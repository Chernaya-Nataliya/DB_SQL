/* Задача 1
Описание задания (скопировать)
Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными (поля и наполнение см. в презентации)
*/ 

-- создаём базу данных
DROP DATABASE IF EXISTS chernaya_dz_1;
CREATE DATABASE chernaya_dz_1;
USE chernaya_dz_1;

-- создание таблицы mobile_phones
-- мобильные телефоны
CREATE TABLE mobile_phones(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	product_name VARCHAR(45) NOT NULL, 
	manufacturer VARCHAR(45) NOT NULL,
	product_count INT,
    price INT
    );

-- наполнение
INSERT INTO mobile_phones (product_name, manufacturer, product_count, price)
VALUES 
('iPhone X ', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);	


/* Задача 2
Описание задания (скопировать)
Выведите название, производителя и цену для товаров, количество которых превышает 2
*/

SELECT product_name, manufacturer, product_count, price
FROM mobile_phones
WHERE product_count > 2;

/* Задача 3
Описание задания (скопировать)
Выведите весь ассортимент товаров марки “Samsung”
*/
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones 
WHERE manufacturer = 'Samsung';


/* Задача 4
Описание задания (скопировать)
С помощью регулярных выражений найти:

Товары, в которых есть упоминание "Iphone"
Товары, в которых есть упоминание"Samsung"
Товары, в которых есть ЦИФРЫ
Товары, в которых есть ЦИФРА "8"
*/

-- Товары, в которых есть упоминание "Iphone"
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones 
WHERE product_name REGEXP 'iPhone';

-- Товары, в которых есть упоминание"Samsung"
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones 
WHERE manufacturer REGEXP 'Samsung';

-- Товары, в которых есть ЦИФРЫ
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones 
WHERE product_name REGEXP '[0-9]';

-- Товары, в которых есть ЦИФРА "8"
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones 
WHERE product_name REGEXP '8';
