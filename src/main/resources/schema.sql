create table if not exists netology.CUSTOMERS
(
    id serial primary key,
    name varchar not null,
    surname varchar not null,
    age int     not null,
    phone_number varchar not null
);


create table if not exists netology.ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id int,
    product_name varchar not null,
    amount int not null,
    foreign key (customer_id) references netology.CUSTOMERS(id)
);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('TIMUR', 'DUSHANOV', 31, '+77077777777');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('ANAR', 'GAFAROV', 31, '+71011111111');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('ALEXEY', 'POPOVICH', 25, '+77777777777');

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'laptop', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'iphone', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'iphone', 2);