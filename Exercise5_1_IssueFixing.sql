-- fix issues in code:

DECLARE @StartDT datetime = GETDATE()
DECLARE @EndDT datetime
DECLARE @Vendor VARCHAR(50)
PRINT @StartDT
--GO --unnecessary

DECLARE @X INT = 0
WHILE @X < 100
	BEGIN
		PRINT @X
		SET @X = @X + 1
	END
SET @EndDT = GETDATE() --EndDT has not been declared 
SELECT @StartDT, @EndDT --EndDT has not been declared 
GO

IF EXISTS (SELECT * FROM sysobjects WHERE Name = 'NewView')
	DROP VIEW dbo.NewView
GO	--go required

CREATE VIEW dbo.NewView AS
	SELECT * FROM dbo.Delegate
GO