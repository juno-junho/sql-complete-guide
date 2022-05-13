CREATE TABLE employees(
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY, -- Postgresql
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    -- email VARCHAR(200) REFERENCES intranet_accounts (email) ON DELETE
    email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts(
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY, -- Postgresql
    email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);
-- -------------------

CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name VARCHAR(300),
    building VARCHAR(300) REFERENCES buildings (name) ON UPDATE CASCADE,
);
CREATE TABLE buildings(
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) UNIQUE NOT NULL
);
CREATE TABLE projects(
    id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    deadline DATE NOT NULL,
    employees INT REFERENCES  
);