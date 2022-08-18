-- Delete existing table, if any
DROP TABLE IF EXISTS stations;

-- Create table
CREATE TABLE stations (
    station_name VARCHAR,
    address VARCHAR,
    city VARCHAR,
    state VARCHAR(2),
    zip INT(5),
    access VARCHAR,
    ev_network VARCHAR,
    connector_type VARCHAR,
    lat FLOAT,
    lng FLOAT
);

-- View table
SELECT *
FROM stations;

SELECT *
FROM stations
WHERE state = 'CA';

SELECT station_name, lat, lng
FROM stations;