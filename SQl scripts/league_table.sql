CREATE VIEW basicTable AS 

SELECT team
		, SUM(played) as P
		, SUM(win) as W
		, SUM(draw) as D
		, SUM(loss) as L
		, SUM(ff) as F
		, SUM(aa) as A
		, SUM(ff)-SUM(aa) as GD
		, SUM(pt) as Pts
FROM
(
SELECT t.teamName AS team
		, CASE
			WHEN matchStatus = "NS" THEN 0
			ELSE 1
		END as played
		, CASE
			WHEN homeScore > awayScore THEN 1
			ELSE 0 
		END AS win
		, CASE
			WHEN homeScore = awayScore THEN 1
			ELSE 0 
		END AS draw
		, CASE
			WHEN homeScore < awayScore THEN 1
			ELSE 0 
		END AS loss
		, CASE
			WHEN homeScore > awayScore THEN 3
			WHEN homeScore = awayScore THEN 1
			ELSE 0 
		END AS pt
		, CASE
			WHEN homeScore IS NULL THEN 0
			ELSE homeScore 
		END AS ff
		, CASE
			WHEN awayScore IS NULL THEN 0
			ELSE awayScore 
		END AS aa

FROM teams AS t JOIN 1415_fixtures AS f
ON t.teamID = f.homeTeamID

UNION all

SELECT t.teamName AS team
		, CASE
			WHEN matchStatus = "NS" THEN 0
			ELSE 1
		END as played
		, CASE
			WHEN awayScore > homeScore THEN 1
			ELSE 0 
		END AS win
		, CASE
			WHEN awayScore = homeScore THEN 1
			ELSE 0 
		END AS draw
		, CASE
			WHEN awayScore < homeScore THEN 1
			ELSE 0 
		END AS loss
		, CASE
			WHEN awayScore > homeScore THEN 3
			WHEN awayScore = homeScore THEN 1
			ELSE 0 
		END AS pt
		, CASE
			WHEN awayScore IS NULL THEN 0
			ELSE awayScore
		END AS ff
		, CASE
			WHEN homeScore IS NULL THEN 0
			ELSE homeScore 
		END AS aa

FROM teams AS t JOIN 1415_fixtures AS f
ON t.teamID = f.awayTeamID
) AS ha
GROUP BY team
ORDER BY Pts DESC, GD DESC, F DESC, team
;
