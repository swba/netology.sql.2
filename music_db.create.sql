CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(127) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(127) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(127) NOT NULL,
	year INTEGER NOT NULL CHECK (-10000 < year AND year < 10000)
);

CREATE TABLE IF NOT EXISTS track (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(127) NOT NULL,
	duration INTEGER NOT NULL CHECK (duration > 0),
	album_id INTEGER NOT NULL REFERENCES album(album_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(127) NOT NULL,
	year INTEGER NOT NULL CHECK (-10000 < year AND year < 10000)
);

CREATE TABLE IF NOT EXISTS artist_genre (
	artist_id INTEGER NOT NULL REFERENCES artist(artist_id) ON DELETE CASCADE,
	genre_id INTEGER NOT NULL REFERENCES genre(genre_id) ON DELETE CASCADE,
	CONSTRAINT artist_genre_pkey PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS album_artist (
	album_id INTEGER NOT NULL REFERENCES album(album_id) ON DELETE CASCADE,
	artist_id INTEGER NOT NULL REFERENCES artist(artist_id) ON DELETE CASCADE,
	CONSTRAINT album_artist_pkey PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS collection_track (
	collection_id INTEGER NOT NULL REFERENCES collection(collection_id) ON DELETE CASCADE,
	track_id INTEGER NOT NULL REFERENCES track(track_id) ON DELETE CASCADE,
	CONSTRAINT collection_track_pkey PRIMARY KEY (collection_id, track_id)
);