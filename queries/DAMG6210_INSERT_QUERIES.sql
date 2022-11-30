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


