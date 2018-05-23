CREATE DATABASE webshop
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE webshop;
CREATE TABLE Customer(
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name varchar(200) NOT NULL,
address varchar(255) NOT NULL,
email varchar(255) NOT NULL,
tel varchar(15))ENGINE INNODB;

CREATE TABLE Products(
prid BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
colour varchar(255) NOT NULL,
handle TINYINT NOT NULL,
prsize varchar(10) NOT NULL,
price INT NOT NULL,
stock TINYINT NOT NULL)ENGINE INNODB;

CREATE TABLE Orders (
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
date DATE NOT NULL,
customerid BIGINT NOT NULL,
productid BIGINT NOT NULL,
CONSTRAINT fk_order_customer
FOREIGN KEY(customerid)
REFERENCES Customer(id),
CONSTRAINT fk_order_product
FOREIGN KEY(productid)
REFERENCES Products(prid))ENGINE INNODB;

INSERT INTO Customer (name, address, email, tel)
VALUES
('Kovács Géza', '8596 Sajt utca 10', 'kgeza@email.com', '+36301234567'),
('Szabó Tünde', '4125 Kakaó utca 10', 'sztunde@email.com', '+36301258495'),
('Horváth Bátor', '8425 Pink utca 69', 'gyava@email.com', '+36301274578'),
('Szabó Mária', '8845 Bécsi út 28', 'szmaria@email.com', '+36304887897'),
('Minta Béla', '1379 Palvin utca 8', 'mbela@email.com', '+36301232897'),
('Varga Péter', '8459 Szécheny út 88', 'vpeter@gmail.com', '+36301247797'),
('Sándor József', '1111 Cinegés út 6', 'sandorj@email.com', '+36301444897'),
('Gál Rita', '4554 Gesztenye utca 7', 'ritag@hotmail.com', '+36301888897'),
('Varga Emília', '8455 Kazinczy út 75', 'vargaem@gmail.com', '+36301232897'),
('Ron Dzseremy', '5489 Kék utca 10', 'kgeza@email.com', '+36301234567');

INSERT INTO Products (colour, handle, prsize, price, stock)
VALUES
('kék', 1, 'Small', 500, 1),
('kék', 1, 'Medium', 750, 0),
('kék', 0, 'Large', 1000, 1),
('pink', 0, 'Small', 500, 1),
('piros', 0, 'Small', 500, 0),
('piros', 1, 'Medium', 750, 1),
('piros', 1, 'Large', 1000 ,0),
('fekete', 0, 'Small', 500, 1),
('fekete', 0, 'Medium', 750, 0),
('fekete', 1, 'Large', 1000, 1),
('zöld', 0, 'Small', 500, 0),
('zöld', 1, 'Medium', 750, 1),
('zöld', 1, 'Large', 1000, 1);

INSERT INTO Orders (customerid, date, productid)
VALUES
(1,'2017-05-05', 3),
(2,'2018-03-08', 2),
(3,'2018-05-05', 2),
(4,'2018-04-22', 5),
(5,'2017-10-15', 4),
(7,'2018-03-15', 8),
(9,'2018-04-25', 11),
(5,'2017-12-25', 5),
(8,'2018-04-17', 6),
(10,'2018-05-17', 9),
(9,'2018-04-25', 8),
(7,'2018-10-15', 6),
(5,'2017-10-19', 12),
(3,'2018-03-08', 2);
