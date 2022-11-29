-- SELECT * FROM CourseRun
-- SELECT * FROM Delegate
-- SELECT * FROM DelegateAttendance

SELECT 
	d.DelegateID, 
	SUM(cr.DurationDays) AS DelegateDays, 
	COUNT(*) AS DelegateCourses
FROM dbo.Delegate AS d
JOIN dbo.DelegateAttendance AS da
	ON d.DelegateID = da.DelegateID
JOIN dbo.CourseRun AS cr
	ON da.CourseRunID = cr.CourseRunID
GROUP BY d.DelegateID