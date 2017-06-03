/* Displays all players on a team given a team_id, swap the variable to pick the team 
	Hurrcanes = 0
	Caps = 1
	Predators = 2
	Penguins = 3 */

set @team_id=0;

select CONCAT(lastname, ' ', firstname) as 'name', playernum as 'jersey number'
from players
where team = (select teamname from teams where teamId = @team_id)
order by playernum;
