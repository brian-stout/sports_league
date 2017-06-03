/*  Displays the game date, the teams that played, and how many goals that team scored */

select 
	gameday as 'Date played',

	/* Grabbing the team name from teams table */
	(select teamname from teams where teamId=homeId) as 'Home Team',

	/* Grabbing PointsFor, where the game ID is the same and the teamId is the same as the homeId */
	(select pointsFor from results where results.gameId = games.gameId and homeId=teamId) as 'scored',

	/* Same as above but for visitId */
	(select teamname from teams where teamId=visitId) as 'Away Team',
	(select pointsFor from results where results.gameId = games.gameId and visitId=teamId) as 'scored'
from games
order by gameday;
