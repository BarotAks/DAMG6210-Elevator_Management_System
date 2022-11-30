------------------------- Region ---------------------------
INSERT INTO Territory.Country (CountryName) VALUES ('United States');
INSERT INTO Territory.Country (CountryName) VALUES ('United Kingdom'); 

------------------------- Region ---------------------------
INSERT INTO Territory.Region (RegionName,CountryCode) VALUES ('Northeast',1); 

------------------------- Territory ---------------------------
INSERT INTO Territory.Territory (TerritoryName,RegionID) VALUES ('Suffolk',1); 

------------------------- Route ---------------------------
INSERT INTO Territory.Route (RouteName,TerritoryID) VALUES ('Jamica Plain',1); 
INSERT INTO Territory.Route (RouteName,TerritoryID) VALUES ('Malden',1); 

------------------------- Building ---------------------------
INSERT INTO Territory.Building (StreetNumber,[Address 1],[Address 2],RouteID) VALUES (77,'Russell St. Apt 2','Boston, MA',2); 

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

------------------------- Unit ---------------------------
INSERT INTO Contract.Unit (ProductID,IsActive,BuildingID) VALUES (2,1,2)
INSERT INTO Contract.Unit (ProductID,IsActive,BuildingID) VALUES (2,3,1);

------------------------- Sale ---------------------------
INSERT INTO Contract.Sale( SerialNo,SalesRepID,BillingCycle,Price,ContractDate,CustomerID,Tenure,BillingMode,CompanyID) VALUES ();

------------------------- Employee ---------------------------
INSERT INTO Person.Employee (CompanyId, RoleId, JoiningDate) VALUES (1,1,'12/29/2022')

------------------------- Callback ---------------------------
INSERT INTO Callback.Callback (RouteID,MechanicID,StatusID,CallbackDate,SerialNumber) VALUES (1,1,1,'12/29/2022',11)

------------------------- MaintenanceJobs ---------------------------
INSERT INTO Callback.MaintenanceJobs ( EmployeeID,RouteID,VisitDate,JobStatus,SerialNumber) VALUES ();

------------------------- Gender ---------------------------
INSERT INTO Person.Gender (Gender) VALUES ('MALE');
INSERT INTO Person.Gender (Gender) VALUES ('FEMALE');
INSERT INTO Person.Gender (Gender) VALUES ('Other');

------------------------- Person ---------------------------
INSERT INTO Person.Person (FirstName,LastName,PhoneNumber,DateofBirth,EmailAddress,GenderID) VALUES ('Siddhant','Kohli','898-982-9304','12/20/1996','kohli.sid@northeastern.edu',1);

------------------------- Customer ---------------------------
INSERT INTO Person.Customer(CompanyId) VALUES 

------------------------- Organization ---------------------------
INSERT INTO Client.Organization (OrganizationName,OrganizationCountryCode,OrganizationSSN) VALUES ('OTIS US',1,'999-999-9999');

------------------------- Company ---------------------------
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (1,1,'Otis Northeast');

------------------------- Company ---------------------------
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (1,1,'Otis Northeast');


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
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (13,3,'Otis Northeast');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (14,2,'Otis Northwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (14,1,'Otis Northwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (2,1,'Otis Southwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (13,1,'Otis Southwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (15,17,'Otis Southwest');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (15,3,'Brazil');
INSERT INTO Client.Company (OrganizationID,RegionID,CompanyName) VALUES (13,3,'China');


------------------------- Client.Role ---------------------------
INSERT INTO Person.Role (Position) VALUES ('Mechanic');
INSERT INTO Person.Role (Position) VALUES ('Supervisor');
INSERT INTO Person.Role (Position) VALUES ('Branch Manager');
INSERT INTO Person.Role (Position) VALUES ('Sales Represetative');