DROP TABLE IF EXISTS pokemons;


CREATE TABLE pokemons(
  id serial PRIMARY KEY,
  name TEXT,
  cp integer,
  poke_type varchar(255),
  img_url varchar(255)
);
