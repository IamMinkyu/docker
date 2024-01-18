-- creat database 
USE [master]
CREATE DATABASE [testdb]


-- create the user on the master database
USE [master]
GO
CREATE LOGIN [testuser] WITH PASSWORD=N'P@ssw0rd'
CREATE USER [testuser] FOR LOGIN [testuser]
GO

-- create the user on the target database for the login
USE [testdb]
GO
CREATE USER [testuser] FOR LOGIN [testuser]
GO

-- add the user to the desired role
USE [testdb]
GO
ALTER ROLE [db_owner] ADD MEMBER [testuser]
GO
