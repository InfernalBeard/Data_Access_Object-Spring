CREATE TABLE IF NOT EXISTS netology.CUSTOMERS
(
    id serial PRIMARY KEY,
    name VARCHAR NOT NULL,
    surname VARCHAR NOT NULL,
    age INT NOT NULL,
    phone_number VARCHAR NOT NULL
);


CREATE TABLE IF NOT EXISTS netology.ORDERS
(
    id serial PRIMARY KEY,
    date TIMESTAMP NOT NULL,
    customer_id INT,
    product_name VARCHAR NOT NULL,
    amount INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES netology.CUSTOMERS(id)
);

INSERT INTO netology.CUSTOMERS (name, surname, age, phone_number)
VALUES ('TIMUR', 'DUSHANOV', 31, '+77077777777');

INSERT INTO netology.CUSTOMERS (name, surname, age, phone_number)
VALUES ('ANAR', 'GAFAROV', 31, '+71011111111');

INSERT INTO netology.CUSTOMERS (name, surname, age, phone_number)
VALUES ('ALEXEY', 'POPOVICH', 25, '+77777777777');

INSERT INTO netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'laptop', 2);

INSERT INTO netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'iphone', 2);

INSERT INTO netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'iphone', 2);
