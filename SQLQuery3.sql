USE SportsStoreGo;
GO

-- ³���������� ����� ���������� ��� �� ������
EXEC GetAllProducts;
GO

-- ³���������� ����� ���������� ��� ����� ����������� ����
EXEC GetProductsByType @ProductType = 'Footwear';
GO

-- ����� ���-3 ���������� �볺���
EXEC GetTop3OldestCustomers;
GO

-- ����� ���������� ��� ������������ ��������
EXEC GetMostSuccessfulSeller;