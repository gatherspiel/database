ALTER table group_admin_data ADD constraint group_admin_data_group_id_fkey foreign KEY (group_id) references groups (id);
