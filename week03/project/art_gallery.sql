SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE artworks_keywords;
TRUNCATE TABLE artworks;
TRUNCATE TABLE keywords;
TRUNCATE TABLE artists;

SET FOREIGN_KEY_CHECKS = 1;

-- Populate keywords table
insert into keywords (keyword_id, keyword) values (1, "Baby");
insert into keywords (keyword_id, keyword) values (2, "Battle");
insert into keywords (keyword_id, keyword) values (3, "Blue");
insert into keywords (keyword_id, keyword) values (4, "Boat");
insert into keywords (keyword_id, keyword) values (5, "Christ");
insert into keywords (keyword_id, keyword) values (6, "Flowers");
insert into keywords (keyword_id, keyword) values (7, "Food");
insert into keywords (keyword_id, keyword) values (8, "Girl");
insert into keywords (keyword_id, keyword) values (9, "Landscape");
insert into keywords (keyword_id, keyword) values (10, "People");
insert into keywords (keyword_id, keyword) values (11, "Water");

-- Populate artists table
insert into artists (artist_id, first_name, middle_name, last_name, born_at, dead_at, local) values (1, "Vincent",null,"van Gogh",1853,1890,false);
insert into artists (artist_id, first_name, middle_name, last_name, born_at, dead_at, local) values (2, "Rembrandt","Harmenszoon","van Rijn",1606,1669,false);
insert into artists (artist_id, first_name, middle_name, last_name, born_at, dead_at, local) values (3, "Leonardo",null,"da Vinci",1452,1519,false);
insert into artists (artist_id, first_name, middle_name, last_name, born_at, dead_at, local) values (4, "Venture","Lonzo","Coy",1965,null,true);
insert into artists (artist_id, first_name, middle_name, last_name, born_at, dead_at, local) values (5, "Deborah",null,"Gill",1970,null,true);
insert into artists (artist_id, first_name, middle_name, last_name, born_at, dead_at, local) values (6, "Claude",null,"Monet",1840,1926,false);
insert into artists (artist_id, first_name, middle_name, last_name, born_at, dead_at, local) values (7, "Pablo",null,"Picasso",1904,1973,false);
insert into artists (artist_id, first_name, middle_name, last_name, born_at, dead_at, local) values (8, "Michelangelo","di Lodovico","Simoni",1475,1564,false);

-- Populate artworks table
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (1, "France", 'Irises', 1889, 'Impressionism', 'Oil', 'irises.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (1, "France", 'The Starry Night', 1889, 'Post-Impressionism', 'Oil', 'starrynight.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (1, "France", 'Sunflowers', 1888, 'Post-impressionism', 'Oil', 'sunflowers.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (2, "Netherlands", 'Night Watch', 1642, 'Baroque', 'Oil', 'nightwatch.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (2, "Netherlands", 'Storm on the Sea of Galilee', 1633, 'Dutch Golden Age', 'Oil', 'stormgalilee.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (3, "Italy", 'Head of a Woman', 1508, 'High Renaissance', 'Oil', 'headwoman.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (3, "Italy", 'Last Supper', 1498, 'Renaissance', 'Tempra ', 'lastsupper.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (3, "Italy", 'Mona Lisa', 1517, 'Renaissance', 'Oil', 'monalisa.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (4, "United States", 'Hillside Stream', 2005, 'Modern', 'Oil', 'hillsidestream.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (4, "United States", 'Old Barn', 1992, 'Modern', 'Oil', 'oldbarn.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (5, "United States", 'Beach Baby', 1999, 'Modern', 'Watercolor', 'beachbaby.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (6, "France", 'Women in the Garden', 1866, 'Impressionism', 'Oil', 'womengarden.jpg');
INSERT INTO artworks (artist_id, country, title, year, period, style, filename) VALUES (7, "Spain", 'Old Guitarist', 1904, 'Modern', 'Oil', 'guitarist.jpg');

-- Populate artworks_keywords table
insert into artworks_keywords (artwork_id, keyword_id) values (1, 6);
insert into artworks_keywords (artwork_id, keyword_id) values (2, 3);
insert into artworks_keywords (artwork_id, keyword_id) values (2, 9);
insert into artworks_keywords (artwork_id, keyword_id) values (3, 6);
insert into artworks_keywords (artwork_id, keyword_id) values (4, 8);
insert into artworks_keywords (artwork_id, keyword_id) values (4, 10);
insert into artworks_keywords (artwork_id, keyword_id) values (4, 2);
insert into artworks_keywords (artwork_id, keyword_id) values (5, 4);
insert into artworks_keywords (artwork_id, keyword_id) values (5, 11);
insert into artworks_keywords (artwork_id, keyword_id) values (5, 10);
insert into artworks_keywords (artwork_id, keyword_id) values (5, 5);
insert into artworks_keywords (artwork_id, keyword_id) values (6, 8);
insert into artworks_keywords (artwork_id, keyword_id) values (6, 10);
insert into artworks_keywords (artwork_id, keyword_id) values (7, 7);
insert into artworks_keywords (artwork_id, keyword_id) values (7, 10);
insert into artworks_keywords (artwork_id, keyword_id) values (7, 5);
insert into artworks_keywords (artwork_id, keyword_id) values (8, 8);
insert into artworks_keywords (artwork_id, keyword_id) values (8, 10);
insert into artworks_keywords (artwork_id, keyword_id) values (9, 11);
insert into artworks_keywords (artwork_id, keyword_id) values (9, 9);
insert into artworks_keywords (artwork_id, keyword_id) values (10, 9);
insert into artworks_keywords (artwork_id, keyword_id) values (11, 11);
insert into artworks_keywords (artwork_id, keyword_id) values (11, 10);
insert into artworks_keywords (artwork_id, keyword_id) values (11, 1);
insert into artworks_keywords (artwork_id, keyword_id) values (12, 9);
insert into artworks_keywords (artwork_id, keyword_id) values (12, 10);
insert into artworks_keywords (artwork_id, keyword_id) values (12, 6);
insert into artworks_keywords (artwork_id, keyword_id) values (13, 3);
insert into artworks_keywords (artwork_id, keyword_id) values (13, 10);
