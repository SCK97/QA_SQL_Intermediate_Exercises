-- SELECT * FROM dbo.DelegateAttendance
-- SELECT * FROM dbo.CourseRun
-- SELECT * FROM dbo.Course

SELECT da.DelegateID
FROM dbo.DelegateAttendance AS da
JOIN dbo.CourseRun AS cr
	ON da.CourseRunID = cr.CourseRunID
JOIN dbo.Course AS c
	ON cr.CourseID = c.CourseID
WHERE c.CourseName = 'QATSQL'

INTERSECT

SELECT da.DelegateID
FROM dbo.DelegateAttendance AS da
JOIN dbo.CourseRun AS cr
	ON da.CourseRunID = cr.CourseRunID
JOIN dbo.Course AS c
	ON cr.CourseID = c.CourseID
WHERE c.CourseName = 'QATSQLPLUS'