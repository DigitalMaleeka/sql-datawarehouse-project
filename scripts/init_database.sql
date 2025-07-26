/*
=============================================================================
Create Database and Schemas
=============================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it
  already exists, it drops and recreate it. Also, the script sets up three schemas
  within the database: 'bronze, 'silver', and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Check if the database exists before creating it---
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
-- Create Database 'DataWarehouse'--
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Create the different layers i.e schemas ---
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
