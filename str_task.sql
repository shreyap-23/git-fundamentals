use str_db
--TASK ON FUNCTIONS

--1
 create table Employees(EmployeeID int , FirstName varchar(20),LastName varchar(20));
 Insert Into Employees(EmployeeID,FirstName,LastName) values
 (1,'John','Doe'),
 (2,'Jane','Smith'),
 (3,'Alice','Johnson');
 select * from Employees;
 --2
  CREATE table Products(ProductID INT,	ProductName VARCHAR (50),ProductDescription VARCHAR (50));
  Insert Into Products(ProductID ,ProductName,ProductDescription) values 
(101,	'Widget A',	'A standard widget'),
(102,	'Gadget B',	'A fancy new gadget'),
(103,	'Thingamajig'	,'A very useful tool');
select * from Products;

--3
create table SalesOrders (SalesOrderID int ,OrderDate datetime,	TotalAmount decimal(10,2));
insert into SalesOrders(SalesOrderID,OrderDate,TotalAmount) values
(1001,	'2023-01-15 14:33:00',	150.00),
(1002,	'2023-03-22 10:45:00',	200.00),
(1003,	'2024-05-17 09:20:00',	350.00);
select * from SalesOrders;
--4
 create table Customers (CustomerID int,	CustomerName varchar(30),	Address nvarchar(30));
 insert into Customers (CustomerID	,CustomerName	,Address) values
(201	,'Acme Corp','123 Main St'),
(202	,'Globex Inc','456 Elm St'),
(203	,'Initech','789 Oak St');
select * from Customers;
--Exercise 1: Employee Full Name
Scenario: You need to create a list of employees with their full names in uppercase.
Expected Output:

EmployeeID	 FullName
1	         JOHN DOE
2	         JANE SMITH
3	         ALICE JOHNSON

select EmployeeID, upper(concat (FirstName ,' ' , LastName)) from employees;

--Exercise 2: Product Description Length
Scenario: You need to find the length of the product descriptions.

Expected Output:

ProductID	ProductName	DescriptionLength
101	Widget A	17
102	Gadget B	18
103	Thingamajig	18

select ProductID,	ProductName	, len (ProductDescription) from Products;

--Exercise 3: Sales Date Formatting
Scenario: You need to display sales order dates in the YYYY-MM-DD format.

Expected Output:

SalesOrderID	FormattedOrderDate
1001	2023-01-15
1002	2023-03-22
1003	2024-05-17
select SalesOrderID, format(OrderDate, 'yyyy-MM-dd') from SalesOrders;

--Exercise 4: Customer Address Cleanup
Scenario: You need to remove leading and trailing spaces from the customer addresses.
Expected Output:
CustomerID	CustomerName	CleanedAddress
201	Acme Corp	123 Main St
202	Globex Inc	456 Elm St
203	Initech	789 Oak St
select CustomerID,CustomerName, trim(Address) as cleanaddress from Customers;

--Exercise 5: Sales Summary by Year
Scenario: You need to show the total sales amount for each year.
Expected Output:
Year	TotalSales
2023	350.00
2024	350.00

select  format(OrderDate,'yyyy') as year , sum(TotalAmount) from SalesOrders
group by format(OrderDate,'yyyy')
;
 -----TASKKKKK
 create table Employee(EmployeeID int , FirstName varchar(20),LastName varchar(20),DepartmentID INT);
 Insert Into Employee(EmployeeID,FirstName,LastName,DepartmentID) values
 (1,'John','Doe',101),
 (2,'Jane','Smith',102),
 (3,'Alice','Johnson',103);
 select * from Employee;
 Create table Departments(DepartmentID int,	DepartmentName varchar (20));
insert into Departments ( DepartmentID	,DepartmentName) values
(101,	'Sales'),
(102,	'Engineering'),
(103,	'Marketing');
select  * from Departments;

select EmployeeID , upper(concat (FirstName ,' ' , LastName)) as FullName  , 	DepartmentName from Employee as e
 join Departments as d on e.DepartmentID = d.DepartmentID  ;
---2
  CREATE table Product (ProductID INT,	ProductName VARCHAR (50),ProductDescription VARCHAR (50));
  Insert Into Product(ProductID ,ProductName,ProductDescription) values 
(101,	'Widget A',	'A standard widget'),
(102,	'Gadget B',	'A fancy new gadget'),
(103,	'Thingamajig'	,'A very useful tool');
select * from Product;
select ProductID,	ProductName	, len (ProductDescription) as Descriptionlength , reverse(ProductName ) from product   ;


--3
create table SalesOrder (SalesOrderID int , CustomerID int ,OrderDate datetime,	TotalAmount decimal(10,2));
insert into SalesOrder(SalesOrderID,CustomerID,OrderDate,TotalAmount) values
(1001,201,	'2023-01-15 14:33:00',	150.00),
(1002,202,	'2023-03-22 10:45:00',	200.00),
(1003,201,	'2024-05-17 09:20:00',	350.00);
select * from SalesOrder;
 create table Customer (CustID int,	CustomerName varchar(30));
 insert into Customer (CustID	,CustomerName	) values
(201	,'Acme Corp'),
(202	,'Globex Inc'),
(203	,'Initech');
select * from Customer;

select CustID	,CustomerName ,  format(OrderDate,'yyyy') as year , TotalAmount as totalsale from SalesOrder as s
join Customer as c on s.CustomerID = c.CustID order by CustID;

---4
SELECT   ProductID,	ProductName	, replace (ProductDescription, 'useful' , 'beneficial ') as ModifiedDescription from product 
where ProductDescription like '%useful%';

---5
create table SalesOrder (SalesOrderID int , CustomerID int ,OrderDate datetime,	TotalAmount decimal(10,2));
insert into SalesOrder(SalesOrderID,CustomerID,OrderDate,TotalAmount) values
(1001,201,	'2023-01-15 14:33:00',	150.00),
(1002,202,	'2023-03-22 10:45:00',	200.00),
(1003,201,	'2024-05-17 09:20:00',	350.00);
select * from SalesOrder;
 create table Customer (CustID int,	CustomerName varchar(30));
 insert into Customer (CustID	,CustomerName	) values
(201	,'Acme Corp'),
(202	,'Globex Inc'),
(203	,'Initech');
select * from Customer
select * from SalesOrder;


select SalesOrderID,CustomerName,format(OrderDate,'yyyy-mm-dd') as FormattedOrderDate ,TotalAmount from SalesOrder as s
join Customer as c on s.CustomerID = c.CustID;