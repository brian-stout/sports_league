/* Displays which team has the most wins in the data base */

select 
	(select teamname from teams where teams.teamId = results.teamId) as 'Team', 
	count(*) as 'Wins'
from results
where result = 'WIN'
group by results.teamId
order by count(*) DESC
LIMIT 1;

