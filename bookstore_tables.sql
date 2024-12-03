CREATE TABLE Author (
    Author_ID INT PRIMARY KEY,
    First_Name VARCHAR(15),
    Last_Name VARCHAR(15),
    Bio VARCHAR(200)
);

CREATE TABLE Publisher (
    Publisher_ID INT PRIMARY KEY,
    Publisher_Name VARCHAR(35)
);

CREATE TABLE Book (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(50),
    Price DECIMAL(5, 2),
    Genre VARCHAR(30),
    Publication_Date DATE,
    Publisher_ID INT,
    FOREIGN KEY (Publisher_ID) REFERENCES Publisher(Publisher_ID)
);

CREATE TABLE Book_Author (
    ISBN VARCHAR(13),
    Author_ID INT,
    PRIMARY KEY (ISBN, Author_ID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID)
);

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(15),
    Last_Name VARCHAR(15),
    Contact_Info VARCHAR(50),
    Payment_Method VARCHAR (30)
);

CREATE TABLE Customer_Orders (
    Order_ID INT PRIMARY KEY,
    Purchase_Date DATE,
    Total_Cost Decimal(5, 2),
    Number_Of_Items INT,
    Customer_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Cart (
    ISBN VARCHAR(13),
    Order_ID INT,
    PRIMARY KEY (ISBN, Order_ID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (Order_ID) REFERENCES Customer_Orders(Order_ID)
);

INSERT INTO Author (Author_ID, First_Name, Last_Name, Bio)
VALUES (1, 'Suzanne', 'Collins', 'Suzanne Collins is an American author and screenwriter, best know for the immensely popular Hunger Games series of young adult novels.');
INSERT INTO Author (Author_ID, First_Name, Last_Name, Bio)
VALUES (2, 'George', 'Orwell', 'George Orwell was an English novelist, essayist, and critic most famous for his novels Animal Farm (1945) and Nineteen Eighty-Four (1949).');
INSERT INTO Author (Author_ID, First_Name, Last_Name, Bio)
VALUES (3, 'J.R.R.', 'Tolkien', 'English writer and scholar J.R.R. Tolkien contributed to English literature two of its most richly inventive fantasy epics, The Hobbit (1937) and The Lord of the Rings (1954–55).');
INSERT INTO Author (Author_ID, First_Name, Last_Name, Bio)
VALUES (4, 'J.K.', 'Rowling', 'J.K. Rowling is a British author and the creator of the popular and critically acclaimed Harry Potter series, about a young sorcerer in training.');
INSERT INTO Author (Author_ID, First_Name, Last_Name, Bio) 
VALUES (5, 'George R.R.', 'Martin', 'George R.R. Martin is an American writer of fantasy, best known for his Song of Ice and Fire series.');

INSERT INTO Publisher (Publisher_ID, Publisher_Name)
VALUES (1, 'Bloomsbury');
INSERT INTO Publisher (Publisher_ID, Publisher_Name)
VALUES (2, 'Scholastic Press');
INSERT INTO Publisher (Publisher_ID, Publisher_Name)
VALUES (3, 'Bantam Spectra');
INSERT INTO Publisher (Publisher_ID, Publisher_Name)
VALUES (4, 'Secker and Warburg');
INSERT INTO Publisher (Publisher_ID, Publisher_Name)
VALUES (5, 'George Allen and Unwin');

INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780439023528', 'The Hunger Games', 7.50, 'Dystopian', '14-SEP-2008', 2);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780439023498', 'Catching Fire', 7.50, 'Dystopian', '01-SEP-2009', 2);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780439023511', 'Mockingjay', 7.50, 'Dystopian', '24-AUG-2010', 2);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9781338635171', 'The Ballad of Songbirds and Snakes', 14.00, 'Dystopian', '19-MAY-2020', 2);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780358120353', '1984', 10.50, 'Dystopian', '08-JUN-1949', 4);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9789354993381', 'Animal Farm', 9.00, 'Political Satire', '17-AUG-1945', 4);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780395489314', 'The Fellowship of the Ring', 12.00, 'Fantasy', '29-JUL-1954', 5);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780048231864', 'The Two Towers', 12.00, 'Fantasy', '11-NOV-1954', 5);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780358380252', 'The Return of the King', 12.00, 'Fantasy', '20-OCT-1955', 5);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780747532743', 'Harry Potter and the Philosopher''s Stone', 15.50, 'Fantasy', '26-JUN-1997', 1);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780439064866', 'Harry Potter and the Chamber of Secrets', 15.50, 'Fantasy', '02-JUL-1998', 1);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780439136365', 'Harry Potter and the Prisoner of Azkaban', 15.50, 'Fantasy', '08-JUL-1999', 1);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9781338299175', 'Harry Potter and the Goblet of Fire', 15.50, 'Fantasy', '08-JUL-2000', 1);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780439358071', 'Harry Potter and the Order of the Phoenix', 15.50, 'Fantasy', '21-JUN-2003', 1);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780747581086', 'Harry Potter and the Half-Blood Prince', 15.50, 'Fantasy', '16-JUL-2005', 1);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780747591054', 'Harry Potter and the Deathly Hallows', 15.50, 'Fantasy', '21-JUL-2007', 1);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780553386790', 'A Game of Thrones', 11.00, 'Fantasy', '01-AUG-1996', 3);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780553108033', 'A Clash of Kings', 11.00, 'Fantasy', '16-NOV-1998', 3);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780553381702', 'A Storm of Swords', 11.00, 'Fantasy', '08-AUG-2000', 3);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780553801507', 'A Feast for Crows', 11.00, 'Fantasy', '17-OCT-2005', 3);
INSERT INTO Book (ISBN, Title, Price, Genre, Publication_Date, Publisher_ID)
VALUES ('9780553905656', 'A Dance with Dragons', 11.00, 'Fantasy', '12-JUL-2011', 3);


