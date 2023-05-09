-- creation of an index table
-- names as table_name and name as first letter to be indexed

CREATE INDEX idx_name_first ON names(name(1));
