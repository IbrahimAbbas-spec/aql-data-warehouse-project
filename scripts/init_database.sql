/*
===============================================================
Create Dataase and Schemas
===============================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  if the database exists, it is dropped and recreated. Addetionally the script sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'.

Warning:
  Running the scripts will drop the entire 'Datawarehouse' database if it exists.
  All data in the database will be permenantly deleted. Proceed with caution.
  and ensure you have proper bachup before running the script
*/

USE master;
GO

-- Drop and recreate the 'Datawarehouse' database.
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
  ALTER DATABASE Dtawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END;
GO

-- Create the 'Datawarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
  
