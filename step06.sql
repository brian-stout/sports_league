/*
	Carolina Hurricanes
	Washington Capitals
	Nashville Predators
	Pittsburgh Penguins
*/

	#Unique team id, team name
	INSERT INTO teams VALUES (0, 'Carolina Hurricanes');
	INSERT INTO teams VALUES (1, 'Washington Capitals');
	INSERT INTO teams VALUES (2, 'Nashville Predators');
	INSERT INTO teams VALUES (3, 'Pittsburgh Penguins');


/*
	All the collected player stats

	Cam, Ward, Carolina Hurricanes, 30
	Justin, Faulk, Carolina Hurricanes, 27
	Jeff, Skinner, Carolina Hurricanes, 53
	Jordan, Staal, Carolina Hurricanes, 11
	Braden Holtby, Washington Capitals, 70
	Alexander, Ovechkin, Washington Capitals, 8
	Tom, Wilson, Washington Capitals, 43
	Timothy, Oshie, Washington Capitals, 77
	Pekka, Rinne, Nashville Predators, 35
	Pernell, Subban, Nashville Predators, 76
	Filip, Forsberg, Nashville Predators, 9
	Ryan, Johansen, Nashville Predators, 92
	Matt, Murray, Pittsburgh Penguins, 30
	Sidney, Crosby, Pittsburgh Penguins, 87
	Phil, Kessel, Pittsburgh Penguins, 81
	Evgeni Malkin, Pittsburgh Penguins, 71
	#playerattributes = id, age, height, weight

	(ward) 33, 73, 185
	(faulk) 25, 72, 215
	(skinner) 25, 71, 200
	(staal) 28, 76, 220
	(holtby) 27, 74, 217
	(Ovi) 31, 75, 239
	(Wilson) 23, 76, 217
	(Oshie) 30, 72, 189
	(Rinne) 34, 77, 217
	(Subban) 28, 72, 210
	(Forsberg) 22, 73, 205
	(RyJo) 24, 75, 218
	(Murray) 23, 76, 178
	(Sid) 29, 71, 200
	(Kessel) 29, 72, 202
	(Malkin) 30, 75, 195

*/
	#Unique player ID, First Name, Last Name, Team, Jersey Number
	#If a team or jersey number is not applicable, then insert null
	INSERT INTO players VALUES(0, 'Cam', 'Ward', 'Carolina Hurricanes', 30);
	
	
	#Unique player ID (should match with players regular id, age, height (inches), weight
	INSERT INTO playerattributes VALUES(0, 33, 73, 185);

	INSERT INTO players VALUES(1, 'Justin', 'Faulk', 'Carolina Hurricanes', 27);
	INSERT INTO playerattributes VALUES(1, 25, 72, 215);

	INSERT INTO players VALUES(2, 'Jeff', 'Skinner', 'Carolina Hurricanes', 53);
	INSERT INTO playerattributes VALUES(2, 25, 71, 200);

	INSERT INTO players VALUES(3, 'Jordan', 'Staal', 'Carolina Hurricanes', 11);
	INSERT INTO playerattributes VALUES(3, 25, 72, 215);

	INSERT INTO players VALUES(4, 'Braden', 'Holtby', 'Washington Capitals', 70);
	INSERT INTO playerattributes VALUES(4, 27, 74, 217);

	INSERT INTO players VALUES(5, 'Alexander', 'Ovechkin', 'Washington Capitals', 8);
	INSERT INTO playerattributes VALUES(5, 31, 75, 239);

	INSERT INTO players VALUES(6, 'Tom', 'Wilson', 'Washington Capitals', 43);
	INSERT INTO playerattributes VALUES(6, 23, 76, 217);

	INSERT INTO players VALUES(7, 'Timothy', 'Oshie', 'Washington Capitals', 77);
	INSERT INTO playerattributes VALUES(7, 30, 72, 189);

	INSERT INTO players VALUES(8, 'Pekka', 'Rinne', 'Nashville Predators', 35);
	INSERT INTO playerattributes VALUES(8, 34, 77, 217);

	INSERT INTO players VALUES(9, 'Pernell', 'Subban', 'Nashville Predators', 76);
	INSERT INTO playerattributes VALUES(9, 28, 72, 210);

	INSERT INTO players VALUES(10, 'Filip', 'Forsberg', 'Nashville Predators', 9);
	INSERT INTO playerattributes VALUES(10, 22, 73, 205);

	INSERT INTO players VALUES(11, 'Ryan', 'Johansen', 'Nashville Predators', 92);
	INSERT INTO playerattributes VALUES(11, 24, 75, 218);

	INSERT INTO players VALUES(12, 'Matt', 'Murray', 'Pittsburgh Penguins', 30);
	INSERT INTO playerattributes VALUES(12, 23, 76, 178);

	INSERT INTO players VALUES(13, 'Sidney', 'Crosby', 'Pittsburgh Penguins', 87);
	INSERT INTO playerattributes VALUES(13, 29, 71, 200);

	INSERT INTO players VALUES(14, 'Phil', 'Kessel', 'Pittsburgh Penguins', 81);
	INSERT INTO playerattributes VALUES(14, 29, 72, 202);

	INSERT INTO players VALUES(15, 'Evegeni', 'Malkin', 'Pittsburgh Penguins', 71);
	INSERT INTO playerattributes VALUES(15, 30, 75, 195);

	INSERT INTO players VALUES(16, 'Bob', 'Schmo', null, null);
	INSERT INTO playerattributes VALUES(16, 30, 75, 195);


	/* Inserting all the game data */

	#2016-11-05 8:00, (preds), (canes) (2-3 SO)
	INSERT INTO games VALUES(0, '2016-11-05 08:00:00', 2, 0);
	INSERT INTO results VALUES(0, 2, 2, 3, 'LST');
	INSERT INTO results VALUES(0, 0, 3, 2, 'WIN');

	#2016-11-12 7:00, (canes), (caps) (5-1)
	INSERT INTO games VALUES(1, '2016-11-12 07:00:00', 0, 1);
	INSERT INTO results VALUES(1, 0, 5, 1, 'WIN');
	INSERT INTO results VALUES(1, 1, 1, 5, 'LST');

	#2016-12-16 7:30, (canes), (caps) (3-4)
	INSERT INTO games VALUES(2, '2016-12-16 07:30:00', 0, 1);
	INSERT INTO results VALUES(2, 0, 3, 4, 'LST');
	INSERT INTO results VALUES(2, 1, 4, 3, 'WIN');

	#2016-12-28 7:30, (pens), (caps) (3-2)
	INSERT INTO games VALUES(3, '2016-12-28 07:30:00', 3, 1);
	INSERT INTO results VALUES(3, 3, 3, 2, 'WIN');
	INSERT INTO results VALUES(3, 1, 2, 3, 'LST');

	#2016-10-13 08:00:00, (pens), (caps) (3-2 SO)
	INSERT INTO games VALUES(4, '2016-10-13 08:00:00', 3, 1);
	INSERT INTO results VALUES(4, 3, 3, 2, 'WIN');
	INSERT INTO results VALUES(4, 1, 2, 3, 'LST');

	#2016-11-16 07:30:00, (caps), (pens) (7-1)
	INSERT INTO games VALUES(5, '2016-11-16 07:30:00', 1, 3);
	INSERT INTO results VALUES(5, 1, 7, 1, 'WIN');
	INSERT INTO results VALUES(5, 3, 1, 7, 'LST');

	#2017-01-31 07:00:00, (pens), (preds) (4-2)
	INSERT INTO games VALUES(6, '2017-01-31 07:00:00', 3, 2);
	INSERT INTO results VALUES(6, 3, 4, 2, 'WIN');
	INSERT INTO results VALUES(6, 2, 2, 4, 'LST');

	#2017-02-25 05:00:00, (preds), (caps) (5-2)
	INSERT INTO games VALUES(7, '2017-02-25 05:00:00', 2, 1);
	INSERT INTO results VALUES(7, 2, 5, 2, 'WIN');
	INSERT INTO results VALUES(7, 1, 2, 5, 'LST');
