DROP DATABASE IF EXISTS Bookstore;
CREATE DATABASE Bookstore;

USE Bookstore;
CREATE TABLE Books(
`Idbook` INT NOT NULL AUTO_INCREMENT,
`AuthorName` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`AuthorSurname` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Title` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Price` FLOAT,
PRIMARY KEY(`Idbook`))
DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

DROP TABLE IF EXISTS book;

CREATE TABLE Customers(
`IdCustomer` INT NOT NULL AUTO_INCREMENT,
`CustomerName` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`CustomerSurname` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Town` TEXT CHARACTER SET
 utf8 COLLATE utf8_polish_ci NOT NULL,
PRIMARY KEY(`IdCustomer`))
DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

CREATE TABLE Orders(
`IdOrder` INT NOT NULL AUTO_INCREMENT,
`IdCustomer` INT,
`IdBook` INT,
`OrderDate` DATE,
`Status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_polish_ci,
PRIMARY KEY(`IdOrder`))
DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

#INSERT BOOK:
INSERT INTO Books (AuthorName, AuthorSurname, Title, Price) 
VALUES ('Jan', 'Michalak', 'Zaawansowane programowanie w PHP', 47.29),
('Andrzej', 'Krawczyk', 'Windows 10 PL. Zaawansowana administracja systemu', 49.99),
('Pawel', 'Jakubowski', 'HTML5. Tworzenie witryn', 53.65),
('Tomasz', 'Kowalski', 'Urządzenia techniki komputerowej', 29.99),
('Łukasz', 'Pasternak', 'Java: Tworzenie nowoczesnych stron WWW', 29.99);

#INSERT CLIENTS:
INSERT INTO customers (CustomerName, CustomerSurname, Town) 
VALUES ('Łukasz', 'Lewandowski', 'Poznań'),
 ('Jan', 'Nowak', 'Katowice'),
 ('Maciej', 'Wójcik', 'Bydgoszcz'),
 ('Agnieszka', 'Jankowska', 'Lublin'),
 ('Tomasz', 'Mazur', 'Jelenia Góra'),
 ('Michał', 'Zieliński', 'Kraków'),
 ('Artur', 'Rutkowski', 'Kielce'),
 ('Mateusz', 'Skorupa', 'Gdańsk'),
 ('Jerzy', 'Rutkowski', 'Włóżmitu'),
 ('Anna', 'Karenna', 'Tumidaj');
 
 #INSERT ORDERS:
INSERT INTO orders (IdCustomer, IdBook, OrderDate, Status) 
VALUES 
 (2, 4, "2017-10-08", 'Oczekiwanie'),
 (7, 1, "2017-09-05", 'Wyslano'),
 (9, 1, "2017-10-11", 'Wyslano'),
 (2, 2, "2017-10-15", 'Oczekiwanie'),
 (2, 5, "2017-08-12", 'Oczekiwanie'),
 (3, 2, "2017-10-20", 'Wyslano'),
 (4, 3, "2017-08-14", 'Wyslano'),
 (8, 1, "2017-08-19", 'Wyslano'),
 (3, 1, "2017-11-19", 'Wyslano'),
 (9, 2, "2017-12-28", 'Oczekiwanie');
 
#ZAPYTANIA Z PREZENCJI:

#select * from books order by title ASC;
#select * from books order by price DESC;
#select * from orders where status="wyslano";
#select * from customers where CustomerSurname="Rutkowski";
#select * from books where title like "%PHP%";
#select * from orders order by orderDate ASC;

 #ZLOZONE ZAPYTANIA Z PREZENTACJI:
 
 #select o.IdOrder, c.CustomerName, c.CustomerSurname, o.OrderDate FROM orders AS o, customers AS c
 #where o.IdCustomer=c.IdCustomer;
 
 #Pierwsze zadanko ze zlozonych z prezentacji:
 
#select c.CustomerName, c.CustomerSurname from customers as c, orders as o 
#where o.IdBook = 2 
#AND c.IdCustomer = o.IdCustomer;

#select b.AuthorName, b.AuthorSurname, b.Title from books as b, customers as c, orders as o
#where c.IdCustomer = o.IdCustomer
#AND c.CustomerSurname = "Nowak" 
#AND c.customerName = "Jan"
#AND o.IdBook = b.IdBook;
 
 #select c.CustomerName, c.CustomerSurname, o.IdOrder, o.OrderDate, o.Status, b.title 
 #FROM books as b, customers as c, orders as o
 #where c.CustomerSurname = "Rutkowski"
 #AND o.IdBook = b.IdBook
 #AND c.IdCustomer = o.IdCustomer
 #order by o.OrderDate ASC;
 
 
 
 
 
 
 
 
 
 
 
 
