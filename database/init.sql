CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO users (first_name, last_name, email)
VALUES ('John', 'Doe', 'john.doe@example.com');

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    description TEXT
);

INSERT INTO categories (name, description)
VALUES ('Electronics', 'Devices and gadgets like phones, laptops, and tablets.');

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT REFERENCES categories(id),
    description TEXT
);

INSERT INTO products (name, price, category_id, description)
VALUES ('Smartphone', 699.99, 1, 'Latest model smartphone with advanced features.');
