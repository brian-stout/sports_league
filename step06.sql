#tables are games, playerattributes, players, results, teams
#teams = id, teamname
/*
	(auto-increment id?) Carolina Hurricanes
	Washington Capitals
	Nashville Predators
	Pittsburgh Penguins
*/

	insert into teams values (0, 'Carolina Hurricanes');
	insert into teams values (1, 'Washington Capitals');
	insert into teams values (2, 'Nashville Predators');
	insert into teams values (3, 'Pittsburgh Penguins');
#players = id, firstname, lastname, team, playernum
/*
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
	
*/
	insert into players values(0, 'Cam', 'Ward', 'Carolina Hurricanes', 30);
	insert into playerattributes values(0, 33, 73, 185);

	insert into players values(1, 'Justin', 'Faulk', 'Carolina Hurricanes', 27);
	insert into playerattributes values(1, 25, 72, 215);

	insert into players values(2, 'Jeff', 'Skinner', 'Carolina Hurricanes', 53);
	insert into playerattributes values(2, 25, 71, 200);

	insert into players values(3, 'Jordan', 'Staal', 'Carolina Hurricanes', 11);
	insert into playerattributes values(3, 25, 72, 215);

	insert into players values(4, 'Braden', 'Holtby', 'Washington Capitals', 70);
	insert into playerattributes values(4, 27, 74, 217);

	insert into players values(5, 'Alexander', 'Ovechkin', 'Washington Capitals', 8);
	insert into playerattributes values(5, 31, 75, 239);

	insert into players values(6, 'Tom', 'Wilson', 'Washington Capitals', 43);
	insert into playerattributes values(6, 23, 76, 217);

	insert into players values(7, 'Timothy', 'Oshie', 'Washington Capitals', 77);
	insert into playerattributes values(7, 30, 72, 189);

	insert into players values(8, 'Pekka', 'Rinne', 'Nashville Predators', 35);
	insert into playerattributes values(8, 34, 77, 217);

	insert into players values(9, 'Pernell', 'Subban', 'Nashville Predators', 76);
	insert into playerattributes values(9, 28, 72, 210);

	insert into players values(10, 'Filip', 'Forsberg', 'Nashville Predators', 9);
	insert into playerattributes values(10, 22, 73, 205);

	insert into players values(11, 'Ryan', 'Johansen', 'Nashville Predators', 92);
	insert into playerattributes values(11, 24, 75, 218);

	insert into players values(12, 'Matt', 'Murray', 'Pittsburgh Penguins', 30);
	insert into playerattributes values(12, 23, 76, 178);

	insert into players values(13, 'Sidney', 'Crosby', 'Pittsburgh Penguins', 87);
	insert into playerattributes values(13, 29, 71, 200);

	insert into players values(14, 'Phil', 'Kessel', 'Pittsburgh Penguins', 81);
	insert into playerattributes values(14, 29, 72, 202);

	insert into players values(15, 'Evegeni', 'Malkin', 'Pittsburgh Penguins', 71);
	insert into playerattributes values(15, 30, 75, 195);

#playerattributes = id, age, height, weight
/*
	(auto-increment id?)
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

#games = id, gameday, homeId, visitId
#results = gameid, teamid, points, result
/*
https://stackoverflow.com/questions/4241621/mysql-insert-into-table-data-from-another-table

	(auto-increment id?)
	2016-11-05 8:00, (preds), (canes) (2-3 SO)
	2016-11-12 7:00, (canes), (caps) (5-1)
	2016-12-16 7:30, (canes), (caps) (3-4)
	2016-12-28 7:30, (pens), (caps) (3-2)
	2016-10-13 8:00, (pens), (caps) (3-2 SO)
	2016-11-16 7:30, (caps), (pens) (7-1)
	2017-01-31 7:00, (pens), (preds) (4-2)
	2017-02-25 5:00, (preds), (caps) (5-2)
	
	
	
	
*/
