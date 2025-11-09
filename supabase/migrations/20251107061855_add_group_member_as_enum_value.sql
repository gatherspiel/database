DO $$ BEGIN
   ALTER TYPE group_admin_level ADD VALUE  'group_member';
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;