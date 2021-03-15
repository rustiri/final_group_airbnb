-- Creating tables
CREATE TABLE final_sfolistings (
    room_id INT NOT NULL,
    host_id INT,
	host_is_superhost VARCHAR(40) NOT NULL,
	property_type VARCHAR (40) NOT NULL,
	room_type VARCHAR(40) NOT NULL,
    neighborhood VARCHAR(40) NOT NULL,
    zipcode INT,
	accomodates INT,
	bedrooms FLOAT,
	bathrooms FLOAT,
    minimum_nights INT,
    maximum_nights INT,
	latitude FLOAT,
	longitude FLOAT,
	reviews INT,
    review_scores_rating FLOAT,
	price FLOAT NOT NULL,
	cleaning_fee FLOAT,
	total FLOAT,
    Median FLOAT,
    Mean FLOAT,
    Pop FLOAT,
    PRIMARY KEY (room_id),
    UNIQUE (room_id)
);

SELECT * FROM final_sfolistings;

-- Create new table for cost
SELECT room_id, price, cleaning_fee
INTO prices
FROM final_sfolistings

SELECT * FROM prices;

-- Create new table for neighborhood
SELECT room_id, zipcode, neighborhood, price
INTO neighborhood
FROM final_sfolistings

SELECT * FROM neighborhood;

-- Create new table for property type
SELECT room_id, zipcode, property_type, price
INTO property_type
FROM final_sfolistings

SELECT * FROM property_type;

-- Joining property_type and prices tables
SELECT property_type.property_type,
     property_type.zipcode,
     prices.price,
     prices.cleaning_fee
INTO price_by_pt	 
FROM property_type
INNER JOIN prices
ON property_type.room_id = prices.room_id;

-- Create new table for rooms
SELECT room_id, zipcode, bedrooms, bathrooms
INTO rooms
FROM final_sfolistings

SELECT * FROM rooms;

-- Joining rooms and prices tables
SELECT rooms.zipcode,
     rooms.bedrooms,
     rooms.bathrooms,
	 prices.price,
    prices.cleaning_fee
INTO prices_by_room
FROM rooms
INNER JOIN prices
ON rooms.room_id = prices.room_id;

select * from prices_by_room;

-- Create new table for superhost
SELECT room_id, zipcode, host_is_superhost
INTO superhost
FROM final_sfolistings

SELECT * FROM superhost;

-- Joining superhost and prices tables
SELECT superhost.zipcode,
     superhost.host_is_superhost,
	 prices.price,
    prices.cleaning_fee
INTO prices_by_sh
FROM superhost
INNER JOIN prices
ON superhost.room_id = prices.room_id;

SELECT * FROM prices_by_sh;

-- Create new table for acommodates
SELECT room_id, zipcode, property_type,accomodates
INTO accomodates
FROM final_sfolistings

SELECT * FROM accomodates;

-- Joining accomodates and prices tables
SELECT accomodates.zipcode,
     accomodates.property_type,
	 accomodates.accomodates,
	 prices.price,
    prices.cleaning_fee
INTO prices_by_accomodates
FROM accomodates
INNER JOIN prices
ON accomodates.room_id = prices.room_id;

SELECT * FROM prices_by_accomodates;

-- Create new table for income per property type
SELECT room_id, zipcode, property_type, Mean
INTO income_per_pt
FROM final_sfolistings

SELECT * FROM income_per_pt;