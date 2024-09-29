USE hw3;

SELECT
    categories.name AS category_name,
    COUNT(*) AS row_count,
    ROUND(AVG(order_details.quantity)) AS average_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name
ORDER BY row_count DESC;
