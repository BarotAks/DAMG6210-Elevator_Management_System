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
  SerialNo int NOT NULL PRIMARY KEY,
  ProductID int FOREIGN KEY REFERENCES Product.Product(ProductID),
  IsActive bit,
  BuildingID int FOREIGN KEY REFERENCES Territory.Building(BuildingID)

);

CREATE TABLE Contract.Sale(
  SaleID int NOT NULL PRIMARY KEY,
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

ALTER TABLE Contract.Sale
DROP CONSTRAINT PK__Sale__1EE3C41F80723600;

ALTER TABLE Contract.Sale
ALTER COLUMN SaleID int NULL PRIMARY key;

ALTER TABLE Contract.Sale
ADD CONSTRAINT PK_saleId PRIMARY KEY NONCLUSTERED (SaleID);

ALTER TABLE Contract.Sale
DROP COLUMN SalesTerritoryID;

ALTER TABLE Contract.Sale
 ADD CompanyID int
 FOREIGN KEY(CompanyID) REFERENCES Client.Company(CompanyID);

---Foram---


