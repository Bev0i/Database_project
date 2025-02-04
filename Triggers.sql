-- update quantity

DELIMITER $$

CREATE TRIGGER update_available_quantity_after_order
AFTER INSERT ON orders_details
FOR EACH ROW
BEGIN
    UPDATE books
    SET available_quantity = available_quantity - NEW.amount
    WHERE isbn = NEW.book_id;
END

DELIMITER ;


-- set current date

DELIMITER $$

CREATE TRIGGER set_order_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    IF NEW.order_date IS NULL THEN
        SET NEW.order_date = CURRENT_TIMESTAMP;
    END IF;
END

DELIMITER ;


-- price <= 0

DELIMITER $$

CREATE TRIGGER prevent_negative_price
BEFORE INSERT ON books
FOR EACH ROW
BEGIN
    IF NEW.price <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Price cannot be negative.';
    END IF;
END

DELIMITER ;

-- set pending

DELIMITER $$

CREATE TRIGGER set_pending_status
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    IF NEW.status_id IS NULL THEN
        SET NEW.status_id = 1;  
    END IF;
END

DELIMITER ;


SHOW TRIGGERS;


-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------



-- checking trigger update_available_quantity_after_order

SELECT isbn, title, available_quantity FROM books WHERE isbn = '978-3-16-148410-0';

INSERT INTO orders (customer_id, shipper_id, status_id) 
VALUES (1, 1, 1);

SELECT id FROM orders ORDER BY id DESC LIMIT 1;

INSERT INTO orders_details (book_id, order_id, amount) 
VALUES ('978-3-16-148410-0', 1, 2);

SELECT isbn, title, available_quantity FROM books WHERE isbn = '978-3-16-148410-0';

-- checking trigger set_order_date


SELECT * FROM orders ORDER BY id DESC LIMIT 1;

-- checking trigger prevent_negative_price

INSERT INTO books (isbn, title, publication_date, price, author_id, publisher_id)
VALUES ('1234567890123', 'Test Book', '2025-01-01', -10.00, 1, 1);


-- checking trigger set_pending_status

SELECT * FROM orders WHERE customer_id = 1;



