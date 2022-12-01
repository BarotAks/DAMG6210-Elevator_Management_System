
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

INSERT INTO [Person].[Customer]
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

------------------------- PROCEDURE: RegisterCallback ------------------------

GO
CREATE OR ALTER PROCEDURE RegisterCallback @SerialNo INT
AS
SET NOCOUNT ON

BEGIN
      -- Get Route level information
      DECLARE @RouteId INT;

      SET @RouteId = (
            SELECT 
                  RouteID 
            FROM 
                  Contract.Unit unit
            INNER JOIN Territory.Building bldg ON bldg.BuildingID = unit.BuildingID
            WHERE SerialNo = @SerialNo
      );

      -- Get mechanic
      DECLARE @EmployeeId INT;

      SET @EmployeeId = (
            SELECT 
                  TOP 1
                  emp.EmployeeId
            FROM 
                  Person.Employee emp
            WHERE 
                  emp.RoleId = 1
                  AND emp.LastDate IS NULL
      )

      -- Set callback status as active
      DECLARE @StatusID INT = 1;

      -- Set callback date as current date
      DECLARE @CallbackDate DATE = GETDATE();

      INSERT INTO [Callback].[Callback]
            (
                  [RouteID],
                  [MechanicId],
                  [StatusId],
                  [CallbackDate],
                  [SerialNumber]
            )
      VALUES
            (
                  @RouteId,
                  @EmployeeId,
                  @StatusID,
                  @CallbackDate,
                  @SerialNo
            )

END
GO

-- Test
-- EXECUTE CreateCustomer @CustomerId=4,@CompanyId=1

------------------------- PROCEDURE: RegisterCallbackRandomizer ------------------------

GO
CREATE OR ALTER PROCEDURE RegisterCallbackRandomizer @SerialNo INT
AS
SET NOCOUNT ON

BEGIN
      -- Get Route level information
      DECLARE @RouteId INT;

      SET @RouteId = (
            SELECT 
                  RouteID 
            FROM 
                  Contract.Unit unit
            INNER JOIN Territory.Building bldg ON bldg.BuildingID = unit.BuildingID
            WHERE SerialNo = @SerialNo
      );

      -- Get mechanic
      DECLARE @EmployeeId INT;

      SET @EmployeeId = (
            SELECT 
                  TOP 1
                  emp.EmployeeId
            FROM 
                  Person.Employee emp
            WHERE 
                  emp.RoleId = 1
                  AND emp.LastDate IS NULL
            ORDER BY NEWID()
      )

      -- Set callback status as active
      DECLARE @StatusID INT = 1;

      -- Set callback date as current date
      DECLARE @CallbackDate DATE;-- = GETDATE();
      DECLARE @StartDate AS date;
      DECLARE @EndDate AS date;

      SELECT @StartDate = '01/01/2021', -- Date Format - DD/MM/YYY
            @EndDate   = '12/31/2022';

      SET @CallbackDate = (SELECT DATEADD(DAY, RAND(CHECKSUM(NEWID()))*(1+DATEDIFF(DAY, @StartDate, @EndDate)),@StartDate) AS 'SalesDate');

      INSERT INTO [Callback].[Callback]
            (
                  [RouteID],
                  [MechanicId],
                  [StatusId],
                  [CallbackDate],
                  [SerialNumber]
            )
      VALUES
            (
                  @RouteId,
                  @EmployeeId,
                  @StatusID,
                  @CallbackDate,
                  @SerialNo
            )

END
GO

------------------------- PROCEDURE: CancelCallback ------------------------


CREATE OR ALTER PROCEDURE CancelCallback @CallbackId INT
AS
BEGIN
      UPDATE Callback.Callback 
      SET 
            StatusID = 4 
      WHERE 
            Callback.CallbackID = @CallbackId;
END

------------------------- PROCEDURE: CompletedCallback ------------------------
GO
CREATE OR ALTER PROCEDURE CompletedCallback @CallbackId INT
AS
BEGIN
      UPDATE Callback.Callback 
      SET 
            StatusID = 2 
      WHERE 
            Callback.CallbackID = @CallbackId
