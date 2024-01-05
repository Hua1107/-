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


-- ���u
create table Employee
(
Em_id char(5),
Em_name	nvarchar(10) not null,
Em_dep nvarchar(10) null,
primary key(Em_id)
)

insert into Employee
values
('S0001',    '�d�D�X', '�Ͳ���'	 ),
('S0002',    '���v��', '�Ͳ���'	 ),
('S0003',	 '���л�', '�Ͳ���'	 ),
('S0004',	 '�L����', '�Ͳ���'	 ),
('S0005',	 '�c�a�t', '�Ͳ���'	 )


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

