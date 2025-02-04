-- ORDER_STATUSES

INSERT INTO order_statuses (name) VALUES ('Pending');
INSERT INTO order_statuses (name) VALUES ('Processing');
INSERT INTO order_statuses (name) VALUES ('Shipped');
INSERT INTO order_statuses (name) VALUES ('Delivered');
INSERT INTO order_statuses (name) VALUES ('Cancelled');
INSERT INTO order_statuses (name) VALUES ('Returned');
INSERT INTO order_statuses (name) VALUES ('Refunded');
INSERT INTO order_statuses (name) VALUES ('On Hold');
INSERT INTO order_statuses (name) VALUES ('Awaiting Payment');
INSERT INTO order_statuses (name) VALUES ('Completed');

-- SHIPPERS

INSERT INTO shippers (name) VALUES ('FedEx');
INSERT INTO shippers (name) VALUES ('UPS');
INSERT INTO shippers (name) VALUES ('DHL');
INSERT INTO shippers (name) VALUES ('USPS');
INSERT INTO shippers (name) VALUES ('Poczta Polska');
INSERT INTO shippers (name) VALUES ('Inpost');

-- GENRES

INSERT INTO genres (name) VALUES ('Fiction');
INSERT INTO genres (name) VALUES ('Non-Fiction');
INSERT INTO genres (name) VALUES ('Science Fiction');
INSERT INTO genres (name) VALUES ('Fantasy');
INSERT INTO genres (name) VALUES ('Mystery');
INSERT INTO genres (name) VALUES ('Thriller');
INSERT INTO genres (name) VALUES ('Romance');
INSERT INTO genres (name) VALUES ('Historical Fiction');
INSERT INTO genres (name) VALUES ('Biography');
INSERT INTO genres (name) VALUES ('Autobiography');
INSERT INTO genres (name) VALUES ('Self-Help');
INSERT INTO genres (name) VALUES ('Philosophy');
INSERT INTO genres (name) VALUES ('Psychology');
INSERT INTO genres (name) VALUES ('Cookbook');
INSERT INTO genres (name) VALUES ('Poetry');
INSERT INTO genres (name) VALUES ('Art');
INSERT INTO genres (name) VALUES ('Travel');
INSERT INTO genres (name) VALUES ('Children\'s Literature');
INSERT INTO genres (name) VALUES ('Young Adult');
INSERT INTO genres (name) VALUES ('Health and Wellness');
INSERT INTO genres (name) VALUES ('Crime');
INSERT INTO genres (name) VALUES ('Adventure');
INSERT INTO genres (name) VALUES ('Drama');
INSERT INTO genres (name) VALUES ('Action');
INSERT INTO genres (name) VALUES ('Horror');
INSERT INTO genres (name) VALUES ('Suspense');
INSERT INTO genres (name) VALUES ('Memoir');
INSERT INTO genres (name) VALUES ('Humor');
INSERT INTO genres (name) VALUES ('Politics');
INSERT INTO genres (name) VALUES ('Religion');
INSERT INTO genres (name) VALUES ('Business');
INSERT INTO genres (name) VALUES ('Economics');
INSERT INTO genres (name) VALUES ('Technology');
INSERT INTO genres (name) VALUES ('Engineering');
INSERT INTO genres (name) VALUES ('Science');
INSERT INTO genres (name) VALUES ('Medicine');
INSERT INTO genres (name) VALUES ('Music');
INSERT INTO genres (name) VALUES ('Film');
INSERT INTO genres (name) VALUES ('Photography');
INSERT INTO genres (name) VALUES ('Graphic Novels');

-- DISCOUNTS

INSERT INTO discounts (value) VALUES (5.00);
INSERT INTO discounts (value) VALUES (10.00);
INSERT INTO discounts (value) VALUES (15.00);
INSERT INTO discounts (value) VALUES (20.00);
INSERT INTO discounts (value) VALUES (25.00);
INSERT INTO discounts (value) VALUES (30.00);
INSERT INTO discounts (value) VALUES (35.00);
INSERT INTO discounts (value) VALUES (40.00);
INSERT INTO discounts (value) VALUES (50.00);
INSERT INTO discounts (value) VALUES (60.00);

-- PUBLISHERS

