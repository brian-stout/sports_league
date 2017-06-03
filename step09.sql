/* Displays all players on a team given a team_id, swap the variable to pick the team 
	Hurrcanes = 0
	Caps = 1
	Predators = 2
	Penguins = 3 */

SET @team_id=0;

SELECT CONCAT(lastname, ' ', firstname) AS 'name', playernum as 'jersey number'
FROM players
WHERE team = (SELECT teamname FROM teams WHERE teamId = @team_id)
ORDER BY playernum;
