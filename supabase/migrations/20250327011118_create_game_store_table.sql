CREATE TABLE if not exists game_stores (
    id SERIAL PRIMARY KEY,
    location_id integer REFERENCES locations,
    name varchar NOT NULL,
    url varchar NOT NULL
);
