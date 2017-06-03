/* https://dev.mysql.com/doc/refman/5.7/en/example-maximum-row.html  Row limit trick

	Displays the team with the most goals scored out of all the games played */

SELECT teams.teamname AS 'Most goals scored by', SUM(results.pointsFor) AS 'goals'
FROM results AS results, teams AS teams
WHERE results.teamId = teams.teamId
GROUP BY results.teamId
ORDER BY SUM(results.pointsFor) DESC
LIMIT 1;


