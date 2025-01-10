INSERT INTO album (album_id, title, year)
VALUES
    (1, 'The Best', 2018),
	(2, 'Acoustics', 2020),
	(3, 'Shores', 2019),
	(4, 'Nevermind', 2020);

INSERT INTO compilation (compilation_id, title, year, track)
VALUES
	(2, 'Super hits', 2018, 'Samsara'),
	(3, 'Sunrises and sunsets', 2019, 'Secret'),
	(4, 'Rhythms', 2020, 'Lithium'),
	(1, 'Daydreams', 2018, 'Blizzard'),
	(5, 'Daydreams', 2018, 'Natalie'),
	(6, 'Sunrises and sunsets', 2019, 'Shores'),
	(7, 'Super hits', 1969, 'My Way');

INSERT INTO genre (genre_id, name)
values
		(1, 'Pop'),
		(2, 'Rap'),
		(3, 'Romances'),
		(4, 'Rock');

INSERT INTO performer (name, performer_id, genre)
values
		('Basta', 2, 'Rap'),
		('Nirvana', 4, 'Rock'),
		('Gregory Leps', 1, 'Pop'),
		('Alexander Malinin', 3, 'Romances'),
		('Frank Sinatra', 5, 'Pop'),
		('Alexander Malinin', 6, 'Pop');


INSERT INTO track (track_id, title, duration, album_id)
values
		(4, 'Lithium', '00:04:30', 4),
		(1, 'Blizzard', '00:03:50', 1),
		(2, 'Samsara', '00:03:15', 2),
		(3, 'Secret', '00:04:15', 3),
		(5, 'Natalie', '00:03:57', 1),
		(6, 'Shores', '00:03:20', 3),
		(7, 'My Way', '00:03:36', 2),
		(8, 'Favorite', '00:03:45', 1);

INSERT INTO album_performer (album_id, performer_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(2, 5);

INSERT INTO compilation_track (compilation_id, track_id)
VALUES
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7);

INSERT INTO performer_genre (performer_id, genre_id)
values
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 1);