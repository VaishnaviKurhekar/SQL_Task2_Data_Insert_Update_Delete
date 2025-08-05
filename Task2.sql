-- Let's insert data into table.
Use ecommerce;
-- Insert data into Customers table 

INSERT INTO Customers (customer_id, name, email, password, address)
VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', '123 Main St'),
(2, 'Jane Smith', 'jane.smith@example.com', 'password456', '456 Elm St'),
(3, 'Bob Johnson', 'bob.johnson@example.com', 'password789', '789 Oak St');

SELECT * FROM Customers;
-- Insert data into Products table
INSERT INTO Products (product_id, name, description, price)
VALUES
(1, 'Product A', 'This is product A', 19.99),
(2, 'Product B', 'This is product B', 9.99),
(3, 'Product C', 'This is product C', 29.99);

-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total)
VALUES
(1, 1, '2022-01-01', 19.99),
(2, 2, '2022-01-15', 9.99),
(3, 3, '2022-02-01', 29.99);

-- Insert data into Order_Items table
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity)
VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1);

-- Update data in Customers table
UPDATE Customers
SET address = '901 Maple St'
WHERE customer_id = 1;

-- Update data in Products table
UPDATE Products
SET price = 14.99
WHERE product_id = 2;

-- Delete data from Order_Items table
DELETE FROM Order_Items
WHERE order_item_id = 2;

-- Delete data from Orders table
DELETE FROM Orders
WHERE order_id = 2;

-- Delete data from Customers table
DELETE FROM Customers
WHERE customer_id = 2;

-- Handle Null and Default
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) DEFAULT 'Not Provided',
  phone VARCHAR(20) NULL
  );
  
INSERT INTO Employees (employee_id, name, phone)
VALUES (1, 'John Doe', '123-456-7890');
INSERT INTO Employees (employee_id, name, phone)
VALUES (2, 'John Doe', NULL);


SELECT * FROM Employees;

