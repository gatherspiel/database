DROP table if exists event_rsvp;

DO $$ BEGIN
   ALTER TYPE event_admin_level ADD VALUE  'event_rsvp';
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

ALTER table event_admin_data ADD column rsvp_time timestamp;