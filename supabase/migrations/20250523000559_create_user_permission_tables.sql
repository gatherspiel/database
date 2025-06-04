
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

create table if not exists users (
  id serial not null,
  email varchar unique,
  user_role_level user_role_level null,
  constraint users_pkey primary key (id)
);

create table if not exists event_admin_data (
  user_id integer not null,
  event_id integer not null,
  event_admin_level event_admin_level null,

  constraint event_admin_data_user_id_fkey foreign KEY (user_id) references users (id),
  constraint event_admin_data_pkey primary key (user_id, event_id)
);


create table  if not exists group_admin_data (
  user_id integer not null,
  group_id integer not null,
  group_admin_level group_admin_level null,

  constraint group_admin_data_user_id_fkey foreign KEY (user_id) references users (id),
  constraint group_admin_data_pkey primary key (user_id, group_id)
);