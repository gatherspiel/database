DROP TABLE event_tag_map CASCADE;

CREATE TABLE if not exists location_tag (
     id SERIAL PRIMARY KEY,
     name varchar NOT NULL
);


CREATE TABLE if not exists location_tag_mapping (
    location_tag_id varchar REFERENCES location_tag,
    location_id varchar REFERENCES locations
);