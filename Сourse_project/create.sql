/*
База данных для медецинской клиники. Электронная база данных для хранения анкет клиентов и их истории болезни, данных врачей и записи на прием.
Основная цель базы упрощение взаимодейстий между врачами и регистратурой. Так же, расчитанно на дисконтную программу и систему отзывов.
*/
DROP DATABASE IF EXISTS medicale_base;
CREATE DATABASE medicale_base;
USE medicale_base;

-- Данные клиентов
DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
id SERIAL PRIMARY KEY,
first_name VARCHAR(45) NOT NULL,
second_name VARCHAR(45) NOT NULL,
phone VARCHAR(20) NOT NULL,
email VARCHAR(75) NULL,
discount_id BIGINT UNSIGNED DEFAULT 0
);

INSERT INTO clients VALUES 
('1','Jazmyn','Haag','1-372-981-4614x5314','gutmann.hilario@example.org','1'),
('2','Eliane','Grant','936-574-6487','marquis.quitzon@example.org','3'),
('3','Kaleb','Rohan','(286)984-4717','devon.wisozk@example.net','3'),
('4','Kali','Zieme','905-754-2265','agustina48@example.net','2'),
('5','Joesph','Langosh','156.977.4354x3788','schmeler.coby@example.net','4'),
('6','Willie','Smith','07203466463','boberbrunner@example.com','1'),
('7','Kathlyn','Tromp','(000)098-8557x4172','jzboncak@example.org','2'),
('8','German','Leuschke','1-658-721-8898','koch.yasmine@example.com','4'),
('9','Celia','Jacobs','1-108-732-8900','hessel.janessa@example.com','4'),
('10','Sabina','Hackett','261-537-5867x46064','era.beahan@example.net','3'),
('11','Bonita','West','+05(1)5063904003','trantow.celestino@example.com','2'),
('12','Breana','Boehm','1-441-398-1729x50424','rau.jessy@example.org','2'),
('13','Dayana','Quitzon','1-559-925-1899','kferry@example.org','2'),
('14','Chloe','Hudson','(152)136-2223x409','bmiller@example.org','4'),
('15','Mario','Sawayn','430.809.7220x024','rempel.zack@example.com','3'),
('16','Savion','Gulgowski','1-183-835-3758x4367','verlie.gutmann@example.net','1'),
('17','Deron','Mills','015.518.4418x47182','virginia.moore@example.com','4'),
('18','Marty','Berge','(291)669-6971x0847','ktowne@example.com','2'),
('19','Kathryne','Legros','+09(4)2277764928','kdonnelly@example.com','3'),
('20','Kaycee','Weimann','885.143.2875','sallie.smith@example.org','1'),
('21','Breanne','Waelchi','866-831-8686x78859','wilfrid.gibson@example.com','3'),
('22','Ashton','Stanton','(359)098-2977x1232','vkilback@example.com','2'),
('23','Tracy','Stokes','1-546-519-6188x2549','carol40@example.org','1'),
('24','Shirley','Beer','369.349.6185','osinski.max@example.com','2'),
('25','Noble','Murazik','(848)796-6237x8911','dgorczany@example.net','2'),
('26','Ashlynn','Schaefer','638-535-0982','samantha.batz@example.com','3'),
('27','Pansy','Price','(018)293-9320','jlittel@example.com','2'),
('28','Aliza','O\'Connell','08517919281','lebsack.ola@example.net','3'),
('29','Stephan','Buckridge','623.109.4146x9237','sylvia.kuvalis@example.org','4'),
('30','Hallie','Larson','1-302-555-2397x04013','schneider.clay@example.net','4'),
('31','Daphnee','Farrell','394-937-0903','eichmann.hiram@example.org','3'),
('32','Marshall','Zboncak','1-508-389-1290x9349','mosciski.shaina@example.com','4'),
('33','Seth','Stroman','1-316-770-7675','pollich.karen@example.com','1'),
('34','Misael','Schamberger','(626)843-6624','grayson52@example.org','2'),
('35','Robin','Keebler','276-978-8965','dschaefer@example.net','1'),
('36','Marie','Dooley','996-007-6461x14103','dooley.anissa@example.com','3'),
('37','Ewald','Smith','(918)638-2440x38175','gusikowski.emmie@example.com','4'),
('38','Maribel','Marks','07451218599','mjohns@example.net','2'),
('39','Marcellus','Kessler','(812)069-4854','xwalsh@example.org','3'),
('40','Kiera','Hirthe','1-972-232-9350x1195','gaetano59@example.net','3'),
('41','Garret','Schneider','(466)772-4679x196','schultz.melvina@example.net','2'),
('42','Tom','Ward','1-907-581-5874','ikutch@example.org','4'),
('43','Andre','Rogahn','886.405.0937x1478','jamel.wisozk@example.com','1'),
('44','Arnold','Orn','(743)014-4491x65375','hills.kiana@example.com','3'),
('45','Lucious','Reichert','1-163-945-7815x73716','reese.breitenberg@example.org','4'),
('46','Rashawn','Luettgen','445.495.9696x17088','lkrajcik@example.net','1'),
('47','Estrella','Botsford','790-178-1080','bradtke.mckenna@example.org','2'),
('48','Norberto','Legros','(148)285-4642','phagenes@example.com','4'),
('49','Tanya','Klein','649.243.6755x7667','hardy.jones@example.com','3'),
('50','Johathan','Schoen','1-690-611-0239x56603','jnikolaus@example.com','2'); 

