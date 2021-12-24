CREATE OR REPLACE FUNCTION clean_grade() RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN 
   DELETE FROM script 
   WHERE script.film_id IN 
      (SELECT disney_film.film_id from disney_film where disney_film.grade is NULL);
END;
$$;