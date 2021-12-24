CREATE OR REPLACE PROCEDURE get_film_name(genre_arg varchar(50))
LANGUAGE 'plpgsql'
AS $$
DECLARE record_name disney_film.film_name%TYPE;
DECLARE record_genre genre.genre_name%TYPE;

BEGIN
    SELECT film_name, genre_name into record_name, record_genre FROM disney_film, genre WHERE film_name = (select film_name from disney_film where film_id = (select film_id from script where genre_id = (select genre_id from genre where genre_name = genre_arg))) and genre_name=genre_arg;
    RAISE INFO 'Film_name: %,  Genre_name: %', TRIM(record_name), TRIM(record_genre);
END;
$$;