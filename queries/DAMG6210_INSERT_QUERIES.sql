------------------------- Country ---------------------------
INSERT INTO Territory.Country (CountryName) VALUES ('United States');
INSERT INTO Territory.Country (CountryName) VALUES ('United Kingdom'); 
INSERT INTO Territory.Country (CountryName) VALUES ('India');
INSERT INTO Territory.Country (CountryName) VALUES ('China');
INSERT INTO Territory.Country (CountryName) VALUES ('Brazil');
INSERT INTO Territory.Country (CountryName) VALUES ('Nigeria');
INSERT INTO Territory.Country (CountryName) VALUES ('Argentina');
INSERT INTO Territory.Country (CountryName) VALUES ('Russia');
INSERT INTO Territory.Country (CountryName) VALUES ('Japan');
INSERT INTO Territory.Country (CountryName) VALUES ('Turkey');
INSERT INTO Territory.Country (CountryName) VALUES ('France');
INSERT INTO Territory.Country (CountryName) VALUES ('Italy');
INSERT INTO Territory.Country (CountryName) VALUES ('Uganda');
INSERT INTO Territory.Country (CountryName) VALUES ('Canada');

------------------------- Territory.Region ---------------------------
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Northwest',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Southwest',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Northeast',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Southeast',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('North',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('South',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('East',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('West',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('North',2);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('South',2);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('East',2);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('West',2);

------------------------- Territory.Territory ---------------------------
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Guam',2);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('American Samoa',2);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('United States Virgin Islands',3);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Northern Mariana Islands',4);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Bajo Nuevo Bank',5);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Baker Island',6);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Howland Island',7);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Johnston Atoll',8);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Kingman Reef',1);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Navassa Island',3);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Palmyra Atoll',4);

------------------------- Territory.Route ---------------------------
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Ritidan Point',3);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Umantac',3);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Talofofo',3);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Haines City',4);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Kissimmee',4);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Brunswick',4);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Nadir',5);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Charlotte Amalie',5);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('St. Thomas',5);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Rota',6);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Tinian',6);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Saipan',6);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Victorville',7);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Honolulu',7);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Solomon Islands',7);

------------------------- Client.Organization ---------------------------
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',1,'999-999-9999');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',2,'129-678-9999');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',2,'159-678-9699');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',1,'129-678-9499');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',2,'349-678-9299');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',1,'149-678-9199');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',1,'134-678-9199');

------------------------- Client.Company ---------------------------
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (1,1,'Otis Northwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (2,2,'Otis Southeast');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (3,3,'Otis Northeast');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (4,2,'Otis Northwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (5,1,'Otis Northwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (6,1,'Otis Southwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (7,1,'Otis Southwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (1,4,'Otis Southwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (2,3,'Brazil');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (3,3,'China');

------------------------- ProductType ---------------------------
INSERT INTO Product.ProductType (Name) VALUES ('DUMBWAITER');
INSERT INTO Product.ProductType (Name) VALUES ('ELEVATOR');
INSERT INTO Product.ProductType (Name) VALUES ('ESCALATOR'); 

------------------------- Product ---------------------------
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SK500',200,1,'12/20/1996',1); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SK555',400,1,'12/20/1996',0); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SK999',1000,1,'12/20/2006',1); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('KT420',9999,3,'8/14/1993',1); 

------------------------- Status ---------------------------
INSERT INTO Callback.Status (StatusType) VALUES ('Active')
INSERT INTO Callback.Status (StatusType) VALUES ('Completed')
INSERT INTO Callback.Status (StatusType) VALUES ('Closed')
INSERT INTO Callback.Status (StatusType) VALUES ('Cancelled')

------------------------- Gender ---------------------------
INSERT INTO Person.Gender (Gender) VALUES ('MALE');
INSERT INTO Person.Gender (Gender) VALUES ('FEMALE');
INSERT INTO Person.Gender (Gender) VALUES ('Other');

------------------------- Client.Role ---------------------------
INSERT INTO Person.Role (Position) VALUES ('Mechanic');
INSERT INTO Person.Role (Position) VALUES ('Supervisor');
INSERT INTO Person.Role (Position) VALUES ('Branch Manager');
INSERT INTO Person.Role (Position) VALUES ('Sales Represetative');

------------------------ PROCEDURE: InsertTerritoryBuilding-------------------------

EXECUTE InsertTerritoryBuilding
  @StreetNumber=111,
  @Address1='42 People Street',
  @Address2='Texas',
  @RouteID=3
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=68,
  @Address1='34 Wigglesworth',
  @Address2='Boston,MA',
  @RouteID=2
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=232,
  @Address1='DayStreet Street',
  @Address2='Boston,MA',
  @RouteID=1
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=68,
  @Address1='Hungtington Avenue',
  @Address2='Florida',
  @RouteID=3
 GO
 EXECUTE InsertTerritoryBuilding
  @StreetNumber=452,
  @Address1='Alpine Street',
  @Address2='Austin',
  @RouteID=2
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=68,
  @Address1='456 JVue',
  @Address2='Houston',
  @RouteID=1
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=345,
  @Address1='Mission Main',
  @Address2='Illionis',
  @RouteID=1
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=565,
  @Address1='Mission Hill',
  @Address2='New Jersey',
  @RouteID=4
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=534,
  @Address1='34 Ridge',
  @Address2='New York',
  @RouteID=4
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=467,
  @Address1='23 Pimpoli Street',
  @Address2='Blue Mountains,New Hampshire',
  @RouteID=4
 GO
 EXECUTE InsertTerritoryBuilding
  @StreetNumber=454,
  @Address1='345 Roxbury',
  @Address2='New Brunswick',
  @RouteID=5
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=345,
  @Address1='782 Washington Ave',
  @Address2='California,San Fransico',
  @RouteID=5
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=89,
  @Address1='355 MinionLand',
  @Address2='Disney World,Florida',
  @RouteID=5
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=667,
  @Address1='45 Illis Street',
  @Address2='Arizona',
  @RouteID=6
 GO
 EXECUTE InsertTerritoryBuilding
  @StreetNumber=2,
  @Address1='356 Oslin Apt',
  @Address2='Pipor,Maine',
  @RouteID=6
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=456,
  @Address1='355 Persian Pit',
  @Address2='Pinge,Portland',
  @RouteID=6
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=345,
  @Address1='345 Mission Main',
  @Address2='Sam Island,Georgia',
  @RouteID=7
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=86,
  @Address1='24 Poplin Street',
  @Address2='Connecticut',
  @RouteID=7
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=930,
  @Address1='34 Rehab Street',
  @Address2='Tins,Ohai',
  @RouteID=7
 GO
EXECUTE InsertTerritoryBuilding
  @StreetNumber=67,
  @Address1='454 Opppo Street',
  @Address2='Blue Ridge,Utai',
  @RouteID=8
 GO

-------------------------- PROCEDURE: InsertContractUnit ------------------------

EXECUTE InsertContractUnit
    @ProductId=4,
    @IsActive=0,
    @BuildingID=1
GO
