-- SELECT * FROM dbo.VendorCourseDelegateCount

SELECT *,
	RANK() OVER (ORDER BY NumberDelegates DESC) AS LeaguePosRank,
	DENSE_RANK() OVER (ORDER BY NumberDelegates DESC) AS LeaguePosDenseRank,
	ROW_NUMBER() OVER (ORDER BY NumberDelegates DESC) AS LeaguePosRowNum,
	NTILE(3) OVER (ORDER BY NumberDelegates DESC) AS LeaguePosNtile
FROM dbo.VendorCourseDelegateCount
GO