/* Prints out all the games played on a specific date, as well as who played them */

SELECT
	gameday AS 'Date played',
	(SELECT teamname FROM teams WHERE teamId=homeId) AS 'Home Team',
	(SELECT teamname FROM teams WHERE teamId=visitId) AS 'Away Team'
FROM games;
