USE ffr;

INSERT into teams (teamAbb, teamName, teamFounded, teamGroundID, managerID) values

("ARS", "Arsenal", 1886, 01, 01),
("AVL", "Aston Villa", 1874, 02, 02),
("BUR", "Burnley", 1882, 03, 03),
("CHE", "Chelsea", 1905, 04, 04),
("CRY", "Crystal Palace", 1905, 05, 05),
("EVE", "Everton", 1878, 06, 06),
("HUL", "Hull", 1904, 07, 07),
("LEI", "Leicester", 1884, 08, 08),
("LIV", "Liverpool", 1892, 09, 09),
("MCI", "Manchester City", 1880, 10, 10),
("MUN", "Manchester United", 1878, 11, 11),
("NEW", "Newcastle", 1892, 12, 12),
("QPR", "QPR", 1882, 13, 13),
("SOU", "Southampton", 1885, 14, 14),
("STK", "Stoke", 1863, 15, 15),
("SUN", "Sunderland", 1879, 16, 16),
("SWA", "Swansea", 1912, 17, 17),
("TOT", "Tottenham", 1882, 18, 18),
("WBA", "West Brom", 1878, 19, 19),
("WHU", "West Ham", 1895, 20, 20);

INSERT into managers (firstName, lastName, birthDate) values

("Arsene", "Wenger", "1949-10-22"),
("Paul", "Lambert", "1969-08-07"),
("Sean", "Dyche", "1971-06-28"),
("Jose", "Mourinho", "1963-01-26"),
("Tony", "Pulis", "1958-01-16"),
("Roberto", "Martinez", "1973-07-13"),
("Steve", "Bruce", "1960-12-31"),
("Nigel", "Pearson", "1963-08-21"),
("Brendan", "Rodgers", "1973-01-26"),
("Manuel", "Pellegrini", "1953-10-16"),
("Louis", "van Gaal", "1951-08-08"),
("Alan", "Pardew", "1961-07-18"),
("Harry", "Redknapp", "1947-03-02"),
("Ronald", "Koeman", "1963-03-21"),
("Mark", "Hughes", "1963-11-01"),
("Gus", "Poyet", "1967-11-15"),
("Garry", "Monk", "1979-03-06"),
("Mauricio", "Pochettino", "1972-03-02"),
("Alan", "Irvine", "1958-07-12"),
("Sam", "Allardyce", "1954-10-19");

INSERT into grounds (groundName, groundCapacity, groundLat, groundLong) values
("Emirates Stadium", 60338, 51°33′18″N, 0°6′31″W),
("Villa Park", 42682, 52°30′33″N, 1°53′5″W),
("Turf Moor", 21940, 53°47′21″N, 2°13′49″W),
("Stamford Bridge", 41837, 51°28′54″N, 0°11′28″W),
("Selhurst Park", 26255, 51°23′54″N, 0°5′8″W),
("Goodison Park", 39572, 53°26′20″N, 2°57′59″W),
("KC Stadium", 25400, 53°44′46″N, 0°22′4″W),
("King Power Stadium", 32262, 52°37′13″N, 1°8′32″W),
("Anfield", 45276, 53°25′50.95″N, 2°57′38.98″W),
("Etihad Stadium", 47405, 53°28′59″N, 002°12′01″W),
("Old Trafford", 75731, 53°27′47″N, 2°17′29″W),
("St James' Park", 52405, 500, 54°58′32″N, 1°37′18″W),
("Lofus Road", 18439, 51°30′33″N, 0°13′56″W),
("St Mary's Stadium", 32589, 50°54′21″N, 1°23′28″W),
("Britannia Stadium", 27740, 52°59′18″N, 2°10′32″W),
("Stadium of Light", 48707, 54°54′52″N, 1°23′18″W),
("Liberty Stadium", 20750, 51°38′34″N, 3°56′5″W),
("White Hart Lane", 36284, 51°36′12″N, 0°03′57″W),
("The Hawthorns", 27000, 52°30′33″N, 1°57′50″W),
("The Boleyn Ground", 35016, 51°31′55″N, 0°2′22″E);

INSERT into grounds (groundName, groundCapacity) values
("Emirates Stadium", 60338),
("Villa Park", 42682),
("Turf Moor", 21940),
("Stamford Bridge", 41837),
("Selhurst Park", 26255),
("Goodison Park", 39572),
("KC Stadium", 25400),
("King Power Stadium", 32262),
("Anfield", 45276),
("Etihad Stadium", 47405),
("Old Trafford", 75731),
("St James' Park", 52405),
("Lofus Road", 18439),
("St Mary's Stadium", 32589),
("Britannia Stadium", 27740),
("Stadium of Light", 48707),
("Liberty Stadium", 20750),
("White Hart Lane", 36284),
("The Hawthorns", 27000),
("The Boleyn Ground", 35016);


