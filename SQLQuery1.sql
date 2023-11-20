--CREATE DATABASE ProductSold;
--USE ProductSold
--CREATE TABLE Employee(
--	Id int identity PRIMARY KEY,
--	Name nvarchar(255),
--	PositionId int REFERENCES Position(Id),
--	Salary int
--);
--CREATE TABLE Position(
--	Id int identity PRIMARY KEY,
--	Name nvarchar(255)
--);
--CREATE TABLE Branch(
--	Id int identity PRIMARY KEY,
--	Name nvarchar(255)
--);
--CREATE TABLE Product(
--	Id int identity PRIMARY KEY,
--	Name nvarchar(255),
--	PurchasePrice int,
--	SellingPrice int  
--);
--CREATE TABLE Sell(
--	ProductId int REFERENCES Product(Id),
--	EmployeeId int REFERENCES Employee(Id),
--	BranchID int REFERENCES Branch(Id),
--	SellTime date
--);

--SELECT * FROM Position
--SELECT * FROM Branch
--SELECT * FROM Employee
--SELECT * FROM Product
--SELECT * FROM Sell

--INSERT INTO Position
--VALUES (N'Anbardar');
--INSERT INTO Position
--VALUES (N'Satıcı');
--INSERT INTO Position
--VALUES (N'Müdir');

--INSERT INTO Branch
--VALUES (N'Sumqayıt');
--INSERT INTO Branch
--VALUES (N'Bakı');
--INSERT INTO Branch
--VALUES (N'Xaçmaz');
--INSERT INTO Branch
--VALUES (N'Ağdam');

--INSERT INTO Employee
--VALUES (N'Rəşad', 3, 1200);
--INSERT INTO Employee
--VALUES (N'RəşadS', 2, 700);
--INSERT INTO Employee
--VALUES (N'RəşadA', 1, 900);
--INSERT INTO Employee
--VALUES (N'SəlimovS', 2, 1000);

--INSERT INTO Product
--VALUES (N'Yağ', 15, 30);
--INSERT INTO Product
--VALUES (N'Ət', 30, 45);
--INSERT INTO Product
--VALUES (N'Kolbasa', 25, 30);
--INSERT INTO Product
--VALUES (N'Tort', 30, 50);

--INSERT INTO Sell
--VALUES (4,2,1,'2023-11-09');
--INSERT INTO Sell
--VALUES (1,2,2,'2023-11-12');
--INSERT INTO Sell
--VALUES (2,1,3,'2023-11-16');
--INSERT INTO Sell
--VALUES (3,3,4,'2023-11-18');
--INSERT INTO Sell
--VALUES (3,4,2,'2023-10-08');






--TASK 1--
--SELECT e.Name, p.Name, b.Name, p.PurchasePrice, p.SellingPrice
--FROM Employee AS e
--JOIN Sell AS s ON s.EmployeeId = e.Id
--JOIN Product AS p ON p.Id =s.ProductId
--JOIN Branch AS b ON s.BranchID = b.Id

--TASK 2--
--SELECT Sum(p.SellingPrice) AS UmumiSatish FROM Product AS p
--Join Sell AS s ON s.ProductId = p.Id

--TASK 3--
--SELECT p.Name, s.SellTime AS UmumiSatish FROM Product AS p
--Join Sell AS s ON s.ProductId = p.Id
--WHERE MONTH(Getdate()) = MONTH(s.SellTime)

--SELECT * FROM Sell