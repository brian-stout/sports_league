select CONCAT(lastname, ' ', firstname) as 'name', age, height as 'height (in)',
	weight as 'weight (lbs)'
from players, playerattributes
where players.playerId = playerattributes.playerId
order by lastname;
