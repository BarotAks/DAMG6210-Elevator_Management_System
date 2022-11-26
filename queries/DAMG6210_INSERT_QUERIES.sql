USE Team_Project10;

-- Script for creating territory schema

GO
CREATE SCHEMA Territory
GO

CREATE TABLE Territory.Country (
    CountryCode INT PRIMARY KEY,
    CountryName VARCHAR(255)
);

CREATE TABLE Territory.Region (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(10),
    CountryCode INT FOREIGN KEY(CountryCode) REFERENCES Territory.Country(CountryCode)
);

CREATE TABLE Territory.Territory (
    TerritoryID INT PRIMARY KEY,
    RegionName VARCHAR(10),
    RegionID INT FOREIGN KEY(RegionID) REFERENCES Territory.Region(RegionID)
);

CREATE TABLE Territory.Route (
    RouteID INT PRIMARY KEY,
    RouteName VARCHAR(10),
    TerritoryID INT FOREIGN KEY(TerritoryID) REFERENCES Territory.Territory(TerritoryID)
);

CREATE TABLE Territory.Building (
    BuildingID INT PRIMARY KEY,
    StreetNumber INT,
    [Address 1] VARCHAR,
    [Address 2] VARCHAR,
    RouteID INT FOREIGN KEY(RouteID) REFERENCES Territory.Route(RouteID)
);

CREATE TABLE Territory.Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR,
    FixedPrice NUMERIC,
    ProductType VARCHAR,
    ManufacturingDate DATE,
    IsCommercial BIT
);

CREATE TABLE Territory.Unit (
    SerialNumber INT PRIMARY KEY,
    IsActive BIT,
    ProductID INT FOREIGN KEY(ProductID) REFERENCES Territory.Product(ProductID),
    BuildingID INT FOREIGN KEY(BuildingID) REFERENCES Territory.Building(BuildingID)
);

----Siddhant-----

CREATE SCHEMA Contract;

CREATE TABLE Contract.Unit(
  SerialNo int PRIMARY KEY,
  ProductID int FOREIGN KEY REFERENCES Product.Product(ProductID),
  IsActive bit,
  BuildingID int FOREIGN KEY REFERENCES Territory.Building(BuildingID)

);

CREATE TABLE Contract.Sale(
  SaleID int  PRIMARY KEY,
    SerialNo int FOREIGN KEY REFERENCES Contract.Unit(SerialNo),
	SalesRepID int FOREIGN KEY REFERENCES Person.Employee(EmployeeId),
	BillingCycle varchar(255),
	Price money,
	ContractDate date,
	CustomerID int FOREIGN KEY REFERENCES Person.Customer(CustomerId),
	Tenure numeric,
	BillingMode varchar(255),
   SalesTerritoryID int FOREIGN KEY REFERENCES Territory.Territory(TerritoryID)

);

---Akshita--


USE Team_Project10;

CREATE SCHEMA Callback; 


CREATE TABLE Callback.Callback
(CallbackID INT,
 RouteID INT,
 MechanicID INT,
 Status BIT,
 CallbackDate DATE,
 SerialNumber INT
 PRIMARY KEY (CallbackID),
 FOREIGN KEY (RouteID) REFERENCES Territory.Route(RouteID) ,
 FOREIGN KEY (MechanicID) REFERENCES Person.Employee(EmployeeId),
 FOREIGN KEY (SerialNumber) REFERENCES Territory.Unit(SerialNumber)
);


CREATE TABLE Callback.MaintenanceJobs
(JobID INT,
 EmployeeID INT,
 RouteID INT,
 VisitDate DATE,
 JobStatus BIT,
 SerialNumber INT
 PRIMARY KEY (JobID),
 FOREIGN KEY (RouteID) REFERENCES Territory.Route(RouteID) ,
 FOREIGN KEY (EmployeeID) REFERENCES Person.Employee(EmployeeId),
 FOREIGN KEY (SerialNumber) REFERENCES Territory.Unit(SerialNumber)
);


-----Kinjal------

USE Team_Project10;

-- Script for creating Person schema
GO
CREATE SCHEMA Person
GO

CREATE TABLE Person.Person (
    PersonId INT PRIMARY KEY,
    FirstName VARCHAR(200),
    LastName VARCHAR(200),
    PhoneNumber INT,
    EmailAddress VARCHAR(200),
    Gender VARCHAR(200)
);

CREATE TABLE Person.Employee (
    EmployeeId INT PRIMARY KEY,
    CompanyId INT ,
    RoleId INT ,
    JoiningDate DATE,
    LastDate DATE
);

-- ALTER TABLE Person.Employee 
-- add  constraint RoleId FOREIGN KEY(RoleId) REFERENCES Person.Role(RoleId);

-- ALTER TABLE Person.Employee 
-- add  constraint CompanyID FOREIGN KEY(CompanyID) REFERENCES Client.Company(CompanyID);

CREATE TABLE Person.Role (
    RoleId INT PRIMARY KEY,
    Position VARCHAR(200)
);

CREATE TABLE Person.Customer(
    CustomerId INT PRIMARY KEY,
    CompanyId INT
);

CREATE TABLE Person.UserDetails (
    LoginId VARCHAR(200),
    EncryptedPassword VARBINARY(250),
    PersonId INT FOREIGN KEY(PersonId) REFERENCES Person.Person(PersonId)
);
