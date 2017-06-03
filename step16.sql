/* Similar to the team ID players check, this query displays all games played on a specific date */

set @date='2016-11-016';

select * from games
where YEAR(gameday) = YEAR(@date) and MONTH(gameday) = MONTH(@date) and DAY(gameday) = DAY(@date);

