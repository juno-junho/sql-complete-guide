CREATE TABLE users (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    address_id INT NOT NULL
);

CREATE TABLE addresses (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(50) NOT NULL, -- e.g) 8A 
    city_id INT NOT NULL
);


CREATE TABLE cities (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);
