-- Genres

INSERT INTO genre (name) VALUES ('Блюз');
INSERT INTO genre (name) VALUES ('Панк');
INSERT INTO genre (name) VALUES ('Прогрессивный рок');
INSERT INTO genre (name) VALUES ('Рок');
INSERT INTO genre (name) VALUES ('Русский рок');

-- Artists and their genres 

INSERT INTO artist (name) VALUES ('Eric Clapton');
INSERT INTO artist_genre VALUES (1, 1);
INSERT INTO artist_genre VALUES (1, 4);

INSERT INTO artist (name) VALUES ('Pink Floyd');
INSERT INTO artist_genre VALUES (2, 3);
INSERT INTO artist_genre VALUES (2, 4);

INSERT INTO artist (name) VALUES ('The Offspring');
INSERT INTO artist_genre VALUES (3, 2);
INSERT INTO artist_genre VALUES (3, 4);

INSERT INTO artist (name) VALUES ('Гражданская оборона');
INSERT INTO artist_genre VALUES (4, 2);
INSERT INTO artist_genre VALUES (4, 5);

INSERT INTO artist (name) VALUES ('ДДТ');
INSERT INTO artist_genre VALUES (5, 5);

-- Albums and their artists

INSERT INTO album (name, year) VALUES ('Unplugged', 1992);
INSERT INTO album_artist VALUES(1, 1);

INSERT INTO album (name, year) VALUES ('The Dark Side of the Moon', 1973);
INSERT INTO album_artist VALUES(2, 2);

INSERT INTO album (name, year) VALUES ('Wish You Were Here', 1975);
INSERT INTO album_artist VALUES(3, 2);

INSERT INTO album (name, year) VALUES ('Americana', 1998);
INSERT INTO album_artist VALUES(4, 3);

INSERT INTO album (name, year) VALUES ('Долгая счастливая жизнь', 2004);
INSERT INTO album_artist VALUES(5, 4);

INSERT INTO album (name, year) VALUES ('Чёрный пёс Петербург', 1993);
INSERT INTO album_artist VALUES(6, 5);

INSERT INTO album (name, year) VALUES ('Галя ходи', 2018);
INSERT INTO album_artist VALUES(7, 5);

-- Album tracks

INSERT INTO track (name, duration, album_id) VALUES ('Tears in Heaven', 274, 1);
INSERT INTO track (name, duration, album_id) VALUES ('Layla', 286, 1);
INSERT INTO track (name, duration, album_id) VALUES ('Old Love', 473, 1);

INSERT INTO track (name, duration, album_id) VALUES ('Time', 421, 2);
INSERT INTO track (name, duration, album_id) VALUES ('Money', 382, 2);
INSERT INTO track (name, duration, album_id) VALUES ('Eclipse', 123, 2);

INSERT INTO track (name, duration, album_id) VALUES ('Welcome to the Machine', 451, 3);
INSERT INTO track (name, duration, album_id) VALUES ('Have a Cigar', 308, 3);
INSERT INTO track (name, duration, album_id) VALUES ('Wish You Were Here', 340, 3);

INSERT INTO track (name, duration, album_id) VALUES ('Staring At the Sun', 192, 4);
INSERT INTO track (name, duration, album_id) VALUES ('The Kids Aren''t Alright', 239, 4);
INSERT INTO track (name, duration, album_id) VALUES ('Pay the Man', 489, 4);

INSERT INTO track (name, duration, album_id) VALUES ('Кабуки', 213, 5);
INSERT INTO track (name, duration, album_id) VALUES ('Долгая счастливая жизнь', 325, 5);
INSERT INTO track (name, duration, album_id) VALUES ('Вселенская большая любовь', 357, 5);

INSERT INTO track (name, duration, album_id) VALUES ('Чёрный пёс Петербург', 686, 6);
INSERT INTO track (name, duration, album_id) VALUES ('Родина', 289, 6);
INSERT INTO track (name, duration, album_id) VALUES ('Террорист', 425, 6);

INSERT INTO track (name, duration, album_id) VALUES ('Уездный город', 197, 7);
INSERT INTO track (name, duration, album_id) VALUES ('Вокзал', 297, 7);
INSERT INTO track (name, duration, album_id) VALUES ('Галя ходи', 304, 7);
INSERT INTO track (name, duration, album_id) VALUES ('Любовь не пропала', 357, 7);

-- Track collections (all fake :)

INSERT INTO collection (name, year) VALUES ('Punk’s Not Dead', 2006);
INSERT INTO collection (name, year) VALUES ('Foreign Rock', 2015);
INSERT INTO collection (name, year) VALUES ('Русский рок', 2018);
INSERT INTO collection (name, year) VALUES ('All Mixed Up - I', 2020);
INSERT INTO collection (name, year) VALUES ('All Mixed Up - II', 2021);

-- Collection tracks

INSERT INTO collection_track VALUES (1, 10);
INSERT INTO collection_track VALUES (1, 12);
INSERT INTO collection_track VALUES (1, 14);

INSERT INTO collection_track VALUES (2, 2);
INSERT INTO collection_track VALUES (2, 5);
INSERT INTO collection_track VALUES (2, 8);

INSERT INTO collection_track VALUES (3, 15);
INSERT INTO collection_track VALUES (3, 16);
INSERT INTO collection_track VALUES (3, 21);

INSERT INTO collection_track VALUES (4, 1);
INSERT INTO collection_track VALUES (4, 20);
INSERT INTO collection_track VALUES (4, 4);

INSERT INTO collection_track VALUES (5, 21);
INSERT INTO collection_track VALUES (5, 9);
INSERT INTO collection_track VALUES (5, 13);