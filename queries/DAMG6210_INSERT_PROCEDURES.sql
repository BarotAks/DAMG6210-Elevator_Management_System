
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

---------------------------------------------------------------------------------------