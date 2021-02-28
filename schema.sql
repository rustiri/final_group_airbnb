-- Creating tables
CREATE TABLE listings (
     room_id INT NOT NULL,
     host_id INT NOT NULL,
	 room_type VARCHAR(40) NOT NULL,
     neighborhood VARCHAR(40) NOT NULL,
     reviews INT NOT NULL,
     overall_satisfaction FLOAT NOT NULL,
	 accommodates INT NOT NULL,
	 bedrooms FLOAT NOT NULL,
     price FLOAT NOT NULL,
     PRIMARY KEY (room_id),
     UNIQUE (room_id)
);

SELECT * FROM listings;

CREATE TABLE roomtype (
     room_id INT NOT NULL,
     room_type VARCHAR(40) NOT NULL,
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

CREATE TABLE accommodates (
     room_id INT NOT NULL,
     host_id INT NOT NULL,
     acommodates INT NOT NULL,
	bedrooms FLOAT NOT NULL,
     price FLOAT NOT NULL,
);

CREATE TABLE neighborhood2 (
     room_id INT NOT NULL,
     host_id INT NOT NULL,
     room_type VARCHAR(40) NOT NULL,
     neighborhood VARCHAR(40) NOT NULL,
     price FLOAT NOT NULL,
);

