CREATE TYPE dayOfWeek AS ENUM ('Sunday', 'Monday', 'Tuesday', 'Wednesday','Thursday','Friday', 'Saturday');
ALTER TABLE event_time ADD column day_of_week dayOfWeek;