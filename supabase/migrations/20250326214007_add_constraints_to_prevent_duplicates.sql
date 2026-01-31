ALTER table event_tag_map ADD CONSTRAINT unique_event_tag_map UNIQUE(event_id, tag);
ALTER table events ADD CONSTRAINT unique_events UNIQUE(group_id, name);
ALTER table game_restaurants ADD CONSTRAINT unique_game_restaurants UNIQUE(location_id, name);

ALTER table groups
ADD location_id integer REFERENCES locations;


ALTER table locations ADD CONSTRAINT unique_locations UNIQUE(city, state, street_address);
