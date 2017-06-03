/* For the precision 
	www.w3resource.com/mysql/aggregate-functions-and-grouping/aggregate-functions-and-grouping-avg().php
*/

/* Displays which team scored the most goals on average per gamee */

SELECT 
	(SELECT teamname FROM teams WHERE teams.teamId = results.teamId) AS 'Team', 
	ROUND(AVG(pointsFor), 2) AS 'AVG goals'
FROM results
GROUP BY results.teamId
ORDER BY AVG(pointsFor) DESC
LIMIT 1;

