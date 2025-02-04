SET GLOBAL event_scheduler = ON;


CREATE EVENT update_order_status
ON SCHEDULE EVERY 1 DAY 
DO
BEGIN
    UPDATE orders
    SET status_id = (SELECT id FROM order_statuses WHERE name = 'Shipped')
    WHERE status_id = (SELECT id FROM order_statuses WHERE name = 'Processing')
    AND order_date <= NOW() - INTERVAL 3 DAY;
END;






CREATE EVENT delete_old_orders
ON SCHEDULE EVERY 1 MONTH
DO
BEGIN
    DELETE FROM orders 
    WHERE order_date < NOW() - INTERVAL 1 YEAR;
END;


show EVENTS;






