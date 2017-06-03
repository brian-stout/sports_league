/* Sum trick from https:/stackoverflow.com/a/9798978 */
select 
	(select teamname from teams where teams.teamId = results.teamId) as 'Team', 
	SUM(result = 'WIN') as 'wins',
	SUM(result = 'LST') as 'losses'
from results
group by results.teamId
order by SUM(result = 'WIN');
