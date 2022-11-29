-- SELECT * FROM dbo.VendorCourseDelegateCount

/* SELECT *, 
	RANK() OVER (PARTITION BY VendorName ORDER BY NumberDelegates DESC)
FROM dbo.VendorCourseDelegateCount
GO */

WITH RankedCourses AS(
	SELECT *, 
		RANK() OVER (PARTITION BY VendorName ORDER BY NumberDelegates DESC) AS LeaguePos
	FROM dbo.VendorCourseDelegateCount
)
SELECT 
	VendorName, 
	CourseName, 
	NumberDelegates
FROM RankedCourses
WHERE LeaguePos = 1
GO