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

	-- ����O����
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Transactions 
VALUES
('101', 1, '2'),
('102', 1, '2'),
('103', 2, '8'),
('104', 3, '8'),
('105', 5, '2');


-- �ק�~��������w�q
ALTER TABLE Transactions
ADD CONSTRAINT FK_Transactions_Products
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
ON DELETE CASCADE;


