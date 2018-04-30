-- Creates the DB
DROP database if exists bamazon_DB;
-- Uses the DB
CREATE DATABASE bamazon_DB;
USE bamazon_DB;

-- Creates the product table with variable columns
CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price INT default 0,
  stock_quantity INT default 0,
  PRIMARY KEY (item_id)
);

-- Inserts initial data into table
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ('dining room', 'furniture', 250, 10),
	     ('iPad', 'electronics', 500, 5),
       ('bed', 'furniture', 500, 20),
       ('snowboard', 'entertainment', 200, 10),
       ('record player', 'collectables', 140, 3),
       ('typewriter', 'collectables', 320, 50),
       ('headphones', 'accessories', 70, 10),
       ('chaise lounge', 'furniture', 100, 6),
       ('jetski', 'entertainment', 1500, 30),
       ('camera', 'electronics', 200, 1000);

-- Allows a quick view of table
SELECT * FROM products;