/* Displays which team has the most wins in the data base */

SELECT 
	(SELECT teamname FROM teams WHERE teams.teamId = results.teamId) AS 'Team', 
	count(*) AS 'Wins'
FROM results
WHERE result = 'WIN'
GROUP BY results.teamId
ORDER BY count(*) DESC
LIMIT 1;

