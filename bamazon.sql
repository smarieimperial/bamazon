DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
    id INT NOT NULL AUTO_INCREMENT,
    item_id INT NOT NULL, /* INT is an integer */
    product_name VARCHAR(100) NOT NULL, /* VARCHAR is a type */
    department_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NULL,  /* 10 is digits and 2 is decimal  */
    stock_quantity INT NULL,
    PRIMARY KEY (id)
    FOREIGN KEY (item_id) REFERENCES products(id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (11, "lipstick", "makeup", 30.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (22, "hair brush", "beauty", 25.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (33, "bra", "lingerie", 45.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (44, "towel", "bathroom", 20.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (55, "sandals", "shoes", 90.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (66, "dress", "clothing", 55.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (77, "blush", "makeup", 30.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (88, "hair spray", "beauty", 12.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (99, "underwear", "lingerie", 18.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (00, "sunscreen", "makeup", 11.00, 100);




