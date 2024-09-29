USE hw3;

SELECT COUNT(*)
FROM order_details
LEFT JOIN orders ON order_details.order_id = orders.id
LEFT JOIN customers ON orders.customer_id = customers.id
LEFT JOIN products ON order_details.product_id = products.id
LEFT JOIN categories ON products.category_id = categories.id
LEFT JOIN employees ON orders.employee_id = employees.employee_id
LEFT JOIN shippers ON orders.shipper_id = shippers.id
LEFT JOIN suppliers ON products.supplier_id = suppliers.id;

-- With LEFT JOIN, the query includes all rows from the left table (order_details)
-- even if there are no matching rows in the right tables.
-- This potentially results in a larger number of rows compared to the INNER JOIN,
-- which only returns rows where a match is found in all joined tables.
-- In this case, the number of rows remains the same because there are always matching rows in the right table
