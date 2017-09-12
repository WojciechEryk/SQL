USE Bookstore;

#UPDATE customers SET customerSurname = "Psikuta" where IdCustomer = 4;
#select * from customers where idCustomer=4;

#UPDATE customers SET idCustomer = 190 WHERE idCustomer=4; #Głupie nie robic tak
#UPDATE books SET Price = ROUND(Price*1,2); #Zaokraglenie po przecinku
#SELECT * FROM books;

#Update books SET price = price + 10 ORDER BY price DESC LIMIT 1;
#SELECT * FROM books ORDER BY price DESC LIMIT 1;
#SELECT * FROM books WHERE price = (SELECT MAX(Price) FROM books );  #UZYCIE MAKSYMALNEJ WARTOSCI

#UPDATE customers SET CustomerName = "Joanna", CustomerSurname = "Dostojewska" where idCustomer =10;
#select * from customers where IdCustomer = 10;

#UPDATE orders SET Status = "Wyslano" where IdOrder = 4 or Idorder = 5; #lub where IdOrder between(4,5)
#select * from orders;

#INSERT INTO customers (CustomerName, CustomerSurname, Town) 
#VALUES ('Franciszek', 'Jankowski', 'Chorzów');

#select * from customers;


#INSERT INTO orders (IdCustomer, IdBook, OrderDate, Status)
#Values(7, 3, "2017-09-12", "Wyslano");

#INSERT INTO books (AuthorSurname, Title)
#VALUES("Grębosz", "Symfonia C++");
#select * from books;

#INSERT INTO customers (CustomerName, CustomerSurname, Town)
#VALUES ("Zbigniew", "Kowalski", "Sieradz"),("Jan", "Nowakowski", "Gdańsk");
#select * from customers;

#INSERT INTO customers 
#SET CustomerName = "Jan", 
#CustomerSurname = "Marcin", 
#town = "Tumidaj";
#select * from customers;