-- Данные лечащих врачей
DROP TABLE IF EXISTS doctor;
CREATE TABLE doctor (
id SERIAL PRIMARY KEY,
first_name VARCHAR(45) NOT NULL,
second_name VARCHAR(45) NOT NULL,
phone VARCHAR(20) NOT NULL,
specialization_id BIGINT UNSIGNED NOT NULL
);

INSERT INTO doctor (first_name, second_name, phone, specialization_id) VALUES
  ('Сава', 'Семёнов', '992141293', 1),
  ('Харитон', 'Иванов', '4532131', 1),
  ('Карим', 'Блохин', '342335', 2),
  ('Клаус', 'Орехов', '12213123', 3),
  ('Харитон', 'Устинов', '5412312', 4),
  ('Святослав', 'Кириленко', '7124112878', 5),
  ('Макар', 'Данилов', '531254', 6),
  ('Лукьян', 'Иванов', '8345', 7),
  ('Савва', 'Родионов', '296345', 8),
  ('Мария', 'Филатова', '957230', 9),
  ('Валерия', 'Парова', '613564', 9);

-- Специализации врачей.
DROP TABLE IF EXISTS specialization;
CREATE TABLE specialization (
id SERIAL PRIMARY KEY,
specialization VARCHAR(30) NOT NULL
);

INSERT INTO specialization (specialization) VALUES
  ('Терапевт'),
  ('Стаматолог'),
  ('Офтальмолог'),
  ('Хирург'),
  ('Невролог'),
  ('Отолоренголог'),
  ('Каредолог'),
  ('Гастроэнтеролог'),
  ('Мед.сестра');

-- Отзывы.
DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
id SERIAL PRIMARY KEY,
user_id BIGINT UNSIGNED NOT NULL,
user_comment VARCHAR(1000) NOT NULL
);

