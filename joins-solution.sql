--1
SELECT first_name, last_name, addresses.street, addresses.city, addresses.state, addresses.zip, addresses.address_type  FROM customers
JOIN addresses ON customers.id =
addresses.customer_id;

--2
SELECT orders.id as "order_id", line_items.quantity, products.description FROM orders
JOIN line_items ON orders.id =
line_items.order_id
JOIN products ON line_items.id =
products.id;

--3
SELECT warehouse, description, on_hand FROM warehouse_product
JOIN products ON
products.id = warehouse_product.product_id
JOIN warehouse ON
warehouse.id = warehouse_product.warehouse_id
WHERE products.id = 5;

--4
SELECT warehouse, description, on_hand FROM warehouse_product
JOIN products ON
products.id = warehouse_product.product_id
JOIN warehouse ON
warehouse.id = warehouse_product.warehouse_id
WHERE products.id = 6;

--5
SELECT customers.first_name, customers.last_name, count(orders.address_id) FROM orders
JOIN addresses ON
orders.address_id = addresses.id
JOIN customers ON
addresses.customer_id = customers.id
GROUP BY customers.first_name, customers.last_name;

--6
SELECT count(customers.id) FROM customers;

--7
SELECT count(products.id) FROM products;

--8
SELECT products.description, count(warehouse_product.on_hand) FROM warehouse_product
JOIN products ON
products.id = 6
GROUP BY products.description;
--I know this one isn't right, but I'm not sure why yet.
