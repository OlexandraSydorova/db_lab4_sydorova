CREATE TRIGGER film_name_insert 
AFTER INSERT ON disney_film
FOR EACH ROW EXECUTE FUNCTION upper_film_name()


CREATE OR REPLACE FUNCTION upper_film_name() RETURNS trigger AS
$$
     BEGIN
          UPDATE Disney_film 
          SET film_name = upper(film_name) WHERE Disney_film.film_id = NEW.film_id; 
		  RETURN NULL; -- result is ignored since this is an AFTER trigger
     END;
$$ LANGUAGE 'plpgsql';