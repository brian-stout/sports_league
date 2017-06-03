/* Sum trick from https:/stackoverflow.com/a/9798978 */
/* Displays each teams win lost record and sorts them by wins */
SELECT 
	(SELECT teamname FROM teams WHERE teams.teamId = results.teamId) AS 'Team', 
	SUM(result = 'WIN') AS 'wins',
	SUM(result = 'LST') AS 'losses'
FROM results
GROUP BY results.teamId
ORDER BY SUM(result = 'WIN') DESC;
