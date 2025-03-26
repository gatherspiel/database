CREATE TABLE if not exists location_group_map (
    location_id integer REFERENCES locations,
    group_id integer REFERENCES groups,
    CONSTRAINT unique_location_group_map UNIQUE(location_id, group_id)
);



