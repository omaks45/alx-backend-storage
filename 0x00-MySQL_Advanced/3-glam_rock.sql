-- SQL script that lists all bands with Glam rock
-- Column names must be: band_name and lifespan (in years)
-- You should use attributes formed and split for computing the lifespan

SELECT band_name, (IFNULL(split, 2022) - formed )
as lifespan from metal_bands where style like '%Glam rock%' order by lifespan DESC;
