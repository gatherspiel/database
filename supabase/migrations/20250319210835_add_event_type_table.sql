create type event_tag as enum (
    'boardgame'
);

create table event_tag_map (
    id serial primary key,
    event_id integer REFERENCES locations,
    tag event_tag
);