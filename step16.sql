/* Similar to the team ID players check, this query displays all games played on a specific date */

SET @date='2016-11-016';

SELECT * FROM games
WHERE YEAR(gameday) = YEAR(@date) AND MONTH(gameday) = MONTH(@date) AND DAY(gameday) = DAY(@date);

