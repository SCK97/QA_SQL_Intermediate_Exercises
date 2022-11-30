DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'QA'

IF @Vendor IS NULL
	BEGIN
		PRINT 'Vendor cannot be NULL'
		RETURN
	END

IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
	BEGIN
		PRINT 'Vendor not forund'
		RETURN
	END


SELECT *
FROM dbo.Course AS C
INNER JOIN dbo.Vendor AS V
	ON C.VendorID = V.VendorID
WHERE VendorName = @Vendor
GO