INSERT INTO reviews (user_id, user_comment) VALUES
  (1, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (2, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (1, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (3, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (4, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (5, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (3, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (6, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (7, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (8, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (9, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (10, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo'),
  (10, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. CALLed though excuse length ye needed it he having. Sportsman do offending suppo');
  
-- Записи на прием
DROP TABLE IF EXISTS record;
CREATE TABLE record (
id SERIAL PRIMARY KEY,
client_id BIGINT UNSIGNED NOT NULL,
doctor_id BIGINT UNSIGNED NOT NULL,
date_of_meeting DATE NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
UPDATEd_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
diagnosis_id BIGINT UNSIGNED,
total_price DECIMAL(15,2) NULL,
is_paid BOOL NOT NULL DEFAULT FALSE
);

INSERT INTO record (id, client_id, doctor_id, date_of_meeting, created_at, UPDATEd_at) VALUES 
('1','1','1','1976-02-05','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('2','2','2','1977-09-08','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('3','3','3','2010-01-31','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('4','4','4','2000-10-20','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('5','5','5','1990-07-21','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('6','6','6','1996-06-01','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('7','7','7','1985-05-21','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('8','8','8','1980-05-11','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('9','9','9','1973-09-18','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('10','10','10','1997-06-11','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('11','11','11','1979-01-29','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('12','12','1','1991-01-08','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('13','13','2','1992-06-02','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('14','14','3','1982-12-08','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('15','15','4','1983-11-23','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('16','16','5','2019-10-17','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('17','17','6','2012-11-19','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('18','18','7','1989-03-06','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('19','19','8','2013-10-04','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('20','20','9','1978-04-03','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('21','21','10','2009-07-02','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('22','22','11','2013-02-06','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('23','23','1','1981-05-20','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('24','24','2','1992-03-09','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('25','25','3','1970-11-15','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('26','26','4','2015-03-13','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('27','27','5','1977-06-16','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('28','28','6','1977-05-18','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('29','29','7','2006-09-21','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('30','30','8','2018-07-23','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('31','31','9','1995-05-05','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('32','32','10','1986-11-19','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('33','33','11','1993-01-18','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('34','34','1','2007-11-26','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('35','35','2','2008-04-18','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('36','36','3','2014-12-16','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('37','37','4','1981-10-07','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('38','38','5','1990-07-18','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('39','39','6','1983-08-27','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('40','40','7','2016-07-16','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('41','41','8','2016-07-23','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('42','42','9','1973-09-27','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('43','43','10','1988-03-24','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('44','44','11','1973-10-05','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('45','45','1','2018-03-11','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('46','46','2','1989-11-07','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('47','47','3','1972-10-22','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('48','48','4','2010-04-28','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('49','49','5','2008-09-25','2019-11-13 16:32:22','2019-11-13 16:32:22'),
('50','50','6','1971-12-13','2019-11-13 16:32:22','2019-11-13 16:32:22'); 

-- Дисконтные карты.
DROP TABLE IF EXISTS discount_cart;
CREATE TABLE discount_cart (
id SERIAL PRIMARY KEY,
discount_size INT NOT NULL COMMENT 'в процентах',
name_cart VARCHAR(15) NOT NULL
);

INSERT INTO discount_cart (discount_size, name_cart) VALUES
  (0, 'NULL'),
  (5, 'bronze'),
  (10, 'silver'),
  (15, 'gold');

-- Дни скидок. Если день приема будни, то присутствует скидка.
DROP TABLE IF EXISTS days_discount;
CREATE TABLE days_discount (
week_day_number INT NOT NULL COMMENT '0 - 6, где 0 понедельник',
discount_size INT NOT NULL DEFAULT 0
);

INSERT INTO days_discount VALUES
  (0, 10),
  (1, 10),
  (2, 10),
  (3, 10),
  (4, 10),
  (5, 0),
  (6, 0);

-- Список диагнозов.
DROP TABLE IF EXISTS diagnosis;
CREATE TABLE diagnosis (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

INSERT INTO diagnosis (name) VALUES
  ('ОРВ'),
  ('Сниженный иммунитет'),
  ('Близорукость'),
  ('Дальнозоркость'),
  ('Остеохондроз'),
  ('Грыжа позвоночника'),
  ('Нервное расстройство'),
  ('Гайморит'),
  ('Повышенное давление'),
  ('Пониженное давление'),
  ('Аритмия сердца'),
  ('Гастрит'),
  ('Язва желудка'),
  ('Здоров'),
  ('Не определено');

-- Список услуг. Некоторые услуги зависят от специалистов.
DROP TABLE IF EXISTS services;
CREATE TABLE services (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
price DECIMAL(15,2) NOT NULL,
specialist BIGINT UNSIGNED DEFAULT NULL
);

INSERT INTO services (name, price, specialist) VALUES
  ('Первичный прием', 1000, 1),
  ('Последующий прием', 700, 1),
  ('Осмотр специалиста', 1500, NULL),
  ('Выписать рецепт', 1500, NULL),
  ('Назначить лечение', 1000, NULL),
  ('Анализ крови', 1000, 9),
  ('Анализ мочи', 800, 9),
  ('Лечебные процедуры', 3000, NULL);

-- Стоимость приема. К одной записи на прием моджет быть несколько услуг.
DROP TABLE IF EXISTS total_price;
CREATE TABLE total_price (
record_id BIGINT(20) UNSIGNED NOT NULL,
services_id BIGINT(20) UNSIGNED NOT NULL
);

INSERT INTO `total_price` VALUES 
('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5'),
('6','6'),
('7','7'),
('8','8'),
('9','1'),
('10','2'),
('11','3'),
('12','4'),
('13','5'),
('14','6'),
('15','7'),
('16','8'),
('17','1'),
('18','2'),
('19','3'),
('20','4'),
('21','5'),
('22','6'),
('23','7'),
('24','8'),
('25','1'),
('26','2'),
('27','3'),
('28','4'),
('29','5'),
('30','6'),
('31','7'),
('32','8'),
('33','1'),
('34','2'),
('35','3'),
('36','4'),
('37','5'),
('38','6'),
('39','7'),
('40','8'),
('41','1'),
('42','2'),
('43','3'),
('44','4'),
('45','5'),
('46','6'),
('47','7'),
('48','8'),
('49','1'),
('50','2'),
('1','3'),
('2','4'),
('3','5'),
('4','6'),
('5','7'),
('6','8'),
('7','1'),
('8','2'),
('9','3'),
('10','4'),
('11','5'),
('12','6'),
('13','7'),
('14','8'),
('15','1'),
('16','2'),
('17','3'),
('18','4'),
('19','5'),
('20','6'),
('21','7'),
('22','8'),
('23','1'),
('24','2'),
('25','3'),
('26','4'),
('27','5'),
('28','6'),
('29','7'),
('30','8'),
('31','1'),
('32','2'),
('33','3'),
('34','4'),
('35','5'),
('36','6'),
('37','7'),
('38','8'),
('39','1'),
('40','2'),
('41','3'),
('42','4'),
('43','5'),
('44','6'),
('45','7'),
('46','8'),
('47','1'),
('48','2'),
('49','3'),
('50','4'); 

ALTER TABLE `medicale_base`.`record` 
ADD INDEX `client_id_idx` (`client_id` ASC),
ADD INDEX `doctor_id_idx` (`doctor_id` ASC),
ADD INDEX `diagnosis_idx` (`diagnosis_id` ASC);
;
ALTER TABLE `medicale_base`.`record` 
ADD CONSTRAINT `client_id`
  FOREIGN KEY (`client_id`)
  REFERENCES `medicale_base`.`clients` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `doctor_id`
  FOREIGN KEY (`doctor_id`)
  REFERENCES `medicale_base`.`doctor` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `diagnosis`
  FOREIGN KEY (`diagnosis_id`)
  REFERENCES `medicale_base`.`diagnosis` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `medicale_base`.`doctor` 
ADD INDEX `specialization_idx` (`specialization_id` ASC);
;
ALTER TABLE `medicale_base`.`doctor` 
ADD CONSTRAINT `specialization`
  FOREIGN KEY (`specialization_id`)
  REFERENCES `medicale_base`.`specialization` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `medicale_base`.`clients` 
ADD INDEX `discount_idx` (`discount_id` ASC);
;
ALTER TABLE `medicale_base`.`clients` 
ADD CONSTRAINT `discount_cart`
  FOREIGN KEY (`discount_id`)
  REFERENCES `medicale_base`.`discount_cart` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `medicale_base`.`total_price` 
ADD CONSTRAINT `record_id`
  FOREIGN KEY (`record_id`)
  REFERENCES `medicale_base`.`record` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `services_id`
  FOREIGN KEY (`services_id`)
  REFERENCES `medicale_base`.`services` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `medicale_base`.`reviews` 
ADD INDEX `user_id_idx` (`user_id` ASC);
;
ALTER TABLE `medicale_base`.`reviews` 
ADD CONSTRAINT `user_id`
  FOREIGN KEY (`user_id`)
  REFERENCES `medicale_base`.`clients` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `medicale_base`.`services` 
ADD INDEX `asdf_idx` (`specialist` ASC);
;
ALTER TABLE `medicale_base`.`services` 
ADD CONSTRAINT `services_spec`
  FOREIGN KEY (`specialist`)
  REFERENCES `medicale_base`.`specialization` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


delimiter //
-- Принимает id клиета и id диагноза и устанавливает диагноз этому клиенту.
DROP PROCEDURE IF EXISTS set_diagnosis//
CREATE PROCEDURE set_diagnosis(id int, diagnosis int)
BEGIN
    UPDATE record SET diagnosis_id = diagnosis WHERE record.id = id;
END//

-- Принимает id записи и суммирует все услуги принадлежащие к ней, проверяет скидку и после чего выставляет результат в поле total_price данной записи.
DROP PROCEDURE IF EXISTS total_price//
CREATE PROCEDURE total_price(id int)
begin
    SELECT p.record_id, sum(s.price) INTO @rec_id, @sum FROM total_price p 
		JOIN services s ON p.services_id = s.id WHERE p.record_id = id;
    SELECT discount_size INTO @discount FROM days_discount 
		WHERE week_day_number = (SELECT weekday(date_of_meeting) FROM record WHERE record.id = @rec_id);
    SELECT d.discount_size INTO @discount_cart FROM clients c JOIN discount_cart d ON c.discount_id = d.id 
		WHERE c.id = (SELECT client_id FROM record WHERE record.id = @rec_id);
	SET @discount = @discount + @discount_cart;
    UPDATE record SET total_price = @sum - (@sum * (@discount / 100)) WHERE record.id = @rec_id;
end//

-- Проверка, что бы нельзя было выставить статус заказа оплачено, если сумма заказа пуста.
CREATE TRIGGER check_record BEFORE UPDATE ON record
FOR EACH ROW
BEGIN
	IF(isNULL(NEW.total_price) and NEW.is_paid = TRUE) THEN
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'error insert 45001! total_price is NULL';
	END IF;
END//
delimiter ;

CALL total_price(1);
CALL total_price(2);
CALL total_price(3);
CALL total_price(4);
CALL total_price(5);
CALL total_price(6);
CALL total_price(7);
CALL total_price(8);
CALL total_price(9);
CALL total_price(10);
CALL total_price(11);
CALL total_price(12);
CALL total_price(13);
CALL total_price(14);
CALL total_price(15);
CALL total_price(16);
CALL total_price(17);
CALL total_price(18);
CALL total_price(19);
CALL total_price(20);

CALL set_diagnosis(1, 1);
CALL set_diagnosis(2, 2);
CALL set_diagnosis(3, 3);
CALL set_diagnosis(4, 4);
CALL set_diagnosis(5, 5);
CALL set_diagnosis(6, 6);
CALL set_diagnosis(7, 7);
CALL set_diagnosis(8, 8);
CALL set_diagnosis(9, 9);
CALL set_diagnosis(10, 10);
CALL set_diagnosis(11, 11);
CALL set_diagnosis(12, 12);
CALL set_diagnosis(13, 13);
CALL set_diagnosis(14, 14);
CALL set_diagnosis(15, 15);
CALL set_diagnosis(16, 1);
CALL set_diagnosis(17, 2);
CALL set_diagnosis(18, 3);
CALL set_diagnosis(19, 4);
CALL set_diagnosis(20, 5);

-- Выставляет истенное значение в поле "Оплачено / is_paid".
UPDATE record SET is_paid = TRUE WHERE id = 1;
UPDATE record SET is_paid = TRUE WHERE id = 2;
UPDATE record SET is_paid = TRUE WHERE id = 3;
UPDATE record SET is_paid = TRUE WHERE id = 4;
UPDATE record SET is_paid = TRUE WHERE id = 5;
UPDATE record SET is_paid = TRUE WHERE id = 6;
UPDATE record SET is_paid = TRUE WHERE id = 7;
UPDATE record SET is_paid = TRUE WHERE id = 8;
UPDATE record SET is_paid = TRUE WHERE id = 9;
UPDATE record SET is_paid = TRUE WHERE id = 10;

-- Создание представления с данными клиентов.
CREATE OR REPLACE VIEW v_clients AS
SELECT first_name, second_name, phone, email, name_cart, discount_size FROM clients c 
JOIN discount_cart d ON c.discount_id = d.id ORDER BY discount_size DESC;

-- Создание представления с данными врачей.
CREATE OR REPLACE VIEW v_doctors AS
SELECT first_name, second_name, phone, specialization FROM doctor d JOIN specialization s ON d.specialization_id = s.id;

-- Создание представления с данными об услугах.
CREATE OR REPLACE VIEW v_services AS
SELECT name, price, specialization FROM services se LEFT JOIN specialization sp ON specialist = sp.id;

-- Создание представления с данными о записях на прием.
CREATE OR REPLACE VIEW v_records AS
SELECT concat(c.first_name, ' ', c.second_name) 'Client', concat(d.first_name, ' ', d.second_name) 'Doctor', s.specialization, date_of_meeting,total_price, is_paid
FROM record r JOIN clients c JOIN doctor d JOIN specialization s ON r.client_id = c.id AND r.doctor_id = d.id AND d.specialization_id = s.id ORDER BY date_of_meeting;