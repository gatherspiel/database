CREATE TYPE game_type_tag AS ENUM ('Eurogames', 'Light Games', 'Social Games', 'Wargames','Hidden Identity Games');
ALTER TABLE groups ADD column game_type_tags game_type_tag[] DEFAULT [];
