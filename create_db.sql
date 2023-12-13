CREATE DATABASE myCarshop;
USE myCarshop;
CREATE TABLE cars (id INT AUTO_INCREMENT,name VARCHAR(50),price DECIMAL(5, 2) unsigned,PRIMARY KEY(id));
INSERT INTO cars (name, price)VALUES('Mercedes 2015', 4000),('BMW 2010', 6000), ('Audi 2022', 31000), ('Ford Fiesta 2006', 1000) ;
CREATE USER 'appuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'app2027';
GRANT ALL PRIVILEGES ON myCarshop.* TO 'appuser'@'localhost';

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    hashedPassword VARCHAR(128) NOT NULL
);