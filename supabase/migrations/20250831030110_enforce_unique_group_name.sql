  alter table groups DROP CONSTRAINT unique_groups
  alter table groups ADD CONSTRAINT unique_groups unique(name)
