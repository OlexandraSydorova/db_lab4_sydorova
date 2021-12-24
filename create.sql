-------------------------
-- Create disney_film table
-------------------------
CREATE TABLE disney_film
(
film_id INT NOT NULL,
film_name char(50) NOT NULL,
film_date DATE NOT NULL,
proceeds INT ,
grade NUMERIC(3,1),
CONSTRAINT PK_Disney_film PRIMARY KEY (film_id)
);
-------------------------
-- Create genre table
-------------------------
CREATE TABLE genre
(
genre_id INT NOT NULL,
genre_name char(50) NOT NULL,
CONSTRAINT PK_Genre PRIMARY KEY (genre_id)
);
-------------------------
-- Create script table
-------------------------
CREATE TABLE script
(
script_id INT NOT NULL,
scene char(15) NOT NULL,
script_text char(1000) NOT NULL,
film_id INT NOT NULL REFERENCES Disney_film(film_id),
genre_id INT NOT NULL REFERENCES Genre(genre_id),
CONSTRAINT PK_Script PRIMARY KEY (script_id)
);

 
