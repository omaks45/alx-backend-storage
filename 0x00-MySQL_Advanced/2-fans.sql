-- SQL script that ranks country origins of bands, 
-- ordered by the number of (non-unique) fans
-- column names are origin and nb_fans
-- the table is imported from metal_bands

SELECT origin, SUM(fans) AS nb_fans FROM metal_bands
GROUP BY origin ORDER BY nb_fans DESC;
