DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
    id INT NOT NULL AUTO_INCREMENT,
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NULL,
    stock_quantity INT NULL,
    PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("lipstick", "makeup", 30.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("hair brush", "beauty", 25.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("bra", "lingerie", 45.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("towel", "bathroom", 20.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("sandals", "shoes", 90.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("dress", "clothing", 55.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("blush", "makeup", 30.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("hair spray", "beauty", 12.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("underwear", "lingerie", 18.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("sunscreen", "makeup", 11.00, 100);




