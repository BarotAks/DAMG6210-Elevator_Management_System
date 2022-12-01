USE Team_Project10;

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
INSERT INTO Territory.Country (CountryName) VALUES ('Australia');
INSERT INTO Territory.Country (CountryName) VALUES ('Nepal');
INSERT INTO Territory.Country (CountryName) VALUES ('Germany');
INSERT INTO Territory.Country (CountryName) VALUES ('Mexico');
INSERT INTO Territory.Country (CountryName) VALUES ('Sri Lanka');
INSERT INTO Territory.Country (CountryName) VALUES ('Bangladesh');
INSERT INTO Territory.Country (CountryName) VALUES ('Belgium');
INSERT INTO Territory.Country (CountryName) VALUES ('Poland');
INSERT INTO Territory.Country (CountryName) VALUES ('South Korea');
INSERT INTO Territory.Country (CountryName) VALUES ('New Zealand');
INSERT INTO Territory.Country (CountryName) VALUES ('Spain');

------------------------- Territory.Region ---------------------------
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Northwest',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Southwest',3);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Northeast',5);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Southeast',7);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('North',1);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('South',8);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('East',10);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('West',12);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('North',20);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('South',18);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('East',14);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('West',14);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Northeast',17);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Southwest',23);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('West',3);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('North',5);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('East',6);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('South',8);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Southwest',12);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Northwest',22);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('West',21);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('East',22);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Southeast',25);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Northeast',15);
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('North',12);

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
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Palau',5);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Midway Islands',16);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Baker Island',19);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Jarvis Island',12);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Kingman Reef',13);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('American Samoa',10);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Guam',16);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Serranilla Bank',17);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Jarvis Island',12);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Palmyra Atoll',14);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Palau',23);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Bajo Nuevo Bank',24);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Baker Island',18);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Northern Mariana Islands',20);
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Marshall Islands',25);

------------------------- Territory.Route ---------------------------
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Ritidan Point',3);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Umantac',5);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Talofofo',12);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Haines City',14);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Kissimmee',4);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Brunswick',6);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Nadir',8);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Charlotte Amalie',4);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('St. Thomas',14);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Rota',16);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Tinian',19);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Saipan',23);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Victorville',20);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Honolulu',17);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Tokyo',7);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Queensland',12);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Capri',12);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Seoul',22);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Mumbai',13);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Madrid',9);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Munich',18);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Lyon',14);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Hongzhou',2);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Provincetown',9);
INSERT INTO Territory.Route(RouteName,TerritoryID) VALUES ('Pasadena',11);

------------------------- Client.Organization ---------------------------
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',1,'999-999-9999');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS UK',2,'129-567-9999');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS IN',3,'159-678-9699');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS CA',14,'906-657-9499');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS MX',18,'349-496-9299');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS AU',15,'149-570-9199');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS SL',19,'134-123-9199');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS ES',25,'179-367-9023');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS FR',11,'567-457-8301');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS JP',9,'432-980-9824');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS NP',16,'892-683-3249');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS BD',20,'980-948-7428');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS DE',17,'025-729-5795');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS NZ',24,'105-232-7625');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS BG',21,'124-550-0953');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS PL',22,'924-785-9803');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS UG',13,'893-340-6748');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS TR',10,'128-888-9192');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS AR',7,'174-999-6223');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS RU',8,'888-552-8765');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS NG',6,'009-429-3574');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS CN',4,'319-549-9134');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS BR',5,'828-502-7824');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS IT',12,'893-781-4710');
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS SK',23,'914-960-1641');

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
INSERT INTO Product.ProductType (Name) VALUES ('LOW RISE-ELEVATOR');
INSERT INTO Product.ProductType (Name) VALUES ('ESCALATOR'); 
INSERT INTO Product.ProductType (Name) VALUES ('MOVING WALKS');
INSERT INTO Product.ProductType (Name) VALUES ('MID RISE-ELEVATOR');
INSERT INTO Product.ProductType (Name) VALUES ('HIGH RISE-ELEVATOR'); 
INSERT INTO Product.ProductType (Name) VALUES ('BOAT LIFTS');
INSERT INTO Product.ProductType (Name) VALUES ('STAGE LIFTS');
INSERT INTO Product.ProductType (Name) VALUES ('SIDEWALK ELEVATORS');
INSERT INTO Product.ProductType (Name) VALUES ('SCISSOR LIFT');


