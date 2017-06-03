drop table if exists results;

# TODO: Make this rely on foreign keys
# TODO: Support overtime losses and shootout losses
# game id, team id, points scored, result (WIN/LST)
CREATE TABLE results (
				gameId INTEGER(4) not null,
				teamId INTEGER(4) not null,
				pointsFor INTEGER(2) not null,
				pointsLost INTEGER(2) not null,
				result ENUM('WIN', 'LST')
			);
