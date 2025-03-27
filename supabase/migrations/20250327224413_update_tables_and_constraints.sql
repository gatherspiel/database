ALTER TABLE events
DROP COLUMN group_id;

ALTER table events ADD CONSTRAINT unique_events UNIQUE(url);

ALTER table game_restaurants ALTER COLUMN location_id SET NOT NULL;

ALTER table locations ALTER COLUMN state DROP NOT NULL;
ALTER table locations ALTER COLUMN street_address DROP NOT NULL;
ALTER table locations ALTER COLUMN zip_code DROP NOT NULL;


CREATE TABLE if not exists event_group_map (
    group_id integer REFERENCES groups,
    event_id integer REFERENCES events,
    CONSTRAINT unique_event_group_map UNIQUE(group_id, event_id)
);