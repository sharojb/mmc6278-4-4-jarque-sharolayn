CREATE DATABASE IF NOT EXISTS music_db;

USE music_db;

-- create a "name" column that's a varchar of max 100 characters
CREATE TABLE artists (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL
);

-- create a "name" column that's a varchar of max 100 characters
-- create an "artist_id" column that's an integer
-- create a "release_year" column that's an integer
CREATE TABLE albums (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  artist_id INT,
  release_year INT,
  FOREIGN KEY (artist_id)
    REFERENCES artists (id)
    ON DELETE CASCADE
);

-- create a "name" column that's a varchar of max 100 characters
-- create a "track_number" column that's an integer
-- create an "artist_id" column that's an integer
-- create an "album_id" column that's an integer
CREATE TABLE songs (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  track_number INT,
  artist_id INT,
  album_id INT,
  FOREIGN KEY (artist_id)
    REFERENCES artists (id)
    ON DELETE CASCADE,
  FOREIGN KEY (album_id)
    REFERENCES albums (id)
    ON DELETE CASCADE
);

-- Remember to use a comma BETWEEN each line!

-- NOTE: The foreign key constraints above ensure that when, for example,
-- an artist is deleted, that artist's songs and albums are also removed.
-- When an album is removed, that album's songs are also removed.