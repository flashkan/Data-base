drop database if exists shop;
create database shop;

DROP TABLE IF EXISTS shop.users;
CREATE TABLE shop.users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO shop.users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1988-08-29');

drop database if exists sample;
create database sample;

DROP TABLE IF EXISTS sample.users;
CREATE TABLE sample.users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO sample.users (name, birthday_at) VALUES
  ('Артем', '1990-10-05'),
  ('Григорий', '1984-11-12'),
  ('Артур', '1985-05-20'),
  ('Андрей', '1988-02-14'),
  ('Игорь', '1998-01-12'),
  ('Михаил', '1988-08-29');

start transaction;
select @id := 1;
insert into sample.users (name, birthday_at, created_at) select name, birthday_at, created_at from shop.users where id = @id;
delete from shop.users where id = @id;
commit;

select * from sample.users;
select * from shop.users;