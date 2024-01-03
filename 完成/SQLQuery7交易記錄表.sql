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
