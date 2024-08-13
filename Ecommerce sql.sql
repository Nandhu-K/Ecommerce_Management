create database Ecommerce;
use Ecommerce;
CREATE TABLE products (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255),
  price DECIMAL(10, 2),
  image_url VARCHAR(255)
);
CREATE TABLE categories (
  id INT PRIMARY KEY,
  name VARCHAR(255)
);
CREATE TABLE product_categories (
  product_id INT,
  category_id INT,
  FOREIGN KEY (product_id) REFERENCES products(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);
CREATE TABLE customers (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);
CREATE TABLE orders (
  id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);
CREATE TABLE order_items (
  id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);
INSERT INTO categories (id, name)
VALUES
  (1, 'Homemade'),
  (2, 'Fashion'),
  (3, 'Herbal');
INSERT INTO products (id, name, description, price, image_url)
VALUES
  (1, 'Apple iPhone', 'Latest iPhone model', 99999.99, 'iphone.jpg'),
  (2, 'Samsung TV', '4K LED TV', 59999.99, 'tv.jpg'),
  (3, 'Nike Shoes', 'Running shoes', 4999.99, 'shoes.jpg');
INSERT INTO product_categories (product_id, category_id)
VALUES
  (1, 1),
  (2, 1),
  (3, 2);
INSERT INTO customers (id, name, email, password)
VALUES
  (1, 'John', 'john@gamil.com', 'password&1233'),
  (2, 'David', 'david09@gmail.com', 'password$123');
INSERT INTO orders (id, customer_id, order_date, total)
VALUES
  (1, 1, '2022-01-01', 99999.99),
  (2, 2, '2022-01-15', 109999.98);
INSERT INTO order_items (id, order_id, product_id, quantity)
VALUES
  (1, 1, 1, 1),
  (2, 1, 2, 1),
  (3, 2, 3, 2);
