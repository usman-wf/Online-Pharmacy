 




--CREATE TABLE Cart (
--    cartId INT PRIMARY KEY,
--    totalItems INT,
--    grossAmount FLOAT,
--    discount FLOAT,
--    netAmount FLOAT,
--    paymentMethod CHAR(10)
--);

---- Table Order
--CREATE TABLE Order (
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




 SELECT * FROM Cart;
SELECT * FROM [Order]; -- Brackets because 'Order' is a reserved word
SELECT * FROM Customer;
SELECT * FROM userInfo;
SELECT * FROM inventory;
SELECT * FROM [Admin];
SELECT * FROM branch;






