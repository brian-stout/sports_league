/* making sure nothing exists here */
drop table if exists teams;

CREATE TABLE teams (
				teamId INTEGER(4) not null primary key, 
				teamname VARCHAR(30)
			);

