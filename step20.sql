/*For the precision 
www.w3resource.com/mysql/aggregate-functions-and-grouping/aggregate-functions-and-grouping-avg().php
*/

/* Displays which team scored the most goals on average per gamee */

select 
	(select teamname from teams where teams.teamId = results.teamId) as 'Team', 
	ROUND(AVG(pointsFor), 2) as 'AVG goals'
from results
group by results.teamId
order by AVG(pointsFor) DESC
LIMIT 1;

