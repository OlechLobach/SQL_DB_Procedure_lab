USE SportsStoreGo;
GO

-- Відображення повної інформації про всі товари
EXEC GetAllProducts;
GO

-- Відображення повної інформації про товар конкретного виду
EXEC GetProductsByType @ProductType = 'Footwear';
GO

-- Показ топ-3 найстаріших клієнтів
EXEC GetTop3OldestCustomers;
GO

-- Показ інформації про найуспішнішого продавця
EXEC GetMostSuccessfulSeller;