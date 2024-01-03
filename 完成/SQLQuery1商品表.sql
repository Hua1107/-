-- �ӫ~��
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL
);



-- ���J�ӫ~���
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity)
VALUES 
    (1, '�i��', 25, 10),
    (2, '���J�O', 20, 8),
    (3, '�T��', 18, 15),
    (4, '�v����', 15, 12),
    (5, '�ʤl', 10, 20);

-- �ק�~��������w�q
ALTER TABLE Transactions
ADD CONSTRAINT FK_Transactions_Products
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
ON DELETE CASCADE;


