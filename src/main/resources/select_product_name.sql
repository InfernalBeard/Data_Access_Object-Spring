SELECT product_name FROM netology.ORDERS
INNER JOIN netology.CUSTOMERS c on c.id = orders.customer_id
WHERE lower(c.name) = lower(:name);
