-- SELECT * FROM Trainer
-- SELECT * FROM CourseRun

SELECT cr.CourseRunID, cr.StartDate 
FROM dbo.CourseRun AS cr
JOIN dbo.Trainer AS t
	ON cr.TrainerID = t.TrainerID
WHERE t.TrainerName = 'Jason Bourne'