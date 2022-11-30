SELECT da.DelegateID
FROM dbo.DelegateAttendance AS da
JOIN dbo.CourseRun AS cr
	ON da.CourseRunID = cr.CourseRunID
JOIN dbo.Course AS c
	ON cr.CourseID = c.CourseID
WHERE c.CourseName = 'QATSQLPLUS'

EXCEPT

SELECT da.DelegateID
FROM dbo.DelegateAttendance AS da
JOIN dbo.CourseRun AS cr
	ON da.CourseRunID = cr.CourseRunID
JOIN dbo.Course AS c
	ON cr.CourseID = c.CourseID
WHERE c.CourseName = 'QATSQL'