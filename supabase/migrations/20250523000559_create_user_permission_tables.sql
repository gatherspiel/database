
DO $$ BEGIN
   CREATE TYPE user_role_level AS ENUM ('site_admin','user','tester');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

DO $$ BEGIN
   CREATE TYPE group_admin_level as ENUM('group_admin','group_moderator');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;


DO $$ BEGIN
   CREATE TYPE event_admin_level as ENUM('event_moderator');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;


CREATE TABLE if not exists user_role_data (
    userId varchar PRIMARY KEY,
    user_role_level user_role_level
);


CREATE TABLE if not exists group_admin_data (
    userId varchar,
    groupId integer,
    group_admin_level group_admin_level,
    PRIMARY KEY(userId, groupId)
);


CREATE TABLE if not exists event_admin_data (
    userId varchar,
    eventId integer,
    event_admin_level event_admin_level,
    PRIMARY KEY(userId, eventId)
);