INSERT INTO 1415_fixtures (fixtureDate, fixtureKO, fixtureGameWeekID, homeTeamID, awayTeamID, groundID, homeScore, awayScore, matchStatus, refereeID) values

("2014-08-16", "15:00:00", 1, 1, 5, 1, 1, 0, "FT", NULL),
("2014-08-16", "15:00:00", 1, 3, 4, 3, 0, 0, "FT", NULL),
("2014-08-16", "15:00:00", 1, 8, 6, 8, 1, 4, "FT", NULL),
("2014-08-16", "15:00:00", 1, 9, 14, 9, 3, 2, "FT", NULL),
("2014-08-16", "15:00:00", 1, 11, 17, 11, 1, 1, "FT", NULL),
("2014-08-16", "15:00:00", 1, 12, 10, 12, 4, 2, "FT", NULL),
("2014-08-16", "15:00:00", 1, 13, 7, 13, 0, 2, "FT", NULL),
("2014-08-16", "15:00:00", 1, 15, 2, 15, 3, 1, "FT", NULL),
("2014-08-16", "15:00:00", 1, 19, 16, 19, 2, 1, "FT", NULL),
("2014-08-16", "15:00:00", 1, 20, 18, 20, 2, 2, "FT", NULL),
("2014-08-23", "15:00:00", 2, 2, 12, 2, 0, 0, "FT", NULL),
("2014-08-23", "15:00:00", 2, 4, 8, 4, 3, 2, "FT", NULL),
("2014-08-23", "15:00:00", 2, 5, 20, 5, 2, 0, "FT", NULL),
("2014-08-23", "15:00:00", 2, 6, 1, 6, 2, 3, "FT", NULL),
("2014-08-23", "15:00:00", 2, 7, 15, 7, 1, 0, "FT", NULL),
("2014-08-23", "15:00:00", 2, 10, 9, 10, 0, 1, "FT", NULL),
("2014-08-23", "15:00:00", 2, 14, 19, 14, 4, 2, "FT", NULL),
("2014-08-23", "15:00:00", 2, 16, 11, 16, 3, 1, "FT", NULL),
("2014-08-23", "15:00:00", 2, 17, 3, 17, 0, 1, "FT", NULL),
("2014-08-23", "15:00:00", 2, 18, 13, 18, 2, 2, "FT", NULL),
("2014-08-30", "15:00:00", 3, 2, 7, 2, 1, 2, "FT", NULL),
("2014-08-30", "15:00:00", 3, 3, 11, 3, 3, 3, "FT", NULL),
("2014-08-30", "15:00:00", 3, 6, 4, 6, 0, 0, "FT", NULL),
("2014-08-30", "15:00:00", 3, 8, 1, 8, 4, 0, "FT", NULL),
("2014-08-30", "15:00:00", 3, 10, 15, 10, 1, 1, "FT", NULL),
("2014-08-30", "15:00:00", 3, 12, 5, 12, 1, 0, "FT", NULL),
("2014-08-30", "15:00:00", 3, 13, 16, 13, 2, 1, "FT", NULL),
("2014-08-30", "15:00:00", 3, 17, 19, 17, 0, 3, "FT", NULL),
("2014-08-30", "15:00:00", 3, 18, 9, 18, 1, 1, "FT", NULL),
("2014-08-30", "15:00:00", 3, 20, 14, 20, 2, 1, "FT", NULL)/*,
("2014-09-13", "15:00:00", 4, 1, 10, 1, NULL, NULL, "NS", NULL),
("2014-09-13", "15:00:00", 4, 4, 17, 4, NULL, NULL, "NS", NULL),
("2014-09-13", "15:00:00", 4, 5, 3, 5, NULL, NULL, "NS", NULL),
("2014-09-13", "15:00:00", 4, 7, 20, 7, NULL, NULL, "NS", NULL),
("2014-09-13", "15:00:00", 4, 9, 2, 9, NULL, NULL, "NS", NULL),
("2014-09-13", "15:00:00", 4, 11, 13, 11, NULL, NULL, "NS", NULL),
("2014-09-13", "15:00:00", 4, 14, 12, 14, NULL, NULL, "NS", NULL),
("2014-09-13", "15:00:00", 4, 15, 8, 15, NULL, NULL, "NS", NULL),
("2014-09-13", "15:00:00", 4, 16, 18, 16, NULL, NULL, "NS", NULL),
("2014-09-13", "15:00:00", 4, 19, 6, 19, NULL, NULL, "NS", NULL)*/;

SHOW CREATE TABLE teams;
TRUNCATE TABLE 1415_fixtures;
SELECT * FROM teams;
SELECT * FROM 1415_fixtures;
SELECT * FROM managers;

DROP TABLE 1415_fixtures;

SELECT * FROM basicTable;
SELECT * FROM fullTable;