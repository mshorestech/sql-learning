#!/bin/bash

sqlite3 sqlbolt.db << 'ENDSQL'
CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    director TEXT,
    year INTEGER,
    length_minutes INTEGER
);

INSERT INTO movies VALUES (1, 'Toy Story', 'John Lasseter', 1995, 81);
INSERT INTO movies VALUES (2, 'A Bugs Life', 'John Lasseter', 1998, 95);
INSERT INTO movies VALUES (3, 'Toy Story 2', 'John Lasseter', 1999, 93);
INSERT INTO movies VALUES (4, 'Monsters, Inc.', 'Pete Docter', 2001, 92);
INSERT INTO movies VALUES (5, 'Finding Nemo', 'Andrew Stanton', 2003, 107);
INSERT INTO movies VALUES (6, 'The Incredibles', 'Brad Bird', 2004, 116);
INSERT INTO movies VALUES (7, 'Cars', 'John Lasseter', 2006, 117);
INSERT INTO movies VALUES (8, 'Ratatouille', 'Brad Bird', 2007, 115);
INSERT INTO movies VALUES (9, 'WALL-E', 'Andrew Stanton', 2008, 104);
INSERT INTO movies VALUES (10, 'Up', 'Pete Docter', 2009, 101);
INSERT INTO movies VALUES (11, 'Toy Story 3', 'Lee Unkrich', 2010, 103);
INSERT INTO movies VALUES (12, 'Cars 2', 'John Lasseter', 2011, 120);
INSERT INTO movies VALUES (13, 'Brave', 'Brenda Chapman', 2012, 102);
INSERT INTO movies VALUES (14, 'Monsters University', 'Dan Scanlon', 2013, 110);

CREATE TABLE boxoffice (
    movie_id INTEGER PRIMARY KEY,
    rating REAL,
    domestic_sales INTEGER,
    international_sales INTEGER
);

INSERT INTO boxoffice VALUES (5, 8.2, 380843261, 555900000);
INSERT INTO boxoffice VALUES (14, 7.4, 268492764, 475066843);
INSERT INTO boxoffice VALUES (8, 8.0, 206445654, 417277164);
INSERT INTO boxoffice VALUES (12, 6.4, 191452396, 368400000);
INSERT INTO boxoffice VALUES (3, 7.9, 245852179, 239163000);
INSERT INTO boxoffice VALUES (6, 8.0, 261441092, 370001000);
INSERT INTO boxoffice VALUES (9, 8.5, 223808164, 297503696);
INSERT INTO boxoffice VALUES (11, 8.3, 415004880, 648167031);
INSERT INTO boxoffice VALUES (1, 8.3, 191796233, 170162503);
INSERT INTO boxoffice VALUES (7, 7.2, 244082982, 217900167);
INSERT INTO boxoffice VALUES (10, 8.3, 293004164, 438338580);
INSERT INTO boxoffice VALUES (4, 8.1, 289916256, 272900000);
INSERT INTO boxoffice VALUES (2, 7.2, 162798565, 200600000);
INSERT INTO boxoffice VALUES (13, 7.2, 237283207, 301700000);

CREATE TABLE north_american_cities (
    city TEXT,
    country TEXT,
    population INTEGER,
    latitude REAL,
    longitude REAL
);

INSERT INTO north_american_cities VALUES ('Guadalajara', 'Mexico', 1500800, 20.659699, -103.349609);
INSERT INTO north_american_cities VALUES ('Toronto', 'Canada', 2795060, 43.653226, -79.383184);
INSERT INTO north_american_cities VALUES ('Houston', 'United States', 2195914, 29.760427, -95.369803);
INSERT INTO north_american_cities VALUES ('New York', 'United States', 8405837, 40.712784, -74.005941);
INSERT INTO north_american_cities VALUES ('Philadelphia', 'United States', 1553165, 39.952584, -75.165222);
INSERT INTO north_american_cities VALUES ('Havana', 'Cuba', 2106146, 23.05407, -82.345189);
INSERT INTO north_american_cities VALUES ('Mexico City', 'Mexico', 8555500, 19.432608, -99.133208);
INSERT INTO north_american_cities VALUES ('Phoenix', 'United States', 1513367, 33.448377, -112.074037);
INSERT INTO north_american_cities VALUES ('Los Angeles', 'United States', 3884307, 34.052234, -118.243685);
INSERT INTO north_american_cities VALUES ('Ecatepec de Morelos', 'Mexico', 1742000, 19.601841, -99.050674);
INSERT INTO north_american_cities VALUES ('Montreal', 'Canada', 1717767, 45.501689, -73.567256);
INSERT INTO north_american_cities VALUES ('Chicago', 'United States', 2718782, 41.878114, -87.629798);
ENDSQL

echo "✅ sqlbolt.db created!"
