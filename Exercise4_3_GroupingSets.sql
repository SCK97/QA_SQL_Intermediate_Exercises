SELECT 
	VendorName, StartDate, CourseName, 
	SUM(NumberDelegates) AS TotalDelegates,
	GROUPING_ID(VendorName, CourseName, StartDate) AS GroupingType
FROM dbo.VendorCourseDateDelegateCount
-- GROUP BY VendorName, CourseName, StartDate
GROUP BY GROUPING SETS (
	(VendorName),
	(VendorName, CourseName),
	(VendorName, CourseName, StartDate)
)