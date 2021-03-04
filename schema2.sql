-- Creating tables
CREATE TABLE sfo_listings (
    room_id INT NOT NULL,
    host_id INT NOT NULL,
	host_is_superhost VARCHAR(40) NOT NULL,
	property_type VARCHAR (40) NOT NULL,
	room_type VARCHAR(40) NOT NULL,
    neighborhood VARCHAR(40) NOT NULL,
	accomodates INT NOT NULL,
	bedrooms FLOAT NOT NULL,
	bathrooms FLOAT NOT NULL,
	latitude FLOAT NOT NULL,
	longitude FLOAT NOT NULL,
	reviews INT NOT NULL,
	price FLOAT NOT NULL,
	cleaning_fee FLOAT,
	total FLOAT,
    PRIMARY KEY (room_id),
    UNIQUE (room_id)
);

CREATE TABLE property_type (
     room_id INT NOT NULL,
     property_type VARCHAR(40) NOT NULL,
     room_type VARCHAR(40) NOT NULL
     price FLOAT NOT NULL,
 );

 CREATE TABLE cf_property_type (
     room_id INT NOT NULL,
     property_type VARCHAR(40) NOT NULL,
     room_type VARCHAR(40) NOT NULL
     cleaning_fee FLOAT,
 );

 CREATE TABLE lat_long(
     room_id INT NOT NULL,
     property_type VARCHAR(40) NOT NULL,
     latitude FLOAT NOT NULL,
     latitude FLOAT NOT NULL
     price FLOAT NOT NULL,
 );

CREATE TABLE bedrooms (
     room_id INT NOT NULL,
     host_id INT NOT NULL,
	 bedrooms FLOAT NOT NULL,
     price FLOAT NOT NULL,
);

CREATE TABLE neighborhood (
     room_id INT NOT NULL,
     host_id INT NOT NULL,
     neighborhood VARCHAR(40) NOT NULL,
     price FLOAT NOT NULL,
);

CREATE TABLE super_host (
     room_id INT NOT NULL,
     host_id INT NOT NULL,
     host_is_superhost VARCHAR(40) NOT NULL,
     price FLOAT NOT NULL,
);

CREATE TABLE accommodates (
     room_id INT NOT NULL,
     host_id INT NOT NULL,
     acommodates INT NOT NULL,
	 bedrooms FLOAT NOT NULL,
     price FLOAT NOT NULL,
);

CREATE TABLE bathrooms (
     room_id INT NOT NULL,
     host_id INT NOT NULL,
	 bathrooms FLOAT NOT NULL,
     price FLOAT NOT NULL,
);

CREATE TABLE neighborhood2 (
     room_id INT NOT NULL,
     host_id INT NOT NULL,
     property_type VARCHAR(40) NOT NULL,
     neighborhood VARCHAR(40) NOT NULL,
     price FLOAT NOT NULL,
);

