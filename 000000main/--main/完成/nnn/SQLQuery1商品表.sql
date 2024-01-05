-- 商品表
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL
);

-- 插入商品資料
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity)
VALUES 
    (1, '可樂', 25, 10),
    (2, '巧克力', 20, 8),
    (3, '汽水', 18, 15),
    (4, '洋芋片', 15, 12),
    (5, '瓜子', 10, 20);

	-- 交易記錄表
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


-- 修改外部鍵約束定義
ALTER TABLE Transactions
ADD CONSTRAINT FK_Transactions_Products
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
ON DELETE CASCADE;


