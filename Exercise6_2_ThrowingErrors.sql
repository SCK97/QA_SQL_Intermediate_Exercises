DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'QA'

IF @Vendor IS NULL
	BEGIN;
		THROW 54000, 'Vendor must not be NULL', 1
		RETURN
	END

IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
	BEGIN
		-- THROW 54000, 'Vendor cannot be found', 1
		DECLARE @msg VARCHAR(100)
		SET @msg = FORMATMESSAGE('Vendor %s cannot be found', @Vendor);
		Throw 54001, @msg, 1
		RETURN
	END

SELECT * FROM dbo.Course AS c
INNER JOIN dbo.Vendor AS v
	ON c.VendorID = v.VendorID
WHERE VendorName = @Vendor
GO