------------------------- Product ---------------------------
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('DW300',1000,1,'01/24/1999',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('LR500',2000,2,'12/21/1997',0); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('ES555',5000,3,'02/26/1996',1); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('MV999',2000,4,'12/02/2006',1); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('MR400',5599,5,'06/14/1993',0); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('HR800',9000,6,'05/03/1994',0);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('BL250',9999,7,'08/14/1993',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SL190',3459,8,'05/03/1994',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SE899',9999,9,'07/07/2004',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SC420',6900,10,'10/16/1997',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('DW300',1000,1,'06/20/2003',0);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('LR500',2000,2,'02/12/2000',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('ES555',5000,3,'12/02/2006',1); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('MV999',2000,4,'12/02/2002',0); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('MR400',5599,5,'09/24/1999',1); 
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('HR800',9000,6,'11/23/2004',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('BL250',9999,7,'09/23/1999',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SL190',3459,8,'01/20/1999',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SE899',9999,9,'10/29/2000',1);
INSERT INTO Product.Product (ProductName,FixedPrice,ProductTypeID,ManufacturingDate,IsCommercial) VALUES ('SC420',6900,10,'07/02/1999',1);

------------------------- Status ---------------------------
INSERT INTO Callback.Status (StatusType) VALUES ('Active')
INSERT INTO Callback.Status (StatusType) VALUES ('Completed')
INSERT INTO Callback.Status (StatusType) VALUES ('Closed')
INSERT INTO Callback.Status (StatusType) VALUES ('Cancelled')

------------------------- Gender ---------------------------
INSERT INTO Person.Gender (Gender) VALUES ('MALE');
INSERT INTO Person.Gender (Gender) VALUES ('FEMALE');
INSERT INTO Person.Gender (Gender) VALUES ('OTHER');

------------------------- Client.Role ---------------------------
INSERT INTO Person.Role (Position) VALUES ('Mechanic');
INSERT INTO Person.Role (Position) VALUES ('Supervisor');
INSERT INTO Person.Role (Position) VALUES ('Branch Manager');
INSERT INTO Person.Role (Position) VALUES ('Sales Represetative');

------------------------- Person ---------------------------
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Akshita','Barot','870-567-0987','06/22/1995','aks@otis.com',2);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Siddhant','Kohli','900-127-3507','12/20/1996','sid@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Aniruddha','Tambe','125-674-3045','10/31/1996','ani@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Kinjal','Thakkar','800-289-8247','07/07/1997','kinjal@otis.com',2);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Forum','Bhatt','764-123-8765','04/08/1997','foram@otis.com',2);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Vishwa','Shah','790-345-8900','01/13/1994','vish@otis.com',2);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Rishabh','Mehra','679-007-2357','03/02/1990','rish@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Mehul','Sharma','762-827-0274','07/02/1980','mehul@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Kate','Tyler','890-530-0931','12/12/1985','kate@otis.com',3);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Robert','Tate','456-780-2907','05/29/1989','rob@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Vince','Bach','782-758-0127','10/03/1979','vince@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Sebastian','Novak','435-098-1230','09/28/1988','seb@otis.com',3);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Susan','Connor','890-409-6279','01/01/1990','sus@otis.com',3);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Jeff','Johnson','900-780-0001','05/24/1998','jeff@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Marlene','Grace','800-145-7379','08/30/1994','marlene@otis.com',3);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Ann','Claire','790-820-5611','11/11/1983','ann@otis.com',2);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('John','Andrew','908-569-1203','03/31/1976','john@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Frank','Hill','901-111-8900','08/12/1989','frank@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Rick','Forbis','901-524-5678','04/28/1986','rick@otis.com',1);
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Graham','Coleman','870-567-0987','12/12/1982','graham@otis.com',1);

------------------------Employee-----------------------------
EXECUTE CreateEmployee @EmployeeId=1,@CompanyId=1,@RoleId=1,@JoiningDate='11/30/2022'
EXECUTE CreateEmployee @EmployeeId=2,@CompanyId=1,@RoleId=3,@JoiningDate='11/30/2022'
EXECUTE CreateEmployee @EmployeeId=3,@CompanyId=1,@RoleId=2,@JoiningDate='11/30/2022'


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
