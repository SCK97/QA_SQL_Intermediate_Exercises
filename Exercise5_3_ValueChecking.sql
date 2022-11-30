DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'QA'

IF @Vendor IS NULL
	PRINT 'Vendor cannot be NULL'
ELSE
	IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
		PRINT 'Vendor not forund'
	ELSE
		SELECT *
		FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
		WHERE VendorName = @Vendor
GO