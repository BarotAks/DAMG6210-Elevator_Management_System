USE Team_Project10;

-- Script for creating territory schema

GO
CREATE SCHEMA Territory
GO

CREATE TABLE Territory.Country (
    CountryCode INT IDENTITY(1,1) PRIMARY KEY,
    CountryName VARCHAR(255)
);

CREATE TABLE Territory.Region (
    RegionID INT IDENTITY(1,1) PRIMARY KEY,
    RegionName VARCHAR(10),
    CountryCode INT FOREIGN KEY(CountryCode) REFERENCES Territory.Country(CountryCode)
);

CREATE TABLE Territory.Territory (
    TerritoryID INT IDENTITY(1,1) PRIMARY KEY,
    TerritoryName VARCHAR(10),
    RegionID INT FOREIGN KEY(RegionID) REFERENCES Territory.Region(RegionID)
);

INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Suffolk',1); 

CREATE TABLE Territory.Route (
    RouteID INT IDENTITY(1,1) PRIMARY KEY,
    RouteName VARCHAR(100),
    TerritoryID INT FOREIGN KEY(TerritoryID) REFERENCES Territory.Territory(TerritoryID)
);

INSERT INTO Territory.Route (RouteName,TerritoryID) VALUES ('Jamica Plain',1); 
INSERT INTO Territory.Route (RouteName,TerritoryID) VALUES ('Malden',1); 

CREATE TABLE Territory.Building (
    BuildingID INT IDENTITY(1,1) PRIMARY KEY,
    StreetNumber INT,
    [Address 1] VARCHAR(50),
    [Address 2] VARCHAR(50),
    RouteID INT FOREIGN KEY(RouteID) REFERENCES Territory.Route(RouteID)
);

INSERT INTO Territory.Building (StreetNumber,[Address 1],[Address 2],RouteID) VALUES (77,'Russell St. Apt 2','Boston, MA',2); 

-- Schema: Product

GO 
CREATE SCHEMA Product
GO

CREATE TABLE Product.ProductType(
    ProductTypeID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(20)
)

INSERT INTO Product.ProductType (Name) VALUES ('DUMBWAITER');
INSERT INTO Product.ProductType (Name) VALUES ('ELEVATOR');
INSERT INTO Product.ProductType (Name) VALUES ('ESCALATOR'); 

CREATE TABLE Product.Product (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(20),
    FixedPrice NUMERIC,
    ProductTypeID INT FOREIGN KEY(ProductTypeID) REFERENCES Product.ProductType(ProductTypeID),
    ManufacturingDate DATE,
    IsCommercial BIT
);

INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SK500',200,1,'12/20/1996',1); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SK555',400,1,'12/20/1996',0); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SK999',1000,1,'12/20/2006',1); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('KT420',9999,3,'8/14/1993',1); 

----Siddhant-----
Go
CREATE SCHEMA Contract
Go

CREATE TABLE Contract.Unit(
  SerialNo int IDENTITY(1,1) PRIMARY KEY,
  ProductID int FOREIGN KEY REFERENCES Product.Product(ProductID),
  IsActive bit,
  BuildingID int FOREIGN KEY REFERENCES Territory.Building(BuildingID)
);

INSERT INTO Contract.Unit (ProductID,IsActive,BuildingID) VALUES (2,3,1);

CREATE TABLE Contract.Sale(
	SaleID int IDENTITY(1,1) PRIMARY KEY,
    SerialNo int FOREIGN KEY REFERENCES Contract.Unit(SerialNo),
	SalesRepID int FOREIGN KEY REFERENCES Person.Employee(EmployeeId),
	BillingCycle varchar(255),
	Price money,
	ContractDate date,
	CustomerID int FOREIGN KEY REFERENCES Person.Customer(CustomerId),
	Tenure numeric,
	BillingMode varchar(255),
	CompanyID int FOREIGN KEY REFERENCES Client.Company(CompanyID)
);

---Akshita--

Go
CREATE SCHEMA Callback
Go

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
 FOREIGN KEY (SerialNumber) REFERENCES Contract.Unit(SerialNo)
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
 FOREIGN KEY (SerialNumber) REFERENCES Contract.Unit(SerialNo)
);

-----Kinjal------

GO
CREATE SCHEMA Person
GO

CREATE TABLE Person.Gender(
    GenderID INT IDENTITY(1,1) PRIMARY KEY,
    Gender VARCHAR(10)
)

INSERT INTO Person.Gender (Gender) VALUES ('MALE');
INSERT INTO Person.Gender (Gender) VALUES ('FEMALE');
INSERT INTO Person.Gender (Gender) VALUES ('Other');

CREATE TABLE Person.Person (
    PersonId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(200) NOT NULL,
    LastName VARCHAR(200) NOT NULL,
    PhoneNumber CHAR(12), -- you might not want to have such a precise length
    CONSTRAINT chk_phone CHECK (PhoneNumber NOT LIKE '%[^0-9+-.]%'),
    DateofBirth Date,
    AGE AS DATEDIFF(hour,DateOfBirth,GETDATE())/8766,
    EmailAddress VARCHAR(200),
    GenderID INT FOREIGN KEY REFERENCES Person.Gender(GenderID)
);

INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Siddhant','Kohli','898-982-9304','12/20/1996','kohli.sid@northeastern.edu',1);

CREATE TABLE Person.Employee (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    CompanyId INT FOREIGN KEY REFERENCES Client.Company(CompanyID),
    RoleId INT FOREIGN KEY REFERENCES Person.Role(RoleId),
    JoiningDate DATE,
    LastDate DATE
);

CREATE TABLE Person.Role (
    RoleId INT IDENTITY(1,1) PRIMARY KEY,
    Position VARCHAR(200)
);

CREATE TABLE Person.Customer(
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    CompanyId INT FOREIGN KEY REFERENCES Client.Company(CompanyID)
);

CREATE TABLE Person.UserDetails (
    LoginId VARCHAR(200) PRIMARY KEY,
    EncryptedPassword VARBINARY(250)
    -- CONSTRAINT chk_pass CHECK (EncryptedPassword like '%[0-9]%' 
    -- and EncryptedPassword like '%[A-Z]%' 
    -- and EncryptedPassword like '%[!@#$%a^&*()-_+=.,;:"`~]%'
    -- and len(EncryptedPassword) >= 8),
    -- PersonId INT FOREIGN KEY(PersonId) REFERENCES Person.Person(PersonId)
);

OPEN SYMMETRIC KEY PasswordSymmetricKeyTeam
DECRYPTION BY CERTIFICATE PasswordCertificateTeam;

DROP TABLE Person.UserDetails

---Forum--
Go
CREATE SCHEMA Client
GO

CREATE TABLE Client.Organization (
    OrganizationID INT IDENTITY(1,1) PRIMARY KEY,
    OrganizationName VARCHAR(200) NOT NULL,
    OrganizationCountryCode INT FOREIGN KEY REFERENCES territory.country(CountryCode),
    OrganizationSSN VARCHAR(12) NOT NULL
);
DROP TABLE Client.Organization

INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',1,'999-999-9999');

CREATE TABLE Client.Company (
    CompanyID INT IDENTITY(1,1) PRIMARY KEY,
    OrganizationID INT FOREIGN KEY REFERENCES Client.Organization(OrganizationID),
    RegionID INT FOREIGN KEY REFERENCES Territory.Region(RegionID) ,
    CompanyName VARCHAR(200)
);

INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (1,1,'Otis Northeast');


--