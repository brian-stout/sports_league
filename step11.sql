#https://dev.mysql.com/doc/refman/5.7/en/example-maximum-row.html

select teams.teamname as 'Most goals scored by', SUM(results.pointsFor) as 'goals'
from results as results, teams as teams
where results.teamId = teams.teamId
group by results.teamId
order by SUM(results.pointsFor) DESC
LIMIT 1;


