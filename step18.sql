/* Prints out all the games played on a specific date, as well as who played them */

select
	gameday as 'Date played',
	(select teamname from teams where teamId=homeId) as 'Home Team',
	(select teamname from teams where teamId=visitId) as 'Away Team'
from games;
