-- ??~??
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL
);



-- ???J??~???
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity)
VALUES 
    (1, '�i��', 25, 10),
    (2, '���J�O', 20, 8),
    (3, '�T��', 18, 15),
    (4, '�v����', 15, 12),
    (5, '�ʤl', 10, 20);

-- ???~????????w?q
ALTER TABLE Transactions
ADD CONSTRAINT FK_Transactions_Products
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
ON DELETE CASCADE;




-- �p�G�w�g�� Identity Specification�A������
ALTER TABLE Products
DROP COLUMN ProductID;

-- �A���s�K�[ ProductID ���A�ó]�w�� INT
ALTER TABLE Products
ADD ProductID INT;

-- �p�G�ݭn�A�i�H�]�m��L�ݩʡA�Ҧp NOT NULL
ALTER TABLE Products
ALTER COLUMN ProductID INT NOT NULL;

