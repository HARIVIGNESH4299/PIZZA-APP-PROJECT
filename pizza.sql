--users table
create table users
(user_id int GENERATED ALWAYS AS IDENTITY START WITH 1 primary key,
    user_name varchar(32) not null,
    phonenumber int not null,
    email varchar2(40) UNIQUE,
    address varchar(100) not null,
    wallet int default 5000,
    password varchar2(32) not null); 

select * from users;

select users.user_name from users where address='channei';

drop table products CASCADE CONSTRAINTS;

--admins table
create table admins(
admin_email varchar2(50) unique,
admin_name varchar2(32) not null,
password varchar2(12) not null);

insert into admins values('harivignesh@ghmail.com','hari','hari@123');
COMMIT;

select * from admins;


drop table admins CASCADE CONSTRAINTS;

--products table
create table products
(product_id int GENERATED ALWAYS AS IDENTITY START WITH 501 primary key,
product_name varchar2(32) unique,
product_size varchar2(32) not null,
price int not null );  

insert into products(product_name,product_size,price)values('tomato','small',60);

insert into products(product_name,product_size,price)values('onion','small',60);

commit;
select *from products;
desc products;

select * from products;


drop table products CASCADE CONSTRAINTS;

drop table users CASCADE CONSTRAINTS;

----order_items table
--create table orders_items
--(item_id int GENERATED ALWAYS AS IDENTITY START WITH 10001 primary key,
--product_id int not null,
--quantity int not null,
--unit_price int not null, 
--FOREIGN KEY (product_id) REFERENCES products(product_id));
--
--select * from orders_items;
--
--drop table orders_items;

--order table 
create table orders(order_id int GENERATED ALWAYS AS IDENTITY START WITH 1001 primary key,
user_id int,
product_id int,
quantity int not null,
total_prize int not null,
order_date date not null,
FOREIGN key(user_id) REFERENCES users(user_id),
foreign key(product_id) references products(product_id));

drop table orders;

select * from orders;

--cart
create table cart(cart_id int GENERATED ALWAYS AS IDENTITY START WITH 7001 primary key,
user_id int,
product_id int ,
quantity int not null,
total_prize int not null,
FOREIGN key (product_id) REFERENCES products(product_id),
FOREIGN key(user_id) REFERENCES users(user_id)); 

select * from cart;

drop table cart CASCADE CONSTRAINTS;

--employee
create table employees
(emp_name varchar2(32) not null,
email varchar2(32) unique not null,
phone_number int unique,
password varchar2(32) not null);  

select * from employees;

drop table employees;

insert into employees values('hari','harivignesh4299@gmail.com',9994578532,'Vicky@1234');

--invoice bill
create table bills(bill_id int GENERATED ALWAYS AS IDENTITY START WITH 5001 primary key,
user_id int ,product_id int,
purchase_date date not null,
order_id int,
FOREIGN key(user_id) REFERENCES users(user_id),
FOREIGN key (product_id) REFERENCES products(product_id),
FOREIGN key(order_id) REFERENCES orders(order_id)); 
select * from bills;

drop table bills CASCADE CONSTRAINTS;

