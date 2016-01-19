{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf340
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE TABLE customers\
(\
	id SERIAL PRIMARY KEY,\
	first_name varchar(255),\
	last_name varchar(255)\
	address varchar(255),\
	city varchar(255),\
	zip int\
)\
\
CREATE TABLE products\
(\
	id SERIAL PRIMARY KEY,\
	product_name UNIQUE varchar(255),\
	price real\
)\
\
CREATE TABLE order_builder (\
	CONSTRAINT fk_orders_builder FOREIGN KEY (orders)\
		REFERENCES orders.id,\
	product_id REFERENCES products.id\
)\
\
CREATE TABLE orders\
(\
	id SERIAL PRIMARY KEY,\
	CONSTRAINT fk_orders FOREIGN KEY (customers)\
		REFERENCES customers.id\
)\
\
INSERT INTO customers(first_name, last_name, address, city\
	zip) VALUES \
	('Joe', 'Anderson', '123 Rainbow Way', 'Minneapolis', '55411'),\
	('Jeff', 'Anderson', '123 Rainbow Way', 'Minneapolis', '55411'),\
	('Eric', 'Anderson', '456 Barnacle Blvd', 'Minneapolis', 55404),\
	('Nathan', 'Briscoe', '789 Raspberry Drive', 'Minneapolis', 55413),\
	('Scruff', 'McGruff', 'PO Box 717756', 'Chicago', '60652')\
\
INSERT INTO products(product_name, price) VALUES\
	('Turmeric', 4.00), ('Saffron', 18.00), ('Rosemary', 2.00), ('Cinnamon', 3.50), ('Nutmeg', 4.00)\
\
INSERT INTO orders(customer_id) VALUES (1,5,3,2,2,5,3,3,4,1)\
\
INSERT INTO order_builder(order_id, product_id) VALUES\
	(1, 5),\
	(1, 3),\
	(2, 4),\
	(3, 2),\
	(4, 3),\
	(5, 1),\
	(6, 1),\
	(7, 1),\
	(8, 2),\
	(9, 3),\
	(10, 4),\
	(1, 2),\
	(1, 4);}