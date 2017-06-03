set @team_id=0;

select CONCAT(lastname, ' ', firstname) as 'name', playernum as 'jersey number'
from players
where team = (select teamname from teams where teamId = @team_id)
order by playernum;
