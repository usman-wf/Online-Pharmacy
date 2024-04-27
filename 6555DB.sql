 




--CREATE TABLE Cart (
--    cartId INT PRIMARY KEY,
--    totalItems INT,
--    grossAmount FLOAT,
--    discount FLOAT,
--    netAmount FLOAT,
--    paymentMethod CHAR(10)
--);

---- Table Order
--CREATE TABLE [Order] (
--    orderId INT PRIMARY KEY,
--    amountPaid FLOAT,
--    receivedStatus BIT
--);



--CREATE TABLE UserInfo (
--    id INT IDENTITY(1, 1) PRIMARY KEY,
--    FName CHAR(10),
--    LName CHAR(10),
--    address CHAR(50),
--    phoneNo varchar(12),
--    email VARCHAR(30),
--   [password] varchar(10)
--);


--CREATE TABLE Customer (
--    customerId INT,
--    FName CHAR(10),
--    LName CHAR(10),
--    paymentMethod CHAR(10),
--    isPremium BIT,
--    yearlyPkg BIT,
--    cartId INT,
--    orderId INT,
--    CONSTRAINT FK_Customer_UserInfo FOREIGN KEY (customerId) REFERENCES UserInfo(id),
--    CONSTRAINT FK_Customer_Cart FOREIGN KEY (cartId) REFERENCES Cart(cartId),
--    CONSTRAINT FK_Customer_Order FOREIGN KEY (orderId) REFERENCES Order(orderId),
--    CONSTRAINT PK_Customer_Composite PRIMARY KEY (cartId, orderId),
--    CONSTRAINT UQ_Customer_CustomerId UNIQUE (customerId)
--);


--- Table Admin
--CREATE TABLE Admin (
--    adminId INT PRIMARY KEY,
--    CONSTRAINT FK_Admin_UserInfo FOREIGN KEY (adminId) REFERENCES UserInfo(id)
--);




--CREATE TABLE Inventory (
--    medicineId INT,
--    name VARCHAR(25),
--    description VARCHAR(50),
--    price FLOAT,
--    manufactureDate DATE,
--    expiryDate DATE,
--    stockLeft INT,
--    adminId INT,
--    PRIMARY KEY (medicineId, adminId),
--    CONSTRAINT FK_Inventory_Admin FOREIGN KEY (adminId) REFERENCES Admin(adminId)
--);


--CREATE TABLE Branch (
--    id INT,
--    location CHAR(20),
--    adminId INT,
--    medicineId INT,
--    PRIMARY KEY (id, adminId, medicineId),
--    CONSTRAINT FK_Branch_Admin FOREIGN KEY (adminId) REFERENCES Admin(adminId),
--    CONSTRAINT FK_Branch_Inventory FOREIGN KEY (medicineId, adminId) REFERENCES Inventory(medicineId, adminId)
--);
 
-- ALTER TABLE Admin
--ALTER COLUMN phoneNo VARCHAR(12);


-- INSERT INTO Admin (adminId, FName, LName, address, phoneNo, email)
--VALUES
--    (1, 'Usman', 'Wasif', '123  ABC Road', 123, 'usman.wf@example.com'),  -- First Admin
--    (3, 'Umer', 'Daud', '456 XYZ road', 9876543210, 'umer.daud@example.com'),  -- Second Admin
--    (4, 'Abdul', 'Rafay', '789 AAA St', 1231231234, 'rafay@example.com'); 

 

  

 SELECT * FROM Cart;
SELECT * FROM [Order]; -- Brackets because 'Order' is a reserved word
SELECT * FROM Customer;
SELECT * FROM userInfo;
SELECT * FROM inventory;
SELECT * FROM [Admin];
SELECT * FROM branch;

---- Insert rows into the Inventory table
--INSERT INTO Inventory (medicineId, name, description, price, manufactureDate, expiryDate, stockLeft, adminId)
--VALUES 
--    (101, 'Paracetamol', 'Pain relief and fever reducer', 10.00, '2023-01-01', '2025-01-01', 500, 1),  -- Managed by Admin 1
--    (102, 'Ibuprofen', 'Anti-inflammatory drug', 15.00, '2022-10-01', '2024-10-01', 300, 3),  -- Managed by Admin 3
--    (103, 'Amoxicillin', 'Antibiotic', 25.00, '2023-03-01', '2024-12-31', 200, 4);  -- Managed by Admin 4


--INSERT INTO Branch (id, location, adminId, medicineId)
--VALUES 
--    (1, 'Lahore', 1, 101),  -- Lahore branch managed by Admin 1, stocks Paracetamol
--    (2, 'Karachi', 3, 102),  -- Karachi branch managed by Admin 3, stocks Ibuprofen
--    (3, 'Islamabad', 4, 103);  


---- Insert into the UserInfo table
--INSERT INTO UserInfo (FName, LName, address, phoneNo, email, [password])
--VALUES
--    ('Ali', 'Khan', '123 Main St', '03001234567', 'ali.khan@example.com', 'pass'),  -- User 1
--    ('Zara', 'Sheikh', '456 Canal Rd', '03111234567', 'zara.sheikh@example.com', 'securepwd'),  -- User 2
--    ('Ahmed', 'Raza', '789 Model Town', '03211234567', 'ahmed.raza@example.com', 'raza2023');  -- User 3


---- Insert into the Customer table with NULL foreign keys
--INSERT INTO Customer (customerId, FName, LName, paymentMethod, isPremium, yearlyPkg, cartId, orderId)
--VALUES
--    (4, 'Ali', 'Khan', 'Cash', 0, 0, 1, 1),  -- No references to Cart or Order
--    (5, 'Zara', 'Sheikh', 'Credit', 1, 1, 2, 2),  -- No references to Cart or Order
--    (6, 'Ahmed', 'Raza', 'Debit', 0, 1, 3,3 );  -- No references to Cart or Order


--    INSERT INTO Cart (cartId, totalItems, grossAmount, discount, netAmount, paymentMethod)
--VALUES
--    (1, 5, 500.00, 50.00, 450.00, 'Cash'),  -- Cart 1
--    (2, 10, 1000.00, 100.00, 900.00, 'Credit'),  -- Cart 2
--    (3, 3, 150.00, 10.00, 140.00, 'Debit'); 


--    INSERT INTO [Order] (orderId, amountPaid, receivedStatus)
--VALUES
--    (1, 450.00, 0),  -- Order 1, not yet received
--    (2, 900.00, 1),  -- Order 2, received
--    (3, 140.00, 0); 