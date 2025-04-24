-- create database Ecommerce_SQL_Database;
use Ecommerce_SQL_Database;
/*CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    category VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'Alice', 'alice@gmail.com', 'USA'),
(2, 'Bob', 'bob@gmail.com', 'India'),
(3, 'Charlie', 'charlie@gmail.com', 'Canada'),
(4, 'David', 'david@gmail.com', 'India'),
(5, 'Eva', 'eva@gmail.com', 'UK'),
(6, 'Fiona', 'fiona@gmail.com', 'USA');

INSERT INTO products VALUES
(1, 'Laptop', 1000.00, 'Electronics'),
(2, 'Mouse', 20.00, 'Accessories'),
(3, 'Headphones', 50.00, 'Accessories'),
(4, 'Monitor', 150.00, 'Electronics'),
(5, 'Keyboard', 30.00, 'Accessories'),
(6, 'Smartphone', 600.00, 'Electronics');

INSERT INTO orders VALUES
(101, 1, '2024-04-01', 1070.00),
(102, 2, '2024-04-02', 70.00),
(103, 3, '2024-04-03', 170.00),
(104, 4, '2024-04-04', 1000.00),
(105, 5, '2024-04-05', 650.00),
(106, 6, '2024-04-06', 200.00),
(107, 1, '2024-04-07', 180.00);

INSERT INTO order_items VALUES
(1, 101, 1, 1), 
(2, 101, 2, 2), 
(3, 102, 3, 1), 
(4, 103, 2, 1), 
(5, 103, 4, 1), 
(6, 104, 6, 1), 
(7, 105, 6, 1), 
(8, 105, 5, 1), 
(9, 106, 3, 2),
(10, 107, 4, 1), 
(11, 107, 2, 1);*/

/*SELECT name, email, country
FROM customers
WHERE country = 'India';*/

/*SELECT product_name, price
FROM products
ORDER BY price DESC;*/

/*SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country;*/

/*SELECT c.name, o.order_date, o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;*/

/*SELECT c.name, o.order_id, o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;*/

/*SELECT c.name, o.order_id, o.total_amount
FROM orders o
RIGHT JOIN customers c ON c.customer_id = o.customer_id;*/

/*SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM orders WHERE total_amount > 500
);*/

/*SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING SUM(total_amount) > 1000
);*/

/*SELECT p.product_name, SUM(oi.quantity * p.price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;*/

/*SELECT c.name, AVG(o.total_amount) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;*/

/*CREATE VIEW top_spenders AS
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;*/

/*CREATE VIEW product_sales AS
SELECT p.product_name, SUM(oi.quantity) AS total_units_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name;*/

-- CREATE INDEX idx_customer_id ON orders(customer_id);

-- CREATE INDEX idx_product_id ON order_items(product_id);











