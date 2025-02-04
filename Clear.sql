

DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS publishers;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS books_genres;
DROP TABLE IF exists customers;
DROP TABLE IF exists discounts;
DROP TABLE IF exists orders_details;
DROP TABLE IF exists shippers;
DROP TABLE IF exists order_statuses;


SET FOREIGN_KEY_CHECKS = 0;

SHOW ENGINE INNODB STATUS;

DROP PROCEDURE IF EXISTS add_book;

DROP EVENT IF EXISTS update_order_status;
DROP EVENT IF EXISTS delete_old_orders;

DROP TRIGGER IF EXISTS update_available_quantity_after_order;
DROP TRIGGER IF EXISTS set_order_date;
DROP TRIGGER IF EXISTS prevent_negative_price;
DROP TRIGGER IF EXISTS set_pending_status;
