-- Task 1: Inner join

SELECT * 
    FROM orders
    INNER JOIN customers ON orders.customer_id = customers.id;

-- Task 2: Left join

SELECT * 
    FROM orders
    LEFT JOIN customers ON orders.customer_id = customers.id;

-- Task 3: Group by with aggregate

SELECT customer_id, COUNT(*) AS number_of_orders
FROM orders
GROUP BY customer_id;

-- Task 4: Filter with WHERE

SELECT * 
    FROM customers
    WHERE last_name = 'Smith';

-- Task 5: Filter groups with HAVING

SELECT * FROM orders
    HAVING total_amount >= 200.00
;

-- Task 6: Scalar subquery

SELECT id, order_date, total_amount
FROM orders
WHERE total_amount > (SELECT AVG(total_amount) FROM orders);

-- Task 7: Subquery returning a set

SELECT *
    FROM customers 
    WHERE id IN (
        SELECT customer_id
        FROM orders
        WHERE total_amount < 200
    );