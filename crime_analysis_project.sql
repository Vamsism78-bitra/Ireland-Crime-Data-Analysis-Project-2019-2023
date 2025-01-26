----- 1. Yearly Crime Trends in Ireland
CREATE VIEW Crime_Trends AS
SELECT year, SUM(value) AS total_crimes 
FROM crime_data123 
GROUP BY year 
ORDER BY year;




----- 2. Top 5 Offense Types in Ireland

CREATE Offense_Types AS
SELECT 
    type_of_offence, 
    SUM(value) AS total
FROM 
    crime_data123
GROUP BY 
    type_of_offence
ORDER BY 
    total DESC;




--- 3. Crime Distribution across Counties 


CREATE VIEW crime_distribution_iri1 AS
SELECT 
    ROW_NUMBER() OVER () AS primary_key, 
    county, 
	station_name,
    SUM(value) AS total_crimes, 
    AVG(latitude) AS avg_latitude, 
    AVG(longitude) AS avg_longitude,
	geom_3857
FROM 
    crime_data123
GROUP BY 
    county,station_name,geom_3857
ORDER BY 
    total_crimes DESC;




---------- 4. Nearest Crime Location Station From End User

CREATE VIEW My_location12 AS
SELECT DISTINCT ON (county, station_name) *
FROM crime_data123
WHERE ST_DWithin(
    geom_3857,
    ST_Transform(ST_SetSRID(ST_MakePoint(-6.592727, 53.38081), 4326), 3857),
    10000
);

-- 5 Higest Crimes areas in Dublin


SELECT 
    ROW_NUMBER() OVER () AS primary_key, -- Generating a unique primary key
    county, 
    SUM(value) AS total_crimes, 
    AVG(latitude) AS avg_latitude, 
    AVG(longitude) AS avg_longitude,
    geom_3857
FROM 
    crime_data123
WHERE 
    county = 'DUBLIN' -- Filter for Dublin county
GROUP BY 
    county, geom_3857
ORDER BY 
    total_crimes DESC;


---6 Higest Crimes areas in Maynooth

SELECT 
    ROW_NUMBER() OVER () AS primary_key, 
    county,
	station_name,
    SUM(value) AS total_crimes, 
    geom_3857
FROM 
    crime_data123
WHERE 
    county = 'KILDARE' AND -- Use AND instead of &&
    station_name = 'MAYNOOTH'
GROUP BY 
    county, geom_3857,station_name
ORDER BY 
    total_crimes DESC;



---- 7 Most Common Crime in ireland

SELECT county, type_of_offence, MAX(total) AS max_crimes
FROM (
    SELECT county, type_of_offence, SUM(value) AS total 
    FROM crime_data123 
    GROUP BY county, type_of_offence
) subquery
GROUP BY county, type_of_offence
ORDER BY county, max_crimes DESC;

---- 8. Top 10 County’s Theft And Related Offences in Ireland

SELECT county,type_of_offence, MAX(total) AS max_crimes
FROM (
    SELECT county, type_of_offence, SUM(value) AS total 
    FROM crime_data123 
    WHERE crime_id = 8 
    GROUP BY county, type_of_offence
) subquery
GROUP BY county, type_of_offence
ORDER BY max_crimes DESC;

---- 9.  Crime Offence in Maynooth 

SELECT station_name, type_of_offence, MAX(total) AS max_crimes,county
FROM (
    SELECT county,station_name, type_of_offence, SUM(value) AS total 
    FROM crime_data123
    WHERE county = 'KILDARE' AND station_name = 'MAYNOOTH' 
    GROUP BY county, type_of_offence,station_name
) subquery
GROUP BY county, type_of_offence,station_name
ORDER BY county, max_crimes DESC;



-----------------------


