-- E-commerce Sales Analysis

CREATE TABLE orders (
  order_id INT,
  product VARCHAR(50),
  category VARCHAR(50),
  amount INT
);

INSERT INTO orders VALUES
(1,'Laptop','Electronics',50000),
(2,'Shirt','Clothing',2000),
(3,'Phone','Electronics',30000),
(4,'Shoes','Clothing',3000),
(5,'Headphones','Electronics',4000);

-- Total sales
SELECT SUM(amount) AS total_sales FROM orders;

-- Sales by category
SELECT category, SUM(amount) AS total
FROM orders
GROUP BY category;

-- Top selling category
SELECT category, SUM(amount) AS total
FROM orders
GROUP BY category
ORDER BY total DESC
LIMIT 1;
