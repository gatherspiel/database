ALTER table groups DROP CONSTRAINT unique_groups;
ALTER table groups ADD CONSTRAINT unique_groups UNIQUE(url);
