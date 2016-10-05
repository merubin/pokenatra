DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;


CREATE TABLE pokemons(
  id serial PRIMARY KEY,
  name TEXT,
  cp integer,
  poke_type varchar(255),
  img_url varchar(1024),
  trainer_id integer
);

CREATE TABLE trainers(
  id serial PRIMARY KEY,
  name TEXT,
  level integer,
  img_url varchar(1024)
);
