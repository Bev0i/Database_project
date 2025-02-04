CREATE TABLE authors (
  id           INT AUTO_INCREMENT PRIMARY KEY,  
  first_name   VARCHAR(100) NOT NULL,
  second_name  VARCHAR(100) NULL
);

CREATE TABLE publishers (
  id   INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE genres (
  id   INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE books (
  isbn               VARCHAR(17) PRIMARY KEY,
  title              VARCHAR(100) NOT NULL,
  publication_date   DATE NOT NULL,
  edition            INT,
  available_quantity INT NOT NULL DEFAULT 0 CHECK (available_quantity >= 0),
  price              DECIMAL(6,2) NOT NULL CHECK (price > 0),  
  author_id          INT NOT NULL,
  publisher_id       INT NOT NULL,

  FOREIGN KEY (author_id) REFERENCES authors (id) ON DELETE CASCADE,
  FOREIGN KEY (publisher_id) REFERENCES publishers (id) ON DELETE CASCADE
);

CREATE TABLE books_genres (
  book_id  VARCHAR(17),
  genre_id INT,  
  PRIMARY KEY (book_id, genre_id),
  FOREIGN KEY (book_id) REFERENCES books(isbn) ON DELETE CASCADE,
  FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE
);

CREATE TABLE discounts (
  id    INT AUTO_INCREMENT PRIMARY KEY, 
  value DECIMAL(5, 2) DEFAULT 0.00 CHECK (value >= 0.00 AND value <= 100.00)
);

CREATE TABLE order_statuses (
  id    INT AUTO_INCREMENT PRIMARY KEY,
  name  VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE shippers (
  id   INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE customers (
  id           INT AUTO_INCREMENT PRIMARY KEY,
  first_name   VARCHAR(100) NOT NULL,
  last_name    VARCHAR(100) NOT NULL,
  login        VARCHAR(100) UNIQUE NOT NULL,
  password     VARCHAR(100) NOT NULL,
  postal_code  VARCHAR(6) NOT NULL,
  street       VARCHAR(100) NOT NULL,
  city         VARCHAR(100) NOT NULL,
  nip          VARCHAR(10),
  phone_number VARCHAR(9)
);

CREATE TABLE orders (
  id             INT AUTO_INCREMENT PRIMARY KEY, 
  customer_id    INT NOT NULL,                           
  order_date     DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,            
  discount_id    INT DEFAULT NULL,                                 
  shipper_id     INT NOT NULL,                   
  status_id      INT DEFAULT NULL,             

  FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE,
  FOREIGN KEY (discount_id) REFERENCES discounts(id) ON DELETE SET NULL,
  FOREIGN KEY (shipper_id) REFERENCES shippers(id) ON DELETE RESTRICT, 
  FOREIGN KEY (status_id) REFERENCES order_statuses(id) ON DELETE SET NULL
);

CREATE TABLE orders_details (
  book_id  VARCHAR(17),         
  order_id INT NOT NULL, 
  amount   INT NOT NULL CHECK (amount > 0), 
  PRIMARY KEY (book_id, order_id),  
  FOREIGN KEY (book_id) REFERENCES books (isbn) ON DELETE CASCADE,  
  FOREIGN KEY (order_id) REFERENCES orders (id) ON DELETE CASCADE
);
