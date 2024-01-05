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

