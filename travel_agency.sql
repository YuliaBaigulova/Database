DROP DATABASE IF EXISTS travel_agency;
CREATE DATABASE travel_agency;
USE travel_agency;

DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
    id SERIAL PRIMARY KEY, 
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамилия', 
    patronymic VARCHAR(50) COMMENT 'Отчество',
    passport BIGINT UNIQUE,
    email VARCHAR(120) DEFAULT NULL,
    phone BIGINT, 
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    INDEX clients_passport(passport), 
    INDEX clients_firstname_lastname_patronymic_idx(firstname, lastname, patronymic),
    INDEX clients_phone(phone)
) COMMENT = 'Клиенты';

DROP TABLE IF EXISTS tour_types;
CREATE TABLE tour_types (
    id SERIAL PRIMARY KEY, 
    tour_type ENUM('экскурсионный', 'пляжный', 'автобусный', 'оздоровительный', 'горнолыжный', 'круиз', 'шоп-тур')
) COMMENT = 'Типы туров';

DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
    id SERIAL PRIMARY KEY, 
    country VARCHAR(50)
) COMMENT = 'Страны';

DROP TABLE IF EXISTS hotels;
CREATE TABLE hotels (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(120),
    category ENUM('1*', '2*', '3*', '4*', '5*'),
    price_per_day DECIMAL (10,2) COMMENT 'Цена за сутки', 
    country_id BIGINT UNSIGNED NOT NULL,
    city VARCHAR(120),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    INDEX hotels_name(name),
    INDEX hotels_category(category),
    INDEX hotels_price_per_day(price_per_day),
    INDEX hotels_country_id(country_id),
    
    FOREIGN KEY (country_id) REFERENCES countries(id)
) COMMENT = 'Отели';

DROP TABLE IF EXISTS food_services;
CREATE TABLE food_services (
    id SERIAL PRIMARY KEY, 
    name ENUM('RO', 'BB', 'HB', 'FB', 'AI', 'UAI', 'HB+', 'FB+') 
    /*RO - room only - без питания
     BB - bed & breakfast - завтраки
     HB - half board - полупансион (завтрак + ужин)
     FB - full board - полный пансион (завтра, обед, ужин)
     AI - all inclusive - все включено
     UAI - ultra all inclusive - ультра все включено
     HB+ - half board plus - завтрак, ужин, напитки во время ужина
     FB+ - full board plus - завтра, обед, ужин, напитки во время обеда и ужина
          */
) COMMENT = 'Питание';

DROP TABLE IF EXISTS food_services_at_hotel;
CREATE TABLE food_services_at_hotel (
    id SERIAL PRIMARY KEY, 
    hotel_id BIGINT UNSIGNED NOT NULL,
    food_services_id BIGINT UNSIGNED NOT NULL,
    food_price DECIMAL (10,2) COMMENT 'Стоимость питания в отеле', 
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    INDEX (hotel_id),
    INDEX (food_services_id),
    
    FOREIGN KEY (hotel_id) REFERENCES hotels(id),
    FOREIGN KEY (food_services_id) REFERENCES food_services(id)
) COMMENT = 'Питание в отеле';

DROP TABLE IF EXISTS hotel_accommodation;
CREATE TABLE hotel_accommodation (
    id SERIAL PRIMARY KEY, 
    hotel_id BIGINT UNSIGNED NOT NULL,
    nights INT UNSIGNED NOT NULL COMMENT 'Количество ночей',
    food_services_at_hotel_id BIGINT UNSIGNED NOT NULL,
        
    FOREIGN KEY (hotel_id) REFERENCES hotels(id),
    FOREIGN KEY (food_services_at_hotel_id) REFERENCES food_services_at_hotel(id)
) COMMENT = 'Проживание в отеле';

DROP TABLE IF EXISTS routes;
CREATE TABLE routes (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(120),
    type_of_transport VARCHAR(50) COMMENT 'Вид транспорта',
    route_cost DECIMAL (10,2) COMMENT 'Стоимость маршрута',
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Маршруты';

DROP TABLE IF EXISTS tours;
CREATE TABLE tours (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(120),
    tour_type_id BIGINT UNSIGNED NOT NULL,
    departure_date DATE,
    departure_city VARCHAR(100),
    hotel_accommodation_id BIGINT UNSIGNED NOT NULL,
    routes_id BIGINT UNSIGNED NOT NULL,
    operator VARCHAR(100),
    adults INT UNSIGNED NOT NULL COMMENT 'Количество взрослых',
    children INT UNSIGNED DEFAULT NULL COMMENT 'Количество детей',
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        
    INDEX tours_name(name),
    INDEX tours_operator(operator),
    INDEX tours_departure(departure_date, departure_city),
    
    FOREIGN KEY (tour_type_id) REFERENCES tour_types(id),
    FOREIGN KEY (hotel_accommodation_id) REFERENCES hotel_accommodation(id),
    FOREIGN KEY (routes_id) REFERENCES routes(id)
) COMMENT = 'Туры';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
    id SERIAL PRIMARY KEY, 
    client_id BIGINT UNSIGNED NOT NULL,
    tour_id BIGINT UNSIGNED NOT NULL,
    discount FLOAT UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
    started_at DATETIME,
    finished_at DATETIME,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    INDEX discounts_client_id(client_id),
    INDEX discounts_tour_id(tour_id),
    
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (tour_id) REFERENCES tours(id)
) COMMENT = 'Скидки';

DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    id SERIAL PRIMARY KEY, 
    client_id BIGINT UNSIGNED NOT NULL,
    tour_id BIGINT UNSIGNED NOT NULL,
    discount_id BIGINT UNSIGNED NOT NULL,
    total_price DECIMAL (10,2) COMMENT 'Стоимость тура без скидки', 
    discount_price DECIMAL (10,2) COMMENT 'Стоимость тура со скидкой', 
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    INDEX sales_client_id(client_id),
    INDEX sales_tour_id(tour_id),
    
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (tour_id) REFERENCES tours(id),
    FOREIGN KEY (discount_id) REFERENCES discounts(id)
) COMMENT = 'Продажи';