USE ffr;

CREATE VIEW fixtureView_1415
as

select   f.fixtureGameWeekID as GW
		, f.fixtureID
		, DATE_FORMAT(f.fixtureDate, "%W %D %M %Y") as date
		, TIME_FORMAT(f.fixtureKO, "%H:%i") as time
		, homeTeam.teamName as home
		, f.homeScore as hScore
		, awayTeam.teamName as away
		, f.awayScore as aScore
		, f.matchStatus as status
		

FROM
	1415_fixtures as f
LEFT OUTER JOIN
	teams homeTeam ON f.homeTeamID = homeTeam.teamID
LEFT OUTER JOIN
	teams awayTeam ON f.awayTeamID = awayTeam.teamID

ORDER by
	f.fixtureDate, f.fixtureKO, homeTeam.teamName
;

