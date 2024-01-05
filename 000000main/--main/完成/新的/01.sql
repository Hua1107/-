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


-- 員工
create table Employee
(
Em_id char(5),
Em_name	nvarchar(10) not null,
Em_dep nvarchar(10) null,
primary key(Em_id)
)

insert into Employee
values
('S0001',    '吳非蒙', '生產部'	 ),
('S0002',    '蔡宗樺', '生產部'	 ),
('S0003',	 '曾紹齊', '生產部'	 ),
('S0004',	 '林偉勝', '生產部'	 ),
('S0005',	 '盧冠宇', '生產部'	 )


-- ???~????????w?q
ALTER TABLE Transactions
ADD CONSTRAINT FK_Transactions_Products
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
ON DELETE CASCADE;




-- 如果已經有 Identity Specification，先移除
ALTER TABLE Products
DROP COLUMN ProductID;

-- 再重新添加 ProductID 欄位，並設定為 INT
ALTER TABLE Products
ADD ProductID INT;

-- 如果需要，可以設置其他屬性，例如 NOT NULL
ALTER TABLE Products
ALTER COLUMN ProductID INT NOT NULL;

