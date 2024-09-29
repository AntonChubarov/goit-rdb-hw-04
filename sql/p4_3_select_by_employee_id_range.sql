USE hw3;

SELECT *
FROM order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
WHERE employees.employee_id > 3 AND employees.employee_id <= 10;
