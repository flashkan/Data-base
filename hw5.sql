drop schema if exists lesson_5;
create schema lesson_5;
use lesson_5;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at varchar(28),
  updated_at varchar(28)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1993-10-05'),
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
  
-- ответ 1
UPDATE users 
SET created_at = NOW(), updated_at = NOW()
WHERE id != 0;

-- ответ 2
ALTER TABLE users 
CHANGE COLUMN created_at created_at DATETIME NULL,
CHANGE COLUMN updated_at updated_at DATETIME NULL;

SELECT * FROM users;


DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO storehouses_products (value) VALUES
  (200),
  (2),
  (0),
  (10),
  (14),
  (0),
  (5);

-- ответ 3
SELECT * FROM storehouses_products ORDER BY value = 0, value;

-- Аграгация данных
SELECT name, FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25) AS age FROM users;

-- ответ 1
SELECT FLOOR(AVG((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25)) AS age FROM users;

-- ответ 2
SELECT COUNT(*) AS quantity, DAYNAME(CONCAT(year(now()) , '', SUBSTRING(birthday_at, 5, 6))) AS week FROM users GROUP BY week ORDER BY quantity DESC;