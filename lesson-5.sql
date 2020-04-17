-- Практическое задание №1 по теме “Операторы, фильтрация, сортировка и ограничение”

USE shop;

UPDATE users
SET 
	created_at = NULL,
	updated_at = NULL
;

UPDATE users
SET 
	created_at = NOW(),
	updated_at = NOW()
;

-- Практическое задание №2 по теме “Операторы, фильтрация, сортировка и ограничение”
-- Создаю таблицу users1, чтобы не портить структуру таблицы users

DROP TABLE IF EXISTS users1;
CREATE TABLE users1 (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(50),
  updated_at VARCHAR(50)
 );
 
INSERT INTO users1 (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Наталья', '1984-11-12', '21.10.2017 10:10', '21.10.2017 10:10'),
  ('Александр', '1985-05-20', '22.10.2017 8:10', '22.10.2017 8:10'),
  ('Сергей', '1988-02-14', '30.10.2017 8:10', '30.10.2017 8:10'),
  ('Иван', '1998-01-12', '30.10.2017 14:10', '30.10.2017 14:10'),
  ('Мария', '1992-08-29', '31.10.2017 8:15', '31.10.2017 8:15');


DROP TABLE IF EXISTS users1_new;
CREATE TABLE users1_new (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME
 );

INSERT INTO 
	users1_new
SELECT 
	id,
	name, 
	birthday_at,
	STR_TO_DATE (users1.created_at, '%d.%m.%Y %k:%i'),
	STR_TO_DATE (users1.updated_at, '%d.%m.%Y %k:%i')
FROM
	users1;

DROP TABLE users1;

ALTER TABLE users1_new RENAME users1;

-- Практическое задание №3 по теме “Операторы, фильтрация, сортировка и ограничение”

INSERT INTO storehouses_products VALUES
(NULL, 1, 1, 10, NOW(), NOW()),
(NULL, 1, 2, 20, NOW(), NOW()),
(NULL, 1, 3, 0, NOW(), NOW()), 
(NULL, 2, 1, 0, NOW(), NOW()),
(NULL, 2, 2, 15, NOW(), NOW()),
(NULL, 2, 3, 25, NOW(), NOW());

SELECT * FROM storehouses_products
ORDER BY IF (value = 0, 1, 0), value;
	 
-- Практическое задание №4 по теме “Операторы, фильтрация, сортировка и ограничение”		

SELECT * FROM users 
WHERE MONTHNAME(birthday_at) = 'May' or MONTHNAME(birthday_at) =  'August';		

-- Практическое задание №5 по теме “Операторы, фильтрация, сортировка и ограничение”		

SELECT * FROM catalogs WHERE id IN (5, 1, 2)
ORDER BY 
CASE 
	WHEN id=5 then 0
	WHEN id=1 then 1
	WHEN id=2 then 2
END;

-- Практическое задание №1 теме “Агрегация данных” 

SELECT FLOOR(AVG((to_days (now()) - to_days(birthday_at))/365.25)) as 'Average age'
FROM users;

-- Практическое задание №2 теме “Агрегация данных” 

SELECT COUNT(*), DAYNAME(DATE_FORMAT(users.birthday_at, '2020-%m-%d')) as dayname2020 
FROM users GROUP by dayname2020;

-- Практическое задание №3 теме “Агрегация данных” 

DROP TABLE IF EXISTS example;
CREATE TABLE example(
value INT
);

INSERT INTO
	example (value) 
VALUES
	(1),
	(2), 
	(3), 
	(4), 
	(5)
;

SELECT exp(SUM(log(value))) as sum_log FROM example;