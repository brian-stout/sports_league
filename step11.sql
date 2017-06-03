select teams.teamname as 'Most goals scored by', SUM(results.pointsFor) as 'goals'
from results as results, teams as teams
where results.teamId = teams.Id
group by results.teamId
order by SUM(results.pointsFor) DESC LIMIT 1;


