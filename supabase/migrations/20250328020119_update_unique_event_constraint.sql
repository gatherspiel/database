ALTER table events DROP CONSTRAINT unique_events;
ALTER table events ADD CONSTRAINT unique_events UNIQUE(name, url);
