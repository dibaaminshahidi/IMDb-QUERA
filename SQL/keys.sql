ALTER TABLE movie
ADD PRIMARY KEY (id);

ALTER TABLE genre_movie
ADD FOREIGN KEY (Movie_id) REFERENCES movie(id);

ALTER TABLE storyline
ADD FOREIGN KEY (Movie_id) REFERENCES movie(id);

ALTER TABLE person
ADD PRIMARY KEY (id);

ALTER TABLE cast
ADD FOREIGN KEY (Movie_id) REFERENCES movie(id),
ADD FOREIGN KEY (Person_id) REFERENCES person(id);

ALTER TABLE crew
ADD FOREIGN KEY (Movie_id) REFERENCES movie(id),
ADD FOREIGN KEY (Person_id) REFERENCES person(id);