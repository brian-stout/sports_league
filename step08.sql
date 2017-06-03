select CONCAT(lastname, ' ', firstname) as 'name', age, height as 'height (in)',
	weight as 'weight (lbs)'
from players, playerattributes
where players.id = playerattributes.id
order by lastname;
