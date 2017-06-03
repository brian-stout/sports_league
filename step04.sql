drop table if exists games;

/* Creates the games table, which for each unique game contains the date played,
	and which team was home or away */
CREATE TABLE games (
				gameId INTEGER(4) not null primary key,
				gameday DATETIME not null,
				homeId INTEGER(4) not null,
				visitId INTEGER(4) not null
			);
