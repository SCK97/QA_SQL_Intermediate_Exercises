CREATE VIEW CourseList AS (
	SELECT c.CourseID, c.CourseName, v.VendorName
	FROM dbo.Course AS c
	JOIN dbo.Vendor AS v
		ON c.VendorID = v.VendorID
)