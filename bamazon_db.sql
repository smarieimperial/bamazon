create database bamazon_db;

use bamazon_db;

create table products (
    id int not null auto_increment,
    item_id int not null,
    product_name varchar(100) not null,
    department_name varchar(100) not null,
    price decimal(8,2) not null,
    stock_quantity int null default '0',
    primary key (id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2, "brush", "beauty", 25.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (3, "bra", "intimates", 45.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (4, "towel", "bathroom", 20.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5, "sandals", "shoes", 70.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (6, "dress", "clothing", 55.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (7, "blush", "makeup", 20.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (8, "toner", "beauty", 12.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (9, "underwear", "intimates", 18.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (10, "sunscreen", "makeup", 15.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (11, "phone", "electronic", 450.00, 100);