END
GO
------------------------- PROCEDURE: ClosedCallback ------------------------

GO
CREATE OR ALTER PROCEDURE ClosedCallback @CallbackId INT
AS
BEGIN
      UPDATE Callback.Callback 
      SET 
            StatusID = 3 
      WHERE 
            Callback.CallbackID = @CallbackId
END
GO
------------------------- PROCEDURE: CreateSale ------------------------

CREATE OR ALTER PROCEDURE CreateSale 
      @SerialNo INT,
      @Quantity INT, 
      @SalesRepID INT,
      @BillingCycle VARCHAR(255),
      @Discount INT,
	@ContractDate DATE,
	@CustomerID INT,
	@Tenure NUMERIC,
	@BillingMode VARCHAR(255)
AS
BEGIN
      -- Verify SalesRep role
      DECLARE @notFound INT = (SELECT
            CAST(
                  CASE 
                        WHEN COUNT(*) = 0 
                              THEN 1
                              ELSE 0
                        END AS BIT) AS [Found]  
      FROM
            Person.Employee emp
      WHERE 
            emp.EmployeeId = @SalesRepID AND
            emp.RoleId = 4);       

      IF @notFound = 1
            RAISERROR (15600, -1, -1, 'Sales Representative not found!');

      
      -- Fetch Company ID
      DECLARE @companyId INT = (
            SELECT CompanyId FROM Person.Customer WHERE CustomerId = @CustomerId
      )

      -- Insert data into Sale
      INSERT INTO Contract.Sale
            (
                  SerialNo,
                  Quantity,
                  SalesRepID,
                  BillingCycle,
                  Discount,
                  ContractDate,
                  CustomerID,
                  Tenure,
                  BillingMode,
                  CompanyID
            ) 
            VALUES
            (
                  @SerialNo,
                  @Quantity,
                  @SalesRepID,
                  @BillingCycle,
                  @Discount,
                  @ContractDate,
                  @CustomerID,
                  @Tenure,
                  @BillingMode,
                  @companyId
            )
END

------------------------- PROCEDURE: CreateSaleRandomizer ------------------------

CREATE OR ALTER PROCEDURE CreateSaleRandomizer 
      @SerialNo INT,
      @Quantity INT, 
      @SalesRepID INT,
      @BillingCycle VARCHAR(255),
      @Discount INT,
	@ContractDate DATE,
	@CustomerID INT,
	@Tenure NUMERIC,
	@BillingMode VARCHAR(255)
AS
BEGIN

      -- Get SalesRep
      DECLARE @SalesRepID INT = (SELECT TOP 1 EmployeeId FROM Person.Employee WHERE RoleID = 4 ORDER BY NEWID())
      
      -- Fetch Company ID
      DECLARE @CompanyId INT = (
            SELECT CompanyId FROM Person.Employee WHERE EmployeeId = @SalesRepID
      )

      -- Get Customer
      DECLARE @CustomerID INT = (SELECT TOP 1 CustomerID FROM Person.Customer WHERE CompanyId <> @CompanyId ORDER BY NEWID())

      -- Insert data into Sale
      INSERT INTO Contract.Sale
            (
                  SerialNo,
                  Quantity,
                  SalesRepID,
                  BillingCycle,
                  Discount,
                  ContractDate,
                  CustomerID,
                  Tenure,
                  BillingMode,
                  CompanyID
            ) 
            VALUES
            (
                  @SerialNo,
                  @Quantity,
                  @SalesRepID,
                  @BillingCycle,
                  @Discount,
                  @ContractDate,
                  @CustomerID,
                  @Tenure,
                  @BillingMode,
                  @companyId
            )
END


EXECUTE CreateSale 3,2,2,'Monthly',10,'12/29/2022',11,12,'Advance'
SELECT * FROM dbo.ActiveCallbacks