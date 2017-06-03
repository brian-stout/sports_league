/* https://dev.mysql.com/doc/refman/5.7/en/example-maximum-row.html  Row limit trick

	Displays the team with the most goals scored out of all the games played */

select teams.teamname as 'Most goals scored by', SUM(results.pointsFor) as 'goals'
from results as results, teams as teams
where results.teamId = teams.teamId
group by results.teamId
order by SUM(results.pointsFor) DESC
LIMIT 1;


