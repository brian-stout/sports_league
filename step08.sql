/* Displays all players sorted alphabetically by last name */

SELECT CONCAT(lastname, ' ', firstname) AS 'name', age, height AS 'height (in)',
	weight AS 'weight (lbs)'
FROM players, playerattributes
WHERE players.playerId = playerattributes.playerId
ORDER BY lastname;
