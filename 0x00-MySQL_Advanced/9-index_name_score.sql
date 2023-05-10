-- create indexes of two columns
-- only their first letter should be indexed
CREATE INDEX idx_name_first_score ON names(name(1), score);
