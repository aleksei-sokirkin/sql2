CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT null
);

CREATE TABLE IF NOT EXISTS Singer (
	id SERIAL PRIMARY KEY,
	name_singer VARCHAR(80) NOT null
);

CREATE TABLE IF NOT EXISTS GenresSinger (
	singer_id INTEGER REFERENCES Singer(id),
	genres_id INTEGER REFERENCES Genres(id),
	CONSTRAINT pk PRIMARY KEY (singer_id, genres_id)	
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name_album VARCHAR(80) NOT null,
	year_execution DATE NOT null  
);

CREATE TABLE IF NOT EXISTS SingerAlbum (
	singer_id INTEGER REFERENCES Singer(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT sr PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	tracks_name VARCHAR(80) NOT null,
	duration INTEGER NOT null,
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(80) NOT null,
	release_year DATE NOT null  
);

CREATE TABLE IF NOT EXISTS CollectionTracks (
	collection_id INTEGER REFERENCES Collection(id),
	track_id INTEGER REFERENCES Tracks(id),
	CONSTRAINT tr PRIMARY KEY (collection_id, track_id)
);
