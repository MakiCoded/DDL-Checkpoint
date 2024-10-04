CREATE TABLE Customers(
	Customer_id INT PRIMARY KEY,
	First_name VARCHAR (50),
	Last_name VARCHAR (50),
	Email VARCHAR (50),
	Phone VARCHAR (50),
	Address VARCHAR (100),
	City VARCHAR (50),
	State VARCHAR (50),
	Zipcode VARCHAR (50)
);

CREATE TABLE Products(
product_id INT PRIMARY KEY,
product_name VARCHAR (50),
description VARCHAR (50),
price VARCHAR (50),
stockQuantity INT,
categoryid INT,
Foreign Key (categoryid) REFERENCES Categories(category_id) ON DELETE CASCADE
);

CREATE TABLE Categories(
category_id INT PRIMARY KEY,
category_name VARCHAR(50),
Description  VARCHAR(100)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
Customer_id INT,
order_date DATE,
total_amount INT,
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id) ON DELETE CASCADE
);

CREATE TABLE Orderdetails(
orderdetail_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
unit_price int,
FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

SELECT * FROM Customers
SELECT * FROM Products
SELECT * FROM Categories
SELECT * FROM orders
SELECT * FROM Orderdetails