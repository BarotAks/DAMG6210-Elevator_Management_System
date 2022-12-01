
-------------------------- PROCEDURE: InsertContractUnit ------------------------

CREATE OR ALTER PROCEDURE InsertContractUnit @ProductId int, @IsActive bit,@BuildingID int
AS
SET NOCOUNT ON
INSERT INTO [Contract].[Unit]
           ([ProductID]
           ,[IsActive]
           ,[BuildingID])
     VALUES
           (@ProductId
           ,@IsActive
           ,@BuildingID)
GO

-- Test

-- EXECUTE InsertContractUnit
--     @ProductId=4,
--     @IsActive=0,
--     @BuildingID=1
-- GO

-------------------------- PROCEDURE: InsertRoleDetails ------------------------


GO
CREATE OR ALTER PROCEDURE InsertRoleDetails @Position VARCHAR(200)
AS
SET NOCOUNT ON
INSERT INTO [Person].[Role]
           ([Position])
     VALUES
           (@Position)
GO

-- Test
-- EXECUTE InsertRoleDetails
--     @Position='Area Manager'   
-- GO

------------------------ PROCEDURE: InsertTerritoryBuilding-------------------------

CREATE OR ALTER PROCEDURE InsertTerritoryBuilding @StreetNumber int,@Address1 varchar(50),@Address2 varchar(50),@RouteID int
 AS
 SET NOCOUNT ON
 INSERT INTO [Territory].[Building]
  ([StreetNumber]
  ,[Address 1]
  ,[Address 2],
  [RouteID])
  VALUES
  (@StreetNumber
  ,@Address1
  ,@Address2
  ,@RouteID)
 GO


-- Test
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=111,
--   @Address1='42 People Street',
--   @Address2='Texas',
--   @RouteID=3
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=68,
--   @Address1='34 Wigglesworth',
--   @Address2='Boston,MA',
--   @RouteID=2
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=232,
--   @Address1='DayStreet Street',
--   @Address2='Boston,MA',
--   @RouteID=1
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=68,
--   @Address1='Hungtington Avenue',
--   @Address2='Florida',
--   @RouteID=3
--  GO
--  EXECUTE InsertTerritoryBuilding
--   @StreetNumber=452,
--   @Address1='Alpine Street',
--   @Address2='Austin',
--   @RouteID=2
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=68,
--   @Address1='456 JVue',
--   @Address2='Houston',
--   @RouteID=1
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=345,
--   @Address1='Mission Main',
--   @Address2='Illionis',
--   @RouteID=1
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=565,
--   @Address1='Mission Hill',
--   @Address2='New Jersey',
--   @RouteID=4
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=534,
--   @Address1='34 Ridge',
--   @Address2='New York',
--   @RouteID=4
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=467,
--   @Address1='23 Pimpoli Street',
--   @Address2='Blue Mountains,New Hampshire',
--   @RouteID=4
--  GO
--  -----------------
--  EXECUTE InsertTerritoryBuilding
--   @StreetNumber=454,
--   @Address1='345 Roxbury',
--   @Address2='New Brunswick',
--   @RouteID=5
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=345,
--   @Address1='782 Washington Ave',
--   @Address2='California,San Fransico',
--   @RouteID=5
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=89,
--   @Address1='355 MinionLand',
--   @Address2='Disney World,Florida',
--   @RouteID=5
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=667,
--   @Address1='45 Illis Street',
--   @Address2='Arizona',
--   @RouteID=6
--  GO
--  EXECUTE InsertTerritoryBuilding
--   @StreetNumber=2,
--   @Address1='356 Oslin Apt',
--   @Address2='Pipor,Maine',
--   @RouteID=6
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=456,
--   @Address1='355 Persian Pit',
--   @Address2='Pinge,Portland',
--   @RouteID=6
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=345,
--   @Address1='345 Mission Main',
--   @Address2='Sam Island,Georgia',
--   @RouteID=7
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=86,
--   @Address1='24 Poplin Street',
--   @Address2='Connecticut',
--   @RouteID=7
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=930,
--   @Address1='34 Rehab Street',
--   @Address2='Tins,Ohai',
--   @RouteID=7
--  GO
-- EXECUTE InsertTerritoryBuilding
--   @StreetNumber=67,
--   @Address1='454 Opppo Street',
--   @Address2='Blue Ridge,Utai',
--   @RouteID=8
--  GO

------------------------- PROCEDURE: CreateEmployee ------------------------

--SELECT * FROM Person.Employee

GO
CREATE OR ALTER PROCEDURE CreateEmployee @EmployeeId INT,@CompanyId INT, @RoleId INT, @JoiningDate DATE
AS
SET NOCOUNT ON

INSERT INTO [Person].[Employee]
           (
            [EmployeeId],
            [CompanyId],
            [RoleId],
            [JoiningDate]
           )
     VALUES
           (
            @EmployeeId,
            @CompanyId,
            @RoleId,
            @JoiningDate
           )

GO

-- Test
-- EXECUTE CreateEmployee @EmployeeId=27,@CompanyId=1,@RoleId=1,@JoiningDate='11/30/2022'


------------------------- PROCEDURE: CreateCustomer ------------------------

--SELECT * FROM Person.Employee

GO
CREATE OR ALTER PROCEDURE CreateCustomer @CustomerId INT,@CompanyId INT
AS
SET NOCOUNT ON

INSERT INTO [Person].[Employee]
           (
            [CustomerId],
            [CompanyId]
           )
     VALUES
           (
            @CustomerId,
            @CompanyId
           )

GO

-- Test
-- EXECUTE CreateEmployee @EmployeeId=27,@CompanyId=1,@RoleId=1,@JoiningDate='11/30/2022'


----------------------------------------------------------------------------------







