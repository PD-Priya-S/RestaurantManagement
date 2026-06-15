create database Ordermanagement
use ordermanagement

CREATE TABLE Customers(
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE RestaurantTables(
    TableID INT AUTO_INCREMENT PRIMARY KEY,
    TableNumber INT NOT NULL,
    Capacity INT,
    Status VARCHAR(20)
);

CREATE TABLE MenuItems(
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    ItemName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Bookings(
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    TableID INT,
    BookingDate DATE,
    BookingTime TIME,
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY(TableID) REFERENCES RestaurantTables(TableID)
);

CREATE TABLE Orders(
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    TableID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY(TableID) REFERENCES RestaurantTables(TableID)
);

CREATE TABLE OrderDetails(
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ItemID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY(ItemID) REFERENCES MenuItems(ItemID)
);

CREATE TABLE Bills(
    BillID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    BillDate DATE,
    TaxAmount DECIMAL(10,2),
    FinalAmount DECIMAL(10,2),
    PaymentMode VARCHAR(20),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Customers(CustomerName,Phone,Email) VALUES
('Arun','9876543201','arun1@gmail.com'),
('Priya','9876543202','priya2@gmail.com'),
('Rahul','9876543203','rahul3@gmail.com'),
('Sneha','9876543204','sneha4@gmail.com'),
('Vikram','9876543205','vikram5@gmail.com'),
('Ajay','9876543206','ajay6@gmail.com'),
('Divya','9876543207','divya7@gmail.com'),
('Kiran','9876543208','kiran8@gmail.com'),
('Meena','9876543209','meena9@gmail.com'),
('Ravi','9876543210','ravi10@gmail.com'),
('Suresh','9876543211','suresh11@gmail.com'),
('Anitha','9876543212','anitha12@gmail.com'),
('Deepak','9876543213','deepak13@gmail.com'),
('Nisha','9876543214','nisha14@gmail.com'),
('Karthik','9876543215','karthik15@gmail.com'),
('Harini','9876543216','harini16@gmail.com'),
('Prakash','9876543217','prakash17@gmail.com'),
('Mohan','9876543218','mohan18@gmail.com'),
('Gayathri','9876543219','gayathri19@gmail.com'),
('Sarath','9876543220','sarath20@gmail.com'),
('Ramesh','9876543221','ramesh21@gmail.com'),
('Keerthi','9876543222','keerthi22@gmail.com'),
('Lavanya','9876543223','lavanya23@gmail.com'),
('Arvind','9876543224','arvind24@gmail.com'),
('Bharath','9876543225','bharath25@gmail.com'),
('Jeeva','9876543226','jeeva26@gmail.com'),
('Shalini','9876543227','shalini27@gmail.com'),
('Manoj','9876543228','manoj28@gmail.com'),
('Asha','9876543229','asha29@gmail.com'),
('Vignesh','9876543230','vignesh30@gmail.com');
INSERT INTO RestaurantTables(TableNumber, Capacity, Status) VALUES
(1,2,'Available'),
(2,2,'Occupied'),
(3,4,'Available'),
(4,4,'Reserved'),
(5,6,'Available'),
(6,6,'Occupied'),
(7,8,'Available'),
(8,8,'Reserved'),
(9,2,'Available'),
(10,4,'Occupied'),
(11,6,'Available'),
(12,8,'Available'),
(13,4,'Reserved'),
(14,2,'Available'),
(15,6,'Occupied');

INSERT INTO MenuItems(ItemName,Category,Price) VALUES
('Veg Biryani','Main Course',180),
('Chicken Biryani','Main Course',250),
('Mutton Biryani','Main Course',320),
('Paneer Butter Masala','Main Course',220),
('Kadai Paneer','Main Course',240),
('Butter Naan','Bread',40),
('Garlic Naan','Bread',50),
('Tandoori Roti','Bread',30),
('Masala Dosa','South Indian',120),
('Plain Dosa','South Indian',90),
('Onion Dosa','South Indian',140),
('Idli','South Indian',60),
('Vada','South Indian',70),
('Pongal','South Indian',100),
('Veg Fried Rice','Chinese',180),
('Chicken Fried Rice','Chinese',220),
('Noodles','Chinese',170),
('Gobi Manchurian','Chinese',160),
('Pizza','Fast Food',300),
('Burger','Fast Food',150),
('French Fries','Fast Food',120),
('Sandwich','Fast Food',130),
('Coke','Beverage',50),
('Pepsi','Beverage',50),
('Coffee','Beverage',40),
('Tea','Beverage',30),
('Lassi','Beverage',80),
('Ice Cream','Dessert',90),
('Gulab Jamun','Dessert',70),
('Brownie','Dessert',110);

INSERT INTO Bookings(CustomerID,TableID,BookingDate,BookingTime) VALUES
(1,1,'2025-07-01','18:00:00'),
(2,2,'2025-07-01','18:15:00'),
(3,3,'2025-07-01','18:30:00'),
(4,4,'2025-07-01','18:45:00'),
(5,5,'2025-07-01','19:00:00'),
(6,6,'2025-07-02','18:00:00'),
(7,7,'2025-07-02','18:15:00'),
(8,8,'2025-07-02','18:30:00'),
(9,9,'2025-07-02','18:45:00'),
(10,10,'2025-07-02','19:00:00'),
(11,11,'2025-07-03','18:00:00'),
(12,12,'2025-07-03','18:15:00'),
(13,13,'2025-07-03','18:30:00'),
(14,14,'2025-07-03','18:45:00'),
(15,15,'2025-07-03','19:00:00'),
(16,1,'2025-07-04','18:00:00'),
(17,2,'2025-07-04','18:15:00'),
(18,3,'2025-07-04','18:30:00'),
(19,4,'2025-07-04','18:45:00'),
(20,5,'2025-07-04','19:00:00'),
(21,6,'2025-07-05','18:00:00'),
(22,7,'2025-07-05','18:15:00'),
(23,8,'2025-07-05','18:30:00'),
(24,9,'2025-07-05','18:45:00'),
(25,10,'2025-07-05','19:00:00'),
(26,11,'2025-07-06','18:00:00'),
(27,12,'2025-07-06','18:15:00'),
(28,13,'2025-07-06','18:30:00'),
(29,14,'2025-07-06','18:45:00'),
(30,15,'2025-07-06','19:00:00');

INSERT INTO Orders(CustomerID,TableID,OrderDate,TotalAmount) VALUES
(1,1,'2025-07-01 18:10:00',350),
(2,2,'2025-07-01 18:20:00',450),
(3,3,'2025-07-01 18:30:00',520),
(4,4,'2025-07-01 18:40:00',300),
(5,5,'2025-07-01 18:50:00',600),
(6,6,'2025-07-02 18:10:00',250),
(7,7,'2025-07-02 18:20:00',470),
(8,8,'2025-07-02 18:30:00',510),
(9,9,'2025-07-02 18:40:00',320),
(10,10,'2025-07-02 18:50:00',680),
(11,11,'2025-07-03 18:10:00',350),
(12,12,'2025-07-03 18:20:00',450),
(13,13,'2025-07-03 18:30:00',520),
(14,14,'2025-07-03 18:40:00',300),
(15,15,'2025-07-03 18:50:00',600),
(16,1,'2025-07-04 18:10:00',250),
(17,2,'2025-07-04 18:20:00',470),
(18,3,'2025-07-04 18:30:00',510),
(19,4,'2025-07-04 18:40:00',320),
(20,5,'2025-07-04 18:50:00',680),
(21,6,'2025-07-05 18:10:00',350),
(22,7,'2025-07-05 18:20:00',450),
(23,8,'2025-07-05 18:30:00',520),
(24,9,'2025-07-05 18:40:00',300),
(25,10,'2025-07-05 18:50:00',600),
(26,11,'2025-07-06 18:10:00',250),
(27,12,'2025-07-06 18:20:00',470),
(28,13,'2025-07-06 18:30:00',510),
(29,14,'2025-07-06 18:40:00',320),
(30,15,'2025-07-06 18:50:00',680);

INSERT INTO OrderDetails(OrderID,ItemID,Quantity,SubTotal) VALUES
(1,1,2,360),
(2,2,2,500),
(3,3,1,320),
(4,4,1,220),
(5,5,2,480),
(6,6,4,160),
(7,7,2,100),
(8,8,3,90),
(9,9,2,240),
(10,10,2,180),
(11,11,2,280),
(12,12,3,180),
(13,13,2,140),
(14,14,2,200),
(15,15,2,360),
(16,16,1,220),
(17,17,2,340),
(18,18,2,320),
(19,19,1,300),
(20,20,2,300),
(21,21,2,240),
(22,22,2,260),
(23,23,4,200),
(24,24,4,200),
(25,25,3,120),
(26,26,3,90),
(27,27,2,160),
(28,28,2,180),
(29,29,3,210),
(30,30,2,220);

INSERT INTO Bills(OrderID,BillDate,TaxAmount,FinalAmount,PaymentMode) VALUES
(1,'2025-07-01',17.5,367.5,'UPI'),
(2,'2025-07-01',22.5,472.5,'Cash'),
(3,'2025-07-01',26.0,546.0,'Card'),
(4,'2025-07-01',15.0,315.0,'UPI'),
(5,'2025-07-01',30.0,630.0,'Cash'),
(6,'2025-07-02',12.5,262.5,'Card'),
(7,'2025-07-02',23.5,493.5,'UPI'),
(8,'2025-07-02',25.5,535.5,'Cash'),
(9,'2025-07-02',16.0,336.0,'Card'),
(10,'2025-07-02',34.0,714.0,'UPI'),
(11,'2025-07-03',17.5,367.5,'Cash'),
(12,'2025-07-03',22.5,472.5,'Card'),
(13,'2025-07-03',26.0,546.0,'UPI'),
(14,'2025-07-03',15.0,315.0,'Cash'),
(15,'2025-07-03',30.0,630.0,'Card'),
(16,'2025-07-04',12.5,262.5,'UPI'),
(17,'2025-07-04',23.5,493.5,'Cash'),
(18,'2025-07-04',25.5,535.5,'Card'),
(19,'2025-07-04',16.0,336.0,'UPI'),
(20,'2025-07-04',34.0,714.0,'Cash'),
(21,'2025-07-05',17.5,367.5,'Card'),
(22,'2025-07-05',22.5,472.5,'UPI'),
(23,'2025-07-05',26.0,546.0,'Cash'),
(24,'2025-07-05',15.0,315.0,'Card'),
(25,'2025-07-05',30.0,630.0,'UPI'),
(26,'2025-07-06',12.5,262.5,'Cash'),
(27,'2025-07-06',23.5,493.5,'Card'),
(28,'2025-07-06',25.5,535.5,'UPI'),
(29,'2025-07-06',16.0,336.0,'Cash'),
(30,'2025-07-06',34.0,714.0,'Card');

SELECT * FROM Customers;
SELECT * FROM RestaurantTables;
SELECT * FROM MenuItems;
SELECT * FROM Bookings;
SELECT * FROM Orders;
SELECT * FROM Orderdetails;
SELECT * FROM Bills;

SELECT c.CustomerName,o.OrderID,o.TotalAmount
FROM Customers c
JOIN Orders o
ON c.CustomerID=o.CustomerID;

SELECT SUM(b.FinalAmount) AS TotalRevenue
FROM Orders o
JOIN Bills b
ON o.OrderID = b.OrderID;

SELECT m.ItemName,
SUM(od.Quantity) AS TotalSold
FROM MenuItems m
JOIN OrderDetails od
ON m.ItemID=od.ItemID
GROUP BY m.ItemName
ORDER BY TotalSold DESC;

SELECT o.OrderID,
c.CustomerName,
m.ItemName,
od.Quantity,
od.SubTotal
FROM Orders o
JOIN Customers c ON o.CustomerID=c.CustomerID
JOIN OrderDetails od ON o.OrderID=od.OrderID
JOIN MenuItems m ON od.ItemID=m.ItemID;

SELECT c.CustomerName,
       SUM(b.FinalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN Bills b
ON o.OrderID = b.OrderID
GROUP BY c.CustomerName
ORDER BY TotalSpent DESC
LIMIT 1;

SELECT c.CustomerName,
       r.TableNumber,
       m.ItemName,
       od.Quantity,
       b.FinalAmount
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID;

SELECT c.CustomerID,
       c.CustomerName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

SELECT r.TableNumber
FROM RestaurantTables r
LEFT JOIN Bookings b
ON r.TableID = b.TableID
WHERE b.BookingID IS NULL;

SELECT c.CustomerName,
       b.FinalAmount
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN Bills b
ON o.OrderID = b.OrderID
WHERE b.FinalAmount > 500;



JOIN RestaurantTables r
ON o.TableID = r.TableID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN MenuItems m
ON od.ItemID = m.ItemID
JOIN Bills b
ON o.OrderID = b.OrderID;

SELECT m.ItemName,
       COUNT(*) AS TimesOrdered
FROM MenuItems m
JOIN OrderDetails od
ON m.ItemID = od.ItemID
GROUP BY m.ItemName
ORDER BY TimesOrdered DESC
LIMIT 1;

SELECT c.CustomerName,
       AVG(b.FinalAmount) AS AvgSpending
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN Bills b
ON o.OrderID = b.OrderID
GROUP BY c.CustomerName;

SELECT DISTINCT c.CustomerName,
                m.ItemName
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN MenuItems m
ON od.ItemID = m.ItemID
WHERE m.Category = 'Dessert';

SELECT m.Category,
       SUM(od.SubTotal) AS Revenue
FROM MenuItems m
JOIN OrderDetails od
ON m.ItemID = od.ItemID
GROUP BY m.Category;

SELECT c.CustomerName,
       COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY TotalOrders DESC
LIMIT 1;

SELECT PaymentMode,
       COUNT(*) AS UsageCount
FROM Bills
GROUP BY PaymentMode
ORDER BY UsageCount DESC
LIMIT 1;

SELECT c.CustomerName,
       b.BookingDate,
       DATE(o.OrderDate) AS OrderDay
FROM Customers c
JOIN Bookings b
ON c.CustomerID = b.CustomerID
JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE b.BookingDate = DATE(o.OrderDate);