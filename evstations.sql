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
    conn_type VARCHAR,
    lat FLOAT,
    lng FLOAT,
    open_date DATE,
    open_year INT(4),
    open_month INT(2),
    open_day INT(2),
    CHADEMO INT(1),
    J1772 INT(1),
    J1772COMBO INT(1),
    NEMA1450 INT(1),
    NEMA515 INT(1),
    NEMA520 INT(1),
    TESLA INT(1)
);

-- View entire table
SELECT *
FROM stations;

-- Select state specific stations
SELECT *
FROM stations
WHERE state = 'CA';

-- Select station address
SELECT station_name, address, city, state, zip
FROM stations;

-- Select stations and its coordinates
SELECT station_name, lat, lng
FROM stations;

-- Select stations opened after a specific year
SELECT station_name
FROM stations
WHERE open_year > 2010
ORDER BY open_year;