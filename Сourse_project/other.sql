USE medicale_base;

-- Добавление нового клиента.
INSERT INTO clients (first_name, second_name, phone, email, discount_id) VALUES ('Jazmyn','Haag','1-372-981-4614x5314','gutmann.hilario@example.org','1');

-- Добавление нового врача.
INSERT INTO doctor (first_name, second_name, phone, specialization_id) VALUES ('Сава', 'Семёнов', '992141293', 4);

-- Добавление отзыва клиента.
INSERT INTO reviews (user_id, user_comment) VALUES
  (16, 'Any delicate you how kindness horrible outlived servants. Equally he minutes my hastily. We me rent been part what. Course sir people worthy horses add entire suffer.
  Now summer who day looked our behind moment coming. Hard do me sigh with west same lady. Called though excuse length ye needed it he having. Sportsman do offending suppo');
  
-- Добавление новой записи на прием
INSERT INTO record (client_id, doctor_id, date_of_meeting, created_at, updated_at) VALUES 
('5','4','1976-02-05', now(), now());

-- Изменение размера скидки в пятницу.
SET SQL_SAFE_UPDATES = 0;
UPDATE days_discount SET discount_size = 5 WHERE week_day_number = 1;
SET SQL_SAFE_UPDATES = 1;

-- Добавление нового диагноза.
INSERT INTO diagnosis (name) VALUES ('Псориаз');

-- Изменение цены на услугу.
UPDATE services SET price = 800 WHERE id = 2;

-- Добавление новой услуги к записи.
INSERT INTO `total_price` VALUES ('4','5');

-- Удаление услуги из записи.
DELETE FROM total_price WHERE record_id = 20 AND services_id = 4;

-- Подсчет общей цены по записи с учетом скидки.
call total_price(1);

-- Установка диагноза обращения.
call set_diagnosis(1, 1);

-- Представление с данными клиента.
SELECT * FROM v_clients;

-- Представление с данными врачкй.
SELECT * FROM v_doctors;

-- Представление с данными услуг.
SELECT * FROM v_services;

-- Представление с данными записи на прием.
SELECT * FROM v_records;