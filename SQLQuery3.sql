CREATE DATABASE SportsStoreGo;
GO

USE SportsStoreGo;
GO

-- Створення таблиці Products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    ProductType VARCHAR(255),
    Price DECIMAL(10, 2)
);
GO

-- Створення таблиці Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(255),
    RegistrationDate DATE
);
GO

-- Створення таблиці Sales
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO

-- Збережені процедури

-- Відображення повної інформації про всі товари
CREATE PROCEDURE GetAllProducts
AS
BEGIN
    SELECT * FROM Products;
END;
GO

-- Відображення повної інформації про товар конкретного виду
CREATE PROCEDURE GetProductsByType @ProductType VARCHAR(255)
AS
BEGIN
    SELECT * FROM Products WHERE ProductType = @ProductType;
END;
GO

-- Показ топ-3 найстаріших клієнтів
CREATE PROCEDURE GetTop3OldestCustomers
AS
BEGIN
    SELECT TOP 3 * FROM Customers ORDER BY RegistrationDate;
END;
GO

-- Показ інформації про найуспішнішого продавця
CREATE PROCEDURE GetMostSuccessfulSeller
AS
BEGIN
    SELECT TOP 1 Sellers.SellerID, Sellers.FullName, SUM(Sales.SaleAmount) AS TotalSales
    FROM Sales
    INNER JOIN Sellers ON Sales.SellerID = Sellers.SellerID
    GROUP BY Sellers.SellerID, Sellers.FullName
    ORDER BY TotalSales DESC;
END;