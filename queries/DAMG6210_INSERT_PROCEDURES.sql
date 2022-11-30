
-------------------------- PROCEDURE: InsertContractUnit ------------------------

CREATE PROCEDURE InsertContractUnit @ProductId int, @IsActive bit,@BuildingID int
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

---------------------------------------------------------------------------------------