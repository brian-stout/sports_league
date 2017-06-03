select
	gameday as 'Date played',
	(select teamname from teams where teamId=homeId) as 'Home Team',
	(select teamname from teams where teamId=visitId) as 'Away Team'
from games;
