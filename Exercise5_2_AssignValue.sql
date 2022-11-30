DECLARE @TotalDelegates INT

/* SELECT COUNT(*) AS Num
FROM dbo.Delegate
SET @TotalDelegates = Num*/

SELECT @TotalDelegates = COUNT(*)
FROM dbo.Delegate
print @tOTALdELEGATES