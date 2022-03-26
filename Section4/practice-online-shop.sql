CREATE DATABASE online_shop;
CREATE TABLE product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(300) NOT NULL,
    product_price NUMERIC NOT NULL,
    product_description TEXT,
    product_stock INT ,
    product_image VARCHAR(300) 
);
INSERT INTO product(product_name, product_price, product_description, product_stock, product_image)
VALUES ('I Phone', 850.55,'Cell phone made by apple',124,'./image/iphone1');

ALTER TABLE product MODIFY product_stock CHECK(product_stock > 0) NOT NULL;