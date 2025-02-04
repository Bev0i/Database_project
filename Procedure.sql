DELIMITER $$

CREATE PROCEDURE add_book(
    IN p_isbn VARCHAR(17),
    IN p_title VARCHAR(100),
    IN p_publication_date DATE,
    IN p_edition INT,
    IN p_available_quantity INT,
    IN p_price DECIMAL(4,2),
    IN p_author_id INT,
    IN p_publisher_id INT
)
BEGIN
    INSERT INTO books (isbn, title, publication_date, edition, available_quantity, price, author_id, publisher_id)
    VALUES (p_isbn, p_title, p_publication_date, p_edition, p_available_quantity, p_price, p_author_id, p_publisher_id);
END

DELIMITER ;

---- checking procedure

CALL add_book('978-3-16-148320-0', 'The Great Adventure 2', '2025-02-01', 1, 100, 29.99, 1, 1);

select * from books where books.title = 'The Great Adventure 2';


create FUNCTION check_book_availability(p_isbn VARCHAR(17)) 
returns BOOLEAN
deterministic
begin
    declare available INT;
    
    SELECT available_quantity 
    INTO available
    FROM books
    WHERE isbn = p_isbn;
    
    RETURN IF(available > 0, TRUE, FALSE);
END

-- checking function

SELECT check_book_availability('978-3-16-148410-0');
