USE ffr;

SELECT team
		, SUM(played) as P
		, SUM(hwin) + SUM(awin) as W
		, SUM(hdraw) + SUM(adraw) as D
		, SUM(hloss) + SUM(aloss) as L
		, SUM(hff) + SUM(aff) as F
		, SUM(haa) + sum(aaa) as A
		, (SUM(hff)+SUM(aff))-(SUM(aaa)+SUM(haa)) as GD
		, SUM(pt) as Pts
		, SUM(hwin) as HW
		, SUM(hdraw) as HD
		, SUM(hloss) as HL
		, SUM(hff) as HF
		, SUM(haa) as HA
		, SUM(awin) as AW
		, SUM(adraw) as AD
		, SUM(aloss) as AL
		, SUM(aff) as AF
		, SUM(aaa) as AA
		

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
		END AS hwin
		, CASE
			WHEN homeScore = awayScore THEN 1
			ELSE 0 
		END AS hdraw
		, CASE
			WHEN homeScore < awayScore THEN 1
			ELSE 0 
		END AS hloss
		, CASE
			WHEN homeScore > awayScore THEN 3
			WHEN homeScore = awayScore THEN 1
			ELSE 0 
		END AS pt
		, CASE
			WHEN homeScore IS NULL THEN 0
			ELSE homeScore 
		END AS hff
		, CASE
			WHEN awayScore IS NULL THEN 0
			ELSE awayScore 
		END AS haa
		, 0 AS awin
		, 0 AS adraw
		, 0 AS aloss
		, 0 AS aff
		, 0 AS aaa
FROM teams AS t JOIN 1415_fixtures AS f
ON t.teamID = f.homeTeamID

UNION all

SELECT t.teamName AS team
		, CASE
			WHEN matchStatus = "NS" THEN 0
			ELSE 1
		END as played
		, 0 AS hwin
		, 0 AS hdraw
		, 0 AS hloss
		, CASE
			WHEN awayScore > homeScore THEN 3
			WHEN awayScore = homeScore THEN 1
			ELSE 0 
		END AS pt
		, 0 as hff
		, 0 as haa
		, CASE
			WHEN awayScore > homeScore THEN 1
			ELSE 0 
		END AS awin
		, CASE
			WHEN awayScore = homeScore THEN 1
			ELSE 0 
		END AS adraw
		, CASE
			WHEN awayScore < homeScore THEN 1
			ELSE 0 
		END AS aloss

		, CASE
			WHEN awayScore IS NULL THEN 0
			ELSE awayScore
		END AS aff
		, CASE
			WHEN homeScore IS NULL THEN 0
			ELSE homeScore 
		END AS aaa

FROM teams AS t JOIN 1415_fixtures AS f
ON t.teamID = f.awayTeamID
) AS ha
GROUP BY team
ORDER BY Pts DESC, GD DESC, F DESC, team
;
