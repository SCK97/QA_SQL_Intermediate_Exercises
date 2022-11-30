BEGIN TRY
	UPDATE dbo.Vendor
	SET VendorName = NULL
	WHERE VendorID = 1
END TRY

BEGIN CATCH
	THROW 60000, 'Error occurred within the procedure', 1
END CATCH
GO