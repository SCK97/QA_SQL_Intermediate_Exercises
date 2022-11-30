EXEC sp_addmessage 50001, 16, 'Vendor %s cannot be found'
GO

RAISERROR(50001, 16, 1, 'Red Hat')