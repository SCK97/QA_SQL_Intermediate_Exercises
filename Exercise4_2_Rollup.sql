SELECT VendorName, StartDate, CourseName, SUM(NumberDelegates)
FROM dbo.VendorCourseDateDelegateCount
GROUP BY VendorName, CourseName, StartDate
WITH ROLLUP