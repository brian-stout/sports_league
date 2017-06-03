drop table if exists results;

# TODO: Support overtime losses and shootout losses

/* Creates the results table, which contains a list of every team's games, and if they
	won it.  Also lists how many goals were scored, and how many goals were scored against.
	The goals against is for more specific goalie stats like goals scored on per average game (GAA) */
CREATE TABLE results (
				gameId INTEGER(4) not null,
				teamId INTEGER(4) not null,
				pointsFor INTEGER(2) not null,
				pointsLost INTEGER(2) not null,
				result ENUM('WIN', 'LST'),

				/* Same foreign key handling as players.  If a game does not have a record in games
					we do not need its results */

				INDEX (gameId, teamId),
				FOREIGN KEY (gameId)
					REFERENCES games(gameId)
					ON UPDATE CASCADE ON DELETE CASCADE,

				FOREIGN KEY (teamId)
					REFERENCES teams(teamId)
					ON UPDATE CASCADE ON DELETE CASCADE
			);
