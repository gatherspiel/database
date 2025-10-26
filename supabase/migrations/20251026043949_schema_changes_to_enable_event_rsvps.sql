create table public.event_rsvp (
  user_id integer null,
  event_id integer null,
  rsvp_time timestamp with time zone null,
  constraint event_rsvp_pkey primary KEY (user_id, event_id),
  constraint event_rsvp_event_id_fkey foreign KEY (event_id) references events (id),
  constraint event_rsvp_user_id_fkey foreign KEY (user_id) references users (id),
)