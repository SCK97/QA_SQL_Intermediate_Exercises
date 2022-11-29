SELECT 
	d.DelegateID, 
	d.DelegateName,
	d.CompanyName,
	jb.StartDate
FROM dbo.Delegate AS d

JOIN dbo.DelegateAttendance AS da
	ON d.DelegateID = da.DelegateID

JOIN (
	SELECT cr.CourseRunID, cr.StartDate 
	FROM dbo.CourseRun AS cr
	JOIN dbo.Trainer AS t
		ON cr.TrainerID = t.TrainerID
	WHERE t.TrainerName = 'Jason Bourne'
) AS jb
	ON da.CourseRunID = jb.CourseRunID

GROUP BY d.DelegateID, d.DelegateName, d.CompanyName