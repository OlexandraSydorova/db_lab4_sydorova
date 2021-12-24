select * from script
select clean_grade()

INSERT INTO Script(script_id, scene, script_text, film_id, genre_id)
VALUES(4553, 'scene 6', 'Princess grabbed the spindle', 203, 500002);
INSERT INTO Script(script_id, scene, script_text, film_id, genre_id)
VALUES(4555, 'scene 1', 'Tiger Shere Khan was the guardian of the jungle', 205, 500004);

CALL get_film_name('Musical');
CALL get_film_name('Comedy');

INSERT INTO Disney_film(film_id, film_name, film_date)
VALUES(206, 'Return to Oz', TO_DATE('1985-06-21', 'yyyy-mm-dd'));
select * from disney_film
DELETE FROM Disney_film where film_id = 206;