INSERT INTO publishers (name) VALUES ('Penguin Random House');
INSERT INTO publishers (name) VALUES ('HarperCollins');
INSERT INTO publishers (name) VALUES ('Macmillan');
INSERT INTO publishers (name) VALUES ('Simon & Schuster');
INSERT INTO publishers (name) VALUES ('Hachette Livre');
INSERT INTO publishers (name) VALUES ('Penguin Random House');
INSERT INTO publishers (name) VALUES ('HarperCollins');
INSERT INTO publishers (name) VALUES ('Macmillan');
INSERT INTO publishers (name) VALUES ('Simon & Schuster');
INSERT INTO publishers (name) VALUES ('Hachette Livre');

-- AUTHORS

INSERT INTO authors (first_name, second_name) VALUES ('J.K.', 'Rowling');
INSERT INTO authors (first_name, second_name) VALUES ('George', 'Orwell');
INSERT INTO authors (first_name, second_name) VALUES ('Haruki', 'Murakami');
INSERT INTO authors (first_name, second_name) VALUES ('Agatha', 'Christie');
INSERT INTO authors (first_name, second_name) VALUES ('J.R.R.', 'Tolkien');
INSERT INTO authors (first_name, second_name) VALUES ('Stephen', 'King');
INSERT INTO authors (first_name, second_name) VALUES ('Jane', 'Austen');
INSERT INTO authors (first_name, second_name) VALUES ('Mark', 'Twain');
INSERT INTO authors (first_name, second_name) VALUES ('Isaac', 'Asimov');
INSERT INTO authors (first_name, second_name) VALUES ('Leo', 'Tolstoy');

-- CUSTOMERS

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('John', 'Doe', 'johndoe', 'password123', '12345', 'Main Street 1', 'New York', '1234567890', '123456789');

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('Jane', 'Smith', 'janesmith', 'password456', '23456', 'Elm Street 2', 'Los Angeles', '2345678901', '987654321');

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('Robert', 'Johnson', 'robertjohnson', 'password789', '34567', 'Oak Avenue 3', 'Chicago', '3456789012', '654321987');

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('Emily', 'Davis', 'emilydavis', 'password321', '45678', 'Pine Road 4', 'San Francisco', '4567890123', '123987654');

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('Michael', 'Miller', 'michaelmiller', 'password654', '56789', 'Cedar Lane 5', 'Houston', '5678901234', '321654987');

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('Sarah', 'Wilson', 'sarahwilson', 'password987', '67890', 'Maple Street 6', 'Phoenix', '6789012345', '456789321');

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('James', 'Brown', 'jamesbrown', 'password654', '78901', 'Birch Avenue 7', 'Dallas', '7890123456', '654987321');

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('Olivia', 'Taylor', 'oliviataylor', 'password112', '89012', 'Holly Road 8', 'Austin', '8901234567', '321987654');

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('William', 'Anderson', 'williamanderson', 'password334', '90123', 'Willow Lane 9', 'Seattle', '9012345678', '987321654');

INSERT INTO customers (first_name, last_name, login, password, postal_code, street, city, nip, phone_number) 
VALUES ('Sophia', 'Thomas', 'sophiathomas', 'password556', '10234', 'Sunset Boulevard 10', 'Miami', '1023456789', '876543210');


-- BOOKS

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-3-16-148410-0', 'The Great Adventure', '2020-05-10', 1, 100, 19.99, 1, 1);

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-0-14-032872-9', 'Mystery of the Lost City', '2021-08-15', 2, 50, 15.99, 2, 2);

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-1-56619-909-4', 'Fictional Worlds', '2019-03-22', 1, 75, 12.50, 3, 2);

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-0-06-245771-5', 'The Last Horizon', '2018-11-11', 3, 120, 18.00, 4, 4);

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-1-250-15072-6', 'History in the Making', '2022-06-18', 1, 200, 22.99, 5, 5);

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-1-5011-6237-5', 'Wonders of the Universe', '2020-09-03', 2, 80, 25.00, 6, 6);

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-1-59020-570-2', 'Technology and Future', '2017-01-10', 1, 60, 27.99, 7, 7);

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-0-15-101026-4', 'The Depths of the Ocean', '2016-07-12', 1, 150, 17.50, 8, 8);

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-0-7619-1506-0', 'Architectural Wonders', '2022-01-29', 1, 90, 30.00, 9, 9);

INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id) 
VALUES ('978-0-14-024774-4', 'Journey to the Unknown', '2018-05-06', 3, 110, 14.99, 10, 10);











