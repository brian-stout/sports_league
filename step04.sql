DROP TABLE if EXISTS games;

/* Creates the games table, which for each unique game contains the date played,
	and which team was home or away */
CREATE TABLE games (
				gameId INTEGER(4) NOT null primary key,
				gameday DATETIME NOT null,
				homeId INTEGER(4) NOT null,
				visitId INTEGER(4) NOT null
			);