INSERT INTO Book_Author (ISBN, Author_ID)
VALUES ('9780439023528', 1);
INSERT INTO Book_Author (ISBN, Author_ID)
VALUES ('9780358120353', 2);
INSERT INTO Book_Author (ISBN, Author_ID)
VALUES ('9789354993381', 2);
INSERT INTO Book_Author (ISBN, Author_ID)
VALUES ('9780395489314', 3);
INSERT INTO Book_Author (ISBN, Author_ID)
VALUES ('9780747532743', 4);
INSERT INTO Book_Author (ISBN, Author_ID)
VALUES ('9780553386790', 5);

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Contact_Info, Payment_Method)
VALUES (1, 'Caroline', 'Pirtle', 'cpirtle@villanova.edu', 'credit');
INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Contact_Info, Payment_Method)
VALUES (2, 'Kaitlyn', 'Harrington', 'kharri34@villanova.edu', 'debit');
INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Contact_Info, Payment_Method)
VALUES (3, 'Elizabeth', 'Champagne', 'lchampag@villanova.edu', 'cash');
INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Contact_Info, Payment_Method)
VALUES (4, 'Molly', 'Harrington', '101-101-1001', 'debit');

INSERT INTO Customer_Orders (Order_ID, Purchase_Date, Total_Cost, Number_Of_Items, Customer_ID)
VALUES (1, '23-NOV-2024', 36.50, 4, 4);
INSERT INTO Customer_Orders (Order_ID, Purchase_Date, Total_Cost, Number_Of_Items, Customer_ID)
VALUES (2, '12-OCT-2024', 10.50, 1, 1);
INSERT INTO Customer_Orders (Order_ID, Purchase_Date, Total_Cost, Number_Of_Items, Customer_ID)
VALUES (3, '17-SEP-2024', 31.50, 2, 2);
INSERT INTO Customer_Orders (Order_ID, Purchase_Date, Total_Cost, Number_Of_Items, Customer_ID)
VALUES (4, '16-NOV-2024', 77.50, 5, 2);
INSERT INTO Customer_Orders (Order_ID, Purchase_Date, Total_Cost, Number_Of_Items, Customer_ID)
VALUES (5, '05-AUG-2024', 55.00, 5, 3);
INSERT INTO Customer_Orders (Order_ID, Purchase_Date, Total_Cost, Number_Of_Items, Customer_ID)
VALUES (6, '25-OCT-2024', 36.00, 3, 1);
INSERT INTO Customer_Orders (Order_ID, Purchase_Date, Total_Cost, Number_Of_Items, Customer_ID)
VALUES (7, '25-OCT-2024', 42.50, 4, 4);

INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780439023528', 1);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780439023498', 1);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780439023511', 1);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9781338635171', 1);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780358120353', 2);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780747532743', 3);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780439064866', 3);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780439136365', 4);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9781338299175', 4);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780439358071', 4);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780747581086', 4);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780747591054', 4);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780553386790', 5);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780553108033', 5);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780553381702', 5);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780553801507', 5);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780553905656', 5);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780395489314', 6);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780048231864', 6);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780358380252', 6);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780358120353', 7);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9789354993381', 7);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780553386790', 7);
INSERT INTO Cart (ISBN, Order_ID)
VALUES ('9780395489314', 7);

/*DROP TABLE Author CASCADE CONSTRAINTS;
DROP TABLE Publisher CASCADE CONSTRAINTS;
DROP TABLE Book CASCADE CONSTRAINTS;
DROP TABLE Book_Author CASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;
DROP TABLE Customer_Orders CASCADE CONSTRAINTS;
DROP TABLE Cart CASCADE CONSTRAINTS;*/
