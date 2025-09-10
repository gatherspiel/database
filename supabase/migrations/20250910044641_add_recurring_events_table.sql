CREATE TABLE IF NOT EXISTS weekly_event_time {
    id serial,
    event_id integer null,
    day_of_week public.dayofweek null,
    start_time time with time zone null,
    end_time time with time zone null,
    constraint weekly_event_time_pkey primary key (id),
    constraint weekly_event_time_event_id_fkey foreign KEY (event_id) references events (id)
}