/* Lists all players not assigned to a team */

select  playerId, firstname, lastname from players where team is null;
