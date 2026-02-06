alter table locations
add column location_name;

alter table groups
add column last_updated timestamptz;

alter table events
add column last_updates timestamptz;


