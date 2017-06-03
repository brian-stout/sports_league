drop table if exists games;

# id, date and start time, home team id, vistors team id
CREATE TABLE games (
				gameId INTEGER(4) not null primary key,
				gameday DATETIME not null,
				homeId INTEGER(4) not null,
				visitId INTEGER(4) not null
			);
