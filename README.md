# DDL Checkpoint Assignment

## Overview
This project involves creating a set of database tables using Data Definition Language (DDL) for a small e-commerce system. The tables include `Customers`, `Products`, `Categories`, `Orders`, and `OrderDetails`. Each table is designed to support key relationships with foreign keys, ensuring data integrity between the tables.

## Database Structure

1. **Customers Table**  
   I created a table named `Customers` which stores customer information such as customer ID, name, and other relevant details.

2. **Categories Table**  
   The `Categories` table stores product categories. This table includes a primary key `Category_Id`, which is referenced by the `Products` table.

3. **Products Table**  
   The `Products` table stores product information. It has a foreign key `Category_Id`, which references the `Category_Id` from the `Categories` table to establish a relationship between products and their respective categories.

4. **Orders Table**  
   The `Orders` table stores order information. It has a foreign key `Customer_Id` that references the `Customer_Id` from the `Customers` table, establishing the relationship between a customer and their orders.

5. **OrderDetails Table**  
   The `OrderDetails` table stores detailed information about individual products within an order. It includes two foreign keys:
   - `Order_Id`, which references the `Order_Id` from the `Orders` table.
   - `Product_Id`, which references the `Product_Id` from the `Products` table.

## SQL Code Overview
After creating the tables, I wrote SQL code to retrieve data from each of the tables using `SELECT` queries. These queries fetch data from `Customers`, `Categories`, `Products`, `Orders`, and `OrderDetails` in sequence.

## Summary of Tasks:
1. **Created Tables:**
   - Customers
   - Categories
   - Products (with foreign key `Category_Id`)
   - Orders (with foreign key `Customer_Id`)
   - OrderDetails (with foreign keys `Order_Id` and `Product_Id`)

2. **Executed SQL Queries**: 
   - Selected data from each table (`Customers`, `Categories`, `Products`, `Orders`, `OrderDetails`).

## Conclusion
This DDL checkpoint exercise successfully demonstrates the creation of tables and relationships using foreign keys, ensuring referential integrity in a relational database structure.
