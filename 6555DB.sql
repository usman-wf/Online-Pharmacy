--create table Cart(
--cartId int primary key,
--totalItems int,
--grossAmount float,
--discount float,
--netAmount float,
--paymentMethod char(10) not null
--);

--create table Orders (
--orderId int primary key,
--amountPaid float,
--orderTime date,
--recievedStatus bit not null
--);


--create table userInfo (
--id INT primary KEY,
--Fname char(10) NOT NULL,
--Lname char(10),
--dateOfBirth date NOT NULL,
--gender char(10) NOT NULL,
--address varchar(30) NOT NULL,
--paymentInfo varchar(20) NOT NULL,
--phoneNo varchar(12) NOT NULL,
--email varchar(30) NOT NUll
--);

--create table Customer (
--customerId INT,
--isPremium bit,
--hasYearlyPackage bit,
--cartID int, 
--orderID int,
--PRIMARY KEY (cartID, orderID),
--foreign key (customerId) references userInfo(id)
--);

--create table Admin (
--adminId int primary key,
--Fname char(10) NOT NULL,
--Lname char(10),
--phoneNo varchar(12) NOT NULL,
--email varchar(30) NOT NUll
--);

--create table Inventory (
--medicineId int primary key,
--name varchar(30) not null,
--description varchar(50),
--price float not null,
--manufactureDate date not null,
--expiryDate date not null,
--stockQuantity int,
--adminID int,
--FOREIGN KEY (adminID) REFERENCES Admin(adminId)
--);

--create table branch (
--branchId int primary key,
--location char(20),
--adminID int,
--medicineID int,
--FOREIGN KEY (adminID) REFERENCES Admin(adminId),
--FOREIGN KEY (medicineID) REFERENCES Inventory(medicineId)
--);


--create table review (
--reviewId int primary key,
--medicineID int,
--customerID int,
--reviewDetail char(50),
--FOREIGN KEY (medicineID) REFERENCES inventory(medicineId),
--FOREIGN KEY (customerID) REFERENCES userInfo(id)
--);


--select * from Customer
--select * from userInfo
--select * from Admin
--select * from Inventory
--select * from Cart
--select * from Orders

---- Insert into userInfo
--INSERT INTO userInfo (id, Fname, Lname, dateOfBirth, gender, address, paymentInfo, phoneNo, email)
--VALUES 
--(1, 'Ali', 'Khan', '1995-06-10', 'Male', 'Lahore, Pakistan', 'Credit Card', 3001234567, 'ali.khan@example.com'),
--(2, 'Ayesha', 'Malik', '1998-02-20', 'Female', 'Karachi, Pakistan', 'Debit Card', 3002345678, 'ayesha.malik@example.com'),
--(3, 'Usman', 'Sheikh', '1989-12-15', 'Male', 'Islamabad, Pakistan', 'Cash', 3003456789, 'usman.sheikh@example.com'),
--(4, 'Sana', 'Javed', '1992-08-05', 'Female', 'Faisalabad, Pakistan', 'Credit Card', 3004567890, 'sana.javed@example.com'),
--(5, 'Rizwan', 'Ahmed', '2000-01-30', 'Male', 'Rawalpindi, Pakistan', 'Cash', 3005678901, 'rizwan.ahmed@example.com');

---- Insert into Cart
--INSERT INTO Cart (cartId, totalItems, grossAmount, discount, netAmount, paymentMethod)
--VALUES 
--(1, 10, 5000, 500, 4500, 'Credit'),
--(2, 5, 2500, 200, 2300, 'Debit'),
--(3, 7, 3500, 350, 3150, 'Cash'),
--(4, 15, 7500, 750, 6750, 'Credit'),
--(5, 3, 1500, 100, 1400, 'Cash');

---- Insert into Orders
--INSERT INTO Orders (orderId, amountPaid, orderTime, recievedStatus)
--VALUES 
--(1, 4500, '2024-04-25', 1),
--(2, 2300, '2024-04-26', 1),
--(3, 3150, '2024-04-27', 0),
--(4, 6750, '2024-04-28', 1),
--(5, 1400, '2024-04-29', 0);

---- Insert into Customer
--INSERT INTO Customer (customerId, isPremium, hasYearlyPackage, cartID, orderID)
--VALUES 
--(1, 1, 0, 1, 1),
--(2, 0, 1, 2, 2),
--(3, 1, 1, 3, 3),
--(4, 0, 0, 4, 4),
--(5, 1, 0, 5, 5);

---- Insert into Admin
--INSERT INTO Admin (adminId, Fname, Lname, gender, phoneNo, email)
--VALUES 
--(1, 'Zain', 'Ali', 'Male', 3006789012, 'zain.ali@example.com'),
--(2, 'Fatima', 'Rashid', 'Female', 3007890123, 'fatima.rashid@example.com'),
--(3, 'Hamza', 'Qureshi', 'Male', 3008901234, 'hamza.qureshi@example.com'),
--(4, 'Sara', 'Kazmi', 'Female', 3009012345, 'sara.kazmi@example.com'),
--(5, 'Ahmed', 'Ali', 'Male', 3000123456, 'ahmed.ali@example.com');

---- Insert into Inventory
--INSERT INTO Inventory (medicineId, name, description, price, manufactureDate, expiryDate, stockQuantity, adminID)
--VALUES 
--(1, 'Panadol', 'Painkiller', 50, '2024-01-01', '2026-01-01', 500, 1),
--(2, 'Brufen', 'Anti-inflammatory', 60, '2024-02-01', '2026-02-01', 400, 2),
--(3, 'Cough Syrup', 'Cough Relief', 70, '2024-03-01', '2026-03-01', 300, 3),
--(4, 'Antibiotic', 'Infection Treatment', 100, '2024-04-01', '2026-04-01', 200, 4),
--(5, 'Antacid', 'Acid Reflux Relief', 90, '2024-05-01', '2026-05-01', 100, 5);

---- Insert into branch
--INSERT INTO branch (branchId, location, adminID, medicineID)
--VALUES 
--(1, 'Lahore', 1, 1),
--(2, 'Karachi', 2, 2),
--(3, 'Islamabad', 3, 3),
--(4, 'Faisalabad', 4, 4),
--(5, 'Rawalpindi', 5, 5);

--INSERT INTO review (reviewId, medicineID, customerID, reviewDetail)
--VALUES
--(1, 1, 1, 'Very effective, no side effects'),
--(2, 2, 2, 'Works well, slight dizziness'),
--(3, 3, 3, 'Tastes bad but works fine'),
--(4, 4, 4, 'Caused nausea, not recommended'),
--(5, 5, 5, 'Helped with acid reflux, recommended');