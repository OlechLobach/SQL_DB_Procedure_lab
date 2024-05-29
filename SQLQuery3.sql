USE SportsStoreGo;
GO

-- Вставка даних в таблицю Products
INSERT INTO Products (ProductID, ProductName, ProductType, Price) VALUES
(1, 'Running Shoes', 'Footwear', 89.99),
(2, 'Basketball', 'Sports Equipment', 24.99),
(3, 'Yoga Mat', 'Fitness Accessories', 19.99);
GO

-- Вставка даних в таблицю Customers
INSERT INTO Customers (CustomerID, FullName, RegistrationDate) VALUES
(1, 'John Doe', '2023-01-15'),
(2, 'Jane Smith', '2022-12-10'),
(3, 'Alice Johnson', '2023-02-28');
GO

-- Вставка даних в таблицю Sales
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES
(1, 1, 1, '2023-01-20', 89.99),
(2, 2, 2, '2023-02-05', 24.99),
(3, 3, 3, '2023-03-10', 19.99);