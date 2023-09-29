USE KALBE;

CREATE TABLE customer_orders (
    order_no INT PRIMARY KEY,
    purchase_amount DECIMAL(10, 2),
    order_date DATE,
    customer_id INT,
    salesman_id INT
);

-- Insert data ke dalam tabel
INSERT INTO customer_orders (order_no, purchase_amount, order_date, customer_id, salesman_id)
VALUES
(10001, 150.00, '2022-10-05', 2005, 3002),
(10009, 270.00, '2022-09-10', 2001, 3005),
(10002, 65.00, '2022-10-05', 2002, 3001),
(10004, 110.00, '2022-08-17', 2009, 3003),
(10007, 948.00, '2022-09-10', 2005, 3002),
(10005, 2400.00, '2022-07-27', 2007, 3001);
    
    
-- purchase amount is less than 100 or exclude those orders which order date is on or greater than 25 Aug 2022 and customer id is above 2001
SELECT *
FROM customer_orders
WHERE (purchase_amount < 100) OR (order_date < '2022-08-25' AND customer_id <= 2001);
