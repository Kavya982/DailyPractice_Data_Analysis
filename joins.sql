CREATE TABLE Customerstable (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Orderstable (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customerstable(CustomerID)
);

INSERT INTO Customerstable (CustomerID, CustomerName, ContactName, Country) VALUES
(1, 'John Doe', 'John D.', 'USA'),
(2, 'Jane Smith', 'Jane S.', 'UK'),
(3, 'Alice Brown', 'Alice B.', 'Canada'),
(4, 'Bob Johnson', 'Bob J.', 'Australia');

INSERT INTO Orderstable (OrderID, OrderDate, CustomerID, Amount) VALUES
(101, '2024-09-01', 1, 250.00),
(102, '2024-09-05', 2, 300.00),
(103, '2024-09-07', 1, 150.00),
(104, '2024-09-10', 3, 450.00);

select * from Customerstable;

select * from Orderstable;

select c.CustomerName,c.CustomerID,o.OrderID,o.Amount from Customerstable as c inner  join Orderstable as o on c.CustomerID=o.CustomerID;

select c.CustomerName,c.CustomerID,o.OrderID,o.Amount from Customerstable as c left join Orderstable as o on c.CustomerID=o.CustomerID;

select c.CustomerName,c.CustomerID,o.OrderID,o.Amount from Customerstable as c right join Orderstable as o on c.CustomerID=o.CustomerID;

select c.CustomerName,c.CustomerID,o.OrderID,o.Amount from Customerstable as c join Orderstable as o on c.CustomerID=o.CustomerID;


create table drinks(id int,name varchar(20));

insert into drinks values(1,"tea"),(2,"Coffee"),(3,"Milk");

create table snacks(id int , name varchar(20));

insert into snacks values(1,"pizza"),(2,"burger"),(3,"sandwhich");

select * from drinks;

select * from snacks;


select * from drinks cross join snacks;
