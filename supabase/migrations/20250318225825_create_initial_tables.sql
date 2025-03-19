
CREATE TABLE if not exists groups (
    id SERIAL PRIMARY KEY,
    name varchar NOT NULL,
    url varchar NOT NULL
);

CREATE TABLE if not exists locations (
     id SERIAL PRIMARY KEY,
     city varchar NOT NULL,
     state varchar NOT NULL,
     street_address varchar,
     zip_code varchar
);

CREATE TABLE if not exists events (
    id SERIAL PRIMARY KEY,
    group_id integer REFERENCES groups,
    location_id integer REFERENCES locations,
    description varchar,
    name varchar NOT NULL,
    url varchar NOT NULL,
    is_convention boolean
);


CREATE TABLE if not exists game_restaurants (
    id SERIAL PRIMARY KEY,
    location_id integer REFERENCES locations,
    name varchar NOT NULL,
    url varchar NOT NULL
);

CREATE TABLE if not exists event_time (
    id SERIAL PRIMARY KEY,
    event_id integer REFERENCES events,
    start_time timestamptz,
    end_time timestamptz
);