WITH BourneCourses AS(

	SELECT cr.CourseRunID, cr.StartDate 
	FROM dbo.CourseRun AS cr
	JOIN dbo.Trainer AS t
		ON cr.TrainerID = t.TrainerID
	WHERE t.TrainerName = 'Jason Bourne'
)

SELECT * FROM BourneCourses